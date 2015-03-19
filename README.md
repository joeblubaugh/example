# Lovetoys-example

This is a small example game that shows how to use the lovetoys in practice.

## Component:
[position.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/components/physic/position.lua): Basic Structure of a component.

## Entity:
[main.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/main.lua) Line 102-108: How to create an entity, add Components to it and finally add the entity to the engine.  
[mainKeySystem.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/systems/event/mainKeySystem.lua) Line 44: How to remove an Entity from the engine.  

## System:
[circleDrawSystem.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/systems/graphic/circleDrawSystem.lua): Basic Structure of a system.  
[main.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/main.lua) Line 94: How to add a system to the engine.  
[mainKeySystem.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/systems/event/mainKeySystem.lua) Line 47: How to remove a System.  
[multipleRequirementsSystem](https://github.com/lovetoys/Lovetoys-examples/blob/master/systems/test/multipleRequirementsSystem.lua) Line 5-19: How to write a System with multiple component requirements and how to access the different target lists.

## Engine:
[main.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/main.lua) Line 54: How to create an engine.  
Line 116: Engine update function.  
Line 126: Engine draw function.  


## Eventmanagement:
[keyPressed.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/events/keyPressed.lua) Basic structure of an event.  
[mainKeySystem.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/systems/event/mainKeySystem.lua) This is a typical event system.  
[main.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/main.lua) Line 78: How to add a system to an existing eventmanager.  
Line 129: How to fire an event to the eventmanager.  

## Collisionmanagment:

[main.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/main.lua) Line 77: How to add the collisionmanager to the related event manager.  
[beginContact.lua](https://github.com/lovetoys/Lovetoys/blob/master/src/events/beginContact.lua): The beginContact event that's fired by the event manager.  
[main.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/main.lua) Line 83: How to add a new collision to the collision manager.  
Line 140: Firing the BeginContact event.  
[polygonCircleCollision.lua](https://github.com/lovetoys/Lovetoys-examples/blob/master/collisions/polygonCircleCollision.lua): Basic structure of a collision. 

