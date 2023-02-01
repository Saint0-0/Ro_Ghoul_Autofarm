function OcgAZK() -- Load GUI function if check is passed
	if not shared.JsAg7QNrWqqXstQWwFTq == nil and shared.cykablyat == nil and not game.CoreGui["JsAg7QNrWqqXstQWwFTq"] then
		task.wait(1)
		game:Shutdown()
	else
		local get = setmetatable({}, {
			__index = function(a, b)
				return game:GetService(b) or game[b]
			end
		})
		local cd = game:GetService("Workspace").GyaSacTable.GyaSacIndicator.ClickDetector
		local ServerHop = loadstring(game:HttpGet("https://raw.githubusercontent.com/Saint0-0/Utility/main/Server%20Hop.lua"))()
		local NT = loadstring(game:HttpGet("https://raw.githubusercontent.com/Saint0-0/TEST/main/Notification.lua", true))()
		local HttpService = game:GetService("HttpService")
		local ContentProvider = game:GetService("ContentProvider")
		local player = get.Players.LocalPlayer
		local Debug = readfile("Exulus/Cache/DebugData.exu")
		ServerHop:ClearCache()
            
            --// Z4G's Variables
		local gui = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Saint0-0/TEST/main/Library.lua"))():AddWindow("Exulus", {
			main_color = Color3.fromRGB(0, 0, 0),
			min_size = Vector2.new(373, 340),
			can_resize = false
		})
		repeat
			wait()
		until player:FindFirstChild("PlayerFolder")
		local team, remotes, stat = player.PlayerFolder.Customization.Team.Value, get.ReplicatedStorage.Remotes, player.PlayerFolder.StatsFunction
		local oldtick, farmtick = 0, 0
		local camera = workspace.CurrentCamera
		local tab1, tab2, tab3, tab4 = gui:AddTab("Main"), gui:AddTab("Farm Options"), gui:AddTab("Trainer"), gui:AddTab("Misc")
		local btn, btn2, btn3, key, nmc, trainers, labels
		local findobj, findobjofclass, waitforobj, fire, invoke = get.FindFirstChild, get.FindFirstChildOfClass, get.WaitForChild, Instance.new("RemoteEvent").FireServer, Instance.new("RemoteFunction").InvokeServer
		local function format(number)
			local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
			return i .. k:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. j
		end
		local Assets = {
			"http://www.roblox.com/asset/?id=6240829846"
		}
		local SetSkills = {
			E = false,
			F = false,
			C = false,
			R = false
		}
		local myData = loadstring(game:HttpGet("https://raw.githubusercontent.com/z4gs/scripts/master/Settings.lua"))().new("Exulus", {
			Skills = {
				E = false,
				F = false,
				C = false,
				R = false
			},
			Boss = {
				["Gyakusatsu"] = true,
				["Eto Yoshimura"] = false,
				["Koutarou Amon"] = false,
				["Nishiki Nishio"] = false
			},
			DistanceFromNpc = 5,
			DistanceFromBoss = 8,
			TeleportSpeed = 150,
			ReputationFarm = false,
			ReputationCashout = false,
			AutoKickWhitelist = ""
		})
		local array = {
			boss = {
				["Gyakusatsu"] = 1250,
				["Eto Yoshimura"] = 1250,
				["Koutarou Amon"] = 750,
				["Nishiki Nishio"] = 250
			},
			npcs = {
				["Aogiri Members"] = "GhoulSpawns",
				Investigators = "CCGSpawns",
				Humans = "HumanSpawns"
			},
			stages = {
				"One",
				"Two",
				"Three",
				"Four",
				"Five",
				"Six"
			},
			skills = {
				E = player.PlayerFolder.Special1CD,
				F = player.PlayerFolder.Special3CD,
				C = player.PlayerFolder.SpecialBonusCD,
				R = player.PlayerFolder.Special2CD
			}
		}
		local Toggles = {}
		local Exulus = {
			["_FarmGUI"] = Instance.new("ScreenGui");
			["_MainFrame"] = Instance.new("Frame");
			["_Wallpaper"] = Instance.new("ImageLabel");
			["_SkillsFrame"] = Instance.new("Frame");
			["_UICorner"] = Instance.new("UICorner");
			["_UIStroke"] = Instance.new("UIStroke");
			["_PageNameSkills"] = Instance.new("TextLabel");
			["_SorterSkills"] = Instance.new("Frame");
			["_UIListLayout"] = Instance.new("UIListLayout");
			["_UIPadding"] = Instance.new("UIPadding");
			["_E"] = Instance.new("ImageButton");
			["_UICorner1"] = Instance.new("UICorner");
			["_ToggleText"] = Instance.new("TextLabel");
			["_F"] = Instance.new("ImageButton");
			["_UICorner2"] = Instance.new("UICorner");
			["_ToggleText1"] = Instance.new("TextLabel");
			["_C"] = Instance.new("ImageButton");
			["_UICorner3"] = Instance.new("UICorner");
			["_ToggleText2"] = Instance.new("TextLabel");
			["_R"] = Instance.new("ImageButton");
			["_UICorner4"] = Instance.new("UICorner");
			["_ToggleText3"] = Instance.new("TextLabel");
			["_Watermark"] = Instance.new("Frame");
			["_Constrructor1"] = Instance.new("TextLabel");
			["_Constructor2"] = Instance.new("TextLabel");
			["_Constructor3"] = Instance.new("TextLabel");
			["_MainConstructor"] = Instance.new("TextLabel");
			["_Slogan"] = Instance.new("TextLabel");
			["_StatusFrame"] = Instance.new("Frame");
			["_UICorner5"] = Instance.new("UICorner");
			["_Status"] = Instance.new("TextLabel");
			["_DividerStatusFrame"] = Instance.new("TextLabel");
			["_TimeElapsed"] = Instance.new("TextLabel");
			["_SacsObtained"] = Instance.new("TextLabel");
			["_UIStroke1"] = Instance.new("UIStroke");
			["_StageFrame"] = Instance.new("Frame");
			["_UICorner6"] = Instance.new("UICorner");
			["_UIStroke2"] = Instance.new("UIStroke");
			["_PageNameStage"] = Instance.new("TextLabel");
			["_SorterStage"] = Instance.new("Frame");
			["_UIListLayout1"] = Instance.new("UIListLayout");
			["_UIPadding1"] = Instance.new("UIPadding");
			["_SettingsFrame"] = Instance.new("Frame");
			["_UICorner8"] = Instance.new("UICorner");
			["_UIStroke3"] = Instance.new("UIStroke");
			["_PageNameSettings"] = Instance.new("TextLabel");
			["_WallpaperSearch"] = Instance.new("TextBox");
			["_DividerWallpaper"] = Instance.new("TextLabel");
			["_WebhookSearch"] = Instance.new("TextBox");
			["_DividerWebhook"] = Instance.new("TextLabel");
			["_InfoFrame"] = Instance.new("Frame");
			["_UICorner9"] = Instance.new("UICorner");
			["_UIStroke4"] = Instance.new("UIStroke");
			["_PageNameInfo"] = Instance.new("TextLabel");
			["_Icon"] = Instance.new("ImageLabel");
			["_CreatorText"] = Instance.new("TextLabel");
			["_DiscordButton"] = Instance.new("TextButton");
			["_Time"] = Instance.new("TextLabel");
			["_Date"] = Instance.new("TextLabel");
			["_DebugModeTest"] = Instance.new("TextButton");
			["_CornerDebug"] = Instance.new("UICorner")
		}
            
            -- Properties:
		Exulus["_FarmGUI"].IgnoreGuiInset = true
		Exulus["_FarmGUI"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
		Exulus["_FarmGUI"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Exulus["_FarmGUI"].Name = HttpService:GenerateGUID(false)
            
            --// UI Protector
		if not gethui then
			if syn and syn.protect_gui then
				syn.protect_gui(Exulus["_FarmGUI"])
			end
			if protect_gui then
				protect_gui(Exulus["_FarmGUI"])
			end
			Exulus["_FarmGUI"].Parent = game:GetService("CoreGui")
		else
			Exulus["_FarmGUI"].Parent = game:GetService("CoreGui")
		end
		Exulus["_MainFrame"].BackgroundColor3 = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
		Exulus["_MainFrame"].BorderSizePixel = 0
		Exulus["_MainFrame"].Size = UDim2.new(1, 0, 1, 0)
		Exulus["_MainFrame"].ZIndex = 6
		Exulus["_MainFrame"].Name = "MainFrame"
		Exulus["_MainFrame"].Parent = Exulus["_FarmGUI"]
		Exulus["_Wallpaper"].Image = "0"
		Exulus["_Wallpaper"].ImageTransparency = 1
		Exulus["_Wallpaper"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Wallpaper"].BackgroundTransparency = 1
		Exulus["_Wallpaper"].BorderSizePixel = 0
		Exulus["_Wallpaper"].Position = UDim2.new(- 0.00090826524, 0, 0, 0)
		Exulus["_Wallpaper"].Size = UDim2.new(1, 0, 1, 0)
		Exulus["_Wallpaper"].Name = "Wallpaper"
		Exulus["_Wallpaper"].Parent = Exulus["_MainFrame"]
		Exulus["_SkillsFrame"].BackgroundColor3 = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818)
		Exulus["_SkillsFrame"].BorderSizePixel = 0
		Exulus["_SkillsFrame"].Position = UDim2.new(0.320617616, 0, 0.545275569, 0)
		Exulus["_SkillsFrame"].Size = UDim2.new(0, 186, 0, 219)
		Exulus["_SkillsFrame"].Name = "SkillsFrame"
		Exulus["_SkillsFrame"].Parent = Exulus["_MainFrame"]
		Exulus["_UICorner"].CornerRadius = UDim.new(0, 4)
		Exulus["_UICorner"].Parent = Exulus["_SkillsFrame"]
		Exulus["_UIStroke"].Color = Color3.fromRGB(255, 255, 255)
		Exulus["_UIStroke"].Transparency = 0.5
		Exulus["_UIStroke"].Parent = Exulus["_SkillsFrame"]
		Exulus["_PageNameSkills"].Font = Enum.Font.Gotham
		Exulus["_PageNameSkills"].RichText = true
		Exulus["_PageNameSkills"].Text = '<font color="#3E92CC" transparency="0"><b>Exulus </b></font>Skills'
		Exulus["_PageNameSkills"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_PageNameSkills"].TextSize = 13
		Exulus["_PageNameSkills"].TextTransparency = 0.30000001192092896
		Exulus["_PageNameSkills"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_PageNameSkills"].BackgroundTransparency = 1
		Exulus["_PageNameSkills"].Position = UDim2.new(0.0121479649, 0, 0.0308212209, 0)
		Exulus["_PageNameSkills"].Size = UDim2.new(0, 181, 0, 24)
		Exulus["_PageNameSkills"].Name = "PageNameSkills"
		Exulus["_PageNameSkills"].Parent = Exulus["_SkillsFrame"]
		Exulus["_SorterSkills"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_SorterSkills"].BackgroundTransparency = 1
		Exulus["_SorterSkills"].Position = UDim2.new(0.0658510253, 0, 0.205479443, 0)
		Exulus["_SorterSkills"].Size = UDim2.new(0, 161, 0, 167)
		Exulus["_SorterSkills"].Name = "SorterSkills"
		Exulus["_SorterSkills"].Parent = Exulus["_SkillsFrame"]
		Exulus["_UIListLayout"].Padding = UDim.new(0, 20)
		Exulus["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
		Exulus["_UIListLayout"].Parent = Exulus["_SorterSkills"]
		Exulus["_UIPadding"].PaddingLeft = UDim.new(0, 49)
		Exulus["_UIPadding"].PaddingTop = UDim.new(0, 5)
		Exulus["_UIPadding"].Parent = Exulus["_SorterSkills"]
		Exulus["_E"].Image = "rbxassetid://3926305904"
		Exulus["_E"].ImageRectOffset = Vector2.new(644, 204)
		Exulus["_E"].ImageRectSize = Vector2.new(36, 36)
		Exulus["_E"].ImageTransparency = 1
		Exulus["_E"].BackgroundColor3 = Color3.fromRGB(62.00000010430813, 146.00000649690628, 204.00000303983688)
		Exulus["_E"].Position = UDim2.new(0.376021773, 0, 0.633858323, 0)
		Exulus["_E"].Size = UDim2.new(0, 20, 0, 20)
		Exulus["_E"].Name = "E"
		Exulus["_E"].Parent = Exulus["_SorterSkills"]
		Exulus["_UICorner1"].CornerRadius = UDim.new(0, 3)
		Exulus["_UICorner1"].Parent = Exulus["_E"]
		Exulus["_ToggleText"].Font = Enum.Font.Gotham
		Exulus["_ToggleText"].RichText = true
		Exulus["_ToggleText"].Text = '<font color="#3E92CC" transparency="0"><b>E </b></font>Skill'
		Exulus["_ToggleText"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_ToggleText"].TextSize = 13
		Exulus["_ToggleText"].TextTransparency = 0.30000001192092896
		Exulus["_ToggleText"].TextXAlignment = Enum.TextXAlignment.Left
		Exulus["_ToggleText"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_ToggleText"].BackgroundTransparency = 1
		Exulus["_ToggleText"].Position = UDim2.new(1.30999994, 0, - 0.119179085, 0)
		Exulus["_ToggleText"].Size = UDim2.new(0, 76, 0, 24)
		Exulus["_ToggleText"].Name = "ToggleText"
		Exulus["_ToggleText"].Parent = Exulus["_E"]
		Exulus["_F"].Image = "rbxassetid://3926305904"
		Exulus["_F"].ImageRectOffset = Vector2.new(644, 204)
		Exulus["_F"].ImageRectSize = Vector2.new(36, 36)
		Exulus["_F"].ImageTransparency = 1
		Exulus["_F"].BackgroundColor3 = Color3.fromRGB(62.00000010430813, 146.00000649690628, 204.00000303983688)
		Exulus["_F"].Position = UDim2.new(0.376021773, 0, 0.633858323, 0)
		Exulus["_F"].Size = UDim2.new(0, 20, 0, 20)
		Exulus["_F"].Name = "F"
		Exulus["_F"].Parent = Exulus["_SorterSkills"]
		Exulus["_UICorner2"].CornerRadius = UDim.new(0, 3)
		Exulus["_UICorner2"].Parent = Exulus["_F"]
		Exulus["_ToggleText1"].Font = Enum.Font.Gotham
		Exulus["_ToggleText1"].RichText = true
		Exulus["_ToggleText1"].Text = '<font color="#3E92CC" transparency="0"><b>F </b></font>Skill'
		Exulus["_ToggleText1"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_ToggleText1"].TextSize = 13
		Exulus["_ToggleText1"].TextTransparency = 0.30000001192092896
		Exulus["_ToggleText1"].TextXAlignment = Enum.TextXAlignment.Left
		Exulus["_ToggleText1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_ToggleText1"].BackgroundTransparency = 1
		Exulus["_ToggleText1"].Position = UDim2.new(1.30999994, 0, - 0.119179085, 0)
		Exulus["_ToggleText1"].Size = UDim2.new(0, 76, 0, 24)
		Exulus["_ToggleText1"].Name = "ToggleText"
		Exulus["_ToggleText1"].Parent = Exulus["_F"]
		Exulus["_C"].Image = "rbxassetid://3926305904"
		Exulus["_C"].ImageRectOffset = Vector2.new(644, 204)
		Exulus["_C"].ImageRectSize = Vector2.new(36, 36)
		Exulus["_C"].ImageTransparency = 1
		Exulus["_C"].BackgroundColor3 = Color3.fromRGB(62.00000010430813, 146.00000649690628, 204.00000303983688)
		Exulus["_C"].Position = UDim2.new(0.376021773, 0, 0.633858323, 0)
		Exulus["_C"].Size = UDim2.new(0, 20, 0, 20)
		Exulus["_C"].Name = "C"
		Exulus["_C"].Parent = Exulus["_SorterSkills"]
		Exulus["_UICorner3"].CornerRadius = UDim.new(0, 3)
		Exulus["_UICorner3"].Parent = Exulus["_C"]
		Exulus["_ToggleText2"].Font = Enum.Font.Gotham
		Exulus["_ToggleText2"].RichText = true
		Exulus["_ToggleText2"].Text = '<font color="#3E92CC" transparency="0"><b>C </b></font>Skill'
		Exulus["_ToggleText2"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_ToggleText2"].TextSize = 13
		Exulus["_ToggleText2"].TextTransparency = 0.30000001192092896
		Exulus["_ToggleText2"].TextXAlignment = Enum.TextXAlignment.Left
		Exulus["_ToggleText2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_ToggleText2"].BackgroundTransparency = 1
		Exulus["_ToggleText2"].Position = UDim2.new(1.30999994, 0, - 0.119179085, 0)
		Exulus["_ToggleText2"].Size = UDim2.new(0, 76, 0, 24)
		Exulus["_ToggleText2"].Name = "ToggleText"
		Exulus["_ToggleText2"].Parent = Exulus["_C"]
		Exulus["_R"].Image = "rbxassetid://3926305904"
		Exulus["_R"].ImageRectOffset = Vector2.new(644, 204)
		Exulus["_R"].ImageRectSize = Vector2.new(36, 36)
		Exulus["_R"].ImageTransparency = 1
		Exulus["_R"].BackgroundColor3 = Color3.fromRGB(62.00000010430813, 146.00000649690628, 204.00000303983688)
		Exulus["_R"].Position = UDim2.new(0.376021773, 0, 0.633858323, 0)
		Exulus["_R"].Size = UDim2.new(0, 20, 0, 20)
		Exulus["_R"].Name = "R"
		Exulus["_R"].Parent = Exulus["_SorterSkills"]
		Exulus["_UICorner4"].CornerRadius = UDim.new(0, 3)
		Exulus["_UICorner4"].Parent = Exulus["_R"]
		Exulus["_ToggleText3"].Font = Enum.Font.Gotham
		Exulus["_ToggleText3"].RichText = true
		Exulus["_ToggleText3"].Text = '<font color="#3E92CC" transparency="0"><b>R </b></font>Skill'
		Exulus["_ToggleText3"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_ToggleText3"].TextSize = 13
		Exulus["_ToggleText3"].TextTransparency = 0.30000001192092896
		Exulus["_ToggleText3"].TextXAlignment = Enum.TextXAlignment.Left
		Exulus["_ToggleText3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_ToggleText3"].BackgroundTransparency = 1
		Exulus["_ToggleText3"].Position = UDim2.new(1.30999994, 0, - 0.119179085, 0)
		Exulus["_ToggleText3"].Size = UDim2.new(0, 76, 0, 24)
		Exulus["_ToggleText3"].Name = "ToggleText"
		Exulus["_ToggleText3"].Parent = Exulus["_R"]
		Exulus["_Watermark"].BackgroundColor3 = Color3.fromRGB(214.00001764297485, 10.000000353902578, 255)
		Exulus["_Watermark"].BackgroundTransparency = 1
		Exulus["_Watermark"].Position = UDim2.new(0.366030842, 0, 0.0374015793, 0)
		Exulus["_Watermark"].Size = UDim2.new(0, 293, 0, 235)
		Exulus["_Watermark"].Name = "Watermark"
		Exulus["_Watermark"].Parent = Exulus["_MainFrame"]
		Exulus["_Constrructor1"].Font = Enum.Font.SourceSans
		Exulus["_Constrructor1"].Text = ""
		Exulus["_Constrructor1"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Exulus["_Constrructor1"].TextSize = 14
		Exulus["_Constrructor1"].TextStrokeTransparency = 0
		Exulus["_Constrructor1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Constrructor1"].BorderSizePixel = 0
		Exulus["_Constrructor1"].Position = UDim2.new(0.18771331, 0, 0.146221012, 0)
		Exulus["_Constrructor1"].Size = UDim2.new(0, 32, 0, 2)
		Exulus["_Constrructor1"].Name = "Constrructor1"
		Exulus["_Constrructor1"].Parent = Exulus["_Watermark"]
		Exulus["_Constructor2"].Font = Enum.Font.SourceSans
		Exulus["_Constructor2"].Text = ""
		Exulus["_Constructor2"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Exulus["_Constructor2"].TextSize = 14
		Exulus["_Constructor2"].TextStrokeTransparency = 0
		Exulus["_Constructor2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Constructor2"].BorderSizePixel = 0
		Exulus["_Constructor2"].Position = UDim2.new(0.18771331, 0, 0.203933775, 0)
		Exulus["_Constructor2"].Size = UDim2.new(0, 32, 0, 2)
		Exulus["_Constructor2"].Name = "Constructor2"
		Exulus["_Constructor2"].Parent = Exulus["_Watermark"]
		Exulus["_Constructor3"].Font = Enum.Font.SourceSans
		Exulus["_Constructor3"].Text = ""
		Exulus["_Constructor3"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Exulus["_Constructor3"].TextSize = 14
		Exulus["_Constructor3"].TextStrokeTransparency = 0
		Exulus["_Constructor3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Constructor3"].BorderSizePixel = 0
		Exulus["_Constructor3"].Position = UDim2.new(0.18771331, 0, 0.265768886, 0)
		Exulus["_Constructor3"].Size = UDim2.new(0, 32, 0, 2)
		Exulus["_Constructor3"].Name = "Constructor3"
		Exulus["_Constructor3"].Parent = Exulus["_Watermark"]
		Exulus["_MainConstructor"].Font = Enum.Font.GothamBold
		Exulus["_MainConstructor"].RichText = true
		Exulus["_MainConstructor"].Text = 'XULUS <font transparency="0.3" size="12">Ro-Ghoul Autofarm</font>'
		Exulus["_MainConstructor"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_MainConstructor"].TextSize = 22
		Exulus["_MainConstructor"].TextXAlignment = Enum.TextXAlignment.Left
		Exulus["_MainConstructor"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_MainConstructor"].BackgroundTransparency = 1
		Exulus["_MainConstructor"].Position = UDim2.new(0.322728068, 0, 0.146221012, 0)
		Exulus["_MainConstructor"].Size = UDim2.new(0, 287, 0, 31)
		Exulus["_MainConstructor"].Name = "MainConstructor"
		Exulus["_MainConstructor"].Parent = Exulus["_Watermark"]
		Exulus["_Slogan"].Font = Enum.Font.GothamMedium
		Exulus["_Slogan"].RichText = true
		Exulus["_Slogan"].Text = "Powered by <b>Saint X</b>"
		Exulus["_Slogan"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Slogan"].TextSize = 13
		Exulus["_Slogan"].TextTransparency = 0.20000000298023224
		Exulus["_Slogan"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Slogan"].BackgroundTransparency = 1
		Exulus["_Slogan"].Position = UDim2.new(0.189622372, 0, 0.28239122, 0)
		Exulus["_Slogan"].Size = UDim2.new(0, 181, 0, 38)
		Exulus["_Slogan"].Name = "Slogan"
		Exulus["_Slogan"].Parent = Exulus["_Watermark"]
		Exulus["_StatusFrame"].BackgroundColor3 = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818)
		Exulus["_StatusFrame"].Position = UDim2.new(0.338030842, 0, 0.278996289, 0)
		Exulus["_StatusFrame"].Size = UDim2.new(0, 393, 0, 118)
		Exulus["_StatusFrame"].ZIndex = 2
		Exulus["_StatusFrame"].Name = "StatusFrame"
		Exulus["_StatusFrame"].Parent = Exulus["_MainFrame"]
		Exulus["_UICorner5"].CornerRadius = UDim.new(0, 4)
		Exulus["_UICorner5"].Parent = Exulus["_StatusFrame"]
		Exulus["_Status"].Font = Enum.Font.Gotham
		Exulus["_Status"].RichText = true
		Exulus["_Status"].Text = '<font color="#3E92CC" transparency="0"><b>Status: </b></font>Waiting for the game to load.'
		Exulus["_Status"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Status"].TextSize = 14
		Exulus["_Status"].TextTransparency = 0.30000001192092896
		Exulus["_Status"].TextXAlignment = Enum.TextXAlignment.Left
		Exulus["_Status"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Status"].BackgroundTransparency = 1
		Exulus["_Status"].Position = UDim2.new(0.0229007639, 0, 0.113013029, 0)
		Exulus["_Status"].Size = UDim2.new(0, 375, 0, 29)
		Exulus["_Status"].Name = "Status"
		Exulus["_Status"].Parent = Exulus["_StatusFrame"]
		Exulus["_DividerStatusFrame"].Font = Enum.Font.SourceSans
		Exulus["_DividerStatusFrame"].Text = ""
		Exulus["_DividerStatusFrame"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Exulus["_DividerStatusFrame"].TextSize = 14
		Exulus["_DividerStatusFrame"].TextStrokeTransparency = 0
		Exulus["_DividerStatusFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_DividerStatusFrame"].BackgroundTransparency = 0.5
		Exulus["_DividerStatusFrame"].BorderSizePixel = 0
		Exulus["_DividerStatusFrame"].Position = UDim2.new(0, 0, 0.441015422, 0)
		Exulus["_DividerStatusFrame"].Size = UDim2.new(0, 393, 0, 1)
		Exulus["_DividerStatusFrame"].Name = "DividerStatusFrame"
		Exulus["_DividerStatusFrame"].Parent = Exulus["_StatusFrame"]
		Exulus["_TimeElapsed"].Font = Enum.Font.Gotham
		Exulus["_TimeElapsed"].RichText = true
		Exulus["_TimeElapsed"].Text = '<font color="#3E92CC" transparency="0"><b>Time elapsed: </b></font>%d%d%d%d'
		Exulus["_TimeElapsed"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_TimeElapsed"].TextSize = 13
		Exulus["_TimeElapsed"].TextTransparency = 0.20000000298023224
		Exulus["_TimeElapsed"].TextXAlignment = Enum.TextXAlignment.Left
		Exulus["_TimeElapsed"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_TimeElapsed"].BackgroundTransparency = 1
		Exulus["_TimeElapsed"].Position = UDim2.new(0.0229007639, 0, 0.53077817, 0)
		Exulus["_TimeElapsed"].Size = UDim2.new(0, 375, 0, 25)
		Exulus["_TimeElapsed"].Name = "TimeElapsed"
		Exulus["_TimeElapsed"].Parent = Exulus["_StatusFrame"]
		Exulus["_SacsObtained"].Font = Enum.Font.Gotham
		Exulus["_SacsObtained"].RichText = true
		Exulus["_SacsObtained"].Text = '<font color="#3E92CC" transparency="0"><b>You currently have: </b></font>x??? sacs.'
		Exulus["_SacsObtained"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_SacsObtained"].TextSize = 13
		Exulus["_SacsObtained"].TextTransparency = 0.20000000298023224
		Exulus["_SacsObtained"].TextXAlignment = Enum.TextXAlignment.Left
		Exulus["_SacsObtained"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_SacsObtained"].BackgroundTransparency = 1
		Exulus["_SacsObtained"].Position = UDim2.new(0.0229007639, 0, 0.741987228, 0)
		Exulus["_SacsObtained"].Size = UDim2.new(0, 375, 0, 25)
		Exulus["_SacsObtained"].Name = "SacsObtained"
		Exulus["_SacsObtained"].Parent = Exulus["_StatusFrame"]
		Exulus["_UIStroke1"].Color = Color3.fromRGB(255, 255, 255)
		Exulus["_UIStroke1"].Transparency = 0.5
		Exulus["_UIStroke1"].Parent = Exulus["_StatusFrame"]
		Exulus["_StageFrame"].BackgroundColor3 = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818)
		Exulus["_StageFrame"].BorderSizePixel = 0
		Exulus["_StageFrame"].Position = UDim2.new(0.508628488, 0, 0.545275569, 0)
		Exulus["_StageFrame"].Size = UDim2.new(0, 186, 0, 219)
		Exulus["_StageFrame"].Name = "StageFrame"
		Exulus["_StageFrame"].Parent = Exulus["_MainFrame"]
		Exulus["_UICorner6"].CornerRadius = UDim.new(0, 4)
		Exulus["_UICorner6"].Parent = Exulus["_StageFrame"]
		Exulus["_UIStroke2"].Color = Color3.fromRGB(255, 255, 255)
		Exulus["_UIStroke2"].Transparency = 0.5
		Exulus["_UIStroke2"].Parent = Exulus["_StageFrame"]
		Exulus["_PageNameStage"].Font = Enum.Font.Gotham
		Exulus["_PageNameStage"].RichText = true
		Exulus["_PageNameStage"].Text = '<font color="#3E92CC" transparency="0"><b>Exulus </b></font>Stages'
		Exulus["_PageNameStage"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_PageNameStage"].TextSize = 13
		Exulus["_PageNameStage"].TextTransparency = 0.30000001192092896
		Exulus["_PageNameStage"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_PageNameStage"].BackgroundTransparency = 1
		Exulus["_PageNameStage"].Position = UDim2.new(0.0121479649, 0, 0.0308212209, 0)
		Exulus["_PageNameStage"].Size = UDim2.new(0, 181, 0, 24)
		Exulus["_PageNameStage"].Name = "PageNameStage"
		Exulus["_PageNameStage"].Parent = Exulus["_StageFrame"]
		Exulus["_SorterStage"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_SorterStage"].BackgroundTransparency = 1
		Exulus["_SorterStage"].Position = UDim2.new(0.0658510253, 0, 0.140410259, 0)
		Exulus["_SorterStage"].Size = UDim2.new(0, 161, 0, 181)
		Exulus["_SorterStage"].Name = "SorterStage"
		Exulus["_SorterStage"].Parent = Exulus["_StageFrame"]
		Exulus["_UIListLayout1"].Padding = UDim.new(0, 10)
		Exulus["_UIListLayout1"].SortOrder = Enum.SortOrder.LayoutOrder
		Exulus["_UIListLayout1"].VerticalAlignment = Enum.VerticalAlignment.Center
		Exulus["_UIListLayout1"].Parent = Exulus["_SorterStage"]
		Exulus["_UIPadding1"].PaddingLeft = UDim.new(0, 46)
		Exulus["_UIPadding1"].PaddingTop = UDim.new(0, 5)
		Exulus["_UIPadding1"].Parent = Exulus["_SorterStage"]
		Exulus["_SettingsFrame"].BackgroundColor3 = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818)
		Exulus["_SettingsFrame"].BorderSizePixel = 0
		Exulus["_SettingsFrame"].Position = UDim2.new(0.00908261724, 0, 0.277559042, 0)
		Exulus["_SettingsFrame"].Size = UDim2.new(0, 186, 0, 133)
		Exulus["_SettingsFrame"].Name = "SettingsFrame"
		Exulus["_SettingsFrame"].Parent = Exulus["_MainFrame"]
		Exulus["_UICorner8"].CornerRadius = UDim.new(0, 4)
		Exulus["_UICorner8"].Parent = Exulus["_SettingsFrame"]
		Exulus["_UIStroke3"].Color = Color3.fromRGB(255, 255, 255)
		Exulus["_UIStroke3"].Transparency = 0.5
		Exulus["_UIStroke3"].Parent = Exulus["_SettingsFrame"]
		Exulus["_PageNameSettings"].Font = Enum.Font.Gotham
		Exulus["_PageNameSettings"].RichText = true
		Exulus["_PageNameSettings"].Text = '<font color="#3E92CC" transparency="0"><b>Exulus </b></font>Settings'
		Exulus["_PageNameSettings"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_PageNameSettings"].TextSize = 13
		Exulus["_PageNameSettings"].TextTransparency = 0.30000001192092896
		Exulus["_PageNameSettings"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_PageNameSettings"].BackgroundTransparency = 1
		Exulus["_PageNameSettings"].Position = UDim2.new(0.0121479649, 0, 0.0308212209, 0)
		Exulus["_PageNameSettings"].Size = UDim2.new(0, 181, 0, 24)
		Exulus["_PageNameSettings"].Name = "PageNameSettings"
		Exulus["_PageNameSettings"].Parent = Exulus["_SettingsFrame"]
		Exulus["_WallpaperSearch"].Font = Enum.Font.Gotham
		Exulus["_WallpaperSearch"].PlaceholderText = "wallpaper.png"
		Exulus["_WallpaperSearch"].Text = ""
		Exulus["_WallpaperSearch"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_WallpaperSearch"].TextSize = 12
		Exulus["_WallpaperSearch"].TextTransparency = 0.30000001192092896
		Exulus["_WallpaperSearch"].TextWrapped = true
		Exulus["_WallpaperSearch"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_WallpaperSearch"].BackgroundTransparency = 1
		Exulus["_WallpaperSearch"].Position = UDim2.new(0.0376344509, 0, 0.274094313, 0)
		Exulus["_WallpaperSearch"].Size = UDim2.new(0, 171, 0, 23)
		Exulus["_WallpaperSearch"].Name = "WallpaperSearch"
		Exulus["_WallpaperSearch"].Parent = Exulus["_SettingsFrame"]
		Exulus["_DividerWallpaper"].Font = Enum.Font.SourceSans
		Exulus["_DividerWallpaper"].Text = ""
		Exulus["_DividerWallpaper"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Exulus["_DividerWallpaper"].TextSize = 14
		Exulus["_DividerWallpaper"].TextStrokeTransparency = 0
		Exulus["_DividerWallpaper"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_DividerWallpaper"].BackgroundTransparency = 0.5
		Exulus["_DividerWallpaper"].BorderSizePixel = 0
		Exulus["_DividerWallpaper"].Position = UDim2.new(0.0649999976, 0, 0.479000002, 0)
		Exulus["_DividerWallpaper"].Size = UDim2.new(0, 160, 0, 1)
		Exulus["_DividerWallpaper"].Name = "DividerWallpaper"
		Exulus["_DividerWallpaper"].Parent = Exulus["_SettingsFrame"]
		Exulus["_WebhookSearch"].Font = Enum.Font.Gotham
		Exulus["_WebhookSearch"].PlaceholderText = "webhook.com"
		Exulus["_WebhookSearch"].Text = ""
		Exulus["_WebhookSearch"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_WebhookSearch"].TextSize = 12
		Exulus["_WebhookSearch"].TextTransparency = 0.30000001192092896
		Exulus["_WebhookSearch"].TextWrapped = true
		Exulus["_WebhookSearch"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_WebhookSearch"].BackgroundTransparency = 1
		Exulus["_WebhookSearch"].Position = UDim2.new(0.0376344509, 0, 0.612440169, 0)
		Exulus["_WebhookSearch"].Size = UDim2.new(0, 171, 0, 23)
		Exulus["_WebhookSearch"].Name = "WebhookSearch"
		Exulus["_WebhookSearch"].Parent = Exulus["_SettingsFrame"]
		Exulus["_DividerWebhook"].Font = Enum.Font.SourceSans
		Exulus["_DividerWebhook"].Text = ""
		Exulus["_DividerWebhook"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Exulus["_DividerWebhook"].TextSize = 14
		Exulus["_DividerWebhook"].TextStrokeTransparency = 0
		Exulus["_DividerWebhook"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_DividerWebhook"].BackgroundTransparency = 0.5
		Exulus["_DividerWebhook"].BorderSizePixel = 0
		Exulus["_DividerWebhook"].Position = UDim2.new(0.0649999976, 0, 0.818000019, 0)
		Exulus["_DividerWebhook"].Size = UDim2.new(0, 160, 0, 1)
		Exulus["_DividerWebhook"].Name = "DividerWebhook"
		Exulus["_DividerWebhook"].Parent = Exulus["_SettingsFrame"]
		Exulus["_InfoFrame"].BackgroundColor3 = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818)
		Exulus["_InfoFrame"].BorderSizePixel = 0
		Exulus["_InfoFrame"].ClipsDescendants = true
		Exulus["_InfoFrame"].Position = UDim2.new(0.00908261724, 0, 0.582677186, 0)
		Exulus["_InfoFrame"].Size = UDim2.new(0, 186, 0, 113)
		Exulus["_InfoFrame"].Name = "InfoFrame"
		Exulus["_InfoFrame"].Parent = Exulus["_MainFrame"]
		Exulus["_UICorner9"].CornerRadius = UDim.new(0, 4)
		Exulus["_UICorner9"].Parent = Exulus["_InfoFrame"]
		Exulus["_UIStroke4"].Color = Color3.fromRGB(255, 255, 255)
		Exulus["_UIStroke4"].Transparency = 0.5
		Exulus["_UIStroke4"].Parent = Exulus["_InfoFrame"]
		Exulus["_PageNameInfo"].Font = Enum.Font.Gotham
		Exulus["_PageNameInfo"].RichText = true
		Exulus["_PageNameInfo"].Text = '<font color="#3E92CC" transparency="0"><b>Exulus </b></font>Info'
		Exulus["_PageNameInfo"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_PageNameInfo"].TextSize = 13
		Exulus["_PageNameInfo"].TextTransparency = 0.30000001192092896
		Exulus["_PageNameInfo"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_PageNameInfo"].BackgroundTransparency = 1
		Exulus["_PageNameInfo"].Position = UDim2.new(0.0121479649, 0, 0.0308212209, 0)
		Exulus["_PageNameInfo"].Size = UDim2.new(0, 181, 0, 24)
		Exulus["_PageNameInfo"].Name = "PageNameInfo"
		Exulus["_PageNameInfo"].Parent = Exulus["_InfoFrame"]
		Exulus["_Icon"].Image = "http://www.roblox.com/asset/?id=6240829846"
		Exulus["_Icon"].ImageTransparency = 0.949999988079071
		Exulus["_Icon"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Icon"].BackgroundTransparency = 1
		Exulus["_Icon"].BorderSizePixel = 0
		Exulus["_Icon"].Position = UDim2.new(0.587900639, 0, - 0.147773132, 0)
		Exulus["_Icon"].Size = UDim2.new(0.905498326, 0, 1.28051651, 0)
		Exulus["_Icon"].Name = "Icon"
		Exulus["_Icon"].Parent = Exulus["_InfoFrame"]
		Exulus["_CreatorText"].Font = Enum.Font.Gotham
		Exulus["_CreatorText"].RichText = true
		Exulus["_CreatorText"].Text = '<font color="#3E92CC" transparency="0"><b>Creator </b></font>⚔Saint#6099'
		Exulus["_CreatorText"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_CreatorText"].TextSize = 11
		Exulus["_CreatorText"].TextTransparency = 0.30000001192092896
		Exulus["_CreatorText"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_CreatorText"].BackgroundTransparency = 1
		Exulus["_CreatorText"].Position = UDim2.new(0.0175243095, 0, 0.393653095, 0)
		Exulus["_CreatorText"].Size = UDim2.new(0, 181, 0, 24)
		Exulus["_CreatorText"].Name = "CreatorText"
		Exulus["_CreatorText"].Parent = Exulus["_InfoFrame"]
		Exulus["_DiscordButton"].Font = Enum.Font.Gotham
		Exulus["_DiscordButton"].RichText = true
		Exulus["_DiscordButton"].Text = '<font color="#3E92CC" transparency="0"><b>Discord </b></font>https://dsc.gg/SaintX'
		Exulus["_DiscordButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_DiscordButton"].TextSize = 11
		Exulus["_DiscordButton"].TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_DiscordButton"].TextTransparency = 0.30000001192092896
		Exulus["_DiscordButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_DiscordButton"].BackgroundTransparency = 1
		Exulus["_DiscordButton"].Position = UDim2.new(0.00537634408, 0, 0.619468987, 0)
		Exulus["_DiscordButton"].Size = UDim2.new(0, 181, 0, 31)
		Exulus["_DiscordButton"].Name = "DiscordButton"
		Exulus["_DiscordButton"].Parent = Exulus["_InfoFrame"]
		Exulus["_Time"].Font = Enum.Font.Michroma
		Exulus["_Time"].RichText = true
		Exulus["_Time"].Text = ""
		Exulus["_Time"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Time"].TextSize = 100
		Exulus["_Time"].TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Time"].TextWrapped = true
		Exulus["_Time"].TextYAlignment = Enum.TextYAlignment.Top
		Exulus["_Time"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Time"].BackgroundTransparency = 1
		Exulus["_Time"].Position = UDim2.new(0.780199766, 0, 0.224409431, 0)
		Exulus["_Time"].Size = UDim2.new(0, 197, 0, 303)
		Exulus["_Time"].Name = "Time"
		Exulus["_Time"].Parent = Exulus["_MainFrame"]
		Exulus["_Date"].Font = Enum.Font.Michroma
		Exulus["_Date"].RichText = true
		Exulus["_Date"].Text = ""
		Exulus["_Date"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Date"].TextSize = 15
		Exulus["_Date"].TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Date"].TextTransparency = 0.30000001192092896
		Exulus["_Date"].TextWrapped = true
		Exulus["_Date"].TextYAlignment = Enum.TextYAlignment.Top
		Exulus["_Date"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_Date"].BackgroundTransparency = 1
		Exulus["_Date"].Position = UDim2.new(0.780199766, 0, 0.836614132, 0)
		Exulus["_Date"].Size = UDim2.new(0, 197, 0, 18)
		Exulus["_Date"].Name = "Date"
		Exulus["_Date"].Parent = Exulus["_MainFrame"]
		Exulus["_DebugModeTest"].Font = Enum.Font.GothamMedium
		Exulus["_DebugModeTest"].Text = "Debug Mode: False"
		Exulus["_DebugModeTest"].TextColor3 = Color3.fromRGB(255, 255, 255)
		Exulus["_DebugModeTest"].TextSize = 13
		Exulus["_DebugModeTest"].BackgroundColor3 = Color3.fromRGB(62, 146, 204)
		Exulus["_DebugModeTest"].Position = UDim2.new(0.00908268429, 0, 0.133858263, 0)
		Exulus["_DebugModeTest"].Size = UDim2.new(0, 186, 0, 50)
		Exulus["_DebugModeTest"].Name = "DebugModeTest"
		Exulus["_DebugModeTest"].Visible = true
		Exulus["_DebugModeTest"].Parent = Exulus["_MainFrame"]
		Exulus["_CornerDebug"].Parent = Exulus["_DebugModeTest"]
		Exulus["_CornerDebug"].CornerRadius = UDim.new(0, 3)
            
            --// Universal Functions
            --// Functions for turning the toggles off and on
		function TweenWallpaper(Image, Tra)
			game:GetService("TweenService"):Create(Image, TweenInfo.new(.6, Enum.EasingStyle.Quint), {
				ImageTransparency = Tra
			}):Play()
		end
		function Notify(StatusP, Body)
			NT.new(StatusP, "Exulus", Body, true, 5, function()
			end)
		end
		function CheckWritefile()
			if isfile and delfile and writefile and readfile then
				return true
			end
			Notify("Warning", "Writefile is not supported.")
			return false
		end
		function TimeElapsedText(Text)
			Exulus["_TimeElapsed"].Text = '<font color="#3E92CC" transparency="0"><b>Time elapsed: </b></font>' .. Text
		end
		function ToggleOff(Toggle)
			game:GetService("TweenService"):Create(Toggle, TweenInfo.new(.4, Enum.EasingStyle.Quint), {
				BackgroundColor3 = Color3.fromRGB(62, 146, 204),
				ImageTransparency = 1
			}):Play()
		end
		function ToggleOn(Toggle)
			game:GetService("TweenService"):Create(Toggle, TweenInfo.new(.4, Enum.EasingStyle.Quint), {
				BackgroundColor3 = Color3.fromRGB(216, 49, 91),
				ImageTransparency = 0
			}):Play()
		end
		function SetStatus(Text)
			Exulus["_Status"].Text = '<font color="#3E92CC" transparency="0"><b>Status: </b></font>' .. Text
		end
            
            --//Wallpaper Function
		function ChangeWallpaper(WallpaperFileName)
			if CheckWritefile() then
				if isfile("Exulus/Wallpaper Folder/" .. WallpaperFileName) then
					if getsynasset then
						TweenWallpaper(Exulus["_Wallpaper"], 1)
						task.wait(.5)
						Exulus["_Wallpaper"].Image = getsynasset("Exulus/Wallpaper Folder/" .. WallpaperFileName)
						task.wait(.5)
						TweenWallpaper(Exulus["_Wallpaper"], 0.6)
						writefile("Exulus/Cache/WallpaperCache.exu", Encode(WallpaperFileName))
						Notify("Success", "Sucessfully changed the wallpaper.")
					elseif getcustomasset then
						TweenWallpaper(Exulus["_Wallpaper"], 1)
						task.wait(.5)
						Exulus["_Wallpaper"].Image = getcustomasset("Exulus/Wallpaper Folder/" .. WallpaperFileName)
						task.wait(.5)
						TweenWallpaper(Exulus["_Wallpaper"], 0.6)
						writefile("Exulus/Cache/WallpaperCache.exu", Encode(WallpaperFileName))
						Notify("Success", "Sucessfully changed the wallpaper.")
					else
						Notify("Error", "Missing getcustomasset function.")
					end
				else
					Notify("Error", "We couldn't locate the file for use.")
				end
			end
		end
            
            --// Debug Mode Script
		Exulus["_DebugModeTest"].MouseButton1Click:Connect(function()
			if Debug == false then
				Debug = true
				writefile("Exulus/Cache/DebugData.exu", "true")
				Exulus["_MainFrame"].BackgroundTransparency = 1
				Exulus["_Wallpaper"].ImageTransparency = 1
				game:GetService("TweenService"):Create(Exulus["_DebugModeTest"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
					BackgroundColor3 = Color3.fromRGB(216, 49, 91)
				}):Play()
				for _, v in pairs(Exulus["_MainFrame"]:GetChildren()) do
					if v:IsA("Frame") and v.Name ~= "Watermark" then
						v.BackgroundTransparency = 0.8
					end
				end
				Exulus["_DebugModeTest"].Text = "Debug Mode: True"
			else
				Debug = false
				writefile("Exulus/Cache/DebugData.exu", "false")
				Exulus["_MainFrame"].BackgroundTransparency = 0
				Exulus["_Wallpaper"].ImageTransparency = 0.6
				game:GetService("TweenService"):Create(Exulus["_DebugModeTest"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
					BackgroundColor3 = Color3.fromRGB(62.00000010430813, 146.00000649690628, 204.00000303983688)
				}):Play()
				for _, v in pairs(Exulus["_MainFrame"]:GetChildren()) do
					if v:IsA("Frame") and v.Name ~= "Watermark" then
						v.BackgroundTransparency = 0
					end
				end
				Exulus["_DebugModeTest"].Text = "Debug Mode: False"
			end
		end)
    
            --// Discord Button And Icon Script
            --// Focused function
		Exulus["_DiscordButton"].MouseEnter:Connect(function()
			game:GetService("TweenService"):Create(Exulus["_DiscordButton"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
				TextTransparency = 0.1
			}):Play()
			game:GetService("TweenService"):Create(Exulus["_Icon"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
				ImageTransparency = 0.8
			}):Play()
		end)
		Exulus["_DiscordButton"].MouseLeave:Connect(function()
			game:GetService("TweenService"):Create(Exulus["_DiscordButton"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
				TextTransparency = 0.3
			}):Play()
			game:GetService("TweenService"):Create(Exulus["_Icon"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
				ImageTransparency = 0.95
			}):Play()
		end)
            
            --// Click function
		Exulus["_DiscordButton"].MouseButton1Click:Connect(function()
			game:GetService("TweenService"):Create(Exulus["_DiscordButton"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
				TextColor3 = Color3.fromRGB(216, 49, 91)
			}):Play()
			game:GetService("TweenService"):Create(Exulus["_Icon"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
				ImageColor3 = Color3.fromRGB(216, 49, 91)
			}):Play()
			task.wait(.2)
			game:GetService("TweenService"):Create(Exulus["_DiscordButton"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
				TextColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
			game:GetService("TweenService"):Create(Exulus["_Icon"], TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
				ImageColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
			setclipboard("https://dsc.gg/SaintX")
			Notify("Info", "Copied discord invite!")
		end)
            
            --// Load Assets Script
		ContentProvider:PreloadAsync(Assets)
            
            --// Toggles (Skills Toggle and Stages Toggle)
            --// Skills toggle
            
            --// Toggle handler
		function AddEventListenerSkills(DesiredToggle, Option)
			DesiredToggle.MouseButton1Click:Connect(function()
                    --// Where the magic happens
				if SetSkills[Option] == false then
					SetSkills[Option] = true
					myData:Set("Skills", SetSkills)
					ToggleOn(DesiredToggle)
				else
					SetSkills[Option] = false
					myData:Set("Skills", SetSkills)
					ToggleOff(DesiredToggle)
				end
			end)
		end
		for _, v in pairs(Exulus["_SorterSkills"]:GetChildren()) do
			if v:IsA("ImageButton") then
				AddEventListenerSkills(v, v.Name)
			end
		end
            
            --// Stages Toggle
		function CreateStageToggle(ToggleName, StageNumber)
			local ToggleText4 = Instance.new("TextLabel");
			local StageToggle = Instance.new("ImageButton");
			local UICorner7 = Instance.new("UICorner");
			StageToggle.Image = "rbxassetid://3926305904"
			StageToggle.ImageRectOffset = Vector2.new(644, 204)
			StageToggle.ImageRectSize = Vector2.new(36, 36)
			StageToggle.ImageTransparency = 1
			StageToggle.BackgroundColor3 = Color3.fromRGB(62.00000010430813, 146.00000649690628, 204.00000303983688)
			StageToggle.Position = UDim2.new(0.376021773, 0, 0.633858323, 0)
			StageToggle.Size = UDim2.new(0, 20, 0, 20)
			StageToggle.Name = ToggleName
			StageToggle.Parent = Exulus["_SorterStage"]
			UICorner7.CornerRadius = UDim.new(0, 3)
			UICorner7.Parent = StageToggle
			ToggleText4.Font = Enum.Font.Gotham
			ToggleText4.RichText = true
			ToggleText4.Text = '<font color="#3E92CC" transparency="0"><b>Stage </b></font>' .. StageNumber
			ToggleText4.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText4.TextSize = 13
			ToggleText4.TextTransparency = 0.30000001192092896
			ToggleText4.TextXAlignment = Enum.TextXAlignment.Left
			ToggleText4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText4.BackgroundTransparency = 1
			ToggleText4.Position = UDim2.new(1.30999994, 0, - 0.119179085, 0)
			ToggleText4.Size = UDim2.new(0, 76, 0, 24)
			ToggleText4.Name = "ToggleText"
			ToggleText4.Parent = StageToggle
			table.insert(Toggles, {
				Object = StageToggle,
				Name = ToggleName,
				State = false
			})
			function AddEventListenerStages(DesiredToggle)
				DesiredToggle.MouseButton1Click:Connect(function()
                        --// Check to see if any other toggle is on
					for _, v in pairs(Exulus["_SorterStage"]:GetChildren()) do
						if v:isA("ImageButton") then
							if v.BackgroundColor3 ~= Color3.fromRGB(62, 146, 204) then
								ToggleOff(v)
								for _, x in pairs(Toggles) do
									if x.Object == v then
										x.State = false
									end
								end
							end
						end
					end
            
                        --// Where the magic happens
					for _, v in pairs(Toggles) do
						if v.Object == DesiredToggle then
							if v.State == false then
								v.State = true
								array.stage = array.stages[tonumber(StageNumber)]
								writefile("Exulus/Cache/StagesCache.exu", Encode(tostring(array.stage) .. " " .. tostring(StageNumber)))
								ToggleOn(DesiredToggle)
							else
								v.State = false
							end
						end
					end
				end)
			end
			AddEventListenerStages(StageToggle)
		end
            
            --// Looping through the sorter to get the buttons
            --// Toggle handler
            --// Adding the event listener to all the toggles
		for _, v in pairs(Exulus["_SorterStage"]:GetChildren()) do
			if v:IsA("ImageButton") then
				AddEventListenerStages(v)
			end
		end
            
            --// Wallpaper, webhook and their dividers animations
            --// Focused functions Wallpaper
		Exulus["_WallpaperSearch"].Focused:Connect(function()
			game:GetService("TweenService"):Create(Exulus["_DividerWallpaper"], TweenInfo.new(.4, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 0.1,
				BackgroundColor3 = Color3.fromRGB(216, 49, 91)
			}):Play()
		end)
		Exulus["_WallpaperSearch"].FocusLost:Connect(function()
			game:GetService("TweenService"):Create(Exulus["_DividerWallpaper"], TweenInfo.new(.4, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 0.5,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
			ChangeWallpaper(Exulus["_WallpaperSearch"].Text)
		end)
            
            -- Focused functions Webhook
		Exulus["_WebhookSearch"].Focused:Connect(function()
			game:GetService("TweenService"):Create(Exulus["_DividerWebhook"], TweenInfo.new(.4, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 0.1,
				BackgroundColor3 = Color3.fromRGB(216, 49, 91)
			}):Play()
		end)
		Exulus["_WebhookSearch"].FocusLost:Connect(function()
			game:GetService("TweenService"):Create(Exulus["_DividerWebhook"], TweenInfo.new(.4, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 0.5,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
			Notify("Success", "Successfully set webhook.")
			writefile("Exulus/Cache/Webhook.exu", Encode(Exulus["_WebhookSearch"].Text))
		end)
    
    
            --// Z4GS SCRIPT BEGINS HERE
            -----------------------------------------------------------------------------------------------------------------------
		tab1:AddLabel("Target")
		local drop = tab1:AddDropdown("Select", function(opt)
			array.targ = array.npcs[opt]
		end)
		btn = tab1:AddButton("Start", function()
			if not array.autofarm then
				if key then
					btn.Text, array.autofarm = "Stop", true
					local farmtick = tick()
					while array.autofarm do
						labels("tfarm", "Time elapsed: " .. os.date("!%H:%M:%S", tick() - farmtick))
						wait(1)
					end
				else
					player:Kick("Failed to get the Remote key, please try to execute the script again")
				end
			else
				btn.Text, array.autofarm, array.died = "Start", false, false
			end
		end)
		labels = setmetatable({
			text = {
				label = tab1:AddLabel("")
			},
			tfarm = {
				label = tab1:AddLabel("")
			},
			space = {
				label = tab1:AddLabel("")
			},
			Quest = {
				prefix = "Current Quest: ",
				label = tab1:AddLabel("Current Quest: None")
			},
			Yen = {
				prefix = "Yen: ",
				label = tab1:AddLabel("Yen: 0"),
				value = 0,
				oldval = player.PlayerFolder.Stats.Yen.Value
			},
			RC = {
				prefix = "RC: ",
				label = tab1:AddLabel("RC: 0"),
				value = 0,
				oldval = player.PlayerFolder.Stats.RC.Value
			},
			Kills = {
				prefix = "Kills: ",
				label = tab1:AddLabel("Kills: 0"),
				value = 0
			}
		}, {
			__call = function (self, typ, newv, oldv)
				if typ and newv then
					local object = self[typ]
					if type(newv) == "number" then
						object.value = object.value + newv
						object.label.Text = object.prefix .. format(object.value)
						if oldv then
							object.oldval = oldv
						end
					elseif object.prefix then
						object.label.Text = object.prefix .. newv
					else
						object.label.Text = newv
					end
					return
				end
				for i, v in pairs(labels) do
					v.value = 0
					v.label.Text = v.prefix .. "0"
				end
			end
		})
		local function getLabel(la)
			return labels[la].value and labels[la].value or labels[la].label.Text
		end
		for i, v in pairs(array.boss) do
			tab2:AddSwitch(i .. " Boss Farm " .. "(" .. "lvl " .. v .. "+)", function(bool)
				local bosstable = myData:Get("Boss")
				bosstable[i] = bool
				myData:Set("Boss", bosstable)
			end):Set(myData:Get("Boss")[i])
		end
		tab2:AddSlider("TP Speed", function(x)
			myData:Set("TeleportSpeed", x)
		end, {
			min = 90,
			max = 250
		}):Set(100)
		tab2:AddSlider("Distance from NPC", function(x)
			myData:Set("DistanceFromNpc", x * - 1)
		end, {
			min = 0,
			max = 8
		}):Set(65)
		tab2:AddSlider("Distance from Bosses", function(x)
			myData:Set("DistanceFromBoss", x * - 1)
		end, {
			min = 0,
			max = 15
		}):Set(40)
		do
			local count = 0
			for i, v in pairs(player.PlayerGui.HUD.StagesFrame.InfoScroll:GetChildren()) do
				if v.ClassName == "Frame" and v.Name ~= "Example" then
					count = count + 1
					CreateStageToggle(tostring(count), tostring(count))
				end
			end
		end
		local function tp(pos)
			if array.died then
				player.Character.HumanoidRootPart.CFrame = pos
				keypress(48)
				array.died = false
				return
			end
			local val = Instance.new("CFrameValue")
			val.Value = player.Character.HumanoidRootPart.CFrame
			local tween = game:GetService("TweenService"):Create(
                    val, TweenInfo.new((player.Character.HumanoidRootPart.Position - pos.p).magnitude / myData:Get("TeleportSpeed"), Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {
				Value = pos
			})
			tween:Play()
			local completed
			tween.Completed:Connect(function()
				completed = true
			end)
			while not completed do
				if array.found or not array.autofarm or player.Character.Humanoid.Health <= 0 then
					tween:Cancel()
					break
				end
				player.Character.HumanoidRootPart.CFrame = val.Value
				task.wait()
			end
			val:Destroy()
		end
		local function getNPC()
			local nearestnpc, nearest = nil, math.huge
			if myData:Get("Boss")["Gyakusatsu"] and tonumber(player.PlayerFolder.Stats.Level.Value) > array.boss["Gyakusatsu"] and findobj(workspace.NPCSpawns["GyakusatsuSpawn"], "Gyakusatsu") then
				local lowesthealth, lowestNpcModel = math.huge, nil
				for i, v in pairs(workspace.NPCSpawns["GyakusatsuSpawn"]:GetChildren()) do
					if v.Name ~= "Mob" and findobj(v, "Humanoid") and v.Humanoid.Health < lowesthealth then
						lowesthealth = v.Humanoid.Health
						lowestNpcModel = v
					end
				end
				if not lowestNpcModel then
					return workspace.NPCSpawns.GyakusatsuSpawn.Gyakusatsu
				end
				return lowestNpcModel
			end
			for i, v in pairs(workspace.NPCSpawns:GetChildren()) do
				local npc = findobjofclass(v, "Model")
				if npc and findobj(npc, "Head") and not findobj(npc, "AC") then
					if npc.Parent.Name == array.targ then
						local magnitude = (npc.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
						if magnitude < nearest then
							nearestnpc, nearest = npc, magnitude
						end
					elseif myData:Get("Boss")[npc.Name] and tonumber(player.PlayerFolder.Stats.Level.Value) >= array.boss[npc.Name] then
						return npc
					end
				end
			end
			return nearestnpc
		end
		local function collect(npc)
			local timer = tick()
			local model = waitforobj(npc, npc.Name .. " Corpse", 2)
			local clickpart = waitforobj(model, "ClickPart", 2)
			player.Character.HumanoidRootPart.CFrame = clickpart.CFrame * CFrame.new(0, 1.7, 0)
			waitforobj(clickpart, "")
			repeat
				if tick() - timer > 4 then
					break
				end
				player.Character.Humanoid:MoveTo(clickpart.Position)
				wait()
				fireclickdetector(clickpart[""], 1)
			until not model.Parent.Parent or not findobj(model, "ClickPart") or not array.autofarm or player.Character.Humanoid.Health <= 0
		end
		local function pressKey(topress)
			fire(player.Character.Remotes.KeyEvent, key, topress, "Down", player:GetMouse().Hit, nil, workspace.Camera.CFrame)
		end
		player.Idled:Connect(function()
			game:GetService("VirtualUser"):ClickButton2(Vector2.new())
		end)
            
            
            -- remote Key grabber + grab updated trainers table
		do
			fireclickdetector(workspace.TrainerModel.ClickIndicator.ClickDetector)
			waitforobj(waitforobj(player.PlayerGui, "TrainersGui"), "TrainersGuiScript")
			player.PlayerGui.TrainersGui:Destroy()
			repeat
				for i, v in pairs(getgc(true)) do
					if not key and type(v) == "function" and getinfo(v).source:find(".ClientControl") then
						for i2, v2 in pairs(getconstants(v)) do
							if v2 == "KeyEvent" then
								local keyfound = getconstant(v, i2 + 1)
								if # keyfound >= 100 then
									key = keyfound
									break
								end
							end
						end
					elseif type(v) == "table" and ((table.find(v, "(S1) Kureo Mado") and team == "CCG") or (table.find(v, "(S1) Ken Kaneki"))) then
						trainers = v
					end
				end
				wait()
			until key
		end
		array.autofarm = true
    
            -- Boot scripts
            --//Boot Wallpaper, webhook text, wallpaper text, toggle switches change
            
            -- Turns the previously set skill toggles on
		local GetSkillsOn = myData:Get("Skills")
		for i, v in pairs(GetSkillsOn) do
			if v == true then
				for x, _ in pairs(SetSkills) do
					if i == x then
						SetSkills[x] = v
						for _, f in pairs(Exulus["_SorterSkills"]:GetChildren()) do
							if f:IsA("ImageButton") then
								if f.Name == x then
									ToggleOn(f)
								end
							end
						end
						myData:Set("Skills", GetSkillsOn)
					end
				end
			end
		end
    
            -- Turns the desired stage toggle on.
		local Cipher = readfile("Exulus/Cache/StagesCache.exu")
		local StageContent = Decode(Cipher)
		local SplitStage = string.split(StageContent, " ")
		for _, v in pairs(Exulus["_SorterStage"]:GetChildren()) do
			if v.Name == tostring(SplitStage[2]) then
				ToggleOn(v)
				for _, x in pairs(Toggles) do
					if v.Name == x.Name then
						x.State = true
						array.stage = tostring(SplitStage[1])
					end
				end
				array.stage = tostring(SplitStage[1])
			end
		end
		if isfile("Exulus/Cache/Webhook.exu") then
			local CachedWebhook = readfile("Exulus/Cache/Webhook.exu")
			Exulus["_WebhookSearch"].Text = Decode(CachedWebhook)
		end
		if isfile("Exulus/Cache/WallpaperCache.exu") then
			local CachedWallpaper = readfile("Exulus/Cache/WallpaperCache.exu")
			Exulus["_WallpaperSearch"].Text = Decode(CachedWallpaper)
			if getsynasset then
				Exulus["_Wallpaper"].Image = getsynasset("Exulus/Wallpaper Folder/" .. Decode(CachedWallpaper))
				task.wait(.5)
				TweenWallpaper(Exulus["_Wallpaper"], 0.6)
			elseif getcustomasset then
				Exulus["_Wallpaper"].Image = getsynasset("Exulus/Wallpaper Folder/" .. Decode(CachedWallpaper))
				task.wait(.5)
				TweenWallpaper(Exulus["_Wallpaper"], 0.6)
			else
				Notify("Error", "Missing getcustomasset function.")
			end
		else
			Exulus["_Wallpaper"].Image = "0"
		end
		local OldSacCount;
		task.wait(1)
		xpcall(function()
			OldSacCount = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("GyakusatsuGui").BG.Frame.Sacs.SacsIcon.SacCount.Text
		end, function()
			Notify("Error", "Unable to obtain sacs. ")
			repeat
				task.wait()
			until OldSacCount == game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("GyakusatsuGui").BG.Frame.Sacs.SacsIcon.SacCount.Text
		end)
		Exulus["_SacsObtained"].Text = '<font color="#3E92CC" transparency="0"><b>You currently have: </b></font>' .. OldSacCount .. " sacs."
		coroutine.wrap(function()
			while wait(1) do
				Exulus["_Time"].Text = os.date('%I' .. '<br/><font transparency="0.5">' .. '%M' .. '</font><br/>' .. '%p') --// Formats in 10 22 AM
				Exulus["_Date"].Text = os.date('%B, %d, %Y') --// Formats in January, 23, 2023
			end
		end)()
		coroutine.wrap(function()
			local FTZ = tick()
			while true do
				TimeElapsedText(os.date("!%H:%M:%S", tick() - FTZ))
				task.wait(1)
			end
		end)()
    
            
    -- auto farm
		while true do
			if array.autofarm then
				pcall(function()
					if player.Character.Humanoid.Health > 0 and player.Character.HumanoidRootPart and player.Character.Remotes.KeyEvent then
						if not findobj(player.Character, "Kagune") and not findobj(player.Character, "Quinque") then
							pressKey(array.stage)
							keypress(48)
						end
						local npc = getNPC()
						if npc then
							array.found = false
							local reached = false
							coroutine.wrap(function()
								while not reached do
									if npc ~= getNPC() then
										array.found = true
										break
									end
									wait()
								end
							end)()
							SetStatus("Moving to: " .. npc.Name)
							if myData:Get("Boss")[npc.Name] or npc.Parent.Name == "GyakusatsuSpawn" then
								tp(npc.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) + Vector3.new(0, myData:Get("DistanceFromBoss"), 0))
							else
								tp(npc.HumanoidRootPart.CFrame + npc.HumanoidRootPart.CFrame.lookVector * myData:Get("DistanceFromNpc"))
							end
							SetStatus("Killing: " .. npc.Name)
							reached = true
							if not array.found then
								while findobj(findobj(npc.Parent, npc.Name), "Head") and player.Character.Humanoid.Health > 0 and array.autofarm do
									if not findobj(player.Character, "Kagune") and not findobj(player.Character, "Quinque") then
										pressKey(array.stage)
									end
									if myData:Get("Boss")[npc.Name] or npc.Parent.Name == "GyakusatsuSpawn" then
										for x, y in pairs(myData:Get("Skills")) do
											if player.PlayerFolder.CanAct.Value and y and array.skills[x].Value ~= "DownTime" then
												pressKey(x)
											end
										end
										player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) + Vector3.new(0, myData:Get("DistanceFromBoss"), 0)
									else
										player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame + npc.HumanoidRootPart.CFrame.lookVector * myData:Get("DistanceFromNpc")
									end
									if player.PlayerFolder.CanAct.Value then
										pressKey("Mouse1")
									end
									task.wait()
								end
								if npc.Name == "Gyakusatsu" then
									player.Character.Humanoid.Health = 0
								end
								if array.autofarm and player.Character.Humanoid.Health > 0 then
									labels("Kills", 1)
									if npc.Name ~= "Eto Yoshimura" and not findobj(npc.Parent, "Gyakusatsu") and npc.Name ~= "Gyakusatsu" then
										SetStatus("Collecting corpse...")
										collect(npc)
									end
								end
							end
						else
							SetStatus("Hopping servers...")
							fireclickdetector(cd)
							task.wait(1)
							array.autofarm = false
							local NewSacCount = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("GyakusatsuGui").BG.Frame.Sacs.SacsIcon.SacCount.Text
							local OldSacSub = string.sub(OldSacCount, 2, # OldSacCount)
							local NewSacSub = string.sub(NewSacCount, 2, # NewSacCount)
							local SacsGained = tonumber(NewSacSub - OldSacSub)
							WBHK("Killed!", SacsGained, NewSacSub)
							ServerHop:Teleport(game.PlaceId)
						end
					else
						SetStatus("Waiting for character to respawn")
						array.died = true
					end
				end)
			else
				break
			end
			wait()
		end
	end
end
