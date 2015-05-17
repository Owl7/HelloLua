require "Cocos2d"
require "Cocos2dConstants"

local size = cc.Director:getInstance():getWinSize()
local GameScene = class("GameScene",function()
    return cc.Scene:create()
end)

function GameScene.create()
    local scene = GameScene.new()
    scene:addChild(scene:createLayer())
    return scene
end


function GameScene:ctor()

end

function GameScene:createLayer()
	local layer = cc.Layer:create()
	local label = cc.LabelTTF:create("Hello Lua", "Arial", 46)
    label:setPosition(cc.p(size.width / 2, size.height / 2))
    layer:addChild(label)
	return layer
end

return GameScene
