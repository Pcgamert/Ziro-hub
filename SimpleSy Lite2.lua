local settings = {
    SaveDecompileLogs = true, -- saves decompile logs so you dont have to decompile again
    SaveScanLogs = true, -- saves scan logs (scans for localscript to decompile) so you dont have to scan again
    ScanForNewInstance = true, -- scans for new localscript and decompile it and add it to the decompile logs
    InterceptUntilRan = true, -- blocks request until you manually run it (i recommend when bypassing keys)
    CursorOffset = -15, -- Cursor offset
    PathToDump = {game.Players.LocalPlayer, game:GetService('ReplicatedStorage')} -- path to dump

}
--// Init 
_G.data = settings
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/SimpleSpy%20lite.lua'))()
warn "Need reolad game If closed" 
