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
    [{3587619225}] = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/The-Rake_Remastered.lua", -- The Rake (Remastered)
}

for sex, mommy in next, Ids do
    if table.find(sex, game.PlaceId) then
        loadstring(game:HttpGet(mommy))()
        break
    end
end

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
