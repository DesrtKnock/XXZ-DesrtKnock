wait(9)
loadstring(game:HttpGet"https://raw.githubusercontent.com/DesrtKnock/XXZ-DesrtKnock/refs/heads/main/%E7%AA%81%E8%84%B8.lua")()

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/DesrtKnock/XXZ-DesrtKnock/refs/heads/main/VAPE%20pictureUI")() 

local EntityESPEnabled = false
local ItemESPEnabled = false

local OpenUI = Instance.new("ScreenGui") 
local ImageButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner") 
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game.CoreGui 
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
ImageButton.Parent = OpenUI 
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
ImageButton.BackgroundTransparency = 0.500 
ImageButton.Position = UDim2.new(0.8, 10 , 0.0, 1) 
ImageButton.Size = UDim2.new(0, 100, 0, 100) 
ImageButton.Image = "rbxassetid://106971561084175" 
UICorner.CornerRadius = UDim.new(0, 200) 
ImageButton.Draggable = true
UICorner.Parent = ImageButton 
ImageButton.MouseButton1Click:Connect(function() 
  if uihide == false then
	uihide = true
	game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
else
	uihide = false
	game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 560, 0, 319),"Out","Quad",0.4,true)
		end 
		
end)

uihide = false

 local win = lib:Window("Grace丨XK丨注入器:" ..identifyexecutor() ,Color3.fromRGB(0, 255, 0), Enum.KeyCode.RightControl)
 
local tab = win:Tab("主要")
 
 tab:Button("修改天空/一面",function()
local sky = Instance.new("Sky")
		sky.CelestialBodiesShown = false
		sky.Parent = game.Lighting
		sky.SkyboxUp = "http://www.roblox.com/asset/?id=134150870251722"
end)

tab:Button("修改天空/两面",function()
local sky = Instance.new("Sky")
		sky.CelestialBodiesShown = false
		sky.Parent = game.Lighting
		sky.SkyboxUp = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxBk = "http://www.roblox.com/asset/?id=134150870251722"
end)

tab:Button("修改天空/三面",function()
local sky = Instance.new("Sky")
		sky.CelestialBodiesShown = false
		sky.Parent = game.Lighting
		sky.SkyboxUp = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxBk = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxDn = "http://www.roblox.com/asset/?id=134150870251722"
end)

tab:Button("修改天空/四面",function()
local sky = Instance.new("Sky")
		sky.CelestialBodiesShown = false
		sky.Parent = game.Lighting
		sky.SkyboxUp = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxBk = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxDn = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxRt = "http://www.roblox.com/asset/?id=134150870251722"
end)

tab:Button("修改天空/五面",function()
local sky = Instance.new("Sky")
		sky.CelestialBodiesShown = false
		sky.Parent = game.Lighting
		sky.SkyboxUp = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxBk = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxDn = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxRt = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxLf = "http://www.roblox.com/asset/?id=134150870251722"		
end)

tab:Button("修改天空/六面",function()
local sky = Instance.new("Sky")
		sky.CelestialBodiesShown = false
		sky.Parent = game.Lighting
		sky.SkyboxUp = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxBk = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxDn = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxRt = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxLf = "http://www.roblox.com/asset/?id=134150870251722"
		sky.SkyboxFt = "http://www.roblox.com/asset/?id=134150870251722"
end)

tab:Textbox('设置速度',false, function(v)
            Speed = v
        end)
        
tab:Toggle("速度(开/关)",false,function(v)
            if v == true then
                sudu = game:GetService("RunService").Heartbeat:Connect(function()
                    if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent then
                        if game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                            game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 20)
                        end
                    end
                end)
            elseif not v and sudu then
                sudu:Disconnect()
                sudu = nil
            end
end)

tab:Button("黑客入侵",function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Configuration --
local Message = "Fruit_splash入侵此图"
local mes2text = "Fruit_splash"

-- Don't touch unless you know what You're doing --

local mes = Instance.new("Hint")
mes.Parent = workspace
mes.Text = Message
game.Lighting:ClearAllChildren()
game.Lighting.FogEnd = 100
game.Lighting.FogColor = Color3.new(0, 0, 0)
local sound = Instance.new("Sound")
sound.Parent = workspace
sound.Looped = true
sound.PlaybackSpeed = 0.3
sound.Volume = 5
sound.SoundId = "rbxassetid://1842908121"
sound:Play()
local mes2 = Instance.new("Message")
mes2.Parent = workspace
mes2.Text = mes2text
for i, v in pairs(workspace:GetDescendants()) do
	if v:IsA("BasePart") and v.Parent:IsA("Model") then
		local outline = Instance.new("SelectionBox")
		v.Name = Message
		outline.Parent = v
		outline.Adornee = v
		outline.Color3 = Color3.new(1, 1, 1)
		v.Color = Color3.new(0, 0, 0)
		local fire = Instance.new("Fire")
		fire.Parent = v
		fire.Size = 100
		fire.Color = Color3.new(1, 1, 1)
		local bill = Instance.new("BillboardGui")
		local Text = Instance.new("TextLabel")
		bill.Parent = v
		bill.Adornee = v
		bill.Size = UDim2.new(0, 200, 0, 200)
		Text.Parent = bill
		Text.Size = UDim2.new(0, 200, 0, 200)
		Text.BackgroundTransparency = 1
		Text.TextScaled = false
		Text.TextSize = 30
		Text.TextColor3 = Color3.new(1, 0, 0.0156863)
		Text.TextTransparency = 0
		Text.Font = Enum.Font.Cartoon
		Text.Text = Message
	end
end
end)

tab:Button("顶上黑客入侵消息",function()
local Message = "Fruit_splash入侵此图"
-- Don't touch unless you know what You're doing --

local mes = Instance.new("Hint")
mes.Parent = workspace
mes.Text = Message
game.Lighting:ClearAllChildren()
game.Lighting.FogEnd = 100
game.Lighting.FogColor = Color3.new(0, 0, 0)
end)

tab:Button("播放入侵音乐",function()
local sound = Instance.new("Sound")
sound.Parent = workspace
sound.Looped = true
sound.PlaybackSpeed = 0.3
sound.Volume = 5
sound.SoundId = "rbxassetid://1842908121"
sound:Play()
end)

tab:Button("全屏显示你入侵的图片",function()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

-- 获取本地玩家
local LocalPlayer = Players.LocalPlayer

-- 创建ScreenGui用于显示Notification
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ImageNotification"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- 创建ImageLabel显示图片
local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "ImageNotificationImage"
ImageLabel.Size = UDim2.new(1, 0, 1, 0) -- 全屏大小
ImageLabel.BackgroundTransparency = 0 -- 不透明背景
ImageLabel.Image = "rbxassetid://134150870251722" -- 替换为实际的图片资源ID
ImageLabel.ImageColor3 = Color3.new(1, 1, 1) -- 图片颜色（白色）
ImageLabel.ZIndex = 10
ImageLabel.Parent = ScreenGui

-- 控制显示Notification
local function showImageNotification()
    ScreenGui.Enabled = true
end

-- 控制隐藏Notification
local function hideImageNotification()
    ScreenGui.Enabled = false
end

-- 显示Notification
showImageNotification()

-- 在15秒后隐藏Notification
wait(10)
hideImageNotification()
end)

tab:Button("突脸+音频",function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/DesrtKnock/XXZ-DesrtKnock/refs/heads/main/%E7%AA%81%E8%84%B8.lua")()
end)

tab:Button("无法退出/手机端",function()
game:GetService("CoreGui").RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.Players.ButtonsContainer.LeaveButtonButton:Destroy()
end)