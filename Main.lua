shared.JsAg7QNrWqqXstQWwFTq=warn("Success.")local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua",true))()local c=syn.request or request or(http and http.request)local d=game:GetService("TeleportService")local e=game:GetService("HttpService")local f=game:GetService("TweenService")local f=game.PlaceId;local f=setmetatable({},{__index=function(b,b)return game:GetService(b)or game[b]end})local g=f.Players.LocalPlayer;local f=f.FindFirstChild;repeat task.wait()until game:IsLoaded()local g=game:GetService("Workspace").GyaSacTable.GyaSacIndicator.ClickDetector;local h=Instance.new("ScreenGui",game.CoreGui)h.Name="JsAg7QNrWqqXstQWwFTq"function Notify(c,d,e)b.new(c,d,e,true,5,function()end)end;function SHop()local b="https://games.roblox.com/v1/games/"local c=game.PlaceId;local b=b..c.."/servers/Public?sortOrder=Asc&limit=100"function ListServers(c)local b=game:HttpGet(b..((c and"&cursor="..c)or""))return e:JSONDecode(b)end;local b,e;repeat local c=ListServers(e)b=c.data[1]e=c.nextPageCursor until b;d:TeleportToPlaceInstance(c,b.id,game.Players.LocalPlayer)end;function WBHK(b,d)if Ping then local b={["content"]="@everyone",["embeds"]={{["title"]="__**Saint X**__",["description"]=b,["type"]="rich",["color"]=tonumber(25343),["fields"]={{["name"]="Current amount of sacs:",["value"]=d,["inline"]=true}}}}}local b=c({Url=Hook,Headers={['Content-Type']='application/json'};Body=game:GetService("HttpService"):JSONEncode(b);Method="POST"})else local b={["content"]="",["embeds"]={{["title"]="__**Saint X**__",["description"]=b,["type"]="rich",["color"]=tonumber(25343),["fields"]={{["name"]="Current amount of sacs:",["value"]=d,["inline"]=true}}}}}local b=c({Url=Hook,Headers={['Content-Type']='application/json'};Body=game:GetService("HttpService"):JSONEncode(b);Method="POST"})end end;loadstring(game:HttpGet("https://raw.githubusercontent.com/Saint0-0/Ro_Ghoul_Autofarm/main/Init.lua"))()if not f(workspace.NPCSpawns["GyakusatsuSpawn"],"Gyakusatsu")then Notify("Error","Status","Gyakusatsu not found. Hopping.")print("not found")for b=1,math.huge do wait(.2)SHop()end else Notify("Success","Status","Gyakusatsu found!")print("found")game:GetService("ReplicatedStorage").Remotes.Race.Chose:InvokeServer(Side)fireclickdetector(g)task.wait(1)local b=game:GetService("Players").LocalPlayer.PlayerGui.GyakusatsuGui.BG.Frame.Sacs.SacsIcon.SacCount;WBHK("Gyakusatsu has been found!",b.Text)keypress(48)LoadGUI()end
