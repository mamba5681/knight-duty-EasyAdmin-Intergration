AddEventHandler("EasyAdmin:BuildSettingsOptions", function(source)
    if Knight_Duty.unit == nil then
        onduty = false
    else
        if Knight_Duty.unit.dept == "STAFF" then
            onduty = true
        else
            onduty = false
        end
    end
    if not onduty then
        repeat
            Wait(1)
        until _menuPool:IsAnyMenuOpen()
        _menuPool:CloseAllMenus()
        exports['mythic_notify']:DoHudText('error', 'You must be on duty as a staff member to use EasyAdmin.')
    end
end)