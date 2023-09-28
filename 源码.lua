local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
  LastIteration = tick()
  for Index = #FrameUpdateTable, 1, -1 do
FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
  end
  FrameUpdateTable[1] = LastIteration
  local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
CurrentFPS = CurrentFPS - CurrentFPS % 1
  FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/nJJPrp2w"))()
local Window = OrionLib:MakeWindow({Name = "极暴脚本", HidePremium = false, IntroText = "极暴脚本"})

local about = Window:MakeTab({
    Name = "极暴制作",
    Icon = "rbxassetid://14272184100",
    PremiumOnly = false
})

about:AddParagraph("由暴龙管理脚本暴龙更新子弹追踪以后改为卡密系统")
about:AddParagraph("支持的游戏(持续更新)")
about:AddParagraph("力量传奇 一路向西 俄亥俄州 忍者传奇 极速传奇 法宝模拟器 逃脱 手臂摔跤模拟器 doors")
about:AddParagraph("彩虹朋友 战斗战士 巴掌大战 监狱人生 伐木大亨 破坏者谜团 造船寻宝 the rake")
about:AddParagraph("杀人犯与警长 逃离建筑 背上只因剑 自然灾害 幸运方块 汽车经销大亨 餐厅大亨2 ")
about:AddParagraph("51区 布加布加 3008 scp角色扮演 鲨口求生2 蜂群模拟器 kat ")
about:AddParagraph("举重模拟器 动漫维度模拟器 Blox fruit  僵尸起义 进击的僵尸 宠物模拟器X 旗帜战争")
about:AddParagraph("床战 驾驶帝国 故事模拟器 模仿者 国王遗产 海战 寻宝模拟器 在杀手中幸存 猪猪 颜色或死亡")
about:AddParagraph("超级大力士模拟器 鱿鱼游戏")

OrionLib:MakeNotification({
	Name = "极暴脚本",
	Content = "欢迎使用极暴脚本",
	Image = "rbxassetid://14272184100",
	Time = 2
})

local Tab =Window:MakeTab({
    Name = "通用",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

Tab:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

Tab:AddButton({  
    Name = "隐身",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Gui'))()
	end
})

Tab:AddButton({  
    Name = "电脑键盘",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
	end
})

Tab:AddButton({  
    Name = "FPS助推",
	Callback = function()
	--[[ Subscribe to Zaptosis on YouTube for more awesome scripts!
 
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
███▀▀▀███░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░
█▀░░░███░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
▀░░░███░░▄█▀██▄░▀████████▄██████░░▄██▀██▄░▄██▀██████░░▄██▀███
░░░███░░██░░░██░░░██░░░▀██░░██░░░██▀░░░▀████░░░▀▀░██░░██░░░▀▀
░░███░░░▄▄█████░░░██░░░░██░░██░░░██░░░░░██▀█████▄░██░░▀█████▄
░███░░░▄██░░░██░░░██░░░▄██░░██░░░██▄░░░▄███▄░░░██░██░░█▄░░░██
█████████████▀██▄░██████▀░░░▀████░▀█████▀░██████▀████▄██████▀
░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░▄████▄░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
]]
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true-- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
     end
})

Tab:AddButton({
    Name = "子弹追踪",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/8GhR79DA"))()
   end
})

Tab:AddButton({  
    Name = "彩虹世界",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/CVYhZ6S6"))()
	end
})

Tab:AddButton({  
    Name = "范围(全游戏通用)",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/dMiziBzT"))()
	end
})

Tab:AddButton({  
    Name = "甩飞所有玩家",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/WwyZj1UK"))()
	end
})

Tab:AddButton({
    Name = "飞车",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({
	Name = "飞行V3（隐藏）",
	Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
  	end    
})

Tab:AddButton({  
    Name = "画质脚本",
	Callback = function()
	loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))()
	end
})

Tab:AddButton({  
    Name = "僵尸起义自瞄射速",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/2LjjPGUv"))()
	end
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
	local function ApplyESP(v)
   if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
       v.Character.Humanoid.NameDisplayDistance = 9e9
       v.Character.Humanoid.NameOcclusion = "NoOcclusion"
       v.Character.Humanoid.HealthDisplayDistance = 9e9
       v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
       v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
   end
end
for i,v in pairs(game.Players:GetPlayers()) do
   ApplyESP(v)
   v.CharacterAdded:Connect(function()
       task.wait(0.33)
       ApplyESP(v)
   end)
end

game.Players.PlayerAdded:Connect(function(v)
   ApplyESP(v)
   v.CharacterAdded:Connect(function()
       task.wait(0.33)
       ApplyESP(v)
   end)
end)

	local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"

for i, v in pairs(Players) do
    repeat wait() until v.Character
    if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = v.Character
        highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlightClone.Name = "Highlight"
    end
end

game.Players.PlayerAdded:Connect(function(player)
    repeat wait() until player.Character
    if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = player.Character
        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.Name = "Highlight"
    end
end)

game.Players.PlayerRemoving:Connect(function(playerRemoved)
    playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
end)

RunService.Heartbeat:Connect(function()
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
            task.wait()
        end
end
end)
	end 
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
    Name = "无限跳",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end
})

Tab:AddButton({
	Name = "转起来",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

local Tab = Window:MakeTab({
	Name = "the rake",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "菜单1",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/jrpzDS5p"))()
	end
})

Tab:AddButton({  
    Name = "菜单2(配合键盘)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/RakeEvolved/Stable/Source.lua"))()
	end
})

Tab:AddButton({  
    Name = "菜单3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptsLynX/LynX/main/KeySystem/Loader.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "杀人犯与警长",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "菜单(最强)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/MurderersVsSheriffs.lua"))()
	end
})

Tab:AddButton({  
    Name = "菜单2",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/qfjEqwGZ"))()
	end
})

Tab:AddButton({  
    Name = "全部杀死",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/rblxscriptsnet/scripts/main/murdvssherduels1"))()
	end
})

local Tab = Window:MakeTab({
	Name = "逃离建筑",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "脚本1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/bedra45/Random-games-xd/main/bedraFtfFinalGUI"))()
	end
})

Tab:AddButton({  
    Name = "脚本2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LeviTheOtaku/roblox-scripts/main/FTFHAX.lua",true))()
	end
})

Tab:AddButton({  
    Name = "脚本3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Daniel31221/Flee-The-Facility-Script/main/Flee%20The%20facility%20script"))()
	end
})

local Tab = Window:MakeTab({
	Name = "游戏脚本",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "伐木大亨",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A822.lua", true))()
	end
})

Tab:AddButton({
	Name = "彩虹朋友",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0rainbow'))()
	end
})

Tab:AddButton({
	Name = "法宝模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/loader_1038"))()
	end
})

Tab:AddButton({  
    Name = "宠物模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader", true))()
	end
})

Tab:AddButton({  
    Name = "模仿者",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/THEMIMICNEWMOBILEUINOTBETA/main/README.md"))()
	end
})

Tab:AddButton({  
    Name = "床战",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FlamingDrey/Flame-x-v3/main/Flame%20x%20v3"))()
	end
})

Tab:AddButton({  
    Name = "进击的僵尸",
	Callback = function()
	loadstring(game:HttpGet('https://ghost-storage.7m.pl/scripts/ghosthublauncher.lua'))()
	end
})

Tab:AddButton({  
    Name = "举重模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/LiftingSim/main/LiftingSimulator.lua"))()
	end
})

Tab:AddButton({  
    Name = "蜂群模拟器",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://4384103988")[0X1].Source)("Pepsi Swarm")
	end
})

Tab:AddButton({  
    Name = "汽车经销大亨",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/03sAlt/BlueLockSeason2/main/README.md"))()
	end
})

Tab:AddButton({  
    Name = "动漫维度模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SmellLikeHacker/MyEdit/main/Hub"))()
	end
})

Tab:AddButton({  
    Name = "故事模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/VbScLBH2"))()
	end
})

Tab:AddButton({  
    Name = "自然灾害模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
	end
})

Tab:AddButton({  
    Name = "鲨口求生2",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Lolboxo/SharkBiteV3/main/SharkBiteV3.1'))()
	end
})

Tab:AddButton({  
    Name = "scp角色扮演",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SCPRoleplay.lua", true))()
	end
})

Tab:AddButton({  
    Name = "驾驶帝国",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/Motorcycle%20Mayhem"))()
	end
})

Tab:AddButton({
	Name = "复制卡密",
	Callback = function()
     setclipboard("6frao9XvNetLFgD1")
  	end
})

Tab:AddButton({  
    Name = "颜色或死亡",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0color", true))()
	end
})

Tab:AddButton({  
    Name = "超级大力士模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Destiny/main/loader.lua",true))()
	end
})

Tab:AddButton({  
    Name = "布加布加[重生]",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DEVIL-Script/DEVIL-Hub/main/DEVIL-Hub-Main", true))()
	end
})

Tab:AddButton({  
    Name = "SCP 3008",
	Callback = function()
	loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
	end
})

Tab:AddButton({  
    Name = "鱿鱼游戏",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LilFrench21/Hecta/main/Script/Squid%20Game"))()
	end
})

Tab:AddButton({  
    Name = "Blox fruit",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHuB/main/Chiba-BF.txt'))()
	end
})

Tab:AddButton({  
    Name = "旗帜战争",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/danielontopp/huge/main/Joe",true))()
	end
})

Tab:AddButton({  
    Name = "在杀手中幸存下来",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
	end
})

Tab:AddButton({  
    Name = "海战",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/hussain1323232234/My-Scripts/main/Naval%20Warfare'))()
	end
})

Tab:AddButton({  
    Name = "寻宝模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/XsSfJ99B"))()
	end
})

Tab:AddButton({  
    Name = "猪猪",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/lolpoppyus/Roblox-Lua/master/Piggy'),true))()
	end
})

Tab:AddButton({  
    Name = "国王遗产",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
	end
})

Tab:AddButton({  
    Name = "餐厅大亨2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LabibKazi858/Scripts/main/Restaurant%20Tycoon%202"))()
	end
})

Tab:AddButton({  
    Name = "kat",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AndrewDarkyy/NOWAY/main/darkyyware.lua"))()
	end
})

Tab:AddButton({  
    Name = "战斗战士",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NOVA_HUB_SOURCE"))()
	end
})

Tab:AddButton({  
    Name = "一路向西",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Drrushh/Drrushh/main/Kdom",true))(); 
	end
})

Tab:AddButton({  
    Name = "幸运方块",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/QZaZKxT5"))()
	end
})

Tab:AddButton({  
    Name = "背上只因剑",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
	end
})

Tab:AddButton({  
    Name = "51区",
	Callback = function()
	loadstring(game:HttpGet('https://pastebin.com/raw/TtdvYAKU'))()
	end
})

local Tab = Window:MakeTab({
    Name = "doors",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "书呆子脚本",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/NeRDV5.lua"))()
	end
})

Tab:AddButton({  
    Name = "飞行",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({  
    Name = "封印一切十字架",
	Callback = function()
	_G.Uses = 99999999999
_G.Range = 999
_G.OnAnything = true
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))() --no deivid-- --execute this instead--
     end
})

Tab:AddButton({
    Name = "火焰喷射器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Flamethrower"))()
	end
})

Tab:AddButton({
    Name = "激光枪",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun.lua"))()
	end
})

Tab:AddButton({
    Name = "幸运方块",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Lucky%20Block"))()
	end
})

Tab:AddButton({
    Name = "魔法书",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()
	end
})
	
Tab:AddButton({
    Name = "自动a1000",
	Callback = function()
	oadstring(Game:HttpGet("https://pastebin.com/raw/7Shu1JxY", true))()
	end
})

Tab:AddButton({  
    Name = "刷钱脚本(需要复活)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Doors%20Death%20Farmer.lua"))()
	end
})

Tab:AddButton({
    Name = "刷怪菜单",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/JV8XgbQs"))()
	end
})

Tab:AddButton({  
    Name = "拯救上帝",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/0DSDSzee"))()
	end
})
	
Tab:AddButton({
	Name = "紫色手电筒",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight%20Script.lua"))()
    end
})

Tab:AddButton({  
    Name = "麦当劳房间",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/MCDonalds"))()
	end
})

Tab:AddButton({
	Name = "变身",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
    end
})

Tab:AddButton({
	Name = "微山2.3.2",
	Callback = function()
--微山doors 2.3.2(愚人节快乐)
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
    end
})

local Tab = Window:MakeTab({
	Name = "逃脱脚本",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "脚本1",
	Callback = function()
	getgenv().boothsnipe = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
    end
})

Tab:AddButton({  
    Name = "透视脚本",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Esp%20Players.txt"))()
	end
})

Tab:AddButton({  
    Name = "速度脚本",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Speed.txt"))()
	end
})

local Tab = Window:MakeTab({
	Name = "传奇游戏",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "力量传奇1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/Muscle%20Legend"))()
	end
})

Tab:AddButton({  
    Name = "力量传奇2",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Muscle-Legends'),true))()
	end
})

Tab:AddButton({  
    Name = "忍者传奇",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AliCode14/scripts/main/ScriptHub.lua"))()
	end
})

Tab:AddButton({
	Name = "极速传奇",
	Callback = function()		loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
    end
})

local Tab = Window:MakeTab({
    Name = "监狱人生",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "管理员",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
	end
})

Tab:AddButton({
    Name = "多功能菜单",
	Callback = function()
	loadstring(game:HttpGet('https://paste.website/p/96d68817-3f1e-4fef-a8b8-9aafdc810329.txt'))()
	end
})

Tab:AddButton({
	Name = "声音折磨",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GEianeKX"))()
    end
})

Tab:AddButton({  
    Name = "变身龙战士",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/4uuqVUNA"))()
	end
})

Tab:AddButton({
    Name = "罗亚天1.5 ",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
	end
})

local Section = Tab:AddSection({
	Name = "传送位置"
})
Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})

Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})

Tab:AddButton({  
    Name = "餐厅",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(915, 99, 2328)
	end
})

Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})

Tab:AddButton({
	Name = "院子",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Tab = Window:MakeTab({
	Name = "手臂摔跤模拟器",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "脚本1(键盘按I隐藏)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/wrestle2/main/armsim"))()
	end
})

Tab:AddButton({
	Name = "复制卡密",
	Callback = function()
     setclipboard("ReallyGoodArmSim4231")
  	end
})

Tab:AddButton({  
    Name = "脚本2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Spirit-Softworks/Spirit-Hub-Main/main/Loader.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "俄亥俄州",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "菜单1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
	end
})

Tab:AddButton({  
    Name = "收集物品现金",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/1QCwNAXx"))()
	end
})

local Tab = Window:MakeTab({
	Name = "破坏者谜团2",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "脚本1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DreadzHub2/DreadzHub-Scripts-FR/main/Loader"))()
	end
})

Tab:AddButton({  
    Name = "最强脚本(配合键盘)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/vwSaraa/LunarHub/main/mm2"))()
	end
})

Tab:AddButton({  
    Name = "键盘",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
	end
})

local Tab = Window:MakeTab({
    Name = "巴掌模拟器",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "脚本1",
	Callback = function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
	end
})

Tab:AddButton({  
    Name = "脚本2(hub)",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/TheScriptMaster1/ScriptMaster-Hub/main/scriptmasterhub.lua')))()
	end
})

local Tab = Window:MakeTab({
	Name = "造船寻宝",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "脚本(搭配键盘)",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/XRoLLu/UWU/main/BUILD%20A%20BOAT%20FOR%20TREASURE.lua'))()
	end
})

Tab:AddButton({
	Name = "自动刷金条",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/Lyy77rnr",true))()
  	end
})

Tab:AddButton({
	Name = "反挂机",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})