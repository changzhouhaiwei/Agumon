
local BaseScene = import("..UIBase.BaseScene")
local HWButton = import("..UIBase.HWButton") --
local TCSLoader = import("..UIBase.TCSLoader")
local MainNode = import(".MainNode")
local MainScene = class("MainScene",BaseScene) --cc.load("mvc").ViewBase)

--下面是正式代码
local MainPage = import(".MainPage.MainPage")


function MainScene:ctor()
    MainScene.super.ctor(self)
    -- local coverLayer = cc.LayerColor:create(cc.c4b(0,110,20,255),display.width,display.height)
    -- self:addChild(coverLayer)
    
    -- local node = TCSLoader:loadCSB("Csb/MainScene.csb",self) --MainNode.new():addTo(self)
    -- self:addChild(node,100)
    -- cc.Director:getInstance():setDisplayStats(true)

    -- local btn = HWButton.new("anniu1.png","anniu1.png",function ()
    --     print("hahaha")
    -- end)

    -- self:addChild(btn,100)
    -- btn:setPosition(cc.p(750,300))

    -- self["ccsButton_1"]:setScale(4)

    -- local btn = self["ccsButton_1"]
    -- local size = btn:getTitleColor()

    -- --ccs的按钮的事件注册
    -- btn:addTouchEventListener(function(sender, state)
    --     local event = {x = 0, y = 0}
    --     if state == 0 then
    --         event.name = "began"
    --     elseif state == 1 then
    --         event.name = "moved"
    --     elseif state == 2 then
    --         event.name = "ended"    
    --         print("啊哈")
    --     else
    --         event.name = "cancelled"
    --     end
    --     event.target = sender
    -- end)

    -- --下面是正式的
    self:initMainPage()
end

function MainScene:initMainPage()
    self.mainPage = MainPage.new()
    self:addChild(self.mainPage,10)
end


return MainScene