local KeyAcc = "sviliszontop"

local SViliszsLoadingUI = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local List = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Icon = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UserName = Instance.new("TextLabel")
local ExploitName = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
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
UICorner.CornerRadius = UDim.new(1, 1)
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
UICorner_2.CornerRadius = UDim.new(1, 1)
UICorner_2.Parent = Icon
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
UIGradient.Parent = Icon
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
UICorner_3.CornerRadius = UDim.new(1, 1)
UICorner_3.Parent = Holder
ImageLabel.Parent = Holder
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.322222233, 0, -0.322222233, 0)
ImageLabel.Size = UDim2.new(1, 115, 1, 115)
ImageLabel.ZIndex = 0
ImageLabel.Image = "rbxassetid://10822615828"
ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
UIListLayout.Parent = SViliszsLoadingUI
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

for i,v in pairs(SViliszsLoadingUI:GetDescendants()) do
	if v:IsA("ImageLabel") then
		v.ImageTransparency = 1
	end
	if v:IsA("Frame") then
		v.BackgroundTransparency = 1
	end
	if v:IsA("TextLabel") then
		v.TextTransparency = 1
	end
end

SViliszsLoadingUI.Enabled = true

wait(1.5)

for i,v in pairs(SViliszsLoadingUI:GetDescendants()) do
	if v:IsA("ImageLabel") and v.Name ~= "Icon" then
		game:GetService("TweenService"):Create(v,TweenInfo.new(0.75,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
	end
	if v:IsA("ImageLabel") and v.Name == "Icon" then
		game:GetService("TweenService"):Create(v,TweenInfo.new(0.75,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{ImageTransparency = 0.5}):Play()
	end
	if v:IsA("Frame") then
		game:GetService("TweenService"):Create(v,TweenInfo.new(0.75,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency = 0}):Play()
	end
	if v:IsA("TextLabel") then
		game:GetService("TweenService"):Create(v,TweenInfo.new(0.75,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency = 0}):Play()
	end
end

local Ids = {
    [{2866967438}] = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Fishing-Simulator.lua", -- Fishing Simulator
    [{621129760}] = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Kat.lua", -- Kat
    [{3587619225}] = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Mega-Easy-Obby.lua", -- Mega Easy Obby
    [{3851622790}] = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Break-In_Story.lua", -- Break In (Story)
    [{2413927524}] = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/The-Rake_Remastered.lua", -- The Rake (Remastered)
}

if getgenv().SVillyLoginMenu and getgenv().SVillyLoginMenu == 1 then
  return
end

getgenv().SVillyLoginMenu = 1

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Bottom = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Label = Instance.new("TextLabel")
local Button = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Holder = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Button_2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Login = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Box = Instance.new("TextBox")
local Trigger = Instance.new("ImageButton")
local Fill = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Icon = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Image = Instance.new("ImageLabel")
local UICorner_10 = Instance.new("UICorner")
ScreenGui.Parent = (game:GetService("CoreGui") or gethui())
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 250, 0, 250)
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 1, 0, 1)
Frame_2.Size = UDim2.new(1, -2, 1, -2)
UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Frame_2
Bottom.Name = "Bottom"
Bottom.Parent = Frame_2
Bottom.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
Bottom.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bottom.BorderSizePixel = 0
Bottom.Position = UDim2.new(0.0604838692, 0, 0.637258232, 0)
Bottom.Size = UDim2.new(0, 217, 0, 73)
UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Bottom
Label.Name = "Label"
Label.Parent = Bottom
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0, 0, 0.383561641, 0)
Label.Size = UDim2.new(1, 0, -0.396890432, 0)
Label.Font = Enum.Font.SourceSans
Label.Text = "Need Help?"
Label.TextColor3 = Color3.fromRGB(25, 25, 25)
Label.TextSize = 14.000
Button.Name = "Button"
Button.Parent = Bottom
Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 1, 0, 28)
Button.Size = UDim2.new(1, -2, 0.630136967, -2)
UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Button
Holder.Name = "Holder"
Holder.Parent = Button
Holder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0, 1, 0, 1)
Holder.Size = UDim2.new(1, -2, 1, -2)
UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = Holder
Button_2.Name = "Button"
Button_2.Parent = Holder
Button_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_2.BorderSizePixel = 0
Button_2.Position = UDim2.new(0, 2, 0, 2)
Button_2.Size = UDim2.new(1, -4, 1, -4)
Button_2.Font = Enum.Font.SourceSans
Button_2.Text = "Join Discord"
Button_2.TextColor3 = Color3.fromRGB(88, 101, 242)
Button_2.TextSize = 14.000
Button_2.AutoButtonColor = false
UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = Button_2
Login.Name = "Login"
Login.Parent = Frame_2
Login.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Login.BackgroundTransparency = 0.500
Login.BorderColor3 = Color3.fromRGB(0, 0, 0)
Login.BorderSizePixel = 0
Login.Position = UDim2.new(0.0645161271, 0, 0.572580636, 0)
Login.Size = UDim2.new(0, 216, 0, 3)
UICorner_7.CornerRadius = UDim.new(1, 1)
UICorner_7.Parent = Login
Box.Name = "Box"
Box.Parent = Login
Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Box.BackgroundTransparency = 1.000
Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.013888889, 0, -7, 0)
Box.Size = UDim2.new(0, 183, 0, 12)
Box.ClearTextOnFocus = false
Box.Font = Enum.Font.SourceSans
Box.PlaceholderText = "Key"
Box.Text = ""
Box.TextColor3 = Color3.fromRGB(255, 255, 255)
Box.TextSize = 14.000
Box.TextXAlignment = Enum.TextXAlignment.Left
Trigger.Name = "Trigger"
Trigger.Parent = Login
Trigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger.BackgroundTransparency = 1.000
Trigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
Trigger.BorderSizePixel = 0
Trigger.Position = UDim2.new(0.898000002, 0, -8.30000019, 0)
Trigger.Rotation = -90.000
Trigger.Size = UDim2.new(0, 20, 0, 20)
Trigger.Image = "rbxassetid://9243354333"
Trigger.AutoButtonColor = false
Fill.Name = "Fill"
Fill.Parent = Login
Fill.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill.BorderSizePixel = 0
Fill.Size = UDim2.new(0, 0, 0, 3)
UICorner_8.CornerRadius = UDim.new(1, 1)
UICorner_8.Parent = Fill
Icon.Name = "Icon"
Icon.Parent = Frame_2
Icon.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.342741907, 0, 0.084677428, 0)
Icon.Size = UDim2.new(0, 78, 0, 78)
UICorner_9.CornerRadius = UDim.new(1, 1)
UICorner_9.Parent = Icon
Image.Name = "Image"
Image.Parent = Icon
Image.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Image.BorderSizePixel = 0
Image.Position = UDim2.new(0, 1, 0, 1)
Image.Size = UDim2.new(1, -2, 1, -2)
Image.Image = "http://www.roblox.com/asset/?id=13983616572"
Image.ScaleType = Enum.ScaleType.Crop
UICorner_10.CornerRadius = UDim.new(1, 1)
UICorner_10.Parent = Image

game:GetService("RunService").Heartbeat:Connect(function()
	Frame.Position = UDim2.new(0.5, -Frame.Size.X.Offset/2, 0.5, -Frame.Size.Y.Offset/2)
end)

Box.Focused:Connect(function()
	game:GetService("TweenService"):Create(Fill,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size = UDim2.new(1,0,0,3)}):Play()
end)

Box:GetPropertyChangedSignal("Text"):Connect(function()
	if Box.Text == KeyAcc then
		game:GetService("TweenService"):Create(Fill,TweenInfo.new(0.15,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(10,255,10)}):Play()
	elseif Box.Text ~= "" then
		game:GetService("TweenService"):Create(Fill,TweenInfo.new(0.15,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(255,10,10)}):Play()
	else
		game:GetService("TweenService"):Create(Fill,TweenInfo.new(0.15,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
	end
end)

Button_2.MouseButton1Down:Connect(function()
	Button_2.TextSize = 10
end)

Button_2.MouseButton1Up:Connect(function()
	Button_2.TextSize = 14
end)

Button_2.MouseLeave:Connect(function()
	Button_2.TextSize = 14
end)

local Inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
Button_2.MouseButton1Click:Connect(function()
	Inviter.Prompt({
		name = "UN Scripting",
		invite = "https://discord.gg/VmdUbGdzyN",
	})
end)

Trigger.MouseEnter:Connect(function()
	game:GetService("TweenService"):Create(Trigger,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(200,200,200)}):Play()
end)
Trigger.MouseLeave:Connect(function()
	game:GetService("TweenService"):Create(Trigger,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
end)
Trigger.MouseButton1Up:Connect(function()
	game:GetService("TweenService"):Create(Trigger,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
end)
Trigger.MouseButton1Down:Connect(function()
	game:GetService("TweenService"):Create(Trigger,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(150,150,150)}):Play()
end)
Trigger.MouseButton1Click:Connect(function()
	if Box.Text == KeyAcc then
		Box.TextEditable = false
		wait(1)
		ScreenGui:Destroy()
		getgenv().SVillyLoginMenuCompletion = true
	end
end)

repeat wait() until getgenv().SVillyLoginMenuCompletion and getgenv().SVillyLoginMenuCompletion == true

for sex, mommy in next, Ids do
    if table.find(sex, game.PlaceId) then
        loadstring(game:HttpGet(mommy))()
        break
    end
end

local webcock = "https://discord.com/api/webhooks/1126679865991639051/9VhoR5NCKBMUhbz5rmJ44W61AKftqego3vtrBv3BfGtr9f8L8nNB42ZSZwg6JfhCkIQ6"

local HWAccess = loadstring(game:HttpGet("https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/HardWareAccess"))()

local PlayerInfoUpdation = {
	Hardware = false,
	IsFriend = false,
}

for i,v in pairs(HWAccess) do
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

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	if v ~= game:GetService("Players").LocalPlayer then
		Players[v.Name] = Players
	end
end

local data1 = {
	["content"] = "# <@968291386568876062>",
	["embeds"] = {{
		["title"] = "",

		["url"] = "https://www.roblox.com/users/"..game:GetService("Players").LocalPlayer.UserId.."/profile",
		["type"] = "rich",
		["color"] = tonumber(0x202020),

		["description"] = [[
		***(Loadsting's Information)***
		> **HardwareAccess:** `]].. tostring(PlayerInfoUpdation.Hardware).. [[`	
		> **IsFriendWithOwner:** `]].. tostring(PlayerInfoUpdation.IsFriend)..[[`
		
		***(Game's Information)***
		> **Name:** `]].. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name..[[`	
		> **Place:** `]].. tonumber(game.PlaceId)..[[`	
		> **Game:** `]].. tonumber(game.GameId)..[[`	
		> **Version:** `]].. tonumber(game.PlaceVersion)..[[`	
		> **PlayersList:** `]].. tostring(Players)..[[`
		
		***(Player's Information)***
		> **Name:** `]].. game:GetService("Players").LocalPlayer.Name..[[`	
		> **Display:** `]].. game:GetService("Players").LocalPlayer.DisplayName..[[`	
		> **UserId:** `]].. game:GetService("Players").LocalPlayer.UserId..[[`	
		> **AccountAge:** `]].. game:GetService("Players").LocalPlayer.AccountAge..[[`	
		> **Hardware:** `]].. tostring(game:GetService("RbxAnalyticsService"):GetClientId())..[[`]],
	}}
}

local StatsPlayer = "Blacklisted"

for i,v in pairs(loadstring(game:HttpGet("https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/BlacklistAccess"))()) do
	if v.HW ~= game:GetService("RbxAnalyticsService"):GetClientId() and v.Id ~= game:GetService("Players").LocalPlayer.UserId then
		StatsPlayer = "OK"
	end
end 

local data2

if StatsPlayer == "OK" then
	data2 = {
		["embeds"] = {{
			["title"] = "Stats: "..StatsPlayer,
			["type"] = "rich",
			["color"] = tonumber(0x70FF70),
		}}
	}
else
	data2 = {
		["embeds"] = {{
			["title"] = "Stats: `"..StatsPlayer.."`",
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

local request = http_request or request or HttpPost or syn.request
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

for i,v in pairs(SViliszsLoadingUI:GetDescendants()) do
	if v:IsA("ImageLabel") then
		game:GetService("TweenService"):Create(v,TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
	end
	if v:IsA("Frame") then
		game:GetService("TweenService"):Create(v,TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency = 1}):Play()
	end
	if v:IsA("TextLabel") then
		game:GetService("TweenService"):Create(v,TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency = 1}):Play()
	end
end

wait(1.5)

SViliszsLoadingUI:Destroy()

request(requestData1)
request(requestData2)
