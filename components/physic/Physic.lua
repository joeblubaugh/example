Physic = class("Physic", Component)

function Physic:__init(body, fixture, shape)
    self.body = body
    self.shape = shape
    self.fixture = fixture
end
