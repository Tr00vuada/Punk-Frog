local ClassLifeCrystal = {}


	function ClassLifeCrystal.new (x , y , camera)
		local lifeCrystal = display.newImageRect("scripts/heart/heart.png", 16, 16 )
		lifeCrystal.x = x
		lifeCrystal.y = y
		physics.addBody( lifeCrystal, "static", {isSensor = true} )
		camera:add(lifeCrystal,1)

	local lifeCrystalYInicial = y

			timer.performWithDelay( 510, function ()
				if (lifeCrystal.y == lifeCrystalYInicial ) then
					lifeCrystal.y = lifeCrystal.y + 5
				elseif (lifeCrystal.y >= lifeCrystalYInicial ) then
					lifeCrystal.y = lifeCrystal.y - 5
				end
				end, 0, "animation")
	local function heartanimation( ... )
		if (lifeCrystal.x ~= nil) then
			
		else
			timer.cancel( "animation" )
			Runtime:removeEventListener("enterFrame", heartanimation)
		end
	end

	Runtime:addEventListener("enterFrame", heartanimation)

	local function collision (self, event)
		if (event.phase == "began") then
			if (event.other.id == "player") then
				event.other.life = event.other.life + 1
				display.remove(lifeCrystal)
				timer.cancel( "animation" )
			end
		end
	end
	lifeCrystal.collision = collision
	lifeCrystal:addEventListener("collision")

return lifeCrystal

end

return ClassLifeCrystal