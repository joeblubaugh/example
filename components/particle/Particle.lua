Particle = class("Particle")

function Particle:__init(image, buffer)
    self.particle = love.graphics.newParticleSystem(image, buffer)
end