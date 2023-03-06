-- This is credited to Sowd404 for original code and i modified it in drawing and added the audio aand sync with with video. --

local badapple = {};

if not isfile("BadApple.txt") then
    writefile("BadApple.txt", game:HttpGet("https://raw.githubusercontent.com/arrayee/BadApple-In-Drawing-Library/main/BadApple.txt"));
end;

if not isfile("BadApple.mp3") then
    writefile("BadApple.mp3", game:HttpGet("https://raw.githubusercontent.com/arrayee/BadApple-In-Drawing-Library/main/BadApple.mp3"));
end;

local camera = workspace.CurrentCamera;

badapple.bg = Drawing.new("Square");
badapple.bg.Position = Vector2.new(0, 36);
badapple.bg.Size = camera.ViewportSize;
badapple.bg.Color = Color3.fromRGB(0, 0, 0);
badapple.bg.Visible = true;
badapple.bg.Transparency = 0.5;
badapple.bg.Filled = true;

badapple.render = Drawing.new("Text");
badapple.render.Position = Vector2.new(350, 100);
badapple.render.Size = 26;
badapple.render.Font = Drawing.Fonts.Monospace;
badapple.render.Color = Color3.fromRGB(255, 255, 255);
badapple.render.Visible = true;
badapple.render.Transparency = 1;
badapple.render.Outline = true;

local getfile = readfile("BadApple.txt")
getfile = getfile:gsub("%.", " ")
local splitText = getfile:split("SPLIT")

badapple.sound = Instance.new("Sound")
badapple.sound.Parent = game.Workspace
badapple.sound.SoundId = getsynasset("BadApple.mp3")
badapple.sound:Play()
badapple.sound.Looped = true
badapple.sound.Volume = 5

for i, v in pairs(splitText) do
    badapple.render.Text = v;
    badapple.render.Position = ((camera.ViewportSize / 2) - (badapple.render.TextBounds / 2));
    wait(.09);
end;

return badapple;
