--@ECHO OFF

start "" "%PROGRAMFILES%\LOVE\love" .

function love.load()
	--logo = love.graphics.newImage("datboi-ohshit.jpg")
	font = love.graphics.newFont("8-bit.ttf", 36)
	love.graphics.setBackgroundColor(140,200,140)
	love.graphics.setFont(font)
	love.physics.setMeter(64)
	x, y = 400, 300
	
	world = love.physics.newWorld(0,9.81*64, true)
	
	objects = {}

	objects.ground = {}
	objects.ground.body = love.physics.newBody(world, 800/2, 600)
	objects.ground.shape = love.physics.newRectangleShape(800, 10)
	objects.ground.fixture = love.physics.newFixture(objects.ground.body, objects.ground.shape)

	objects.boi = {}
	objects.boi.body = love.physics.newBody(world, 800/2, 590, "dynamic")
	objects.boi.shape = love.physics.newCircleShape(20)
	objects.boi.fixture = love.physics.newFixture(objects.boi.body, objects.boi.shape, 1)
	objects.boi.fixture:setRestitution(0.3)


end

function love.keypressed(key, unicode)
	if key =="w" then
		objects.boi.body:applyForce(0,20000)
	end
end

function love.update(dt)
	world:update(dt)

	--[[if love.keyboard.isDown("w") then
		y = y - 10
	elseif love.keyboard.isDown("s") then
		y = y + 10
	elseif love.keyboard.isDown("a") then
		x = x - 10
	elseif love.keyboard.isDown("d") then
		x = x + 10
	end
	--]]
end

--[[function love.focus()
	hasFocus = f
end
--]]

function love.draw()
	--love.graphics.draw(logo, x, y)
	love.graphics.setColor(125,30,72)
	love.graphics.polygon("fill", objects.ground.body:getWorldPoints(objects.ground.shape:getPoints()))

	love.graphics.setColor(65,23,74)
	love.graphics.circle("fill", objects.boi.body:getX(), objects.boi.body:getY(), objects.boi.shape:getRadius())

	--[[love.graphics.print("Play a bull")
	if hasFocus then
		love.graphics.draw(image, 100, 100)
	end
	--]]
end







function love.load()
	--logo = love.graphics.newImage("datboi.jpg")
	background1 = love.graphics.newImage("Desert1.png")
	background2 = love.graphics.newImage("Desert2.png")
	font = love.graphics.newFont("8-bit.ttf", 36)
	love.graphics.setBackgroundColor(140,200,140)
	love.graphics.setFont(font)
	love.physics.setMeter(64)

	x, a, y = 0, 800, -350
	
	world = love.physics.newWorld(0,55*64, true)
	
	objects = {}

	objects.ground = {}
	objects.ground.body = love.physics.newBody(world, 800/2, 600)
	objects.ground.shape = love.physics.newRectangleShape(800, 10)
	objects.ground.fixture = love.physics.newFixture(objects.ground.body, objects.ground.shape)

	objects.boi = {}
	objects.boi.body = love.physics.newBody(world, 800/2, 590, "dynamic")
	objects.boi.shape = love.physics.newCircleShape(20)
	objects.boi.fixture = love.physics.newFixture(objects.boi.body, objects.boi.shape, 1)
	objects.boi.fixture:setRestitution(0.20)

end

function love.keypressed(key, unicode)
	if key =="w" then
		objects.boi.body:applyForce(0,70000)
	end
end

function love.update(dt)
	world:update(dt)
	x = x - 0.3
	a = a - 0.3
	if x == -800 then
		x = 0
	end
	if a == -1600 then
		a = -800
	end

	--[[if love.keyboard.isDown("w") then
		y = y - 10
	elseif love.keyboard.isDown("s") then
		y = y + 10
	elseif love.keyboard.isDown("a") then
		x = x - 10
	elseif love.keyboard.isDown("d") then
		x = x + 10
	end
	]]--
	
end

--[[function love.focus()
	hasFocus = f
end
--]]

function love.draw()
	--love.graphics.draw(logo, x, y)
	love.graphics.draw(background1, x, y)
	love.graphics.draw(background2, a, y)

	love.graphics.setColor(229,160,41)
	love.graphics.polygon("fill", objects.ground.body:getWorldPoints(objects.ground.shape:getPoints()))

	love.graphics.setColor(255,255,255)
	love.graphics.circle("fill", objects.boi.body:getX(), objects.boi.body:getY(), objects.boi.shape:getRadius())

	--for i = 0, love.graphics
	--[[love.graphics.print("Play a bull")
	if hasFocus then
		love.graphics.draw(image, 100, 100)
	end
	--]]
end

function addBox()
	--Now we're creating objects that will interact with the ball.
	objects.box = {}
	objects.box.body = love.physics.newBody(world, 800, 590)
	objects.box.shape = love.physics.newRectangleShape(20, 20)
	objects.box.fixture = love.physics.newFixture(objects.box.body, objects.box.shape, 1)

end

function love.load()
	--logo = love.graphics.newImage("datboi.jpg")
	background1 = love.graphics.newImage("Desert1.png")
	background2 = love.graphics.newImage("Desert1.png")
	bull1 = love.graphics.newImage("bullit1.png")
	bull2 = love.graphics.newImage("bullit2.png")
	bull3 = love.graphics.newImage("bullit3.png")
	bull4 = love.graphics.newImage("bullit4.png")
	--font = love.graphics.newFont("8-bit.ttf", 36)
	love.graphics.setBackgroundColor(140,200,140)
	--love.graphics.setFont(font)
	love.physics.setMeter(64)

	x, a, y = 0, 1280, -350
	counter = 1
	
	world = love.physics.newWorld(0,55*64, true)
	
	objects = {}

	objects.ground = {}
	objects.ground.body = love.physics.newBody(world, 800/2, 500)
	objects.ground.shape = love.physics.newRectangleShape(800, 0)
	objects.ground.fixture = love.physics.newFixture(objects.ground.body, objects.ground.shape)

	objects.boi = {}
end
