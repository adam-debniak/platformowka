local punkt = {}
punkt.__index = punkt -- konieczna linijka

function punkt.new(x, y)

    local nowyPunkt = {}
    setmetatable(nowyPunkt, punkt) -- konieczna linijka
    
    nowyPunkt.x = x
    nowyPunkt.y = y

    return nowyPunkt
end

return punkt