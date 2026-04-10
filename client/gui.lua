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
        if v['Current'] >= 1584350 then
            SkillLevel = 'Level 50'
        elseif v['Current'] <= 1527300 then
            SkillLevel = 'Level 49'
        elseif v['Current'] <= 1471100 then
            SkillLevel = 'Level 48'
        elseif v['Current'] <= 1415800 then
            SkillLevel = 'Level 47'
        elseif v['Current'] <= 1361400 then
            SkillLevel = 'Level 46'
        elseif v['Current'] <= 1308100 then
            SkillLevel = 'Level 45'
        elseif v['Current'] <= 1255600 then
            SkillLevel = 'Level 44'
        elseif v['Current'] <= 1229800 then
            SkillLevel = 'Level 43'
        elseif v['Current'] <= 1178800 then
            SkillLevel = 'Level 42'
        elseif v['Current'] <= 1128800 then
            SkillLevel = 'Level 41'
        elseif v['Current'] <= 1079800 then
            SkillLevel = 'Level 40'
        elseif v['Current'] <= 1031800 then
            SkillLevel = 'Level 39'
        elseif v['Current'] <= 984700 then
            SkillLevel = 'Level 38'
        elseif v['Current'] <= 938700 then
            SkillLevel = 'Level 37'
        elseif v['Current'] <= 849600 then
            SkillLevel = 'Level 36'
        elseif v['Current'] <= 806500 then
            SkillLevel = 'Level 35'
        elseif v['Current'] <= 764500 then
            SkillLevel = 'Level 34'
        elseif v['Current'] <= 723400 then
            SkillLevel = 'Level 33'
        elseif v['Current'] <= 683400 then
            SkillLevel = 'Level 32'
        elseif v['Current'] <= 644500 then
            SkillLevel = 'Level 31'
        elseif v['Current'] <= 606500 then
            SkillLevel = 'Level 30'
        elseif v['Current'] <= 569600 then
            SkillLevel = 'Level 29'
        elseif v['Current'] <= 533800 then
            SkillLevel = 'Level 28'
        elseif v['Current'] <= 499000 then
            SkillLevel = 'Level 27'
        elseif v['Current'] <= 465200 then
            SkillLevel = 'Level 26'
        elseif v['Current'] <= 432600 then
            SkillLevel = 'Level 25'
        elseif v['Current'] <= 401000 then
            SkillLevel = 'Level 24'
        elseif v['Current'] <= 370500 then
            SkillLevel = 'Level 23'
        elseif v['Current'] <= 341000 then
            SkillLevel = 'Level 22'
        elseif v['Current'] <= 312700 then
            SkillLevel = 'Level 21'
        elseif v['Current'] <= 285500 then
            SkillLevel = 'Level 20'
        elseif v['Current'] <= 259400 then
            SkillLevel = 'Level 19'
        elseif v['Current'] <= 234500 then
            SkillLevel = 'Level 18'
        elseif v['Current'] <= 210700 then
            SkillLevel = 'Level 17'
        elseif v['Current'] <= 188000 then
            SkillLevel = 'Level 16'
        elseif v['Current'] <= 166500 then
            SkillLevel = 'Level 15'
        elseif v['Current'] <= 146200 then
            SkillLevel = 'Level 14'
        elseif v['Current'] <= 127100 then
            SkillLevel = 'Level 13'
        elseif v['Current'] <= 109200 then
            SkillLevel = 'Level 12'
        elseif v['Current'] <= 92500 then
            SkillLevel = 'Level 11'
        elseif v['Current'] <= 77100 then
            SkillLevel = 'Level 10'
        elseif v['Current'] <= 63000 then
            SkillLevel = 'Level 9'
        elseif v['Current'] <= 50200 then
            SkillLevel = 'Level 8'
        elseif v['Current'] <= 38700 then
            SkillLevel = 'Level 7'
        elseif v['Current'] <= 28500 then
            SkillLevel = 'Level 6'
        elseif v['Current'] <= 18800 then
            SkillLevel = 'Level 5'
        elseif v['Current'] <= 8250 then
            SkillLevel = 'Level 4'
        elseif v['Current'] <= 2531 then
            SkillLevel = 'Level 3'
        elseif v['Current'] <= 750 then
            SkillLevel = 'Level 2'
        elseif v['Current'] <= 325 then
            SkillLevel = 'Level 1'
        elseif v['Current'] <= 0 then
            SkillLevel = 'Level 0'
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
        if v['Current'] < 2 then
            SkillLevel = 'Level 0 - XP: '..math.round(v['Current'])
            v['Min'] = 1
            v['Max'] = 2
        elseif v['Current'] > 2 and v['Current'] <= 325 then
            SkillLevel = 'Level 1 - XP: '..math.round(v['Current'])
            v['Min'] = 1
            v['Max'] = 325
        elseif v['Current'] > 325 and v['Current'] <= 750 then
            SkillLevel = 'Level 2 - XP: '..math.round(v['Current'])
            v['Min'] = 325
            v['Max'] = 750
        elseif v['Current'] > 750 and v['Current'] <= 2531 then
            SkillLevel = 'Level 3 - XP: '..math.round(v['Current'])
            v['Min'] = 750
            v['Max'] = 2531
        elseif v['Current'] > 2531 and v['Current'] <= 8250 then
            SkillLevel = 'Level 4 - XP: '..math.round(v['Current'])
            v['Min'] = 2531
            v['Max'] = 8250
        elseif v['Current'] > 8250 and v['Current'] <= 18800 then
            SkillLevel = 'Level 5 - XP: '..math.round(v['Current'])
            v['Min'] = 8250
            v['Max'] = 18800
        elseif v['Current'] > 18800 and v['Current'] <= 28500 then
            SkillLevel = 'Level 6 - XP: '..math.round(v['Current'])
            v['Min'] = 18800
            v['Max'] = 28500
        elseif v['Current'] > 28500 and v['Current'] <= 38700 then
            SkillLevel = 'Level 7 - XP: '..math.round(v['Current'])
            v['Min'] = 28500
            v['Max'] = 38700
        elseif v['Current'] > 38700 and v['Current'] <= 50200 then
            SkillLevel = 'Level 8 - XP: '..math.round(v['Current'])
            v['Min'] = 38700
            v['Max'] = 50200
        elseif v['Current'] > 50200 and v['Current'] <= 63000 then
            SkillLevel = 'Level 9 - XP: '..math.round(v['Current'])
            v['Min'] = 50200
            v['Max'] = 63000
        elseif v['Current'] > 63000 and v['Current'] <= 77100 then
            SkillLevel = 'Level 10 - XP: '..math.round(v['Current'])
            v['Min'] = 63000
            v['Max'] = 77100
        elseif v['Current'] > 77100 and v['Current'] <= 92500 then
            SkillLevel = 'Level 11 - XP: '..math.round(v['Current'])
            v['Min'] = 77100
            v['Max'] = 92500
        elseif v['Current'] > 92500 and v['Current'] <= 109200 then
            SkillLevel = 'Level 12 - XP: '..math.round(v['Current'])
            v['Min'] = 92500
            v['Max'] = 109200
        elseif v['Current'] > 109200 and v['Current'] <= 127100 then
            SkillLevel = 'Level 13 - XP: '..math.round(v['Current'])
            v['Min'] = 109200
            v['Max'] = 127100
        elseif v['Current'] > 127100 and v['Current'] <= 146200 then
            SkillLevel = 'Level 14 - XP: '..math.round(v['Current'])
            v['Min'] = 127100
            v['Max'] = 146200
        elseif v['Current'] > 146200 and v['Current'] <= 166500 then
            SkillLevel = 'Level 15 - XP: '..math.round(v['Current'])
            v['Min'] = 146200
            v['Max'] = 166500
        elseif v['Current'] > 166500 and v['Current'] <= 188000 then
            SkillLevel = 'Level 16 - XP: '..math.round(v['Current'])
            v['Min'] = 166500
            v['Max'] = 188000
        elseif v['Current'] > 188000 and v['Current'] <= 210700 then
            SkillLevel = 'Level 17 - XP: '..math.round(v['Current'])
            v['Min'] = 188000
            v['Max'] = 210700
        elseif v['Current'] > 210700 and v['Current'] <= 234500 then
            SkillLevel = 'Level 18 - XP: '..math.round(v['Current'])
            v['Min'] = 210700
            v['Max'] = 234500
        elseif v['Current'] > 234500 and v['Current'] <= 259400 then
            SkillLevel = 'Level 19 - XP: '..math.round(v['Current'])
            v['Min'] = 234500
            v['Max'] = 259400
        elseif v['Current'] > 259400 and v['Current'] <= 285500 then
            SkillLevel = 'Level 20 - XP: '..math.round(v['Current'])
            v['Min'] = 259400
            v['Max'] = 285500
        elseif v['Current'] > 285500 and v['Current'] <= 312700 then
            SkillLevel = 'Level 21 - XP: '..math.round(v['Current'])
            v['Min'] = 285500
            v['Max'] = 312700
        elseif v['Current'] > 312700 and v['Current'] <= 341000 then
            SkillLevel = 'Level 22 - XP: '..math.round(v['Current'])
            v['Min'] = 312700
            v['Max'] = 341000
        elseif v['Current'] > 341000 and v['Current'] <= 370500 then
            SkillLevel = 'Level 23 - XP: '..math.round(v['Current'])
            v['Min'] = 341000
            v['Max'] = 370500
        elseif v['Current'] > 370500 and v['Current'] <= 401000 then
            SkillLevel = 'Level 24 - XP: '..math.round(v['Current'])
            v['Min'] = 370500
            v['Max'] = 401000
        elseif v['Current'] > 401000 and v['Current'] <= 432600 then
            SkillLevel = 'Level 25 - XP: '..math.round(v['Current'])
            v['Min'] = 401000
            v['Max'] = 432600
        elseif v['Current'] > 432600 and v['Current'] <= 465200 then
            SkillLevel = 'Level 26 - XP: '..math.round(v['Current'])
            v['Min'] = 432600
            v['Max'] = 465200
        elseif v['Current'] > 465200 and v['Current'] <= 499000 then
            SkillLevel = 'Level 27 - XP: '..math.round(v['Current'])
            v['Min'] = 465200
            v['Max'] = 499000
        elseif v['Current'] > 499000 and v['Current'] <= 533800 then
            SkillLevel = 'Level 28 - XP: '..math.round(v['Current'])
            v['Min'] = 499000
            v['Max'] = 533800
        elseif v['Current'] > 533800 and v['Current'] <= 569600 then
            SkillLevel = 'Level 29 - XP: '..math.round(v['Current'])
            v['Min'] = 533800
            v['Max'] = 569600
        elseif v['Current'] > 569600 and v['Current'] <= 606500 then
            SkillLevel = 'Level 30 - XP: '..math.round(v['Current'])
            v['Min'] = 569600
            v['Max'] = 606500
        elseif v['Current'] > 606500 and v['Current'] <= 644500 then
            SkillLevel = 'Level 31 - XP: '..math.round(v['Current'])
            v['Min'] = 606500
            v['Max'] = 644500
        elseif v['Current'] > 644500 and v['Current'] <= 683400 then
            SkillLevel = 'Level 32 - XP: '..math.round(v['Current'])
            v['Min'] = 644500
            v['Max'] = 683400
        elseif v['Current'] > 683400 and v['Current'] <= 723400 then
            SkillLevel = 'Level 33 - XP: '..math.round(v['Current'])
            v['Min'] = 683400
            v['Max'] = 723400
        elseif v['Current'] > 723400 and v['Current'] <= 764500 then
            SkillLevel = 'Level 34 - XP: '..math.round(v['Current'])
            v['Min'] = 723400
            v['Max'] = 764500
        elseif v['Current'] > 764500 and v['Current'] <= 806500 then
            SkillLevel = 'Level 35 - XP: '..math.round(v['Current'])
            v['Min'] = 764500
            v['Max'] = 806500
        elseif v['Current'] > 806500 and v['Current'] <= 849600 then
            SkillLevel = 'Level 36 - XP: '..math.round(v['Current'])
            v['Min'] = 806500
            v['Max'] = 849600
        elseif v['Current'] > 849600 and v['Current'] <= 938700 then
            SkillLevel = 'Level 37 - XP: '..math.round(v['Current'])
            v['Min'] = 849600
            v['Max'] = 938700
        elseif v['Current'] > 938700 and v['Current'] <= 984700 then
            SkillLevel = 'Level 38 - XP: '..math.round(v['Current'])
            v['Min'] = 938700
            v['Max'] = 984700
        elseif v['Current'] > 984700 and v['Current'] <= 1031800 then
            SkillLevel = 'Level 39 - XP: '..math.round(v['Current'])
            v['Min'] = 984700
            v['Max'] = 1031800
        elseif v['Current'] > 1031800 and v['Current'] <= 1079800 then
            SkillLevel = 'Level 40 - XP: '..math.round(v['Current'])
            v['Min'] = 1031800
            v['Max'] = 1079800
        elseif v['Current'] > 1079800 and v['Current'] <= 1128800 then
            SkillLevel = 'Level 41 - XP: '..math.round(v['Current'])
            v['Min'] = 1079800
            v['Max'] = 1128800
        elseif v['Current'] > 1128800 and v['Current'] <= 1178800 then
            SkillLevel = 'Level 42 - XP: '..math.round(v['Current'])
            v['Min'] = 1128800
            v['Max'] = 1178800
        elseif v['Current'] > 1178800 and v['Current'] <= 1229800 then
            SkillLevel = 'Level 43 - XP: '..math.round(v['Current'])
            v['Min'] = 1178800
            v['Max'] = 1229800
        elseif v['Current'] > 1229800 and v['Current'] <= 1255600 then
            SkillLevel = 'Level 44 - XP: '..math.round(v['Current'])
            v['Min'] = 1229800
            v['Max'] = 1255600
        elseif v['Current'] > 1255600 and v['Current'] <= 1308100 then
            SkillLevel = 'Level 45 - XP: '..math.round(v['Current'])
            v['Min'] = 1255600
            v['Max'] = 1308100
        elseif v['Current'] > 1308100 and v['Current'] <= 1361400 then
            SkillLevel = 'Level 46 - XP: '..math.round(v['Current'])
            v['Min'] = 1308100
            v['Max'] = 1361400
        elseif v['Current'] > 1361400 and v['Current'] <= 1415800 then
            SkillLevel = 'Level 47 - XP: '..math.round(v['Current'])
            v['Min'] = 1361400
            v['Max'] = 1415800
        elseif v['Current'] > 1415800 and v['Current'] <= 1471100 then
            SkillLevel = 'Level 48 - XP: '..math.round(v['Current'])
            v['Min'] = 1415800
            v['Max'] = 1471100
        elseif v['Current'] > 1471100 and v['Current'] <= 1584350 then
            SkillLevel = 'Level 49 - XP: '..math.round(v['Current'])
            v['Min'] = 1471100
            v['Max'] = 1584350
        elseif v['Current'] > 1584350 then
            SkillLevel = 'Level 50 - XP: '..math.round(v['Current'])
            v['Min'] = 1584350
            v['Max'] = 10000000
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
