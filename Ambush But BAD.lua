local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Ambush",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Ambush-BUT-BAD/main/AMBUSH%20BUT%20BAD.rbxm",

    Speed = 300,
    DelayTime = 3.3,

    HeightOffset = 0,
    CanKill = true,
    KillRange = 25,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1.3,
    },

    Cycles = {
        Min = 2,
        Max = 5,
        WaitTime = 0.05,
    },

    CamShake = {
        true,
        {3, 3.5, 0.2, 1.3},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://10717462310",
            Image2 = "rbxassetid://10717462310",

            Shake = false,

            Sound1 = {
                18532501108,
                {Volume = 1},
            },

            Sound2 = {
                18532501108,
                {Volume = 1},
            },

            Flashing = {
                true,
                Color3.fromRGB(0, 255, 183),
            },

            Tease = {
                false,
                Min = 0,
                Max = 0,
            },
        },
    },

    CustomDialog = {
        "You died to Ambush...",
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Ambush spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Ambush despawned")
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Ambush started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Ambush finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Ambush entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Ambush")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to Ambush.")
end

Creator.runEntity(entity)
