# Lovetoys-example

This is a small example on how to use the Lovetoys in combination with love2d.  

## Component:
[positionComponent.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/components/physic/positionComponent.lua): Basic Structure of a component.

## Entity:
[main.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/main.lua) Line 102-108: How to create an entity, add Components to it and finally add the entity to the engine.  
[mainKeySystem.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/systems/event/mainKeySystem.lua) Line 44: How to remove an Entity.  

## System:
[circleDrawSystem.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/systems/graphic/circleDrawSystem.lua): Basic Structure of a system.  
[main.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/main.lua) Line 94: How to add a system to the engine.  
[mainKeySystem.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/systems/event/mainKeySystem.lua) Line 47: How to remove a System.  

## Engine:
[main.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/main.lua) Line 54: How to create an engine.  
Line 116: Engine update function.  
Line 126: Engine draw function.  


## Eventmanagement:
[keyPressed.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/events/keyPressed.lua) Basic structure of an event.  
[mainKeySystem.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/systems/event/mainKeySystem.lua) This is a typical event system.  
[main.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/main.lua) Line 78: How to add a system to an existing eventmanager.  
Line 129: How to fire an event to the eventmanager.  

## Collisionmanagment:

[main.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/main.lua) Line 77: How to add the collisionmanager to the related event manager.  
[beginContact.lua](https://github.com/Lovetoys/Lovetoys/blob/master/src/events/beginContact.lua): The beginContact event that's fired by the event manager.  
[main.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/main.lua) Line 83: How to add a new collision to the collision manager.  
Line 140: Firing the BeginContact event.  
[polygonCircleCollision.lua](https://github.com/Lovetoys/Lovetoys-examples/blob/master/collisions/polygonCircleCollision.lua): Basic structure of a collision. 

