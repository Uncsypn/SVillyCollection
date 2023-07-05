local Ids = {
    [{2866967438}] = "", -- Fishing Simulator
    [{621129760}] = "", -- Kat
    [{3587619225}] = "", -- Mega Easy Obby
    [{3851622790}] = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/Break-In_Story.lua", -- Break In (Story)
    [{3587619225}] = "https://raw.githubusercontent.com/Uncsypn/SVillyCollection/main/The-Rake_Remastered.lua", -- The Rake (Remastered)
}

for ids, url in next, Ids do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
