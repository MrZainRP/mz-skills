Config = {}

Config.UpdateFrequency = 300                -- Seconds interval between removing values (no need to touch this)

Config.Notifications = true                 -- Notification played when skill is added (set to "false" to disable)

Config.NotifyType = 'qb'                    -- Notification type: 'qb' for QBCore notification, 'okok' for okokNotify

Config.Debug = false                        -- Set to "true" to print debugging messages

Config.Skillmenu = "skills"                 -- phrase typed to display skills menu (check readme.md to set to commit to radial menu)

Config.Skills = {
    ["Stamina"] = {
        ["Current"] = 0, -- Default value 
        ["RemoveAmount"] = -0.3, -- % to remove when updating,
        ["Stat"] = "MP0_STAMINA", -- GTA stat hashname
        ['icon'] = 'fas fa-walking',
    },

    ["Strength"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.3,
        ["Stat"] = "MP0_STRENGTH",
        ['icon'] = 'fas fa-dumbbell',
    },

    ["Lung Capacity"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.1,
        ["Stat"] = "MP0_LUNG_CAPACITY",
        ['icon'] = 'fas fa-heartbeat',
    },

    ["Shooting"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.1,
        ["Stat"] = "MP0_SHOOTING_ABILITY",
        ['icon'] = 'fas fa-bullseye',
    },

    ["Driving"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.5,
        ["Stat"] = "MP0_DRIVING_ABILITY",
        ['icon'] = 'fas fa-car-side',
    },

    ["Wheelie"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.2,
        ["Stat"] = "MP0_WHEELIE_ABILITY",
        ['icon'] = 'fas fa-wheelchair',
    },
    ["Searching"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "BINDIVE_ABILITY",
        ['icon'] = 'fas fa-trash', 
    }, 
    ["Scraping"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "SCRAP_ABILITY",
        ['icon'] = 'fas fa-screwdriver', 
    },
    ["Hacking"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "HACK_ABILITY",
        ['icon'] = 'fas fa-laptop-code',
    }, 
    ["Street Reputation"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRUGREP_ABILITY",
        ['icon'] = 'fas fa-cannabis',
    }, 
    ["Drug Manufacture"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRUGMAKE_ABILITY",
        ['icon'] = 'fas fa-pills',
    }, 
    ["Delivery Runner"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "RUNNER_ABILITY",
        ['icon'] = 'fas fa-car',
    }, 
    ["Hitman"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "HITMAN_ABILITY",
        ['icon'] = 'fas fa-skull',
    }, 
    ["Driving"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRIVER_ABILITY",
        ['icon'] = 'fas fa-car-alt',
    }, 
    ["Lumberjack"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "TREE_ABILITY",
        ['icon'] = 'fas fa-tree',
    }, 
    ["Heist Reputation"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "HEIST_ABILITY",
        ['icon'] = 'fa-solid fa-user-secret',
    }, 
    ["Diving"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DIVING_ABILITY",
        ['icon'] = 'fas fa-water',
    }, 
    ["Electrical"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "ELECTRICAL_ABILITY",
        ['icon'] = 'fas fa-bolt',
    }, 
}