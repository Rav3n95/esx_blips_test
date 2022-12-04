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

RegisterCommand('serverBlipAdd', function(source)
    exports['esx_blips']:Add(source, blip)
end, false)

RegisterCommand('serverBlipAddCircle', function(source)
    local testArray = {
        {
            GetCurrentResourceName() .. '_circle_1',
            vec2(-777.6, -1197.45),
            50.0,
            2
        }
    }
    exports['esx_blips']:AddCircle(source, testArray)
end, false)

RegisterCommand('serverBlipRemove', function(source, args)
    exports['esx_blips']:Remove(source, args[1])
end, false)

RegisterCommand('serverBlipChangeAllState', function(source, args)
    local state = true
    if args[1] == '1' then state = true elseif not args then state = false end
    exports['esx_blips']:ChangeAllState(source, state)
end, false)

RegisterCommand('serverBlipChangeCategoryState', function(source, args)
    local state = true
    if args[1] then category = args[1] end
    if args[2] then state = args[2] end
    exports['esx_blips']:ChangeCategoryState(source, category, state)
end, false)

RegisterCommand('serverBlipWayPoint', function(source, args, raw)
    exports['esx_blips']:SetWayPoint(source, 'test_1')
end, false)
