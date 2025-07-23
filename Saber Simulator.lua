-- Load Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Create Window
local Window = Rayfield:CreateWindow({
   Name = "Saber Simulator Script - breakneckv09",
   Icon = 0,
   LoadingTitle = "Saber Simulator Script...",
   LoadingSubtitle = "by - breakneckv09",
   ShowText = "Toggle Rayfield",
   Theme = "Default",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = true,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = ""
   },

   Discord = {
      Enabled = false,
      Invite = "",
      RememberJoins = false
   },

   KeySystem = true,
   KeySettings = {
      Title = "Saber Simulator Script - Key System",
      Subtitle = "by - breakneckv09",
      Note = "The Key Is In Our Discord .gg/faV3GCjebC",
      FileName = "SaberSimulatorKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"W9L2QK7X1JTB8V3Z6MP"}
   }
})

-- Services
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local UIAction = Events:WaitForChild("UIAction")

-- Flags
local autoSwingEnabled = false
local autoSellEnabled = false
local autoBuyEnabled = false
local autoBuyDNAEnabled = false
local autoBuyBossBoostsEnabled = false
local autoBuyAurasEnabled = false
local autoBuyClassesEnabled = false
local autoCollectCrownsEnabled = false
local autoBuyPetAurasEnabled = false
local autoEquipBestPetsEnabled = false
local autoCombineAllPetsEnabled = false
local autoBuyEggsEnabled = false
local noclipEnabled = false


-- Lists
local eggList = {
    "Basic Egg", "Wooden Egg", "Reinforced Egg", "Ancient", "Egg of life", "Glory Egg",
    "Dominus Egg", "Silver Egg", "Golden Egg", "Premium Egg", "Class Egg",
    "Diamond Egg", "Ruby Egg", "Alpha Egg", "Snow Egg", 
    "Reaper Egg", "Nature Egg", "Winter Egg", "Food Egg",
    "Dragon Egg", "Star Egg", "Cow Egg", "Flame Egg", "Water Egg", "Ooga Egg",
    "Valentine Egg", "Matrix Egg", "Round Egg", "Thanksgiving Egg", "Shadow Egg",
    "Pink Egg", "Candy Egg", "Rushed Egg", "Onetap Egg", "Swag Egg", "Triangle Egg",
    "Square Egg", "Cringe Egg", "Boris Egg", "Phantom Egg", "Business Egg", "Egg Egg",
    "Birthday Egg", "Easter Egg", "Switch Egg", "America Egg", "British Egg", "Erick Egg",
    "Henry Egg", "Lazy Dev Egg", "Puppet Egg", "Piggy Egg", "Easy Egg", "Guts Egg",
    "Bruh Egg", "Griffith Egg", "Casca Egg", "Femto Egg", "Pippin Egg", "Dog Egg",
    "Bingo Egg", "M Egg",
    "A Egg", "B Egg", "C Egg", "D Egg", "E Egg", "F Egg", "G Egg", "H Egg", "I Egg",
    "J Egg", "K Egg", "L Egg", "N Egg", "O Egg", "P Egg", "Q Egg", "R Egg", "S Egg",
    "T Egg", "U Egg", "V Egg", "W Egg", "X Egg", "Y Egg", "Z Egg",
    "AA Egg", "AB Egg", "AC Egg", "AD Egg", "AE Egg", "AF Egg", "AG Egg", "AH Egg", "AI Egg",
    "AJ Egg", "AK Egg", "AL Egg", "AM Egg", "AN Egg", "AO Egg", "AP Egg", "AQ Egg", "AR Egg",
    "AS Egg", "AT Egg", "AU Egg", "AV Egg", "AW Egg", "AX Egg", "AY Egg", "AZ Egg",
    "BA Egg", "BB Egg", "BC Egg", "BD Egg", "BE Egg", "BF Egg", "BG Egg", "BH Egg", "BI Egg",
    "BJ Egg", "BK Egg", "BL Egg", "BM Egg", "BN Egg", "BO Egg", "BP Egg", "BQ Egg", "BR Egg",
    "BS Egg", "BT Egg", "BU Egg", "BV Egg", "BW Egg", "BX Egg", "BY Egg", "BZ Egg",
    "CA Egg", "CB Egg", "CC Egg", "CD Egg", "CE Egg", "CF Egg", "CG Egg", "CH Egg", "CI Egg",
    "CJ Egg", "CK Egg", "CL Egg", "CM Egg", "CN Egg", "CO Egg", "CP Egg", "CQ Egg", "CR Egg",
    "CS Egg", "CT Egg", "CU Egg", "CV Egg", "CW Egg", "CX Egg", "CY Egg", "CZ Egg",
    "DA Egg", "DB Egg", "DC Egg", "DD Egg", "DE Egg", "DF Egg", "DG Egg", "DH Egg", "DI Egg",
    "DJ Egg", "DK Egg", "DL Egg", "DM Egg", "DN Egg", "DO Egg", "DP Egg", "DQ Egg", "DR Egg",
    "DS Egg", "DT Egg", "DU Egg", "DV Egg", "DW Egg", "DX Egg", "DY Egg", "DZ Egg",
    "EA Egg", "EB Egg", "EC Egg", "ED Egg", "EE Egg", "EF Egg", "EG Egg", "EH Egg", "EI Egg",
    "EJ Egg", "EK Egg", "EL Egg", "EM Egg", "EN Egg", "EO Egg", "EP Egg", "EQ Egg"
}

-- Logic

-- Tabs
local autoTab = Window:CreateTab("Auto", 4483362458)
local petsTab = Window:CreateTab("Pets", 4483362458)
local playerTab = Window:CreateTab("Player", 4483362458)
local miscTab = Window:CreateTab("Misc", 4483362458)

-- Ui Items

-- Auto
autoTab:CreateToggle({Name="Auto Swing Saber (Must Be In Hand)",CurrentValue=false,Callback=function(v)autoSwingEnabled=v if v then task.spawn(function()while autoSwingEnabled do ReplicatedStorage:WaitForChild("Events"):WaitForChild("SwingSaber"):FireServer() task.wait(0.2) end end) end end})
autoTab:CreateToggle({Name="Auto Sell Strength",CurrentValue=false,Callback=function(v)autoSellEnabled=v if v then task.spawn(function()while autoSellEnabled do ReplicatedStorage:WaitForChild("Events"):WaitForChild("SellStrength"):FireServer() task.wait(1.5) end end) end end})
autoTab:CreateToggle({Name="Auto Buy Weapons",CurrentValue=false,Callback=function(v)autoBuyEnabled=v if v then task.spawn(function()while autoBuyEnabled do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer("BuyAllWeapons") task.wait(5) end end) end end})
autoTab:CreateToggle({Name="Auto Buy DNAs",CurrentValue=false,Callback=function(v)autoBuyDNAEnabled=v if v then task.spawn(function()while autoBuyDNAEnabled do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer("BuyAllDNAs") task.wait(5) end end) end end})
autoTab:CreateToggle({Name="Auto Buy Boss Boosts",CurrentValue=false,Callback=function(v)autoBuyBossBoostsEnabled=v if v then task.spawn(function()while autoBuyBossBoostsEnabled do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer("BuyAllBossBoosts") task.wait(5) end end) end end})
autoTab:CreateToggle({Name="Auto Buy Auras",CurrentValue=false,Callback=function(v)autoBuyAurasEnabled=v if v then task.spawn(function()while autoBuyAurasEnabled do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer("BuyAllAuras") task.wait(5) end end) end end})
autoTab:CreateToggle({Name="Auto Buy Classes", CurrentValue=false, Callback=function(v) autoBuyClassesEnabled=v if v then task.spawn(function() while autoBuyClassesEnabled do for _, className in ipairs({"Apprentice","Soldier","Paladin","Assassin","Warrior","Warlord","Berserker","Saber","Cyborg","Master","Titan","Phantom","Shadow","Ghoul","Tempest","Elementalist","Beast","Dark Ninja","Warlock","Overlord","Demigod","ArchAngel","Wraith","Deity","Nemesis","Executioner","Terminator","Colossus","Zeus","Elf","Santa","Corruptor","Prestige","Caster","Cyclops","King","Hacker","Angel","Minotaur","Cerberus","Yeti","Samurai","Baron","Detective","Red Baron","Witch","Gladiator","Purple Baron","Guard","Shadow Titan","Superhuman","Brain","Shadow Guard","Shadow Gladiator","Red Elf","Gingerbread","Ninja Warrior","Snowman","Lord Of Death","Demonic","Alien","Ghost","Dracula","Golem","Dragon","Spirit","Pharaoh","Mummy","Ape","Robot","Goblin","Techno","Golden Warrior","Golden Royalty","Demonic Imp","Anubis","Illuminati","Hydra","Skeleton","Supervillain","Dark Slayer"}) do task.spawn(function() game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer("BuyClass", className) end) end task.wait(15) end end) end end})
autoTab:CreateToggle({Name="Auto King Of The Hill",CurrentValue=false,Callback=function(v)autoKOTH=v if v then task.spawn(function()local p=game.Players.LocalPlayer local c=workspace:WaitForChild("Gameplay"):WaitForChild("KOTH"):WaitForChild("KOH_BOUNDARY") while autoKOTH do local h=p.Character and p.Character:FindFirstChild("HumanoidRootPart") if h and c and not (h.Position.X>c.Position.X-c.Size.X/2 and h.Position.X<c.Position.X+c.Size.X/2 and h.Position.Y>c.Position.Y-c.Size.Y/2 and h.Position.Y<c.Position.Y+c.Size.Y/2 and h.Position.Z>c.Position.Z-c.Size.Z/2 and h.Position.Z<c.Position.Z+c.Size.Z/2) then h.CFrame=CFrame.new(c.Position+Vector3.new(0,3,0)) end task.wait(0.2) end end)end end})

autoTab:CreateToggle({
  Name = "Auto Collect Crowns",
  CurrentValue = false,
  Callback = function(v)
    autoCollectCrowns_Teleport = v
    if v then
      task.spawn(function()
        local failed, tries = {}, {}
        local currencyHolder = workspace:WaitForChild("Gameplay"):WaitForChild("CurrencyPickup"):WaitForChild("CurrencyHolder")
        while autoCollectCrowns_Teleport do
          local player = game.Players.LocalPlayer
          local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
          if hrp then
            for _, crown in pairs(currencyHolder:GetChildren()) do
              if not autoCollectCrowns_Teleport then break end
              if crown:IsA("BasePart") and crown.Name == "Crown" and not failed[crown] then
                crown.CFrame = CFrame.new(hrp.Position + Vector3.new(0, -1, 0))
                task.wait(0.25)
                if (hrp.Position - crown.Position).Magnitude > 10 then
                  tries[crown] = (tries[crown] or 0) + 1
                  if tries[crown] >= 3 then failed[crown] = true end
                else
                  tries[crown] = 0
                end
              end
            end
          end
          task.wait(0.25)
        end
      end)
    end
  end
})

-- Pets
petsTab:CreateToggle({Name="Auto Equip Best Pets",CurrentValue=false,Callback=function(v)autoEquipBestPetsEnabled=v if v then task.spawn(function()while autoEquipBestPetsEnabled do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer("EquipBestPets") task.wait(5) end end) end end})
petsTab:CreateToggle({Name="Auto Combine Pets",CurrentValue=false,Callback=function(v)autoCombineAllPetsEnabled=v if v then task.spawn(function()while autoCombineAllPetsEnabled do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer("CombineAllPets") task.wait(5) end end) end end})
petsTab:CreateToggle({Name="Auto Buy Pet Auras",CurrentValue=false,Callback=function(v)autoBuyPetAurasEnabled=v if v then task.spawn(function()while autoBuyPetAurasEnabled do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer("BuyAllPetAuras") task.wait(5) end end) end end})

local selectedEgg = eggList[1]

petsTab:CreateToggle({
    Name = "Auto Buy Selected Egg (Must Stand In The Pet Area)",
    CurrentValue = false,
    Callback = function(value)
        autoBuyEggsEnabled = value
        if value then
            task.spawn(function()
                while autoBuyEggsEnabled do
                    local eggName = (type(selectedEgg) == "table" and selectedEgg[1]) or selectedEgg
                    local args = {
                        [1] = "BuyEgg",
                        [2] = eggName
                    }
                    UIAction:FireServer(unpack(args))
                    task.wait(5)
                end
            end)
        end
    end
})

petsTab:CreateDropdown({
    Name = "Select Egg (Must Own The Egg)",
    Options = eggList,
    CurrentOption = selectedEgg,
    Callback = function(option)
        selectedEgg = option
    end
})

-- Player
playerTab:CreateSlider({Name="WalkSpeed",Range={16,200},Increment=1,CurrentValue=16,Callback=function(v)local h=game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")if h then h.WalkSpeed=v end end})
playerTab:CreateSlider({Name="JumpPower",Range={50,200},Increment=1,CurrentValue=50,Callback=function(v)local h=game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")if h then h.JumpPower=v end end})
playerTab:CreateToggle({Name="Infinite Jump", CurrentValue=false, Callback=function(v) if v then game:GetService("UserInputService").JumpRequest:Connect(function() local hum=game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end end) end end})
playerTab:CreateToggle({Name="NoClip",CurrentValue=false,Callback=function(v)local RunService=game:GetService("RunService") noclipLoop=nil if v then noclipLoop=RunService.Stepped:Connect(function()local c=game.Players.LocalPlayer.Character if c then for _,p in pairs(c:GetDescendants()) do if p:IsA("BasePart") and p.CanCollide then p.CanCollide=false end end end end) else if noclipLoop then noclipLoop:Disconnect() noclipLoop=nil end local c=game.Players.LocalPlayer.Character if c then for _,p in pairs(c:GetDescendants()) do if p:IsA("BasePart") then p.CanCollide=true end end end end end})

-- Misc
miscTab:CreateButton({Name="Low GFX Mode (Leave/Server Hop To Reset)",Callback=function()for _,d in pairs(workspace:GetDescendants())do if d:IsA("ParticleEmitter")or d:IsA("Trail")or d:IsA("Beam")then d.Enabled=false elseif d:IsA("Decal")or d:IsA("Texture")then d.Transparency=1 end end game.Lighting.GlobalShadows=false end})
miscTab:CreateToggle({Name="Screen Darkener",CurrentValue=false,Callback=function(v)local g=game:GetService("CoreGui")if v then local f=Instance.new("ScreenGui",g)f.Name="Darkener"f.ResetOnSpawn=false f.IgnoreGuiInset=true local b=Instance.new("Frame",f)b.BackgroundColor3=Color3.new(0,0,0)b.BackgroundTransparency=0.1 b.Size=UDim2.new(1,0,1,0)b.Position=UDim2.new(0,0,0,0)b.BorderSizePixel=0 b.ZIndex=9999 else local d=g:FindFirstChild("Darkener")if d then d:Destroy()end end end})
miscTab:CreateButton({Name="Server Hop",Callback=function()local H,T,P=game.HttpService,{},game.PlaceId;for _,v in next,H:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..P.."/servers/Public?sortOrder=Asc&limit=100")).data do if v.playing<v.maxPlayers and v.id~=game.JobId then table.insert(T,v.id)end end if #T>0 then game:GetService("TeleportService"):TeleportToPlaceInstance(P,T[math.random(1,#T)],game.Players.LocalPlayer)else warn("No available servers found.")end end})

local Section = miscTab:CreateSection("Music Player (Bc Why Not)")

miscTab:CreateInput({Name="Music SoundId",PlaceholderText="Enter SoundId",RemoveTextAfterFocusLost=false,Callback=function(v)musicSoundId=v end})
miscTab:CreateButton({Name="Play Music",Callback=function()if workspace:FindFirstChild("CustomMusic")then workspace.CustomMusic:Destroy()end local s=Instance.new("Sound",workspace) s.SoundId="rbxassetid://"..(musicSoundId or "0") s.Name="CustomMusic" s.Volume=5 s.Looped=true s:Play()end})
miscTab:CreateButton({Name="Stop Music",Callback=function()local m=workspace:FindFirstChild("CustomMusic")if m and m:IsA("Sound")then m:Stop()end end})
miscTab:CreateToggle({Name="Lower Game Sounds",CurrentValue=false,Callback=function(v)for _,s in pairs(game:GetDescendants())do if s:IsA("Sound") and s.Name~="CustomMusic"then s.Volume=v and 0 or 1 end end end})
