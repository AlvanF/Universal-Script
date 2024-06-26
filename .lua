local gameid = { 
    [1962086868] = true, -- Tower Of Hell
    [1962086868] = true, -- Tower Of Hell Pro
    [5253186791] = true, -- Tower Of Hell Banned
    [13864661000] = true, -- Break in 2 (lobby)
    [13864667823] = true, -- break in 2 game
    [3956818381] = true -- Ninja Legends
    [3101667897] = true -- Speed Legends
}

function notif(title, txt, dur)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = txt;
        Duration = dur;
    })
end

-- Check if the current game ID is supported
if not gameid[game.PlaceId] then
    notif("Unsupported Game", "This script does not support this game.", 5)
else
    -- Tower Of Hell
    if game.PlaceId == 1962086868 or game.PlaceId == 5253186791 or game.PlaceId == 1962086868 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlvanF/Tower-of-Hell/main/.lua"))()
    -- Break In 2
    elseif game.PlaceId == 13864661000 or game.PlaceId == 13864667823 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlvanF/Break-in-2/main/.lua"))()
    -- Ninja Legends
    elseif game.PlaceId == 3956818381 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlvanF/Ninja-Legends-KH/main/.lua"))()
    -- Speed Legends
    elseif game.PlaceId == 3101667897 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlvanF/lg/main/.lua"))()
    end
end
-- Soon
