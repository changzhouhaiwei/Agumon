--
-- Author: Your Name
-- Date: 2016-10-09 11:25:35
--
local BaseNode = require("app.UIBase.BaseNode")

local City = class("City",BaseNode)

function City:ctor()
	City.super.ctor(self)
	self.CSBPath = "Csb/City/City.csb"
	self:setCSBNode()
end

return City