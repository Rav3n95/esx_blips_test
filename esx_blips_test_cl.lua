local blip = {
    {
        GetCurrentResourceName() .. '_1',
        vec2(-808.1414, -1235.2521),
        'Example 1 - Police',
        1,
        0.7,
        1,
        'Police'
    },
    {
        GetCurrentResourceName() .. '_2',
        vec2(-787.6, -1197.45),
        'Example 2 - Ambulance',
        1,
        0.7,
        2,
        'Ambulance'
    },
    {
        GetCurrentResourceName() .. '_3',
        vec2(-797.6, -1197.45),
        'Example 3 - Default',
        1,
        0.7,
        3
    }
}

local category = 'default'

RegisterCommand('blipAdd', function()
    exports['esx_blips']:Add(blip)
end, false)

RegisterCommand('blipAddCircle', function()
    local testArray = {
        {
            GetCurrentResourceName() .. '_circle_1',
            vec2(-777.6, -1197.45),
            50.0,
            2
        }
    }
    exports['esx_blips']:AddCircle(testArray)
end, false)

RegisterCommand('blipRemove', function(source, args)
    exports['esx_blips']:Remove(args[1])
end, false)

RegisterCommand('ChangeAllState', function(source, args)
    local state = true
    if args[1] == '1' then state = true elseif not args then state = false end
    exports['esx_blips']:ChangeAllState(state)
end, false)

RegisterCommand('ChangeCategoryState', function(source, args)
    local state = true
    if args[1] then category = args[1] end
    if args[2] then state = args[2] end
    exports['esx_blips']:ChangeCategoryState(category, state)
end, false)

RegisterCommand('blipWayPoint', function(source, args, raw)
    exports['esx_blips']:SetWayPoint('test_1')
end, false)