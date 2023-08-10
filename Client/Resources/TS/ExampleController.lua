-- Compiled with unity-ts v2.1.0
local Reflect = require("Shared/Resources/rbxts_include/node_modules/@easy-games/flamework-core/out/init.lua").Reflect
local Controller = require("Shared/Resources/rbxts_include/node_modules/@easy-games/flamework-core/out/init.lua").Controller
local ExampleController
do
	ExampleController = setmetatable({}, {
		__tostring = function()
			return "ExampleController"
		end,
	})
	ExampleController.__index = ExampleController
	function ExampleController.new(...)
		local self = setmetatable({}, ExampleController)
		return self:constructor(...) or self
	end
	function ExampleController:constructor()
	end
	function ExampleController:OnStart()
		print("ExampleController says hello!")
	end
end
-- (Flamework) ExampleController metadata
Reflect.defineMetadata(ExampleController, "identifier", "Client/ExampleController@ExampleController")
Reflect.defineMetadata(ExampleController, "flamework:implements", { "$:flamework@OnStart" })
Reflect.decorate(ExampleController, "$:flamework@Controller", Controller, {})
return {
	ExampleController = ExampleController,
}
-- ----------------------------------
-- ----------------------------------
