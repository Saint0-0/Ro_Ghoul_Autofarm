---@diagnostic disable: undefined-global 
---@diagnostic disable: deprecated
---@diagnostic disable: redefined-local
---@diagnostic disable: unused-local
---@diagnostic disable: undefined-field

local b=loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/z4gs/scripts/master/testtttt.lua"))():AddWindow("Ro-Ghoul",{main_color=Color3.fromRGB(0,0,0),min_size=Vector2.new(373,340),can_resize=false})local c=setmetatable({},{__index=function(b,b)return game:GetService(b)or game[b]end})local d=syn.request or request or(http and http.request)local e=game:GetService("TeleportService")local f=game:GetService("HttpService")local g=game.PlaceId;local b,g,h,i=b:AddTab("Main"),b:AddTab("Farm Options"),b:AddTab("Trainer"),b:AddTab("Misc")local j,k,l,m,n,n,o;local p,q,r,s,t=c.FindFirstChild,c.FindFirstChildOfClass,c.WaitForChild,Instance.new("RemoteEvent").FireServer,Instance.new("RemoteFunction").InvokeServer;local u=c.Players.LocalPlayer;repeat wait()until u:FindFirstChild("PlayerFolder")local v,w,x=u.PlayerFolder.Customization.Team.Value,c.ReplicatedStorage.Remotes,u.PlayerFolder.StatsFunction;local y,z=0,0;local z=workspace.CurrentCamera;local z=loadstring(game:HttpGet("https://raw.githubusercontent.com/z4gs/scripts/master/Settings.lua"))().new("Ro-Ghoul Autofarm",{Skills={E=false,F=true,C=false,R=false},Boss={["Gyakusatsu"]=true,["Eto Yoshimura"]=false,["Koutarou Amon"]=false,["Nishiki Nishio"]=false},DistanceFromNpc=5,DistanceFromBoss=6,TeleportSpeed=250,ReputationFarm=false,ReputationCashout=false,AutoKickWhitelist=""})local A={boss={["Gyakusatsu"]=1250,["Eto Yoshimura"]=1250,["Koutarou Amon"]=750,["Nishiki Nishio"]=250},npcs={["Aogiri Members"]="GhoulSpawns",Investigators="CCGSpawns",Humans="HumanSpawns"},stages={"One","Two","Three","Four","Five","Six"},skills={E=u.PlayerFolder.Special1CD,F=u.PlayerFolder.Special3CD,C=u.PlayerFolder.SpecialBonusCD,R=u.PlayerFolder.Special2CD}}b:AddLabel("Target")function WBHK(b)local b={["content"]=b}local b=d({Url=getgenv().hook,Headers={['Content-Type']='application/json'};Body=game:GetService("HttpService"):JSONEncode(b);Method="POST"})end;function SHop()local b="https://games.roblox.com/v1/games/"local c=game.PlaceId;local b=b..c.."/servers/Public?sortOrder=Asc&limit=100"function ListServers(c)local b=game:HttpGet(b..((c and"&cursor="..c)or""))return f:JSONDecode(b)end;local b,d;repeat local c=ListServers(d)b=c.data[1]d=c.nextPageCursor until b;e:TeleportToPlaceInstance(c,b.id,game.Players.LocalPlayer)end;local d={List={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","!","@","#","$","%","&","*","+","-","/","{","}","ç","~","=","^","[","]"},PasswordLenght=10,Password=""}for b=1,d.PasswordLenght do if math.random(1,2)==1 then d.Password=d.Password..string.upper(d.List[math.random(1,#d.List)])else d.Password=d.Password..d.List[math.random(1,#d.List)]end end;local e=game:GetService("TweenService")local f=game:GetService("Workspace").GyaSacTable.GyaSacIndicator.ClickDetector;local B=Instance.new("ScreenGui")local C=Instance.new("Frame")local D=Instance.new("Frame")local E=Instance.new("UICorner")local F=Instance.new("TextLabel")local G=Instance.new("TextLabel")local H=Instance.new("UIGradient")local I=Instance.new("UIGradient")local J=Instance.new("TextLabel")local K=Instance.new("TextLabel")local L=Instance.new("ImageLabel")local M=Instance.new("UICorner")local N=Instance.new("UIAspectRatioConstraint")local O=Instance.new("UIAspectRatioConstraint")local O=Instance.new("UIStroke")B.Name=d.Password;if syn then syn.protect_gui(B)end;B.Parent=game.CoreGui;B.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;B.IgnoreGuiInset=true;C.Name=d.Password;C.Parent=B;C.BackgroundColor3=Color3.fromRGB(24,24,24)C.Size=UDim2.new(1,0,1.5,0)C.BackgroundTransparency=1;D.Name="StatusFrame"D.Parent=C;D.BackgroundColor3=Color3.fromRGB(34,34,34)D.Position=UDim2.new(0.42004773,0,0.5,0)D.Size=UDim2.new(0,393,0,116)D.BackgroundTransparency=1;D.AnchorPoint=Vector2.new(0.34,0.34)O.Name="UIStroke"O.Parent=D;O.ApplyStrokeMode="Contextual"O.Color=Color3.fromRGB(255,255,255)O.Thickness=2;O.Transparency=1;E.Parent=D;F.Name="Status"F.Parent=D;F.BackgroundColor3=Color3.fromRGB(255,255,255)F.BackgroundTransparency=1.000;F.Position=UDim2.new(0.0229007639,0,0.138875097,0)F.Size=UDim2.new(0,375,0,29)F.Font=Enum.Font.GothamMedium;F.Text="Status: Waiting..."F.TextColor3=Color3.fromRGB(255,255,255)F.TextSize=14.000;F.TextXAlignment=Enum.TextXAlignment.Left;F.TextTransparency=1;G.Name="Divider"G.Parent=D;G.BackgroundColor3=Color3.fromRGB(255,255,255)G.BorderSizePixel=0;G.Position=UDim2.new(0,0,0.441015422,0)G.Size=UDim2.new(0,0,0,0)G.Font=Enum.Font.SourceSans;G.Text=""G.TextColor3=Color3.fromRGB(0,0,0)G.TextSize=14.000;H.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(137,0,254)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(223,0,255))}H.Parent=G;I.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(137,0,254)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(223,0,255))}I.Parent=O;J.Name="TimeElapsed"J.Parent=D;J.BackgroundColor3=Color3.fromRGB(255,255,255)J.BackgroundTransparency=1.000;J.Position=UDim2.new(0.0229007639,0,0.53077817,0)J.Size=UDim2.new(0,375,0,25)J.Font=Enum.Font.GothamMedium;J.Text=""J.TextColor3=Color3.fromRGB(255,255,255)J.TextSize=13.000;J.TextXAlignment=Enum.TextXAlignment.Left;J.TextTransparency=1;K.Name="SacsObtained"K.Parent=D;K.BackgroundColor3=Color3.fromRGB(255,255,255)K.BackgroundTransparency=1.000;K.Position=UDim2.new(0.0229007639,0,0.733366549,0)K.Size=UDim2.new(0,375,0,25)K.Font=Enum.Font.GothamMedium;K.TextColor3=Color3.fromRGB(255,255,255)K.TextSize=13.000;K.TextXAlignment=Enum.TextXAlignment.Left;K.TextTransparency=1;L.Name="Logo"L.Parent=C;L.BackgroundColor3=Color3.fromRGB(255,255,255)L.BackgroundTransparency=1.000;L.Position=UDim2.new(0.42004773,0,0.267961234,0)L.Size=UDim2.new(0,170,0,132)L.Image="http://www.roblox.com/asset/?id=10030851555"L.ImageTransparency=1;M.CornerRadius=UDim.new(10,10)M.Parent=L;N.Parent=L;coroutine.wrap(function()local b=tick()while true do J.Text="Time elapsed: "..os.date("!%H:%M:%S",tick()-b)..loadstring("\34\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\77\97\100\101\32\98\121\32\226\154\148\83\97\105\110\116\35\54\48\57\57\34\10")()wait(1)end end)()function InitFG()e:Create(C,TweenInfo.new(.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{BackgroundTransparency=0}):Play()e:Create(L,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{ImageTransparency=0}):Play()wait(.3)e:Create(D,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{BackgroundTransparency=0}):Play()wait(.3)e:Create(F,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{TextTransparency=0}):Play()e:Create(O,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Transparency=0}):Play()wait(.3)e:Create(J,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{TextTransparency=0}):Play()wait(.3)e:Create(K,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{TextTransparency=0}):Play()e:Create(G,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Size=UDim2.new(0,393,0,2)}):Play()fireclickdetector(f)wait(1)local b=game:GetService("Players").LocalPlayer.PlayerGui.GyakusatsuGui.BG.Frame.Sacs.SacsIcon.SacCount;wait(1)K.Text=loadstring("\34\89\111\117\32\99\117\114\114\101\110\116\108\121\32\104\97\118\101\58\32\34\10")()..b.Text..loadstring("\34\32\115\97\99\115\46\32\32\32\32\32\32\32\32\32\32\32\100\105\115\99\111\114\100\46\103\103\47\52\118\106\112\110\107\120\101\74\85\34\10")()end;local d=b:AddDropdown("Select",function(b)A.targ=A.npcs[b]end)j=b:AddButton("Start",function()if not A.autofarm then if m then j.Text,A.autofarm="Stop",true;local b=tick()while A.autofarm do o("tfarm","Time elapsed: "..os.date("!%H:%M:%S",tick()-b))wait(1)end else loadstring("\117\58\75\105\99\107\40\34\70\97\105\108\101\100\32\116\111\32\103\101\116\32\116\104\101\32\82\101\109\111\116\101\32\107\101\121\44\32\112\108\101\97\115\101\32\116\114\121\32\116\111\32\101\120\101\99\117\116\101\32\116\104\101\32\115\99\114\105\112\116\32\97\103\97\105\110\34\41\10")()end else j.Text,A.autofarm,A.died="Start",false,false end end)local function e(b)local b,c,d=tostring(b):match("(%-?%d?)(%d*)(%.?.*)")return b..c:reverse():gsub("(%d%d%d)","%1,"):reverse()..d end;o=setmetatable({text={label=b:AddLabel("")},tfarm={label=b:AddLabel("")},space={label=b:AddLabel("")},Quest={prefix="Current Quest: ",label=b:AddLabel("Current Quest: None")},Yen={prefix="Yen: ",label=b:AddLabel("Yen: 0"),value=0,oldval=u.PlayerFolder.Stats.Yen.Value},RC={prefix="RC: ",label=b:AddLabel("RC: 0"),value=0,oldval=u.PlayerFolder.Stats.RC.Value},Kills={prefix="Kills: ",label=b:AddLabel("Kills: 0"),value=0}},{__call=function(b,c,d,f)if c and d then local b=b[c]if type(d)=="number"then b.value=b.value+d;b.label.Text=b.prefix..e(b.value)if f then b.oldval=f end elseif b.prefix then b.label.Text=b.prefix..d else b.label.Text=d end;return end;for b,b in pairs(o)do b.value=0;b.label.Text=b.prefix.."0"end end})local function e(b)return o[b].value and o[b].value or o[b].label.Text end;l=b:AddButton("Reset",function()o()end)if v=="CCG"then g:AddLabel("Quinque Stage")else g:AddLabel("Kagune Stage")end;local e=g:AddDropdown("[ 1 ]",function(b)A.stage=A.stages[tonumber(b)]end)A.stage="One"g:AddSwitch("Reputation Farm",function(b)z:Set("ReputationFarm",b)end):Set(z:Get("ReputationFarm"))g:AddSwitch("Auto Reputation Cashout",function(b)z:Set("ReputationCashout",b)end):Set(z:Get("ReputationCashout"))for b,c in pairs(A.boss)do g:AddSwitch(b.." Boss Farm ".."(".."lvl "..c.."+)",function(c)local d=z:Get("Boss")d[b]=c;z:Set("Boss",d)end):Set(z:Get("Boss")[b])end;g:AddSlider("TP Speed",function(b)z:Set("TeleportSpeed",b)end,{min=90,max=250}):Set(100)g:AddSlider("Distance from NPC",function(b)z:Set("DistanceFromNpc",b*-1)end,{min=0,max=8}):Set(65)g:AddSlider("Distance from Bosses",function(b)z:Set("DistanceFromBoss",b*-1)end,{min=0,max=15}):Set(40)o.p={label=h:AddLabel("Current trainer: "..u.PlayerFolder.Trainers[v.."Trainer"].Value)}local g=h:AddSlider("Progress",nil,{min=0,max=100,readonly=true})g:Set(u.PlayerFolder.Trainers[u.PlayerFolder.Trainers[v.."Trainer"].Value].Progress.Value)u.PlayerFolder.Trainers[v.."Trainer"].Changed:connect(function()o("p","Current trainer: "..u.PlayerFolder.Trainers[v.."Trainer"].Value)g:Set(u.PlayerFolder.Trainers[u.PlayerFolder.Trainers[v.."Trainer"].Value].Progress.Value)end)k=h:AddButton("Start",function()if not A.trainer then A.trainer,k.Text=true,"Stop"local b,c;while A.trainer do if b and b.Connected then b:Disconnect()end;local c,d;b=u.Backpack.DescendantAdded:Connect(function(b)if tostring(b)=="TSCodeVal"and b:IsA("StringValue")then c=b.Value end end)d=t(w.Trainers.RequestTraining)if d=="TRAINING"then for b,b in pairs(workspace.TrainingSessions:GetChildren())do if r(b,"Player").Value==u then s(r(b,"Comm"),"Finished",c,false)break end end elseif d=="TRAINING COMPLETE"then o("time","Switching to other trainer...")for b,b in pairs(u.PlayerFolder.Trainers:GetDescendants())do if table.find(n,b.Name)and p(b,"Progress")and tonumber(b.Progress.Value)<100 and tonumber(u.PlayerFolder.Trainers[u.PlayerFolder.Trainers[v.."Trainer"].Value].Progress.Value)==100 then t(w.Trainers.ChangeTrainer,b.Name)wait(1.5)end end else o("time","Time until the next training: "..d)end;wait(1)end;o("time","")else A.trainer,k.Text=false,"Start"end end)o.time={label=h:AddLabel("")}i:AddSwitch("Auto add kagune/quinque stats",function(b)A.weapon=b end)i:AddSwitch("Auto add durability stats",function(b)A.dura=b end)i:AddSwitch("Auto kick",function(b)A.kick=b end)i:AddLabel("Auto kick whitelist (type 1 name per line)")local h=i:AddConsole({["y"]=50,["source"]="Text"})h:Set(z:Get("AutoKickWhitelist"))h:OnChange(function(b)z:Set("AutoKickWhitelist",b)end)for b,c in pairs(A.skills)do i:AddSwitch("Auto use "..b.." skill (on bosses)",function(c)local d=z:Get("Skills")d[b]=c;z:Set("Skills",d)end):Set(z:Get("Skills")[b])end;do local b=0;for c,c in pairs(u.PlayerGui.HUD.StagesFrame.InfoScroll:GetChildren())do if c.ClassName=="Frame"and c.Name~="Example"then b=b+1;e:Add(b)end end end;for b,c in pairs(A.npcs)do d:Add(b)end;b:Show()local function b(b)if A.died then u.Character.HumanoidRootPart.CFrame=b;A.died=false;return end;local c=Instance.new("CFrameValue")c.Value=u.Character.HumanoidRootPart.CFrame;local b=game:GetService("TweenService"):Create(c,TweenInfo.new((u.Character.HumanoidRootPart.Position-b.p).magnitude/z:Get("TeleportSpeed"),Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0),{Value=b})b:Play()local d;b.Completed:Connect(function()d=true end)while not d do if A.found or not A.autofarm or u.Character.Humanoid.Health<=0 then b:Cancel()break end;u.Character.HumanoidRootPart.CFrame=c.Value;task.wait()end;c:Destroy()end;local function d()local b,c=nil,math.huge;if z:Get("Boss")["Gyakusatsu"]and tonumber(u.PlayerFolder.Stats.Level.Value)>A.boss["Gyakusatsu"]and p(workspace.NPCSpawns["GyakusatsuSpawn"],"Gyakusatsu")then local b,c=math.huge,nil;for d,d in pairs(workspace.NPCSpawns["GyakusatsuSpawn"]:GetChildren())do if d.Name~="Mob"and p(d,"Humanoid")and d.Humanoid.Health<b then b=d.Humanoid.Health;c=d end end;if not c then return workspace.NPCSpawns.GyakusatsuSpawn.Gyakusatsu end;return c end;for d,d in pairs(workspace.NPCSpawns:GetChildren())do local d=q(d,"Model")if d and p(d,"Head")and not p(d,"AC")then if d.Parent.Name==A.targ then local e=(d.HumanoidRootPart.Position-u.Character.HumanoidRootPart.Position).magnitude;if e<c then b,c=d,e end elseif z:Get("Boss")[d.Name]and tonumber(u.PlayerFolder.Stats.Level.Value)>=A.boss[d.Name]then return d end end end;return b end;local function e(c)o("text","Moving to quest NPC")local d=v=="Ghoul"and workspace.Anteiku.Yoshimura or workspace.CCGBuilding.Yoshitoki;b(d.HumanoidRootPart.CFrame)t(game:GetService("ReplicatedStorage").Remotes.Ally.AllyInfo)wait()fireclickdetector(d.TaskIndicator.ClickDetector)if A.autofarm and not A.died and(d.HumanoidRootPart.Position-u.Character.HumanoidRootPart.Position).Magnitude<=20 then if c then o("text","Getting quest...")t(w[d.Name].Task)t(w[d.Name].Task)local b=r(u.PlayerFolder.CurrentQuest.Complete,"Aogiri Member")o("Quest",("%c/%c"):format("0",b:WaitForChild("Max").Value))b.Changed:Connect(function(c)o("Quest",("%c/%c"):format(c,b.Max.Value))end)else o("text","Withdrawing reputation")t(w.ReputationCashOut)y=tick()end end end;local function i(b)local c=tick()local b=r(b,b.Name.." Corpse",2)local d=r(b,"ClickPart",2)u.Character.HumanoidRootPart.CFrame=d.CFrame*CFrame.new(0,1.7,0)r(d,"")repeat if tick()-c>4 then break end;u.Character.Humanoid:MoveTo(d.Position)wait()fireclickdetector(d[""],1)until not b.Parent.Parent or not p(b,"ClickPart")or not A.autofarm or u.Character.Humanoid.Health<=0 end;local function j(b)s(u.Character.Remotes.KeyEvent,m,b,"Down",u:GetMouse().Hit,nil,workspace.Camera.CFrame)end;u.PlayerFolder.Stats.RC.Changed:Connect(function(b)if A.autofarm then o("RC",b-o.RC.oldval,b)end end)u.PlayerFolder.Stats.Yen.Changed:Connect(function(b)if A.autofarm then o("Yen",b-o.Yen.oldval,b)end end)u.Idled:Connect(function()game:GetService("VirtualUser"):ClickButton2(Vector2.new())end)c.Players.PlayerAdded:Connect(function(b)if A.kick then local c=h:Get():split("\n")if not table.find(c,b.Name)then u:Kick("Player joined, name: "..b.Name)end end end)u.PlayerFolder.Trainers[u.PlayerFolder.Trainers[v.."Trainer"].Value].Progress.Changed:Connect(function(b)g:Set(tonumber(b))end)coroutine.wrap(function()while wait()do if tonumber(u.PlayerFolder.Stats.Focus.Value)>0 then if A.weapon then t(x,"Focus","WeaponAddButton",1)end;if A.dura then t(x,"Focus","DurabilityAddButton",1)end end end end)()do fireclickdetector(workspace.TrainerModel.ClickIndicator.ClickDetector)r(r(u.PlayerGui,"TrainersGui"),"TrainersGuiScript")u.PlayerGui.TrainersGui:Destroy()repeat for b,b in pairs(getgc(true))do if not m and type(b)=="function"and getinfo(b).source:find(".ClientControl")then for c,d in pairs(getconstants(b))do if d=="KeyEvent"then local b=getconstant(b,c+1)if#b>=100 then m=b;break end end end elseif type(b)=="table"and((table.find(b,"(S1) Kureo Mado")and v=="CCG")or(table.find(b,"(S1) Ken Kaneki")))then n=b end end;wait()until m end;if game:GetService("CoreGui").imgui.Windows then game:GetService("CoreGui").imgui.Windows.Visible=false end;InitFG()A.autofarm=true;while true do if A.autofarm then pcall(function()if u.Character.Humanoid.Health>0 and u.Character.HumanoidRootPart and u.Character.Remotes.KeyEvent then if not p(u.Character,"Kagune")and not p(u.Character,"Quinque")then j(A.stage)end;if z:Get("ReputationFarm")and(not p(u.PlayerFolder.CurrentQuest.Complete,"Aogiri Member")or u.PlayerFolder.CurrentQuest.Complete["Aogiri Member"].Value==u.PlayerFolder.CurrentQuest.Complete["Aogiri Member"].Max.Value)then e(true)return elseif z:Get("ReputationCashout")and tick()-y>7200 then e()end;local c=d()if c then A.found=false;local e=false;coroutine.wrap(function()while not e do if c~=d()then A.found=true;break end;wait()end end)()F.Text="Status: Moving to "..c.Name;if z:Get("Boss")[c.Name]or c.Parent.Name=="GyakusatsuSpawn"then b(c.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(90),0,0)+Vector3.new(0,z:Get("DistanceFromBoss"),0))else b(c.HumanoidRootPart.CFrame+c.HumanoidRootPart.CFrame.lookVector*z:Get("DistanceFromNpc"))end;F.Text="Status: Killing "..c.Name;e=true;if not A.found then while p(p(c.Parent,c.Name),"Head")and u.Character.Humanoid.Health>0 and A.autofarm do if not p(u.Character,"Kagune")and not p(u.Character,"Quinque")then j(A.stage)end;if z:Get("Boss")[c.Name]or c.Parent.Name=="GyakusatsuSpawn"then for b,c in pairs(z:Get("Skills"))do if u.PlayerFolder.CanAct.Value and c and A.skills[b].Value~="DownTime"then j(b)end end;u.Character.HumanoidRootPart.CFrame=c.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(90),0,0)+Vector3.new(0,z:Get("DistanceFromBoss"),0)else u.Character.HumanoidRootPart.CFrame=c.HumanoidRootPart.CFrame+c.HumanoidRootPart.CFrame.lookVector*z:Get("DistanceFromNpc")end;if u.PlayerFolder.CanAct.Value then j("Mouse1")end;task.wait()end;if c.Name=="Gyakusatsu"then u.Character.Humanoid.Health=0 end;if A.autofarm and u.Character.Humanoid.Health>0 then o("Kills",1)if c.Name~="Eto Yoshimura"and not p(c.Parent,"Gyakusatsu")and c.Name~="Gyakusatsu"then o("text","Collecting corpse...")i(c)end end end else F.Text="Status: Hopping servers..."fireclickdetector(f)local b=game:GetService("Players").LocalPlayer.PlayerGui.GyakusatsuGui.BG.Frame.Sacs.SacsIcon.SacCount;wait(1)WBHK(loadstring("\34\64\101\118\101\114\121\111\110\101\92\110\42\42\71\121\97\107\117\115\97\116\115\117\32\75\105\108\108\101\100\42\42\92\110\89\111\117\32\110\111\119\32\104\97\118\101\58\32\34\10")()..b.Text.." Sacs!")wait(3)for b=1,math.huge do wait(.2)SHop()end end else F.Text="Status: Waiting for character to respawn."A.died=true end end)else o("text","")end;wait()end
