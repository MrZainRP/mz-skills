Config = {}

-------------
--MZ-SKILLS--
-------------

Config.UpdateFrequency = 300                -- Seconds interval between removing values (no need to touch this)

Config.Notifications = true                 -- Notification played when skill is added (set to "false" to disable)

Config.NotifyType = 'qb'                  -- Notification type: 'qb' for QBCore notification, 'okok' for okokNotify

Config.Debug = false                        -- Set to "true" to print debugging messages

Config.UseOxMenu = false                     -- set to "true" to use ox_lib menu instead of qb-menu
-- if "Config.UseOxMenu = true", then the following parameters apply:
Config.XPBarColour = "cyan"                 -- Change the colour of your XP Bar.
Config.SkillsTitle = "MZ-SKILLS"            -- Change this to label your skill system as you see fit.
Config.XPMenuPosition = 'top-left'          -- Change the position of your XP menu ('top-left' or 'top-right' or 'bottom-left' or 'bottom-right')

Config.TypeCommand = true                   -- Set to "false" to disable the "/skills" command (or whatever word you set in the next function)

Config.Skillmenu = "habilidades"                 -- phrase typed to display skills menu (check readme.md to set to commit to radial menu)

---------------------
--GTA NATIVE SKILLS--
---------------------

Config.B1Natives = true                    -- Change to "true" to use B1-skillz native functions as well as mz-skills
                                            -- Please make sure you uncomment the "GTA NATIVE SKILLS" set out below. 
                                            -- To do so highlight all relevant lines of code and hold down "ctrl" + "k" and then press "u".

-------------
--RP SKILLS--
-------------

-- Please feel free to add/subtract the skills you are using in your city as you see fit. 
-- Please avoid taking skills away after players have already started accumulating XP. 
-- The following skills which appear in this default list are used by one or more mz- resources. 

Config.Skills = {
    ["Busqueda"] = {
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
    ["Reputacion de la calle"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRUGREP_ABILITY",
        ['icon'] = 'fas fa-cannabis',
    }, 
    ["Creacion de drogas"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRUGMAKE_ABILITY",
        ['icon'] = 'fas fa-pills',
    }, 
    ["Entrega"] = {
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
    ["Conduccion"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DRIVER_ABILITY",
        ['icon'] = 'fas fa-car-alt',
    }, 
    ["Leñador"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "TREE_ABILITY",
        ['icon'] = 'fas fa-tree',
    }, 
    ["Reputacion atracos"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "HEIST_ABILITY",
        ['icon'] = 'fa-solid fa-user-secret',
    }, 
    ["Buceo"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "DIVING_ABILITY",
        ['icon'] = 'fas fa-water',
    }, 
    ["Electrico"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = 0,
        ["Stat"] = "ELECTRICAL_ABILITY",
        ['icon'] = 'fas fa-bolt',
    }, 

---------------------
--GTA NATIVE SKILLS--
---------------------
-- PLEASE NOTE: THE FOLLOWING VALUES SHOULD ONLY BE UNCOMMENTED IF Config.B1Natives = true.

    ["Stamina"] = {
        ["Current"] = 0, -- Default value 
        ["RemoveAmount"] = -0.3, -- % to remove when updating,
        ["Stat"] = "MP0_STAMINA", -- GTA stat hashname
        ['icon'] = 'fas fa-walking',
    },
    ["Fuerza"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.3,
        ["Stat"] = "MP0_STRENGTH",
        ['icon'] = 'fas fa-dumbbell',
    },
    ["Capacidad Pulmonar"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.1,
        ["Stat"] = "MP0_LUNG_CAPACITY",
        ['icon'] = 'fas fa-heartbeat',
    },
    ["Disparo"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.1,
        ["Stat"] = "MP0_SHOOTING_ABILITY",
        ['icon'] = 'fas fa-bullseye',
    },
    ["Conduccion"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.5,
        ["Stat"] = "MP0_DRIVING_ABILITY",
        ['icon'] = 'fas fa-car-side',
    },
    ["Caballito"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.2,
        ["Stat"] = "MP0_WHEELIE_ABILITY",
        ['icon'] = 'fas fa-wheelchair',
    },
}