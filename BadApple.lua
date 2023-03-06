-- This is credited to Sowd404 for original code and i modified it in drawing and added the audio aand sync with with video. --

local badapple = {};

badapple.render = Drawing.new("Text");
badapple.render.Position = Vector2.new(350, 100);
badapple.render.Size = 20;
badapple.render.Font = Drawing.Fonts.Plex;
badapple.render.Color = Color3.fromRGB(255, 255, 255);
badapple.render.Visible = true;
badapple.render.Transparency = 1;
badapple.render.Outline = true;
badapple.render.Text = "Please give it some time to load...";

if not isfile("BadApple.txt") then
    writefile("BadApple.txt", game:HttpGet("https://raw.githubusercontent.com/arrayee/BadApple-In-Drawing-Library/main/BadApple.txt"));
end;

if not isfile("BadApple.mp3") then
    writefile("BadApple.mp3", game:HttpGet("https://raw.githubusercontent.com/arrayee/BadApple-In-Drawing-Library/main/BadApple.mp3"));
end;

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
    wait(.09);
end;

return badapple;
