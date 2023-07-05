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
