Config = {}

-------------
--MZ-SKILLS--
-------------

Config.UpdateFrequency = 300                -- Seconds interval between removing values (no need to touch this)

Config.Notifications = true                 -- Notification played when skill is added (set to "false" to disable)

Config.NotifyType = 'okok'                  -- Notification type: 'qb' for QBCore notification, 'okok' for okokNotify

Config.Debug = false                        -- Set to "true" to print debugging messages

Config.UseOxMenu = true                     -- set to "true" to use ox_lib menu instead of qb-menu
-- if "Config.UseOxMenu = true", then the following parameters apply:
Config.XPBarColour = "cyan"                 -- Change the colour of your XP Bar.
Config.SkillsTitle = "MZ-SKILLS"            -- Change this to label your skill system as you see fit.
Config.XPMenuPosition = 'top-left'          -- Change the position of your XP menu ('top-left' or 'top-right' or 'bottom-left' or 'bottom-right')

Config.TypeCommand = true                   -- Set to "false" to disable the "/skills" command (or whatever word you set in the next function)

Config.Skillmenu = "skills"                 -- phrase typed to display skills menu (check readme.md to set to commit to radial menu)

-------------
--RP SKILLS--
-------------

-- Please feel free to add/subtract the skills you are using in your city as you see fit. 
-- Please avoid taking skills away after players have already started accumulating XP. 
-- The following skills which appear in this default list are used by one or more mz- resources. 

Config.Skills = {
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