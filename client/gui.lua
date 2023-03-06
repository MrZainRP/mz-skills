local QBCore = exports['qb-core']:GetCoreObject()

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
    
RegisterCommand(Config.Skillmenu, function()
    createSkillMenu()
end)

RegisterNetEvent("mz-skills:client:CheckSkills")
AddEventHandler("mz-skills:client:CheckSkills", function()
    createSkillMenu()
end)