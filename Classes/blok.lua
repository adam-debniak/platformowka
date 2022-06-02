-- blok to obiekt na mapie, po którym można skakać/chodzić
-- blok jest prostokątem wypełniony w środku
-- blok jest na stałe w wyznaczonym miejscu
-- blok jest ułożony poziomo
-- blok ma stałą wysokość - 20

-- liczby opisujące blok -> punkt spawnu, szerokość

-- na później - znikający blok - znika po chwili
local Punkt = require("Classes/punkt")

local blok = {}
blok.__index = blok -- konieczna linijka

function blok.new(punktSpawnu, szerokosc, wysokosc)
    assert(punktSpawnu.x ~= nil and punktSpawnu.y ~= nil)

    if wysokosc == nil then
        wysokosc = 20
    end

    local nowyBlok = {}
    setmetatable(nowyBlok, blok) -- konieczna linijka

    nowyBlok.wysokosc = wysokosc
    nowyBlok.szerokosc = szerokosc
    nowyBlok.punktSpawnu = punktSpawnu

    return nowyBlok
end

function blok:vertices()
    return {
        self.punktSpawnu.x, self.punktSpawnu.y,
        self.punktSpawnu.x + self.szerokosc, self.punktSpawnu.y,
        self.punktSpawnu.x + self.szerokosc, self.punktSpawnu.y + self.wysokosc,
        self.punktSpawnu.x, self.punktSpawnu.y + self.wysokosc
    }
end

return blok

--[[
    Blok = require("Classes/blok.lua")

    local platforma1 = Blok.new() 
    -- Blok.new() jest to funkcją, która ma ZWRÓCIĆ utworzyny obiekt
]]
