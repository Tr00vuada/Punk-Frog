local ClassWords = {}


function ClassWords.new( text , x , y , camera)

	local word = display.newText(text, x, y, "scripts/words/Minecraft.ttf", 15)
		word:setFillColor( 0 )
		camera:add(word, 1)

return words

end

return ClassWords