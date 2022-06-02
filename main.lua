local Punkt = require("Classes/punkt")
local Blok = require("Classes/blok")

local level1 = {}

function love.load()
    level1 = {
        Blok.new(Punkt.new(10,20), 40),
        Blok.new(Punkt.new(50,40), 60),
        Blok.new(Punkt.new(100,10), 50),
    }
end

function love.draw()
    for _, blok in pairs(level1) do
        love.graphics.polygon("fill", blok:vertices())
    end
end

