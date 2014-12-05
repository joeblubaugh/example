-- Importing lovetoys
require("lib/lovetoys/lovetoys")

-- Logic systems
require("systems/logic/TimerSystem")
require("systems/logic/PhysicsPositionSyncSystem")

-- Graphic systems
require("systems/graphic/CircleDrawSystem")
require("systems/graphic/PolygonDrawSystem")
require("systems/graphic/TimeDrawSystem")

-- Event systems
require("systems/event/MainKeySystem")

-- Particle systems
require("systems/particle/ParticleDrawSystem")
require("systems/particle/ParticleUpdateSystem")

-- Testing and debugging systems
require("systems/test/TestSystem")
require("systems/test/MultipleRequirementsSystem")

-- Physic components
require("components/physic/Physic")
require("components/physic/Position")

-- Graphic components
require("components/graphic/Drawable")
require("components/graphic/DrawablePolygon")

-- Logic components
require("components/logic/Timing")

-- Particle components
require("components/particle/Particle")
require("components/particle/ParticleTimerComponent")

-- Identifier components

require("components/identifier/IsCircle")

-- Events
require("events/KeyPressed")
require("events/MousePressed")

-- Collisions
require("collisions/PolygonCircleCollision")

function love.load()

    -- Creation of a new world
    love.physics.setMeter(64)
    world = love.physics.newWorld(0, 9.81*80, true)
    -- Enabling the collision functions
    world:setCallbacks(beginContact, endContact)

    love.window.setMode(1000, 600, {fullscreen=false, vsync=true, resizable=false})

    -- Loading particle image
    particle1 = love.graphics.newImage("gfx/particle1.png")

    -- A new instance of an Engine is beeing created.
    engine = Engine()
    -- A new instance of an EventManger is beeing created.
    eventmanager = EventManager()
    -- A new instance of a CollisionManager is beeing created.
    collisionmanager = CollisionManager()
    -- New instance of TestSystem. This is just for us. We need to test the newest features of the beautiful lovetoys ;3
    -- If you want to see an implementation of multiple required component constellations check the MultipleRequirementsSystem
    testsystem = TestSystem()

    -- New instance of MainKeySystem for adding and deleting physic bodies.
    mainkeysystem = MainKeySystem()

    -- The collisionmanager is beeing registered as a listener for the "BeginContact" event.
    eventmanager:addListener("BeginContact", {collisionmanager, collisionmanager.fireEvent})
    eventmanager:addListener("KeyPressed", {mainkeysystem, mainkeysystem .fireEvent})
    eventmanager:addListener("KeyPressed", {testsystem, testsystem.fireEvent})

    local polygon = PolygonCircleCollision()

    collisionmanager:addCollisionAction(polygon.component1, polygon.component2, polygon)

    -- Logic (update) systems are beeing added to the engine
    engine:addSystem(TimerSystem())
    engine:addSystem(PhysicsPositionSyncSystem())
    engine:addSystem(ParticleUpdateSystem())
    

    -- Drawing systems are beeing added to the engine
    engine:addSystem(PolygonDrawSystem())
    engine:addSystem(ParticleDrawSystem())
    engine:addSystem(CircleDrawSystem())
    engine:addSystem(TimeDrawSystem())

    -- Systems with no called function. But it still gets all required entities
    engine:addSystem(TestSystem())

    -- Creation and adding of some Entities
    for i = 1, 20, 1 do
        entity = Entity()
        local x, y = love.math.random(100, 900), love.math.random(150, 600)
        entity:add(DrawablePolygon(world, x, y, 100, 10, "static", wall))
        entity:add(Timing(love.math.random(0, 5000)))
        entity:add(Position(x, y))
        entity:get("DrawablePolygon").fixture:setUserData(entity)
        engine:addEntity(entity)
    end
end


function love.update(dt)
    -- Engine update function
    engine:update(dt)
    world:update(dt)
end

function love.draw()
    -- Engine draw function
    love.graphics.print("Press 'a' for spawning timer circles", 10, 10)
    love.graphics.print("Press 's' for spawning circles", 10, 30)
    love.graphics.print("Press 'd' for deleting all spawned circles", 10, 50)
    love.graphics.print("Press 'e' for removing the CircleDrawSystem", 10, 70)
    love.graphics.print("Press 'w' for adding the CircleDrawSystem again", 10, 90)
    engine:draw()
end 

function love.keypressed(key, isrepeat)
    eventmanager:fireEvent(KeyPressed(key, isrepeat))
end

function love.mousepressed(x, y, button)
    eventmanager:fireEvent(MousePressed(x, y, button))
end

--Collision function
function beginContact(a, b, coll)
    -- Dynamic creation of a new instance of BeginContact and firing it to the Eventmanager
    eventmanager:fireEvent(BeginContact(a, b, coll))
end

