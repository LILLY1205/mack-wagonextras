let wagonId = null;
let modelName = null;
let currentLivery = 0;
let currentPropset = null;
let currentLantern = null;

const post = (endpoint, data) => {
    return fetch(`https://${GetParentResourceName()}/${endpoint}`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data || {})
    }).then(r => r.json()).catch(e => console.error(e));
};

// ============================================================================
// TAB SWITCHING
// ============================================================================

document.querySelectorAll('.tab-btn').forEach(btn => {
    btn.addEventListener('click', () => {
        document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
        document.querySelectorAll('.tab-pane').forEach(p => p.classList.remove('active'));
        btn.classList.add('active');
        document.getElementById('tab-' + btn.dataset.tab).classList.add('active');
    });
});

// ============================================================================
// PARTS TAB - Toggle Switches
// ============================================================================

function renderExtras(extras, extrasState) {
    const container = document.getElementById('extrasList');
    container.innerHTML = '';

    const ids = Object.keys(extras).map(Number);
    if (ids.length === 0) {
        container.innerHTML = '<p class="empty-msg">No toggleable parts available</p>';
        return;
    }

    ids.sort((a, b) => a - b);

    ids.forEach(extraId => {
        const label = extras[extraId];
        const isOn = extrasState[extraId] || false;

        const item = document.createElement('div');
        item.className = 'extra-item';
        item.innerHTML = `
            <span class="extra-label">${label}</span>
            <label class="toggle-switch">
                <input type="checkbox" data-extra-id="${extraId}" ${isOn ? 'checked' : ''}>
                <span class="toggle-slider"></span>
            </label>
        `;

        const checkbox = item.querySelector('input');
        checkbox.addEventListener('change', (e) => {
            post('toggleExtra', {
                wagonId: wagonId,
                extraId: extraId,
                enabled: e.target.checked
            });
        });

        container.appendChild(item);
    });
}

// ============================================================================
// LIVERY TAB
// ============================================================================

function renderLiveries(liveries, current) {
    const container = document.getElementById('liveryList');
    container.innerHTML = '';
    currentLivery = current;

    const ids = Object.keys(liveries).map(Number);
    if (ids.length === 0) {
        container.innerHTML = '<p class="empty-msg">No liveries available</p>';
        return;
    }

    ids.sort((a, b) => a - b);

    ids.forEach(liveryId => {
        const name = liveries[liveryId];
        const item = document.createElement('div');
        item.className = 'livery-item' + (liveryId === current ? ' active' : '');
        item.innerHTML = `
            <span class="livery-id">${liveryId}</span>
            <span class="livery-name">${name}</span>
            <i class="fas fa-check livery-check"></i>
        `;

        item.addEventListener('click', () => {
            container.querySelectorAll('.livery-item').forEach(i => i.classList.remove('active'));
            item.classList.add('active');
            currentLivery = liveryId;
            post('setLivery', {
                wagonId: wagonId,
                liveryId: liveryId
            });
        });

        container.appendChild(item);
    });
}

// ============================================================================
// CARGO TAB - Propsets
// ============================================================================

const CATEGORY_LABELS = {
    general: 'General',
    cargo: 'Cargo Loads',
    trade: 'Trade Goods',
    supplies: 'Supplies',
};

function renderPropsets(propsets) {
    const container = document.getElementById('propsetCategories');
    container.innerHTML = '';

    const categories = Object.keys(propsets);
    if (categories.length === 0) {
        container.innerHTML = '<p class="empty-msg">No cargo options available</p>';
        return;
    }

    categories.forEach(category => {
        const items = propsets[category];
        if (!items || items.length === 0) return;

        const catDiv = document.createElement('div');
        catDiv.className = 'propset-category';

        const header = document.createElement('div');
        header.className = 'category-header';
        header.textContent = CATEGORY_LABELS[category] || category;
        catDiv.appendChild(header);

        const grid = document.createElement('div');
        grid.className = 'propset-grid';

        items.forEach(propsetName => {
            const card = document.createElement('div');
            card.className = 'propset-card';
            const displayName = formatPropsetName(propsetName);
            card.innerHTML = `<span class="propset-card-name">${displayName}</span>`;

            card.addEventListener('click', () => {
                container.querySelectorAll('.propset-card').forEach(c => c.classList.remove('active'));

                if (currentPropset === propsetName) {
                    currentPropset = null;
                    post('setPropset', {
                        wagonId: wagonId,
                        propsetName: ''
                    });
                } else {
                    card.classList.add('active');
                    currentPropset = propsetName;
                    post('setPropset', {
                        wagonId: wagonId,
                        propsetName: propsetName
                    });
                }
            });

            grid.appendChild(card);
        });

        catDiv.appendChild(grid);
        container.appendChild(catDiv);
    });
}

function formatPropsetName(name) {
    return name
        .replace(/^pg_veh_/, '')
        .replace(/^pg_vl_/, '')
        .replace(/^pg_teamster_/, '')
        .replace(/^pg_vehload_/, '')
        .replace(/^pg_delivery_/, '')
        .replace(/_/g, ' ')
        .replace(/\b\w/g, c => c.toUpperCase());
}

// ============================================================================
// LIGHTS TAB - Lanterns
// ============================================================================

const LANTERN_LABELS = {
    base: 'Base Lanterns',
    tier1: 'Light Upgrade I',
    tier2: 'Light Upgrade II',
    tier3: 'Light Upgrade III',
    special: 'Special Lighting',
    extra1: 'Extra Light A',
    extra2: 'Extra Light B',
};

function renderLanterns(lanterns) {
    const container = document.getElementById('lanternOptions');
    container.innerHTML = '';

    const keys = Object.keys(lanterns);
    if (keys.length === 0) {
        container.innerHTML = '<p class="empty-msg">No lantern options available</p>';
        return;
    }

    // Off option
    const offItem = document.createElement('div');
    offItem.className = 'lantern-item' + (!currentLantern ? ' active' : '');
    offItem.innerHTML = `
        <i class="fas fa-minus-circle lantern-icon"></i>
        <span class="lantern-label">No Lanterns</span>
        <i class="fas fa-check lantern-check"></i>
    `;
    offItem.addEventListener('click', () => {
        container.querySelectorAll('.lantern-item').forEach(i => i.classList.remove('active'));
        offItem.classList.add('active');
        currentLantern = null;
        post('setLantern', {
            wagonId: wagonId,
            lanternHash: ''
        });
    });
    container.appendChild(offItem);

    // Lantern tiers
    const order = ['base', 'tier1', 'tier2', 'tier3', 'special', 'extra1', 'extra2'];
    order.forEach(key => {
        if (!lanterns[key]) return;

        const item = document.createElement('div');
        const isActive = currentLantern === key;
        item.className = 'lantern-item' + (isActive ? ' active' : '');

        const iconClass = key === 'base' ? 'fa-lightbulb' :
                         key.includes('special') || key.includes('extra') ? 'fa-star' : 'fa-sun';

        item.innerHTML = `
            <i class="fas ${iconClass} lantern-icon"></i>
            <span class="lantern-label">${LANTERN_LABELS[key] || key}</span>
            <i class="fas fa-check lantern-check"></i>
        `;

        item.addEventListener('click', () => {
            container.querySelectorAll('.lantern-item').forEach(i => i.classList.remove('active'));
            item.classList.add('active');
            currentLantern = key;
            post('setLantern', {
                wagonId: wagonId,
                lanternHash: lanterns[key]
            });
        });

        container.appendChild(item);
    });
}

// ============================================================================
// RESET & CLOSE BUTTONS
// ============================================================================

document.getElementById('resetBtn').addEventListener('click', () => {
    post('resetAll', {
        wagonId: wagonId,
        modelName: modelName
    });
    currentLivery = 0;
    currentPropset = null;
    currentLantern = null;
    closeMenu();
});

document.getElementById('closeBtn').addEventListener('click', () => {
    closeMenu();
});

document.getElementById('closeFooterBtn').addEventListener('click', () => {
    closeMenu();
});

function closeMenu() {
    wagonId = null;
    modelName = null;
    document.getElementById('menuWrapper').classList.remove('visible');
    post('closeMenu', {});
}

// ============================================================================
// ESC KEY HANDLER
// ============================================================================

document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') {
        closeMenu();
    }
});

// ============================================================================
// NUI MESSAGE HANDLER
// ============================================================================

window.addEventListener('message', (event) => {
    const data = event.data;

    switch (data.action) {
        case 'openWagonMenu':
            wagonId = data.wagonId;
            modelName = data.modelName;
            currentLivery = data.currentLivery || 0;
            currentPropset = null;
            currentLantern = null;

            document.getElementById('wagonTitle').textContent = data.label || 'Wagon Options';
            document.getElementById('wagonSubtitle').textContent = 'Customize your ' + (data.label || 'wagon');

            renderExtras(data.extras, data.extrasState);
            renderLiveries(data.liveries, data.currentLivery);
            renderPropsets(data.propsets);
            renderLanterns(data.lanterns);

            document.getElementById('menuWrapper').classList.add('visible');

            // Reset to first tab
            document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
            document.querySelectorAll('.tab-pane').forEach(p => p.classList.remove('active'));
            document.querySelector('.tab-btn[data-tab="parts"]').classList.add('active');
            document.getElementById('tab-parts').classList.add('active');
            break;

        case 'closeMenu':
            document.getElementById('menuWrapper').classList.remove('visible');
            break;
    }
});
