local svConfig = {}

 svConfig.versionChecker = true
 svConfig.supportChecker = true

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    if GetCurrentResourceName() ~= 'chatUI' and svConfig.supportChecker == true then
        print('^6[Warning]^0 For better support, it is recommended that "'..GetCurrentResourceName().. '" be renamed to "chatUI"')
    end
end)
