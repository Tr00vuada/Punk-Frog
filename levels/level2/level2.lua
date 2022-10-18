local composer = require( "composer" )
local perspective = require ("levels.perspective")
local ClassPlayer = require ("scripts.player.player")
local ClassArcher = require ("scripts.SkeletonArcher.enemyArcher")
local ClassHud = require ("scripts.player.playerHud")
local ClassWarrior = require ("scripts.Warrior.enemyWarrior")
local ClassWords = require ("scripts.words.words")
local ClassLifeCrystal = require("scripts.heart.heart")
local ClassPiriquito = require("scripts.piriquitomaldido.piriquito")
local tiled = require ("com.ponywolf.ponytiled")
local physics = require ("physics")
local json = require ("json")


local scene = composer.newScene()
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end 
            
        
-- show()
function scene:show( event )

    -- grupo da cena
    -- todos os objetos fora da camera ficarão dentro deste grupo
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
    elseif ( phase == "did" ) then
    physics.start( )
    physics.setGravity( 0, 9.8 )
    
    local camera = perspective.createView()
    camera:prependLayer()
        

    local mapData = json.decodeFile(system.pathForFile("levels/level2/castle-final-stage.json",system.ResourceDirectory))  -- load from json export
    local map = tiled.new(mapData)
    camera:add(map,1)


    local player = ClassPlayer.new(170,2900, camera)

-------------------------------------------------------------------------------------------------------
    local groupHud = ClassHud.new(player)
    local enemy1 = ClassArcher.new(594,2812, 10, 1, player, 1, camera, "a")
    local enemy2 = ClassWarrior.new(881, 2715, 30, player,-1, 1, camera)
    local enemy3 = ClassWarrior.new(1038, 2940, 30, player,-1, 1, camera)
    local enemy6 = ClassWarrior.new(1425, 2940, 30, player,-1, 1, camera)
    local enemy7 = ClassPiriquito.new(1551, 2899, player, 1, camera)
    local enemy8 = ClassPiriquito.new(787, 2606, player, 1, camera)
    local enemy9 = ClassPiriquito.new(626, 2539, player, 1, camera)
    local enemy10 = ClassWarrior.new(1089, 2426, 30, player,-1, 1, camera)
    local enemy11 = ClassArcher.new(1519,2523, 30, 1, player, 1, camera, "b")
    local enemy12 = ClassPiriquito.new(2062, 2450, player, 1, camera)
    local enemy13 = ClassPiriquito.new(2320, 2449, player, 1, camera)
    local enemy14 = ClassPiriquito.new(2575, 2450, player, 1, camera)
    local enemy15 = ClassPiriquito.new(2832, 2450, player, 1, camera)
    local enemy16 = ClassPiriquito.new(3025, 2314, player, 1, camera)
    local enemy17 = ClassPiriquito.new(2672, 2184, player, 1, camera)
    local enemy18 = ClassPiriquito.new(2673, 2065, player, 1, camera)
    local enemy19 = ClassArcher.new(2448,1936, 15, 1, player, 1, camera, "c")
    local enemy20 = ClassArcher.new(2321,1937, 15, 1, player, 1, camera, "d")
    local enemy21 = ClassWarrior.new(2801, 1928, 30, player,-1, 1, camera)
    local enemy22 = ClassWarrior.new(2960, 1928, 30, player,-1, 1, camera)
    local enemy23 = ClassPiriquito.new(3185, 1870, player, 1, camera)
    local enemy24 = ClassPiriquito.new(1791, 1934, player, 1, camera)
    local enemy25 = ClassArcher.new(1280,1946, 15, 1, player, 1, camera, "e")
    local enemy26 = ClassPiriquito.new(848, 1868, player, 1, camera)
    local enemy27 = ClassPiriquito.new(656, 1802, player, 1, camera)
    local enemy28 = ClassPiriquito.new(848, 1738, player, 1, camera)
    local enemy29 = ClassPiriquito.new(850, 1649, player, 1, camera)
    local enemy30 = ClassArcher.new(209,1177, 15, -1, player, 1, camera, "f")
    local enemy31 = ClassArcher.new(497,1177, 15, 1, player, 1, camera, "g")
    local enemy32 = ClassArcher.new(1426,1427,15, 1, player, 1, camera, "h")
    local enemy33 = ClassWarrior.new(1744, 1589, 30, player,-1, 1, camera)
    local enemy34 = ClassWarrior.new(2002, 1588, 30, player,-1, 1, camera)
    local enemy35 = ClassWarrior.new(2289, 1585, 30, player,-1, 1, camera)
    local enemy36 = ClassPiriquito.new(2257, 1461, player, 1, camera)
    local enemy37 = ClassArcher.new(1938,1298, 15, 1, player, 1, camera, "i")
    local enemy38 = ClassArcher.new(2129,1298, 15, 1, player, 1, camera, "j")
    local enemy39 = ClassPiriquito.new(2799, 1004, player, 1, camera)
    local enemy40 = ClassPiriquito.new(2769, 884, player, 1, camera)
    local enemy41 = ClassPiriquito.new(2896, 820, player, 1, camera)
    local enemy42 = ClassWarrior.new(2258, 917, 30, player,-1, 1, camera)
    local enemy43 = ClassWarrior.new(2128, 918, 30, player,-1, 1, camera)
    local enemy44 = ClassWarrior.new(1998, 918, 30, player,-1, 1, camera)
    local enemy45 = ClassWarrior.new(1875, 918, 30, player,-1, 1, camera)
    local enemy46 = ClassArcher.new(1665,885, 15, -1, player, 1, camera, "k")
    local enemy47 = ClassPiriquito.new(1472, 881, player, 1, camera)
    local enemy48 = ClassWarrior.new(1280, 886, 30, player,-1, 1, camera)
    local enemy49 = ClassArcher.new(1018,919,15, -1, player, 1, camera, "m")
    local enemy50 = ClassWarrior.new(903, 918, 30, player,-1, 1, camera)
    local enemy51 = ClassArcher.new(767,916, 15, -1, player, 1, camera, "n")
    local enemy52 = ClassPiriquito.new(366, 852, player, 1, camera)
    local enemy53 = ClassArcher.new(496,786, 15, 1, player, 1, camera, "o")
    local enemy54 = ClassPiriquito.new(369, 728, player, 1, camera)






         --o paralax ( as funções da camera), podem vir aqui

         -- Não há necessidade de alterar
--          Camadas(1,  2,   3,   4,   5,   6,   7,  8 )
camera:setParallax( 1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0 ) -- Aqui alteramos o "Parallax" na ordem decrescente para cada layer

camera.damping = 20 -- Controla a fluidez da camera ao seguir o player
camera:setFocus( player ) -- Troca o foco para o player
camera:track() -- Inicia a perseguição da camera



    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
 
    elseif ( phase == "did" ) then
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene