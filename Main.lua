shared.JsAg7QNrWqqXstQWwFTq = warn("Success.")
local NT = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local http_request = syn.request or request or (http and http.request)
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local PlaceID = game.PlaceId
local get = setmetatable({}, {
    __index = function(a, b)
        return game:GetService(b) or game[b]
    end
})
local player = get.Players.LocalPlayer
local Find = get.FindFirstChild
repeat task.wait() until game:IsLoaded()
local cd = game:GetService("Workspace").GyaSacTable.GyaSacIndicator.ClickDetector

local xzv = Instance.new("ScreenGui", game.CoreGui)
xzv.Name = "JsAg7QNrWqqXstQWwFTq"


--FUNCTIONS
function Notify(StatusP, Heading, Body)
    NT.new(StatusP, Heading, Body, true, 5, function()
    end)
end

function SHop()
    local Api = "https://games.roblox.com/v1/games/"

    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    function ListServers(cursor)
    local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
    return HttpService:JSONDecode(Raw)
    end

    local Server, Next; repeat
    local Servers = ListServers(Next)
    Server = Servers.data[1]
    Next = Servers.nextPageCursor
    until Server

    TeleportService:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end

function WBHK(State, Status)
	if Ping then
	local embed1 = 
	{
		["content"] = "@everyone",
		["embeds"] = {{
			["title"] = "__**Saint X**__",
			["description"] = State,
			["type"] = "rich",
			["color"] = tonumber(0x0062ff),
			["fields"] = {
				{
					["name"] = "Current amount of sacs:",
					["value"] = Status,
					["inline"] = true
				},
			}
		}}
	}
	local a = http_request({
		Url = Hook,
		Headers = {['Content-Type'] = 'application/json'};
		Body = game:GetService("HttpService"):JSONEncode(embed1);
		Method = "POST";
	})
else
	local embed1 = 
	{
		["content"] = "",
		["embeds"] = {{
			["title"] = "__**Saint X**__",
			["description"] = State,
			["type"] = "rich",
			["color"] = tonumber(0x0062ff),
			["fields"] = {
				{
					["name"] = "Current amount of sacs:",
					["value"] = Status,
					["inline"] = true
				},
			}
		}}
	}
	local a = http_request({
		Url = Hook,
		Headers = {['Content-Type'] = 'application/json'};
		Body = game:GetService("HttpService"):JSONEncode(embed1);
		Method = "POST";
	})
end	
end

--Main Farm

loadstring(game:HttpGet("https://raw.githubusercontent.com/Saint0-0/Ro_Ghoul_Autofarm/main/Init.lua"))()

--INSTANCES

while wait() do
    if not Find(workspace.NPCSpawns["GyakusatsuSpawn"], "Gyakusatsu") then
        Notify("Error", "Status", "Gyakusatsu not found. Hopping.")
		print("not found")
        for i = 1, math.huge do
            wait(.2)
            SHop()
        end
    else
        Notify("Success", "Status", "Gyakusatsu found!")
		print("found")
		game:GetService("ReplicatedStorage").Remotes.Race.Chose:InvokeServer(Side)
		fireclickdetector(cd)
		task.wait(1)
		local SacCount = game:GetService("Players").LocalPlayer.PlayerGui.GyakusatsuGui.BG.Frame.Sacs.SacsIcon.SacCount
        WBHK("Gyakusatsu has been found!", SacCount.Text)
        keypress(48)
        LoadGUI()
    end
end
