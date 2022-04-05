local light = game.Lighting

for i, v in pairs(light:GetChildren()) do

	v:Destroy()end

local ter = workspace.Terrain

local color = Instance.new("ColorCorrectionEffect")

local bloom = Instance.new("BloomEffect")

local sun = Instance.new("SunRaysEffect")

local blur = Instance.new("BlurEffect")

color.Parent = light

bloom.Parent = light

sun.Parent = light

blur.Parent = light

local config = {

	Terrain = true;

	ColorCorrection = true;

	Sun = true;

	Lighting = true;

	BloomEffect = true;

	

}

color.Enabled = true

color.Contrast = 0.15

color.Brightness = 0.1

color.Saturation = 0.2

color.TintColor = Color3.fromRGB(255, 222, 211)

bloom.Enabled = true

bloom.Intensity = 0.3

sun.Enabled = true

sun.Intensity = 1

sun.Spread = 5

bloom.Enabled = true

bloom.Intensity = 0.05

bloom.Size = 32

bloom.Threshold = 1

blur.Enabled = true

blur.Size = 2

if config.ColorCorrection then

	color.Enabled = true

end

if config.Sun then

	sun.Enabled = true

end

if config.Terrain then

	ter.WaterColor = Color3.fromRGB(10, 10, 24)

	ter.WaterWaveSize = 0.1

	ter.WaterWaveSpeed = 22

	ter.WaterTransparency = 0.9

	ter.WaterReflectance = 0.05

end

if config.Lighting then

	light.Ambient = Color3.fromRGB(120, 31, 42)

	light.Brightness = 3.5

	light.ColorShift_Bottom = Color3.fromRGB(12, 31, 42)

	light.ColorShift_Top = Color3.fromRGB(12, 31, 42)

	light.ExposureCompensation = 0

	light.FogColor = Color3.fromRGB(132, 132, 132)

	light.GlobalShadows = true

	light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)

	light.Outlines = true

end

local camera = workspace.CurrentCamera

local blurAmount = 10

local blurAmplifier = 5

local lastVector = camera.CFrame.LookVector

local motionBlur = Instance.new("BlurEffect", camera)

local runService = game:GetService("RunService")

workspace.Changed:Connect(function(property)

 if property == "CurrentCamera" then

  print("Changed")

  local camera = workspace.CurrentCamera

  if motionBlur and motionBlur.Parent then

   motionBlur.Parent = camera

  else

   motionBlur = Instance.new("BlurEffect", camera)

  end

 end

end)

runService.Heartbeat:Connect(function()

 if not motionBlur or motionBlur.Parent == nil then

  motionBlur = Instance.new("BlurEffect", camera)

 end

 

 local magnitude = (camera.CFrame.LookVector - lastVector).magnitude of

 motionBlur.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2

 lastVector = camera.CFrame.LookVector

end)

local Bloom = Instance.new("BloomEffect")

Bloom.Intensity = 0.1

Bloom.Threshold = 0

Bloom.Size = 100

local Tropic = Instance.new("Sky")

Tropic.Name = "Tropic"

Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"

Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"

Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"

Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"

Tropic.StarCount = 100

Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"

Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"

Tropic.Parent = Bloom

local Sky = Instance.new("Sky")

Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"

Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"

Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"

Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"

Sky.CelestialBodiesShown = false

Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"

Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"

Sky.Parent = Bloom

Bloom.Parent = game:GetService("Lighting")

local Bloom = Instance.new("BloomEffect")

Bloom.Enabled = false

Bloom.Intensity = 0.35

Bloom.Threshold = 0.2

Bloom.Size = 56

local Tropic = Instance.new("Sky")

Tropic.Name = "Tropic"

Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"

Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"

Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"

Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"

Tropic.StarCount = 100

Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"

Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"

Tropic.Parent = Bloom

local Sky = Instance.new("Sky")

Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"

Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"

Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"

Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"

Sky.CelestialBodiesShown = false

Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"

Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"

Sky.Parent = Bloom

Bloom.Parent = game:GetService("Lighting")

local Blur = Instance.new("BlurEffect")

Blur.Size = 2

Blur.Parent = game:GetService("Lighting")

local Efecto = Instance.new("BlurEffect")

Efecto.Name = "Efecto"

Efecto.Enabled = false

Efecto.Size = 2

Efecto.Parent = game:GetService("Lighting")

local Inaritaisha = Instance.new("ColorCorrectionEffect")

Inaritaisha.Name = "Inari taisha"

Inaritaisha.Saturation = 0.05

Inaritaisha.TintColor = Color3.fromRGB(255, 224, 219)

Inaritaisha.Parent = game:GetService("Lighting")

local Normal = Instance.new("ColorCorrectionEffect")

Normal.Name = "Normal"

Normal.Enabled = false

Normal.Saturation = -0.2

Normal.TintColor = Color3.fromRGB(255, 232, 215)

Normal.Parent = game:GetService("Lighting")

local SunRays = Instance.new("SunRaysEffect")

SunRays.Intensity = 0.05

SunRays.Parent = game:GetService("Lighting")

local Sunset = Instance.new("Sky")

Sunset.Name = "Sunset"

Sunset.SkyboxUp = "rbxassetid://323493360"

Sunset.SkyboxLf = "rbxassetid://323494252"

Sunset.SkyboxBk = "rbxassetid://323494035"

Sunset.SkyboxFt = "rbxassetid://323494130"

Sunset.SkyboxDn = "rbxassetid://323494368"

Sunset.SunAngularSize = 14

Sunset.SkyboxRt = "rbxassetid://323494067"

Sunset.Parent = game:GetService("Lighting")

local Takayama = Instance.new("ColorCorrectionEffect")

Takayama.Name = "Takayama"

Takayama.Enabled = false

Takayama.Saturation = -0.3

Takayama.Contrast = 0.1

Takayama.TintColor = Color3.fromRGB(235, 214, 204)

Takayama.Parent = game:GetService("Lighting")

local L = game:GetService("Lighting")

L.Brightness = 2.14

L.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)

L.ColorShift_Top = Color3.fromRGB(240, 127, 14)

L.OutdoorAmbient = Color3.fromRGB(34, 0, 49)

L.ClockTime = 6.7

L.FogColor = Color3.fromRGB(94, 76, 106)

L.FogEnd = 1000

L.FogStart = 0

L.ExposureCompensation = 0.24

L.ShadowSoftness = 0

L.Ambient = Color3.fromRGB(59, 33, 27)

local Bloom = Instance.new("BloomEffect")

Bloom.Intensity = 0.1

Bloom.Threshold = 0

Bloom.Size = 100

local Tropic = Instance.new("Sky")

Tropic.Name = "Tropic"

Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"

Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"

Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"

Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"

Tropic.StarCount = 100

Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"

Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"

Tropic.Parent = Bloom

local Sky = Instance.new("Sky")

Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"

Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"

Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"

Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"

Sky.CelestialBodiesShown = false

Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"

Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"

Sky.Parent = Bloom

Bloom.Parent = game:GetService("Lighting")

local Bloom = Instance.new("BloomEffect")

Bloom.Enabled = false

Bloom.Intensity = 0.35

Bloom.Threshold = 0.2

Bloom.Size = 56

local Tropic = Instance.new("Sky")

Tropic.Name = "Tropic"

Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"

Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"

Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"

Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"

Tropic.StarCount = 100

Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"

Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"

Tropic.Parent = Bloom

local Sky = Instance.new("Sky")

Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"

Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"

Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"

Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"

Sky.CelestialBodiesShown = false

Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"

Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"

Sky.Parent = Bloom

Bloom.Parent = game:GetService("Lighting")

local Blur = Instance.new("BlurEffect")

Blur.Size = 2

Blur.Parent = game:GetService("Lighting")

local Efecto = Instance.new("BlurEffect")

Efecto.Name = "Efecto"

Efecto.Enabled = false

Efecto.Size = 2

Efecto.Parent = game:GetService("Lighting")

local Inaritaisha = Instance.new("ColorCorrectionEffect")

Inaritaisha.Name = "Inari taisha"

Inaritaisha.Saturation = 0.05

Inaritaisha.TintColor = Color3.fromRGB(255, 224, 219)

Inaritaisha.Parent = game:GetService("Lighting")

local Normal = Instance.new("ColorCorrectionEffect")

Normal.Name = "Normal"

Normal.Enabled = false

Normal.Saturation = -0.2

Normal.TintColor = Color3.fromRGB(255, 232, 215)

Normal.Parent = game:GetService("Lighting")

local SunRays = Instance.new("SunRaysEffect")

SunRays.Intensity = 0.05

SunRays.Parent = game:GetService("Lighting")

local Sunset = Instance.new("Sky")

Sunset.Name = "Sunset"

Sunset.SkyboxUp = "rbxassetid://323493360"

Sunset.SkyboxLf = "rbxassetid://323494252"

Sunset.SkyboxBk = "rbxassetid://323494035"

Sunset.SkyboxFt = "rbxassetid://323494130"

Sunset.SkyboxDn = "rbxassetid://323494368"

Sunset.SunAngularSize = 14

Sunset.SkyboxRt = "rbxassetid://323494067"

Sunset.Parent = game:GetService("Lighting")

local Takayama = Instance.new("ColorCorrectionEffect")

Takayama.Name = "Takayama"

Takayama.Enabled = false

Takayama.Saturation = -0.3

Takayama.Contrast = 0.1

Takayama.TintColor = Color3.fromRGB(235, 214, 204)

Takayama.Parent = game:GetService("Lighting")

local L = game:GetService("Lighting")

L.Brightness = 2.14

L.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)

L.ColorShift_Top = Color3.fromRGB(240, 127, 14)

L.OutdoorAmbient = Color3.fromRGB(34, 0, 49)

L.ClockTime = 6.7

L.FogColor = Color3.fromRGB(94, 76, 106)

L.FogEnd = 1000

L.FogStart = 0

L.ExposureCompensation = 0.24

L.ShadowSoftness = 0

L.Ambient = Color3.fromRGB(59, 33, 27)
