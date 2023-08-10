local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/nJJPrp2w"))()
local Window = OrionLib:MakeWindow({Name = "操你妈的个傻逼", HidePremium = false, IntroText = "傻逼东西你妈死了"})

local about = Window:MakeTab({
    Name = "傻逼东西 ",
    Icon = "rbxassetid://14272184100",
    PremiumOnly = false
})

local Tab =Window:MakeTab({
    Name = "你妈了个傻逼",
	Icon = "rbxassetid://14272184100",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "婊子操你血妈你妈个的傻逼你全家死了 ",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})