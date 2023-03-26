local QBCore = exports['qb-core']:GetCoreObject()

local oxmenu = exports.ox_menu

local function createSkillMenu()
    skillMenu = {}
    skillMenu[#skillMenu + 1] = {
        isHeader = true,
        header = 'Skills',
        isMenuHeader = true,
        icon = 'fas fa-chart-simple'
    }

    for k,v in pairs(Config.Skills) do
        if v['Current'] <= 100 then
            SkillLevel = 'Level 0 (Unskilled)'
        elseif v['Current'] > 100 and v['Current'] <= 200 then
            SkillLevel = 'Level 1 (Beginner)'
        elseif v['Current'] > 200 and v['Current'] <= 400 then
            SkillLevel = 'Level 2 (Amateur)'
        elseif v['Current'] > 400 and v['Current'] <= 800 then
            SkillLevel = 'Level 3 (Intermediate)'
        elseif v['Current'] > 800 and v['Current'] <= 1600 then
            SkillLevel = 'Level 4 (Competent)'
        elseif v['Current'] > 1600 and v['Current'] <= 3200 then
            SkillLevel = 'Level 5 (Skilled)'
        elseif v['Current'] > 3200 and v['Current'] <= 6400 then
            SkillLevel = 'Level 6 (Adept)'
        elseif v['Current'] > 6400 and v['Current'] <= 12800 then
            SkillLevel = 'Level 7 (Master)'
        elseif v['Current'] > 12800 then
            SkillLevel = 'Level 8 (Proficient)'
        else 
            SkillLevel = 'Unknown'
        end
        skillMenu[#skillMenu + 1] = {
            header = ''.. k .. '',
            txt = '( '..SkillLevel..' ) Total XP ( '..round1(v['Current'])..' )',
            icon = ''..v['icon']..'',
            params = {
                args = {
                    v
                }
            }
        }
    end
    exports['qb-menu']:openMenu(skillMenu)
end

local function createSkillMenuOX()
    local options = {}
    local sortedSkills = {}
    for k, v in pairs(Config.Skills) do
        v.name = k -- add name field for sorting
        table.insert(sortedSkills, v)
    end
    table.sort(sortedSkills, function(a, b)
        return a.Current < b.Current
    end)

    local options = {}
    for _, v in ipairs(sortedSkills) do
        local SkillLevel
        if v['Current'] <= 100 then
            SkillLevel = 'Level 0 - XP: '..math.round(v['Current'])
            v['Min'] = 0
            v['Max'] = 100
        elseif v['Current'] > 100 and v['Current'] <= 200 then
            SkillLevel = 'Level 1 - XP: '..math.round(v['Current'])
            v['Min'] = 100
            v['Max'] = 200
        elseif v['Current'] > 200 and v['Current'] <= 400 then
            SkillLevel = 'Level 2 - XP: '..math.round(v['Current'])
            v['Min'] = 200
            v['Max'] = 400
        elseif v['Current'] > 400 and v['Current'] <= 800 then
            SkillLevel = 'Level 3 - XP: '..math.round(v['Current'])
            v['Min'] = 400
            v['Max'] = 800
        elseif v['Current'] > 800 and v['Current'] <= 1600 then
            SkillLevel = 'Level 4 - XP: '..math.round(v['Current'])
            v['Min'] = 800
            v['Max'] = 1600
        elseif v['Current'] > 1600 and v['Current'] <= 3200 then
            SkillLevel = 'Level 5 - XP: '..math.round(v['Current'])
            v['Min'] = 1600
            v['Max'] = 3200
        elseif v['Current'] > 3200 and v['Current'] <= 6400 then
            SkillLevel = 'Level 6 - XP: '..math.round(v['Current'])
            v['Min'] = 3200
            v['Max'] = 6400
        elseif v['Current'] > 6400 and v['Current'] <= 12800 then
            SkillLevel = 'Level 7 - XP: '..math.round(v['Current'])
            v['Min'] = 6400
            v['Max'] = 12800
        elseif v['Current'] > 12800 then
            SkillLevel = 'Level 8 - XP: '..math.round(v['Current'])
            v['Min'] = 12800
            v['Max'] = 1000000
        else 
            SkillLevel = 'Unknown'
        end

        -- Calculate progress bar percentage
       
        options[#options + 1] = {
            label = v.name .. ' (' .. SkillLevel .. ')',
            description = '( '..SkillLevel..' ) Total XP ( '..math.round(v['Current'])..' )',
            icon = v['icon'],
            args = {
                v
            },
            progress = math.floor((v['Current'] - v['Min']) / (v['Max'] - v['Min']) * 100),
            colorScheme = Config.XPBarColour,
        }
    end

    lib.registerMenu({
        id = 'skill_menu',
        title = Config.SkillsTitle,
        position = Config.XPMenuPosition,
        options = options
    }, function(selected)
        print('Selected: ' .. selected)
    end)

    lib.showMenu('skill_menu')
end

RegisterCommand(Config.Skillmenu, function()
    if Config.TypeCommand and Config.UseOxMenu then
        createSkillMenuOX()
    elseif Config.TypeCommand then
        createSkillMenu()
    else 
        Wait(10)
    end
end)
        
RegisterNetEvent("mz-skills:client:CheckSkills", function()
    if Config.UseOxMenu then
        createSkillMenuOX()
    elseif not Config.TypeCommand then
        createSkillMenu()
    else 
        Wait(10)
    end
end)
