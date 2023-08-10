local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/nJJPrp2w"))()
local Window = OrionLib:MakeWindow({Name = "操你妈的个逼的你个傻逼东西", HidePremium = false, IntroText = "傻逼东西你妈死了"})

local about = Window:MakeTab({
    Name = "傻逼东西 ",
    Icon = "rbxassetid://14272184100",
    PremiumOnly = false
})

local Tab =Window:MakeTab({
    Name = "哦 你妈了个傻逼玩意 你妈个逼养的 ",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "婊子操你血妈你妈个的傻逼",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})