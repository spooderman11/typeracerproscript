-- start of CODE and btw credits to some random guy on the internet for the "g" function (which finds letters :3)
local settings = getgenv().settings_table[getgenv().selected_settings] or { wpmlimit = 199, keydelay = 0.050 }
getgenv().wpmlimit = settings.wpmlimit
getgenv().keydelay = settings.keydelay


local a=game:GetService("VirtualInputManager")
local b=game:GetService("Players")
local c=b.LocalPlayer
local d=c.PlayerGui
local e=d.LocalMain
local f=identifyexecutor()
if f:find("Solara") then c:Kick("Solara is not supported.") while true do end end
local function g()
    for h,i in pairs(getgc()) do
        if type(i)=="function" then
            local j=getfenv(i)
            if j.script==e then
                local k=debug.getconstants(i)
                if k[8]=="idXTO3JVlV0CBTmiSbaQ" then
                    return debug.getupvalue(i,4)
                end
            end
        end
    end
end
local l=g()
for m,n in pairs(l) do
    local o=string.upper(n)
    local p=o~=" " and Enum.KeyCode[o] or 32
    a:SendKeyEvent(1,p,0,nil)
    a:SendKeyEvent(0,p,0,nil)
    while tonumber(c.PlayerGui.ScreenGui.Main.RaceScreen.LiveStats.WPM.Stat.Text)>getgenv().wpmlimit do
        task.wait()
    end
    task.wait(getgenv().keydelay)
    if game.Workspace:FindFirstChild("Doll") then
        while game:GetService("SoundService").DollSaying.TimePosition>5 or game:GetService("SoundService").DollSaying.TimePosition<=0 do
            task.wait()
        end
    end
end
