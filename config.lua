Config = {}

Config.Debug = false
Config.TargetDistance = 3.0

-- ============================================================================
-- WAGON DATA
-- Each wagon model maps to its available extras, liveries, propsets, and lanterns.
-- Model names must match the game's vehicle model name exactly.
-- ============================================================================

Config.Wagons = {

    -- -------------------------------------------------------------------------
    -- STANDARD WAGONS
    -- -------------------------------------------------------------------------

    ['wagon02x'] = {
        label = 'Wagon',
        extras = {
            [1] = 'Side Cover',
            [2] = 'Tarpaulin',
            [3] = 'Rear Gate',
            [5] = 'Seat Cover',
        },
        liveries = {
            [0]  = 'Simple Red',
            [1]  = 'Double Cream Yellow',
            [2]  = 'Tapered Red',
            [3]  = 'Flourish Red Cream',
            [4]  = 'Jameson',
            [5]  = 'Cornwall',
            [6]  = 'Simple Orange',
            [7]  = 'Double Lining',
            [8]  = 'Tapered Orange',
            [9]  = 'Flourish Red Yellow',
            [10] = 'Simple Black',
            [11] = 'Double Cream Yellow',
            [12] = 'Tapered Cream Yellow',
            [13] = 'Flourish Gold',
            [14] = 'Simple Yellow',
            [15] = 'Double Red Yellow',
            [16] = 'Tapered Gold',
        },
        propsets = {
            general = {
                'pg_veh_wagon02x_1',
                'pg_veh_wagon02x_2',
                'pg_veh_wagon02x_3',
            },
            cargo = {
                'pg_vehload_cotton01',
            },
            trade = {
                'pg_vl_blacksmith01',
                'pg_vl_butcher01',
                'pg_vl_craftsman01',
                'pg_vl_delivery01',
                'pg_vl_farmer01',
                'pg_vl_farmer02',
                'pg_vl_ferrier01',
                'pg_vl_fisherman01',
                'pg_vl_hunter01',
                'pg_vl_rancher01',
                'pg_vl_rancher02',
                'pg_vl_rancher03',
                'pg_vl_rancher04',
                'pg_vl_rancher05',
                'pg_vl_tradesman01',
                'pg_vl_tradesman02',
                'pg_vl_tradesman03',
                'pg_vl_tradesman04',
            },
            supplies = {
                'pg_teamster_wagon02x_breakables',
                'pg_teamster_wagon02x_gen',
                'pg_teamster_wagon02x_gen02',
                'pg_teamster_wagon02x_perishables',
                'pg_teamster_wagon02x_tnt',
            },
        },
        lanterns = {
            base    = 'pg_veh_wagon02x_lanterns01',
            tier1   = 'pg_teamster_wagon02x_lightupgrade1',
            tier2   = 'pg_teamster_wagon02x_lightupgrade2',
            tier3   = 'pg_teamster_wagon02x_lightupgrade3',
            special = 'pg_veh_wagonsuffrage_lanterns01',
        },
    },

    ['wagon04x'] = {
        label = 'Wagon (Hunting)',
        extras = {
            [1] = 'Side Cover',
            [2] = 'Tarpaulin',
            [3] = 'Rear Gate',
        },
        liveries = {
            [0]  = 'Simple Cream',
            [1]  = 'Double Yellows',
            [2]  = 'Tapered Red',
            [3]  = 'Flourish Red Yellow',
            [4]  = 'Simple Red',
            [5]  = 'Double Yellow White',
            [6]  = 'Tapered Yellow',
            [7]  = 'Flourish Cream Black',
            [8]  = 'Simple Green',
            [9]  = 'Double Red Yellow',
            [10] = 'Tapered Cream',
            [11] = 'Flourish Black Gold',
            [12] = 'Simple Black Cream',
            [13] = 'Double Brown Orange',
            [14] = 'Tapered Orange',
            [15] = 'Flourish Cream Red',
        },
        propsets = {
            general = {
                'pg_veh_wagon04x_1',
                'pg_veh_wagon04x_2',
                'pg_veh_wagon04x_3',
            },
            cargo = {
                'pg_vehload_cotton01',
            },
            trade = {
                'pg_vl_blacksmith01',
                'pg_vl_butcher01',
                'pg_vl_craftsman01',
                'pg_vl_delivery01',
                'pg_vl_farmer01',
                'pg_vl_farmer02',
                'pg_vl_ferrier01',
                'pg_vl_fisherman01',
                'pg_vl_hunter01',
                'pg_vl_rancher01',
                'pg_vl_rancher02',
                'pg_vl_rancher03',
                'pg_vl_rancher04',
                'pg_vl_rancher05',
                'pg_vl_tradesman01',
                'pg_vl_tradesman02',
                'pg_vl_tradesman03',
                'pg_vl_tradesman04',
            },
            supplies = {
                'pg_teamster_wagon04x_breakables',
                'pg_teamster_wagon04x_gen',
                'pg_teamster_wagon04x_gen02',
                'pg_teamster_wagon04x_perishables',
                'pg_teamster_wagon04x_tnt',
            },
        },
        lanterns = {
            base  = 'pg_veh_wagon04x_lanterns01',
            tier1 = 'pg_teamster_wagon04x_lightupgrade1',
            tier2 = 'pg_teamster_wagon04x_lightupgrade2',
            tier3 = 'pg_teamster_wagon04x_lightupgrade3',
        },
    },

    ['wagon05x'] = {
        label = 'Wagon (Covered)',
        extras = {
            [5] = 'Cover Frame',
        },
        liveries = {
            [0]  = 'Simple Yellow',
            [1]  = 'Tapered Gold',
            [2]  = 'Double Cream Orange',
            [3]  = 'Flourish Yellow Orange',
            [4]  = 'Simple Cream',
            [5]  = 'Tapered Orange',
            [6]  = 'Double Cream Red',
            [7]  = 'Flourish Yellow Red',
            [8]  = 'Simple Red',
            [9]  = 'Tapered Yellow',
            [10] = 'Double Creams',
            [11] = 'Flourish Black Gold',
            [12] = 'Simple Red',
            [13] = 'Tapered Green',
            [14] = 'Double Yellow Cream',
            [15] = 'Flourish Yellow Cream',
            [16] = 'Simple Orange',
            [17] = 'Tapered Black',
            [18] = 'Double Black Red',
            [19] = 'Flourish Worn Red Cream',
        },
        propsets = {
            general = {
                'pg_veh_wagon05x_1',
                'pg_veh_wagon05x_2',
                'pg_veh_wagon05x_3',
                'pg_veh_wagon05x_4',
                'pg_veh_wagon05x_5',
            },
            cargo = {
                'pg_veh_wagon05x_cotton',
                'pg_delivery_CKToil01x',
                'pg_delivery_Orange01x',
            },
            trade = {
                'pg_vl_blacksmith01',
                'pg_vl_butcher01',
                'pg_vl_craftsman01',
                'pg_vl_delivery01',
                'pg_vl_farmer01',
                'pg_vl_farmer02',
                'pg_vl_ferrier01',
                'pg_vl_fisherman01',
                'pg_vl_hunter01',
                'pg_vl_rancher01',
                'pg_vl_rancher02',
                'pg_vl_rancher03',
                'pg_vl_rancher04',
                'pg_vl_rancher05',
                'pg_vl_tradesman01',
                'pg_vl_tradesman02',
                'pg_vl_tradesman03',
                'pg_vl_tradesman04',
            },
            supplies = {
                'pg_teamster_wagon05x_breakables',
                'pg_teamster_wagon05x_gen',
                'pg_teamster_wagon05x_perishables',
                'pg_teamster_wagon05x_tnt',
            },
        },
        lanterns = {
            base    = 'pg_veh_wagon05x_lanterns01',
            tier1   = 'pg_teamster_wagon05x_lightupgrade1',
            tier2   = 'pg_teamster_wagon05x_lightupgrade2',
            tier3   = 'pg_teamster_wagon05x_lightupgrade3',
            extra1  = 'pg_veh_wagon05x_2_lanterns01',
            extra2  = 'pg_veh_wagon05x_lanterns02',
        },
    },

    ['wagon06x'] = {
        label = 'Wagon (Sport)',
        extras = {
            [1] = 'Side Board',
            [2] = 'Rear Board',
        },
        liveries = {
            [0]  = 'Simple Cream Red',
            [1]  = 'Double Red Yellow',
            [2]  = 'Flourish Cream Gold',
            [3]  = 'Flourish II Red Black Yellow',
            [4]  = 'Simple Red',
            [5]  = 'Double Cream Yellow',
            [6]  = 'Flourish Black Yellow',
            [7]  = 'Flourish II Black Cream Gold',
            [8]  = 'Simple Red',
            [9]  = 'Double Red Cream',
            [10] = 'Flourish Black Gold',
            [11] = 'Flourish II Cream Orange Yellow',
            [12] = 'Simple Yellow Red',
            [13] = 'Double Black Red',
            [14] = 'Flourish Red Yellow',
            [15] = 'Flourish II Green Gold',
        },
        propsets = {
            general = {
                'pg_veh_wagon06x_1',
                'pg_veh_wagon06x_2',
                'pg_veh_wagon06x_3',
            },
            supplies = {
                'pg_teamster_wagon06x_breakables',
                'pg_teamster_wagon06x_gen',
                'pg_teamster_wagon06x_perishables',
                'pg_teamster_wagon06x_tnt',
            },
        },
        lanterns = {
            tier1 = 'pg_teamster_wagon06x_lightupgrade1',
            tier2 = 'pg_teamster_wagon06x_lightupgrade2',
            tier3 = 'pg_teamster_wagon06x_lightupgrade3',
        },
    },

    ['wagon03x'] = {
        label = 'Wagon (Utility)',
        extras = {},
        liveries = {
            [0]  = 'Simple Brown Red',
            [1]  = 'Double Red Yellow',
            [2]  = 'Tapered Yellow Red',
            [3]  = 'Flourish Gold Black',
            [4]  = 'Simple Red',
            [5]  = 'Double Yellow Red',
            [6]  = 'Tapered Cream Red',
            [7]  = 'Flourish Red Black',
            [8]  = 'Simple Black',
            [9]  = 'Double Lining',
            [10] = 'Tapered Yellow',
            [11] = 'Flourish Red Gold',
            [12] = 'Simple Brown',
            [13] = 'Double Red',
            [14] = 'Tapered Cream Red',
            [15] = 'Flourish Red Yellow',
        },
        propsets = {},
        lanterns = {},
    },

    -- -------------------------------------------------------------------------
    -- SUPPLY WAGONS
    -- -------------------------------------------------------------------------

    ['supplywagon'] = {
        label = 'Supply Wagon',
        extras = {
            [1] = 'Canvas Cover',
            [2] = 'Side Rails',
            [4] = 'Rear Gate',
        },
        liveries = {
            [0]  = 'Simple Yellow Blue',
            [1]  = 'Double Yellow Red',
            [2]  = 'Tapered Yellow Red',
            [3]  = 'Flourish Green Yellow',
            [4]  = 'Appleseed Timber',
            [5]  = 'Simple Brown Blue',
            [6]  = 'Double Lining Green Yellow',
            [7]  = 'Tapered Yellow Cream',
            [8]  = 'Flourish Red Yellow',
            [9]  = 'Simple Red',
            [10] = 'Double Brown Cream',
            [11] = 'Tapered Gold Orange',
            [12] = 'Flourish Cream Blue',
            [13] = 'Double Gold Black',
            [14] = 'Tapered Cream Orange',
            [15] = 'Flourish Gold Brown',
        },
        propsets = {
            general = {
                'pg_teamster_supplywagon_breakables',
                'pg_teamster_supplywagon_gen',
                'pg_teamster_supplywagon_perishables',
                'pg_teamster_supplywagon_tnt',
            },
            cargo = {
                'pg_delivery_Cotton01x',
            },
        },
        lanterns = {},
    },

    ['supplywagon2'] = {
        label = 'Supply Wagon (Improved)',
        extras = {},
        liveries = {
            [0]  = 'Simple Yellow Blue',
            [1]  = 'Double Yellow Red',
            [2]  = 'Tapered Yellow Red',
            [3]  = 'Flourish Green Yellow',
            [4]  = 'Appleseed Timber',
            [5]  = 'Simple Brown Blue',
            [6]  = 'Double Lining Green Yellow',
            [7]  = 'Tapered Yellow Cream',
            [8]  = 'Flourish Red Yellow',
            [9]  = 'Simple Red',
            [10] = 'Double Brown Cream',
            [11] = 'Tapered Gold Orange',
            [12] = 'Flourish Cream Blue',
            [13] = 'Double Gold Black',
            [14] = 'Tapered Cream Orange',
            [15] = 'Flourish Gold Brown',
        },
        propsets = {},
        lanterns = {},
    },

    -- -------------------------------------------------------------------------
    -- CHUCK WAGONS
    -- -------------------------------------------------------------------------

    ['chuckwagon000x'] = {
        label = 'Chuck Wagon',
        extras = {
            [1] = 'Side Canopy',
            [2] = 'Cooking Shelf',
            [3] = 'Rear Gate',
        },
        liveries = {
            [0]  = 'Simple Lining Red',
            [1]  = 'Dot Lining Red Yellow',
            [2]  = 'Double Lining White Blue',
            [3]  = 'Flourish Yellow',
            [4]  = 'Simple Lining Yellow',
            [5]  = 'Dot Lining Orange Yellow',
            [6]  = 'Double Lining Black Red',
            [7]  = 'Flourish Red Yellow',
            [8]  = 'Flourish Cream Gold',
            [9]  = 'Flourish Red Black',
            [10] = 'Double Lining Red Yellow',
        },
        propsets = {
            general = {
                'pg_veh_chuckwagon000x_1',
                'pg_veh_chuckwagon000x_2',
                'pg_veh_chuckwagon000x_3',
                'pg_veh_chuckwagon000x_2a',
                'pg_veh_chuckwagon000x_3a',
                'pg_veh_chuckwagon000x_4',
                'pg_veh_chuckwagon000x_orange_1',
            },
            cargo = {
                'pg_vehload_cotton01',
                'pg_vehload_crates01',
                'pg_vehload_haybale01',
                'pg_vehload_livestock01',
                'pg_vehload_lumber01',
                'pg_vehload_sacks01',
            },
            trade = {
                'pg_vl_blacksmith01',
                'pg_vl_butcher01',
                'pg_vl_craftsman01',
                'pg_vl_delivery01',
                'pg_vl_farmer01',
                'pg_vl_farmer02',
                'pg_vl_ferrier01',
                'pg_vl_fisherman01',
                'pg_vl_hunter01',
                'pg_vl_rancher01',
                'pg_vl_rancher02',
                'pg_vl_rancher03',
                'pg_vl_rancher04',
                'pg_vl_rancher05',
                'pg_vl_tradesman01',
                'pg_vl_tradesman02',
                'pg_vl_tradesman03',
                'pg_vl_tradesman04',
            },
            supplies = {
                'pg_teamster_chuckwagon000x_breakables',
                'pg_teamster_chuckwagon000x_gen',
                'pg_teamster_chuckwagon000x_perishables',
                'pg_teamster_chuckwagon000x_tnt',
            },
        },
        lanterns = {
            base  = 'pg_veh_chuckwagon000x_lanterns',
            tier1 = 'pg_teamster_chuckwagon000x_lightupgrade1',
            tier2 = 'pg_teamster_chuckwagon000x_lightupgrade2',
            tier3 = 'pg_teamster_chuckwagon000x_lightupgrade3',
        },
    },

    ['chuckwagon002x'] = {
        label = 'Chuck Wagon (Large)',
        extras = {
            [1] = 'Side Canopy',
            [2] = 'Cooking Shelf',
            [3] = 'Rear Gate',
        },
        liveries = {
            [0]  = 'Simple Lining Yellow',
            [1]  = 'Double Lining Red Black',
            [2]  = 'Loco Grey Red',
            [3]  = 'Flourish Red Yellow',
            [4]  = 'Simple Lining Cream Red',
            [5]  = 'Double Lining Red Yellow',
            [6]  = 'Loco Red Cream',
            [7]  = 'Flourish Green',
            [8]  = 'Simple Lining Cream',
            [9]  = 'Double Lining Gold Red',
            [10] = 'Gold Leaf',
        },
        propsets = {
            general = {
                'pg_veh_chuckwagon002x_1',
                'pg_veh_chuckwagon002x_2',
                'pg_veh_chuckwagon002x_3',
            },
            cargo = {
                'pg_vehload_cotton01',
                'pg_vehload_crates01',
                'pg_vehload_haybale01',
                'pg_vehload_livestock01',
                'pg_vehload_lumber01',
                'pg_vehload_sacks01',
            },
            trade = {
                'pg_vl_blacksmith01',
                'pg_vl_butcher01',
                'pg_vl_craftsman01',
                'pg_vl_delivery01',
                'pg_vl_farmer01',
                'pg_vl_farmer02',
                'pg_vl_ferrier01',
                'pg_vl_fisherman01',
                'pg_vl_hunter01',
                'pg_vl_rancher01',
                'pg_vl_rancher02',
                'pg_vl_rancher03',
                'pg_vl_rancher04',
                'pg_vl_rancher05',
                'pg_vl_tradesman01',
                'pg_vl_tradesman02',
                'pg_vl_tradesman03',
                'pg_vl_tradesman04',
            },
            supplies = {
                'pg_teamster_chuckwagon002x_breakables',
                'pg_teamster_chuckwagon002x_gen',
                'pg_teamster_chuckwagon002x_perishables',
                'pg_teamster_chuckwagon002x_tnt',
            },
        },
        lanterns = {
            base  = 'pg_veh_chuckwagon002x_lanterns01',
            tier1 = 'pg_teamster_chuckwagon002x_lightupgrade1',
            tier2 = 'pg_teamster_chuckwagon002x_lightupgrade2',
            tier3 = 'pg_teamster_chuckwagon002x_lightupgrade3',
        },
    },

    -- -------------------------------------------------------------------------
    -- UTILITY WAGON
    -- -------------------------------------------------------------------------

    ['utilliwag'] = {
        label = 'Utility Wagon',
        extras = {
            [2] = 'Tool Rack',
        },
        liveries = {
            [0]  = 'Simple Red',
            [1]  = 'Double Red Cream',
            [2]  = 'Tapered Yellow Cream',
            [3]  = 'Flourish Cream Yellow',
            [4]  = 'Simple Red Yellow',
            [5]  = 'Double Red Black',
            [6]  = 'Tapered Red Cream Black',
            [7]  = 'Flourish Red Cream Gold',
            [8]  = 'Simple Black',
            [9]  = 'Double Red Black',
            [10] = 'Tapered Cream Red',
            [11] = 'Flourish Brown Gold',
            [12] = 'Simple Cream Yellow',
            [13] = 'Double Gold Cream',
            [14] = 'Tapered Yellow Blue',
            [15] = 'Flourish Red Yellow',
        },
        propsets = {
            general = {
                'pg_veh_utilliwag_1',
                'pg_veh_utilliwag_2',
                'pg_veh_utilliwag_3',
                'pg_veh_utilliwag_orange_1',
            },
            supplies = {
                'pg_teamster_utilitywag_breakables',
                'pg_teamster_utilitywag_gen',
                'pg_teamster_utilitywag_perishables',
                'pg_teamster_utilitywag_tnt',
            },
        },
        lanterns = {
            base  = 'pg_veh_utilliwag_lanterns01',
            tier1 = 'pg_veh_utilliwag_lightupgrade_1',
            tier2 = 'pg_veh_utilliwag_lightupgrade_2',
            tier3 = 'pg_veh_utilliwag_lightupgrade_3',
        },
    },

    -- -------------------------------------------------------------------------
    -- GATLING GUN WAGON
    -- -------------------------------------------------------------------------

    ['gatchuck'] = {
        label = 'Gatling Chuck Wagon',
        extras = {
            [1] = 'Side Panel',
            [2] = 'Gun Mount',
            [3] = 'Ammo Rack',
            [4] = 'Rear Panel',
        },
        liveries = {
            [0]  = 'Simple Red Yellow',
            [1]  = 'Tapered Yellow Cream',
            [2]  = 'Squared Gold Black',
            [3]  = 'Flourish Gold Cream',
            [4]  = 'Simple Cream',
            [5]  = 'Tapered Gold Red',
            [6]  = 'Squared Cream Red',
            [7]  = 'Flourish Black Yellow',
            [8]  = 'Simple Yellow Red',
            [9]  = 'Tapered Gold Black',
            [10] = 'Squared Black Red',
            [11] = 'Flourish Cream Gold',
            [12] = 'Gold Cream',
            [13] = 'Tapered Blue Black',
            [14] = 'Squared Gold Black',
            [15] = 'Flourish Yellow Red',
        },
        propsets = {
            general = {
                'pg_veh_gatchuck_lanterns01',
            },
        },
        lanterns = {
            base  = 'pg_veh_gatchuck_lanterns01',
            tier1 = 'pg_teamster_gatchuck_lightupgrade1',
            tier2 = 'pg_teamster_gatchuck_lightupgrade2',
            tier3 = 'pg_teamster_gatchuck_lightupgrade3',
        },
    },

    ['gatchuck_2'] = {
        label = 'Gatling Chuck Wagon II',
        extras = {
            [1] = 'Side Panel',
        },
        liveries = {
            [0]  = 'Simple Red Yellow',
            [1]  = 'Tapered Yellow Cream',
            [2]  = 'Squared Gold Black',
            [3]  = 'Flourish Gold Cream',
            [4]  = 'Simple Cream',
            [5]  = 'Tapered Gold Red',
            [6]  = 'Squared Cream Red',
            [7]  = 'Flourish Black Yellow',
            [8]  = 'Simple Yellow Red',
            [9]  = 'Tapered Gold Black',
            [10] = 'Squared Black Red',
            [11] = 'Flourish Cream Gold',
            [12] = 'Gold Cream',
            [13] = 'Tapered Blue Black',
            [14] = 'Squared Gold Black',
            [15] = 'Flourish Yellow Red',
        },
        propsets = {},
        lanterns = {},
    },

    -- -------------------------------------------------------------------------
    -- CARTS
    -- -------------------------------------------------------------------------

    ['cart01'] = {
        label = 'Cart',
        extras = {
            [1] = 'Side Rail',
            [4] = 'Rear Gate',
        },
        liveries = {
            [0]  = 'Simple Cream',
            [1]  = 'Tapered Double Yellow',
            [2]  = 'Loco Cream Blue',
            [3]  = 'Flourish Yellow Cream',
            [4]  = 'Simple Worn Yellow',
            [5]  = 'Tapered Worn Cream',
            [6]  = 'Simple Yellow',
            [7]  = 'Tapered Double Red Cream',
            [8]  = 'Loco Cream Red',
            [9]  = 'Flourish Red Yellow',
            [10] = 'Simple Worn Cream',
            [11] = 'Tapered Worn Red Cream',
        },
        propsets = {
            general = {
                'pg_veh_cart01_1',
                'pg_veh_cart01_2',
                'pg_veh_cart01_3',
            },
            cargo = {
                'pg_re_checkpoint02x_food',
                'pg_teamster_cart01_gen',
                'pg_teamster_cart01_perishables',
            },
            supplies = {
                'pg_teamster_cart01_breakables',
                'pg_teamster_cart01_tnt',
            },
        },
        lanterns = {
            base  = 'pg_veh_cart01_lanterns01',
            tier1 = 'pg_teamster_cart01_lightupgrade1',
            tier2 = 'pg_teamster_cart01_lightupgrade2',
            tier3 = 'pg_teamster_cart01_lightupgrade3',
        },
    },

    ['cart02'] = {
        label = 'Cart (Sport)',
        extras = {},
        liveries = {
            [0]  = 'Tapered Double Red Yellow',
            [1]  = 'Crossed Yellow Grey',
            [2]  = 'Leaf Yellow',
            [3]  = 'Flourish Red Yellow',
            [4]  = 'Tapered Worn Grey Yellow',
            [5]  = 'Simple Worn Cream',
            [6]  = 'Leaf Gold',
            [7]  = 'Flourish Gold',
            [8]  = 'Tapered Double Red Grey',
            [9]  = 'Crossed Red Yellow',
            [10] = 'Leaf Red Yellow',
            [11] = 'Flourish Brown',
            [12] = 'Tapered Worn Red Yellow',
            [13] = 'Simple Worn Yellow',
            [14] = 'Leaf Cream Red',
            [15] = 'Flourish Yellow',
        },
        propsets = {},
        lanterns = {},
    },

    ['cart03'] = {
        label = 'Cart (Coal)',
        extras = {},
        liveries = {
            [0]  = 'Simple Cream',
            [1]  = 'Tapered Double Cream Yellow',
            [2]  = 'Loco Red Yellow',
            [3]  = 'Fancy Red Blue Yellow',
            [4]  = 'Simple Worn Yellow Cream',
            [5]  = 'Chassis Worn Cream',
            [6]  = 'Loco Red Black',
            [7]  = 'Loco Blue Cream',
            [8]  = 'Fancy Red Gold',
            [9]  = 'Tapered Double Red Yellow',
        },
        propsets = {},
        lanterns = {},
    },

    ['cart04'] = {
        label = 'Cart (Express)',
        extras = {},
        liveries = {
            [0]  = 'Simple Yellow',
            [1]  = 'Loco Cream Red',
            [2]  = 'Tapered Double Red Yellow',
            [3]  = 'Flourish Yellow',
            [4]  = 'Lines Red Yellow',
            [5]  = 'Lines Thick White Yellow',
            [6]  = 'Flourish Gold',
        },
        propsets = {},
        lanterns = {},
    },

    ['cart05'] = {
        label = 'Cart (Hand)',
        extras = {
            [1] = 'Side Board',
            [2] = 'Tool Hook',
            [3] = 'Rear Board',
        },
        liveries = {
            [0]  = 'Line Blue',
            [1]  = 'Double Line Yellow',
            [2]  = 'Line Thick Green',
            [3]  = 'Flourish Red',
            [4]  = 'Simple Red',
            [5]  = 'Simple White',
            [6]  = 'Line Thick Yellow Orange',
            [7]  = 'Line Thick Red Blue',
            [8]  = 'Flourish Yellow White',
            [9]  = 'Double Line Orange',
        },
        propsets = {},
        lanterns = {},
    },

    ['cart06'] = {
        label = 'Cart (Supply)',
        extras = {
            [1] = 'Side Cover',
            [2] = 'Rear Gate',
        },
        liveries = {
            [0]  = 'Simple Yellow White',
            [1]  = 'Tapered Double Yellow Red',
            [2]  = 'Ornate Yellow',
            [3]  = 'Flourish Yellow Red',
            [4]  = 'Chassis Line White Yellow',
            [5]  = 'Rounded Blue White',
            [6]  = 'Simple White Red',
            [7]  = 'Tapered Double White Red',
            [8]  = 'Ornate Light Green',
            [9]  = 'Flourish Red',
            [10] = 'Chassis Line Yellow Red',
            [11] = 'Rounded Yellow Red',
            [12] = 'Tapered Double Black',
        },
        propsets = {
            general = {
                'pg_veh_cart06_1',
                'pg_veh_cart06_2',
            },
            supplies = {
                'pg_teamster_cart06_breakables',
                'pg_teamster_cart06_gen',
                'pg_teamster_cart06_perishables',
                'pg_teamster_cart06_tnt',
            },
        },
        lanterns = {
            base  = 'pg_veh_cart06_lanterns01',
            tier1 = 'pg_teamster_cart06_lightupgrade1',
            tier2 = 'pg_teamster_cart06_lightupgrade2',
            tier3 = 'pg_teamster_cart06_lightupgrade3',
            special = 'pg_re_deadbodies01x_lights',
        },
    },

    ['cart07'] = {
        label = 'Cart (Fancy)',
        extras = {
            [1] = 'Side Rail',
        },
        liveries = {
            [0]  = 'Simple Green Yellow',
            [1]  = 'Tapered Double Yellow Red',
            [2]  = 'Loco Black Red Yellow',
            [3]  = 'Flourish Yellow Orange',
            [4]  = 'Rounded Off-White Yellow',
            [5]  = 'Rounded Worn Red Brown',
            [6]  = 'Tapered Double Orange Yellow',
            [7]  = 'Flourish Gold',
            [8]  = 'Rounded Grey Orange',
            [9]  = 'Loco Blue Black Yellow',
            [10] = 'Simple Red Yellow',
            [11] = 'Rounded Worn Black White',
        },
        propsets = {},
        lanterns = {},
    },

    ['cart08'] = {
        label = 'Cart (Market)',
        extras = {
            [4] = 'Canopy Frame',
        },
        liveries = {
            [0]  = 'Single Line Yellow Red',
            [1]  = 'Simple Double Cream Yellow',
            [2]  = 'Tapered Double Brown White',
            [3]  = 'Flourish Cream',
            [4]  = 'Simple Red',
            [5]  = 'Chassis Cream Yellow',
            [6]  = 'Single Line Orange',
            [7]  = 'Double Line Brown',
            [8]  = 'Single Line Brown Red',
            [9]  = 'Simple Double Cream Yellow',
            [10] = 'Tapered Double Grey White',
            [11] = 'Flourish Gold',
            [12] = 'Simple Blue Red',
            [13] = 'Chassis Red Yellow',
            [14] = 'Single Line Bright Orange',
            [15] = 'Double Line Worn',
        },
        propsets = {},
        lanterns = {},
    },

    -- -------------------------------------------------------------------------
    -- STAGECOACHES
    -- -------------------------------------------------------------------------

    ['stagecoach001x'] = {
        label = 'Stagecoach',
        extras = {
            [1] = 'Roof Rack',
            [2] = 'Boot Cover',
        },
        liveries = {
            [0] = 'Davis',
            [1] = 'Boles',
            [2] = 'Heartlands',
            [3] = 'Ornate',
        },
        propsets = {
            general = {
                'pg_veh_stagecoach001x_1',
                'pg_veh_stagecoach001x_2',
            },
        },
        lanterns = {},
    },

    ['stagecoach002x'] = {
        label = 'Stagecoach (Armored)',
        extras = {
            [1] = 'Roof Rack',
            [2] = 'Boot Cover',
        },
        liveries = {
            [0] = 'Davis',
            [1] = 'Boles',
            [2] = 'Heartlands',
            [3] = 'Tapered',
        },
        propsets = {
            general = {
                'pg_veh_stagecoach002x_1',
                'pg_veh_stagecoach002x_2',
                'pg_veh_stagecoach002x_bootA',
            },
        },
        lanterns = {},
    },

    ['stagecoach003x'] = {
        label = 'Stagecoach (Split)',
        extras = {},
        liveries = {
            [0] = 'Davis',
            [1] = 'Boles',
            [2] = 'Heartlands',
            [3] = 'Ornate',
        },
        propsets = {
            general = {
                'pg_veh_stagecoach003x_bootA',
            },
        },
        lanterns = {
            base = 'pg_veh_stagecoach003x_lanterns01',
        },
    },

    ['stagecoach004x'] = {
        label = 'Stagecoach (Armored Large)',
        extras = {},
        liveries = {
            [0] = 'Boles',
        },
        propsets = {
            general = {
                'pg_teamster_armourwag_breakables',
                'pg_teamster_armourwag_gen',
                'pg_teamster_armourwag_perishables',
                'pg_teamster_armourwag_tnt',
            },
        },
        lanterns = {},
    },

    ['stagecoach004_2x'] = {
        label = 'Stagecoach (Express)',
        extras = {
            [5] = 'Side Panel',
            [6] = 'Roof Rack',
            [7] = 'Boot Cover',
        },
        liveries = {
            [0] = 'Davis',
            [1] = 'Boles',
            [2] = 'Heartland',
            [3] = 'Tapered',
            [4] = 'Lemoyne',
        },
        propsets = {},
        lanterns = {},
    },

    ['stagecoach005x'] = {
        label = 'Stagecoach (Small)',
        extras = {
            [1] = 'Roof Rack',
        },
        liveries = {
            [0] = 'Davis',
            [1] = 'Boles',
            [2] = 'Heartlands',
            [3] = 'Tapered',
        },
        propsets = {
            general = {
                'pg_veh_stagecoach005x_1',
                'pg_veh_stagecoach005x_2',
            },
        },
        lanterns = {},
    },

    ['stagecoach006x'] = {
        label = 'Stagecoach (Diligence)',
        extras = {},
        liveries = {
            [0] = 'Davis',
            [1] = 'Boles',
            [2] = 'Heartlands',
            [3] = 'Simple',
        },
        propsets = {
            general = {
                'pg_veh_stagecoach006x_1',
                'pg_veh_stagecoach006x_2',
            },
        },
        lanterns = {},
    },

    -- -------------------------------------------------------------------------
    -- COACHES
    -- -------------------------------------------------------------------------

    ['coach2'] = {
        label = 'Coach',
        extras = {
            [1] = 'Side Panel',
            [2] = 'Roof Rack',
            [3] = 'Rear Gate',
            [5] = 'Boot Cover',
        },
        liveries = {
            [0] = 'Davis',
            [1] = 'Boles',
            [2] = 'Heartlands',
            [3] = 'Tapered',
        },
        propsets = {
            general = {
                'pg_veh_coach2_1',
                'pg_veh_coach2_bootA',
            },
        },
        lanterns = {},
    },

    ['coach3'] = {
        label = 'Coach (Ornate)',
        extras = {},
        liveries = {
            [0]  = 'Lines Gold',
            [1]  = 'Flourish Yellow',
            [2]  = 'Tapered Yellow',
            [3]  = 'Leaf Yellow Red',
            [4]  = 'Lines Blue',
            [5]  = 'Flourish Gold Red',
            [6]  = 'Tapered Blue Grey',
            [7]  = 'Leaf Gold',
            [8]  = 'Lines Orange',
            [9]  = 'Flourish Red Cream',
            [10] = 'Tapered Orange Yellow',
            [11] = 'Leaf Worn',
            [12] = 'Tapered Red Orange',
        },
        propsets = {},
        lanterns = {},
    },

    ['coach4'] = {
        label = 'Coach (Luxury)',
        extras = {},
        liveries = {
            [0]  = 'Lines Red Grey',
            [1]  = 'Crosshatch Red Green',
            [2]  = 'Accented Red Yellow',
            [3]  = 'Leaf Yellow',
            [4]  = 'Lines Red Green',
            [5]  = 'Crosshatch Red Yellow',
            [6]  = 'Accented Gold Red',
            [7]  = 'Leaf Red Yellow',
            [8]  = 'Lines Yellow Orange',
            [9]  = 'Crosshatch Cream',
            [10] = 'Crosshatch Green',
            [11] = 'Leaf Gold',
            [12] = 'Lines Gold Yellow',
            [13] = 'Crosshatch Gold',
        },
        propsets = {},
        lanterns = {},
    },

    ['coach5'] = {
        label = 'Coach (Tall)',
        extras = {},
        liveries = {
            [0]  = 'Lines Yellow',
            [1]  = 'Tapered Yellow',
            [2]  = 'Squared Yellow Cream',
            [3]  = 'Leaf Yellow',
            [4]  = 'Lines Red Yellow',
            [5]  = 'Tapered Red Yellow',
            [6]  = 'Squared Red Yellow',
            [7]  = 'Leaf Red Yellow',
            [8]  = 'Lines Gold',
            [9]  = 'Tapered Gold',
            [10] = 'Squared Gold',
            [11] = 'Leaf Gold',
        },
        propsets = {},
        lanterns = {},
    },

    ['coach6'] = {
        label = 'Coach (Improved)',
        extras = {},
        liveries = {
            [0]  = 'Simple Cream',
            [1]  = 'Tapered Cream',
            [2]  = 'Squared Cream',
            [3]  = 'Leaf Cream Yellow',
            [4]  = 'Simple Yellow',
            [5]  = 'Tapered Yellow Red',
            [6]  = 'Squared Yellow',
            [7]  = 'Leaf Red Yellow',
            [8]  = 'Simple Red Yellow',
            [9]  = 'Tapered Red Yellow',
            [10] = 'Squared Red',
            [11] = 'Leaf Black Yellow',
            [12] = 'Simple Black',
            [13] = 'Tapered Gold Black',
            [14] = 'Squared',
            [15] = 'Leaf Gold',
        },
        propsets = {},
        lanterns = {},
    },

    -- -------------------------------------------------------------------------
    -- SPECIAL WAGONS
    -- -------------------------------------------------------------------------

    ['bountywagon01x'] = {
        label = 'Bounty Wagon',
        extras = {
            [5] = 'Cage Reinforcement',
        },
        liveries = {
            [0] = 'Livery 1',
            [1] = 'Livery 2',
            [2] = 'Livery 3',
        },
        propsets = {},
        lanterns = {
            tier1 = 'pg_teamster_chuckwagon002x_lightupgrade1',
            tier2 = 'pg_teamster_chuckwagon002x_lightupgrade2',
            tier3 = 'pg_teamster_chuckwagon002x_lightupgrade3',
        },
    },

    ['policeWagon01x'] = {
        label = 'Police Wagon',
        extras = {
            [5] = 'Cage Panel',
        },
        liveries = {
            [0] = 'Police Red White',
        },
        propsets = {},
        lanterns = {
            base = 'pg_veh_policeWagon01x_lanterns01',
        },
    },

    ['policeWagongatling01x'] = {
        label = 'Police Wagon (Gatling)',
        extras = {},
        liveries = {
            [0] = 'Police Red White',
        },
        propsets = {},
        lanterns = {
            base = 'pg_veh_policeWagonGatling01x_lanterns01',
        },
    },

    ['wagonarmoured01x'] = {
        label = 'Armored Wagon',
        extras = {},
        liveries = {
            [0]  = 'Livery 1',
            [1]  = 'Livery 1a',
            [2]  = 'Livery 1b',
            [3]  = 'Livery 2',
            [4]  = 'Livery 2a',
            [5]  = 'Livery 2b',
            [6]  = 'Livery 3',
            [7]  = 'Livery 3a',
            [8]  = 'Livery 3b',
            [9]  = 'Livery 4',
            [10] = 'Livery 4a',
            [11] = 'Livery 4b',
            [12] = 'Livery 5',
            [13] = 'Livery 5a',
            [14] = 'Livery 5b',
            [15] = 'Livery 6',
            [16] = 'Livery 6a',
            [17] = 'Livery 6b',
            [18] = 'Livery 7',
            [19] = 'Livery 7a',
            [20] = 'Livery 7b',
            [21] = 'Livery 8',
            [22] = 'Livery 8a',
            [23] = 'Livery 8b',
            [24] = 'Livery 9',
            [25] = 'Livery 9a',
            [26] = 'Livery 9b',
            [27] = 'Livery 10',
            [28] = 'Livery 10a',
            [29] = 'Livery 10b',
            [30] = 'Livery 10c',
        },
        propsets = {},
        lanterns = {
            base = 'pg_veh_wagonarmoured01x_lanterns01',
        },
    },

    ['armoredCar03x'] = {
        label = 'Armored Car',
        extras = {
            [5] = 'Top Hatch',
            [6] = 'Side Door',
            [7] = 'Rear Door',
        },
        liveries = {},
        propsets = {
            general = {
                'pg_veh_armoredCar02x_1',
            },
        },
        lanterns = {},
    },

    ['wagonPrison01x'] = {
        label = 'Prison Wagon',
        extras = {},
        liveries = {},
        propsets = {},
        lanterns = {
            base = 'pg_veh_wagonPrison01x_lanterns01',
        },
    },

    ['wagonDairy01x'] = {
        label = 'Dairy Wagon',
        extras = {},
        liveries = {
            [0] = 'Kauffman',
            [1] = 'Kauffman Worn',
        },
        propsets = {
            general = {
                'pg_delivery_dairy01x',
            },
        },
        lanterns = {},
    },

    ['wagonWork01x'] = {
        label = 'Work Wagon',
        extras = {},
        liveries = {
            [0] = 'Wakefield',
        },
        propsets = {},
        lanterns = {},
    },

    ['wagontraveller01x'] = {
        label = 'Traveller Wagon',
        extras = {},
        liveries = {
            [0] = 'Traveller Red Yellow',
        },
        propsets = {},
        lanterns = {},
    },

    ['coal_wagon'] = {
        label = 'Coal Wagon',
        extras = {},
        liveries = {
            [0] = 'M. Harris 01',
            [1] = 'Jameson 01',
            [2] = 'M. Harris 02',
            [3] = 'Jameson 02',
        },
        propsets = {
            general = {
                'pg_delivery_Coal01x',
            },
        },
        lanterns = {
            tier1 = 'pg_teamster_coalwagon_lightupgrade1',
            tier2 = 'pg_teamster_coalwagon_lightupgrade2',
            tier3 = 'pg_teamster_coalwagon_lightupgrade3',
        },
    },

    ['ArmySupplyWagon'] = {
        label = 'Army Supply Wagon',
        extras = {},
        liveries = {
            [0] = 'US Army',
        },
        propsets = {
            general = {
                'pg_rc_monroe1_01x',
            },
        },
        lanterns = {
            base = 'pg_veh_ArmySupplyWagon_lanterns01',
        },
    },

    -- -------------------------------------------------------------------------
    -- HUNTING WAGON
    -- -------------------------------------------------------------------------

    ['Huntercart01'] = {
        label = 'Hunting Wagon',
        extras = {},
        liveries = {
            [0] = 'Hunt 0',
            [1] = 'Hunt 1',
            [2] = 'Hunt 2',
            [3] = 'Hunt 3',
            [4] = 'Hunt 4',
            [5] = 'Hunt 5',
        },
        propsets = {
            general = {
                'pg_mp005_huntingWagonTarp01',
            },
        },
        lanterns = {
            base  = 'pg_veh_cart06_lanterns01',
            tier1 = 'pg_teamster_cart06_lightupgrade1',
            tier2 = 'pg_teamster_cart06_lightupgrade2',
            tier3 = 'pg_teamster_cart06_lightupgrade3',
            special = 'pg_re_deadbodies01x_lights',
        },
    },

    -- -------------------------------------------------------------------------
    -- WAR WAGON
    -- -------------------------------------------------------------------------

    ['warWagon2'] = {
        label = 'War Wagon',
        extras = {},
        liveries = {
            [0] = 'Simple Lining',
            [1] = 'Double Lining',
            [2] = 'Tapered',
            [3] = 'Gold Leaf',
        },
        propsets = {},
        lanterns = {},
    },

    -- -------------------------------------------------------------------------
    -- HORSE CARTS
    -- -------------------------------------------------------------------------

    ['logwagon'] = {
        label = 'Log Wagon',
        extras = {},
        liveries = {},
        propsets = {
            general = {
                'pg_veh_logwagon_1',
            },
        },
        lanterns = {},
    },

    ['logwagon2'] = {
        label = 'Log Wagon (Double)',
        extras = {},
        liveries = {},
        propsets = {
            general = {
                'pg_veh_logwagon2_1',
            },
        },
        lanterns = {},
    },

}
