## mz-skills
- A database held skill/XP system for qb-core (and use with other mz-resources). 
- All credit to Kings#4220. This resource is based on the custom line branch of "B1-skillz" - for the original resource (with GTA V inherent modifications) please see: https://github.com/Burn-One-Studios/B1-skillz

### [ Installation ]
- Download the resource and drop it to your resource folder.
- Import the SQL file to your server's database (i.e. run the sql file and make sure the database runs)
- Add ``start mz-skills`` to your server.cfg (or simply make sure mz-skills is in your [qb] folder)

### [ Using mz-skills ]
!. To Update a skill please use the following export:
```lua
    exports["mz-skills"]:UpdateSkill(skill, amount)
```
 For example, to update "Searching" from bin-diving (as used with mz-bins)
```lua
    exports["mz-skills"]:UpdateSkill("Searching", 1)
```
 You can randomise the amount of skill gained, for example: 
 ```lua
    local searchgain = math.random(1, 3)
    exports["mz-skills"]:UpdateSkill("Searching", searchgain)
```
B. The export to check to see if a skill is equal or greater than a particular value is as follows:
```lua
    exports["mz-skills"]:CheckSkill(skill, val)
```

You can use this to lock content behind a particular level, for example:
```lua
exports["mz-skills"]:CheckSkill("Searching", 100, function(hasskill)
    if hasskill then
        TriggerEvent('mz-bins:client:Reward')
    else
        QBCore.Functions.Notify('You need at least 100XP in Searching to do this.', "error", 3500)
    end
end)
```

- The export to obtain a player's current skill to interact with other scripts is as follows:
```lua
    exports["qb-skillz"]:GetCurrentSkill(skill)
```

- For radial menu access to "skills" command add this to qb-radialmenu/config.lua - line 296 and following:
```lua
    [3] = {
        id = 'skills',
        title = 'Check Skills',
        icon = 'triangle-exclamation',
        type = 'client',
        event = 'mz-skills:client:CheckSkills',
        shouldClose = true,
    },
```

### [ Previews ]

<p align="center">
    <img src="https://raw.githubusercontent.com/Kingsage311/Kingsage311/main/assets/skillzcustom.png"/>
</p>
