Physic = class("Physic", Component)

function Physic:initialize(body, fixture, shape)
    self.body = body
    self.shape = shape
    self.fixture = fixture
end
