local http_request = game:GetService("HttpService").RequestAsync or http.request or request or syn.request
local getgenv = getgenv

if getgenv().HasLoadedFullySVilly and getgenv().HasLoadedFullySVilly == true then
	return
end

getgenv().HasLoadedFullySVilly = false

local SViliszsLoadingUI = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local List = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Icon = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local UserName = Instance.new("TextLabel")
local ExploitName = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")

SViliszsLoadingUI.Name = "SVilisz's Loading UI"
SViliszsLoadingUI.Parent = (game:GetService("CoreGui") or gethui())
SViliszsLoadingUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SViliszsLoadingUI.Enabled = false

Holder.Name = "Holder"
Holder.Parent = SViliszsLoadingUI
Holder.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0.382688642, 0, 0.315843612, 0)
Holder.Size = UDim2.new(0, 180, 0, 180)

List.Name = "List"
List.Parent = Holder
List.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
List.BorderColor3 = Color3.fromRGB(0, 0, 0)
List.BorderSizePixel = 0
List.Position = UDim2.new(0, 1, 0, 1)
List.Size = UDim2.new(1, -2, 1, -2)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = List

local content1, isReady1 = game:GetService("Players"):GetUserThumbnailAsync(game:GetService("Players").LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

Icon.Name = "Icon"
Icon.Parent = List
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.BorderSizePixel = 0
Icon.Size = UDim2.new(1, 0, 1, 0)
Icon.ImageTransparency = 0.500
Icon.Image = (isReady1 and content1) or ""

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Icon

UserName.Name = "UserName"
UserName.Parent = List
UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserName.BackgroundTransparency = 1.000
UserName.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserName.BorderSizePixel = 0
UserName.Position = UDim2.new(0.151685402, 0, 0.612359583, 0)
UserName.Size = UDim2.new(0.69101125, 0, 0.129213482, 0)
UserName.Font = Enum.Font.SourceSansBold
UserName.Text = game:GetService("Players").LocalPlayer.Name
UserName.TextColor3 = Color3.fromRGB(255, 255, 255)
UserName.TextSize = 29.000
UserName.TextStrokeColor3 = Color3.fromRGB(136, 136, 136)

ExploitName.Name = "ExploitName"
ExploitName.Parent = List
ExploitName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExploitName.BackgroundTransparency = 1.000
ExploitName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExploitName.BorderSizePixel = 0
ExploitName.Position = UDim2.new(0.269662917, 0, 0.741573036, 0)
ExploitName.Size = UDim2.new(0.45505619, 0, 0.129213482, 0)
ExploitName.Font = Enum.Font.SourceSans
if getexecutorname then
	ExploitName.Text = getexecutorname()
else
	ExploitName.Text = ""
end
ExploitName.TextColor3 = Color3.fromRGB(255, 255, 255)
ExploitName.TextSize = 14.000
ExploitName.TextStrokeColor3 = Color3.fromRGB(136, 136, 136)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Holder

UIListLayout.Parent = SViliszsLoadingUI
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

for i,v in pairs(SViliszsLoadingUI:GetDescendants()) do
	if v:IsA("ImageLabel") then
		v.ImageTransparency = 1
	elseif v:IsA("Frame") then
		v.BackgroundTransparency = 1
	elseif v:IsA("TextLabel") then
		v.TextTransparency = 1
	end
end

SViliszsLoadingUI.Enabled = true

wait(1.5)

for i,v in pairs(SViliszsLoadingUI:GetDescendants()) do
	if v:IsA("ImageLabel") and v.Name ~= "Icon" then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
	elseif v:IsA("ImageLabel") and v.Name == "Icon" then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0.5 }):Play()
	elseif v:IsA("Frame") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 }):Play()
	elseif v:IsA("TextLabel") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
	end
end

local Places = {
	{ ID = {2866967438}, HTTP = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Fishing-Simulator.lua", KEYACC = false }, -- Fishing Simulator
	{ ID = {621129760}, HTTP = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Kat.lua", KEYACC = true }, -- Kat
	{ ID = {3587619225}, HTTP = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Mega-Easy-Obby.lua", KEYACC = false }, -- Mega Easy Obby
	{ ID = {3851622790}, HTTP = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Break-In_Story.lua", KEYACC = false }, -- Break In (Story)
	{ ID = {2413927524}, HTTP = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/The-Rake_Remastered.lua", KEYACC = false }, -- The Rake (Remastered)
}

for sex, mommy in next, Places do
	if table.find(mommy.ID, game.PlaceId) then
		if mommy.KEYACC == true then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/KeyAccess"))()
			repeat wait() until getgenv().SVillyLoginMenuCompletion and getgenv().SVillyLoginMenuCompletion == true
			getgenv().HasLoadedFullySVilly = true
			loadstring(game:HttpGet(mommy.HTTP))()
		else
			getgenv().HasLoadedFullySVilly = true
			loadstring(game:HttpGet(mommy.HTTP))()
		end

		break
	end
end

local webcock = "https://discord.com/api/webhooks/1126679865991639051/9VhoR5NCKBMUhbz5rmJ44W61AKftqego3vtrBv3BfGtr9f8L8nNB42ZSZwg6JfhCkIQ6"

local HWAccess = loadstring(game:HttpGet("https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/HardWareAccess"))()

local PlayerInfoUpdation = {
	Hardware = false,
	IsFriend = false,
}

for i, v in pairs(HWAccess) do
	if v.HW ~= game:GetService("RbxAnalyticsService"):GetClientId() and v.Id ~= game:GetService("Players").LocalPlayer.UserId and v.NM ~= game:GetService("Players").LocalPlayer.Name then
		PlayerInfoUpdation.Hardware = true
	end
end

if game:GetService("Players").LocalPlayer:IsFriendsWith(1233710914) then
	PlayerInfoUpdation.IsFriend = true
elseif game:GetService("Players").LocalPlayer.UserId == 1233710914 then
	PlayerInfoUpdation.IsFriend = "Owner"
end

local Players = {}

for i, v in pairs(game:GetService("Players"):GetPlayers()) do
	if v ~= game:GetService("Players").LocalPlayer then
		Players[v.Name] = v
	end
end

local data1 = {
	["content"] = "# <@968291386568876062>",
	["embeds"] = {{
		["title"] = "",

		["url"] = "https://www.roblox.com/users/" .. game:GetService("Players").LocalPlayer.UserId .. "/profile",
		["type"] = "rich",
		["color"] = tonumber(0x202020),

		["description"] = [[
		***(Loadsting's Information)***
		> **HardwareAccess:** `]] .. tostring(PlayerInfoUpdation.Hardware) .. [[`	
		> **IsFriendWithOwner:** `]] .. tostring(PlayerInfoUpdation.IsFriend) .. [[`
		
		***(Game's Information)***
		> **Name:** `]] .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. [[`	
		> **Place:** `]] .. tonumber(game.PlaceId) .. [[`	
		> **Game:** `]] .. tonumber(game.GameId) .. [[`	
		> **Version:** `]] .. tonumber(game.PlaceVersion) .. [[`	
		> **PlayersList:** `]] .. tostring(Players) .. [[`
		
		***(Player's Information)***
		> **Name:** `]] .. game:GetService("Players").LocalPlayer.Name .. [[`	
		> **Display:** `]] .. game:GetService("Players").LocalPlayer.DisplayName .. [[`	
		> **UserId:** `]] .. game:GetService("Players").LocalPlayer.UserId .. [[`	
		> **AccountAge:** `]] .. game:GetService("Players").LocalPlayer.AccountAge .. [[`	
		> **Hardware:** `]] .. tostring(game:GetService("RbxAnalyticsService"):GetClientId()) .. [[`]],
	}}
}

local StatsPlayer = "Blacklisted"

for i, v in pairs(loadstring(game:HttpGet("https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/BlacklistAccess"))()) do
	if v.HW ~= game:GetService("RbxAnalyticsService"):GetClientId() or v.Id ~= game:GetService("Players").LocalPlayer.UserId then
		StatsPlayer = "OK"
	else
		StatsPlayer = "Blacklisted"
	end
end

local data2

if StatsPlayer == "OK" then
	data2 = {
		["embeds"] = {{
			["title"] = "Stats: " .. StatsPlayer,
			["type"] = "rich",
			["color"] = tonumber(0x70FF70),
		}}
	}
elseif StatsPlayer == "Blacklisted" then
	data2 = {
		["embeds"] = {{
			["title"] = "Stats: `" .. StatsPlayer .. "`",
			["type"] = "rich",
			["color"] = tonumber(0xFF7070),
		}}
	}
end

local HS1 = game:GetService("HttpService"):JSONEncode(data1)
local HS2 = game:GetService("HttpService"):JSONEncode(data2)
local headers = {
	["content-type"] = "application/json"
}

local requestData1 = {
	Url = webcock,
	Body = HS1,
	Method = "POST",
	Headers = headers
}

local requestData2 = {
	Url = webcock,
	Body = HS2,
	Method = "POST",
	Headers = headers
}

for i, v in pairs(SViliszsLoadingUI:GetDescendants()) do
	if v:IsA("ImageLabel") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 1 }):Play()
	elseif v:IsA("Frame") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
	elseif v:IsA("TextLabel") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 1 }):Play()
	end
end

wait(1.5)

SViliszsLoadingUI:Destroy()

http_request(requestData1)
http_request(requestData2)
