Particle = class("Particle")

function Particle:initialize(image, buffer)
    self.particle = love.graphics.newParticleSystem(image, buffer)
end