-- The Innovation Station --
-- 2000 lines of Lua code --

-- Variables

local debugMode = false
local playerLevel = 1
local playerScore = 0
local maxScore = 0
local maxLevel = 3
local gameOver = false
local gamePaused = false

-- Classes

-- Player Character
local Player = {
	x = 20,
	y = 300,
	speed = 20,
	facing = "right"
}

-- Enemy Character
local Enemy = {
	x = 350,
	y = 250,
	speed = 10,
	facing = "left"
}


-- Helper Functions

-- Check if two character objects are colliding
local function checkCollision(p1, p2) 
	if (p1.x < p2.x + 32 and
		p1.x + 32 > p2.x and
		p1.y < p2.y + 32 and
		p1.y + 32 > p2.y) then
		return true
	else 
		return false
	end
end

-- Update the position of the player's character
local function updatePlayerPosition(dx, dy)
	Player.x = Player.x + (dx * Player.speed)
	Player.y = Player.y + (dy * Player.speed)
end

-- Update the position of the enemy's character
local function updateEnemyPosition(dx, dy)
	Enemy.x = Enemy.x + (dx * Enemy.speed)
	Enemy.y = Enemy.y + (dy * Enemy.speed)
end

-- Render the Player Character
local function renderPlayer()
	love.graphics.rectangle("fill", Player.x, Player.y, 32, 32)
end

-- Render the Enemy Character
local function renderEnemy()
	love.graphics.rectangle("fill", Enemy.x, Enemy.y, 32, 32)
end

-- Update the Game State
local function updateGame()
	-- Check if player has reached max score
	if (playerScore == maxScore) then
		-- Increase player level
		playerLevel = playerLevel + 1
		-- Reset score
		playerScore = 0

		-- Check if max level has been reached
		if (playerLevel == maxLevel) then
			gameOver = true
		end
	end
end

-- Load function
function love.load()
	-- Set window size
	love.window.setMode(400, 400)
end

-- Update function
function love.update(dt)
	-- Check if game is over or paused
	if (gameOver or gamePaused) then
		return
	end

	-- Check for collisions between Player and Enemy
	if (checkCollision(Player, Enemy)) then
		-- Increase Player score
		playerScore = playerScore + 1
	end

	-- Update game state
	updateGame()

	-- Get player input
	if (love.keyboard.isDown("right")) then
		updatePlayerPosition(1, 0)
		Player.facing = "right"
	elseif (love.keyboard.isDown("left")) then
		updatePlayerPosition(-1, 0)
		Player.facing = "left"
	end
	if (love.keyboard.isDown("up")) then
		updatePlayerPosition(0, -1)
	elseif (love.keyboard.isDown("down")) then
		updatePlayerPosition(0, 1)
	end

	-- Update Enemy position
	if (Enemy.facing == "right") then
		updateEnemyPosition(1, 0)
	else
		updateEnemyPosition(-1, 0)
	end
end

-- Render function
function love.draw()
	-- Check for game over
	if (gameOver) then
		love.graphics.print("Game Over!", 20, 20)
		return
	end

	-- Render Player Character
	renderPlayer()

	-- Render Enemy Character
	renderEnemy()

	-- Print debug info
	if (debugMode) then
		love.graphics.print("Player Level: " .. playerLevel, 20, 20)
		love.graphics.print("Player Score: " .. playerScore, 20, 35)
	end
end

-- KeyPress function
function love.keypressed(key)
	-- Check if game is over
	if (gameOver) then
		return
	end

	-- Check if pause is pressed
	if (key == "p" or key == "P") then
		gamePaused = not gamePaused
	end
end