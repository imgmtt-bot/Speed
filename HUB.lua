-- =============================================== \\
-- // GAME DETECTOR + SCRIPT LOADER
-- // 7 juegos agregados
-- =============================================== \\
local PlaceId = game.PlaceId
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
print("🔍 Detector de juegos cargado...")

-- ================== TUS SCRIPTS ==================
local Scripts = {
    [120766736586332] = function() -- +1 Strength Per Click
        print("🎮 +1 Fuerza por Clic detectado → Ejecutando...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/imgmtt-bot/Speed/refs/heads/main/Fuerzaxclick.lua"))()
    end,

    [116223724643557] = function() -- +1 Magic Evolution
        print("🎮 +1 Evolución Mágica detectado → Ejecutando...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/imgmtt-bot/Speed/refs/heads/main/Evolucion.lua"))()
    end,

    [86378115369061] = function() -- +1 Backflip Obby Escape
        print("🎮 +1 Backflip Obby detectado → Ejecutando...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/imgmtt-bot/Speed/refs/heads/main/Speed.lua"))()
    end,

    [99457855080430] = function() -- +1 Speed Barrel Escape
        print("🎮 Escapa del Barril de Velocidad detectado → Ejecutando...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/imgmtt-bot/Speed/refs/heads/main/Escapabarril.lua"))()
    end,

    [109509029034984] = function() -- +1 Aura Per Click
        print("🎮 +1 Aura Por Clic detectado → Ejecutando...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ikgmonxr/Speed/refs/heads/main/Auraxclick"))()
    end,

    [115196082055466] = function() -- Shoot The Boss
        print("🎮 Shoot The Boss detectado → Ejecutando...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ikgmonxr/Speed/refs/heads/main/Dispara"))()
    end,

    -- ================== NUEVO ==================
    [124868078719468] = function() -- Climb a Ramp
        print("🎮 Climb a Ramp detectado → Ejecutando...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ikgmonxr/Speed/refs/heads/main/Sube.lua"))()
    end,
}

-- ================== DETECCIÓN ==================
local scriptFunc = Scripts[PlaceId]
if scriptFunc then
    scriptFunc()
else
    print("❌ NO SUPPORT")
    warn("Este juego no está soportado en este loader.")
  
    -- Cambia "true" a "false" si no quieres que te kickee
    if true then
        wait(1.5)
        LocalPlayer:Kick("🚫 NO SUPPORT - Juego no agregado")
    end
end
