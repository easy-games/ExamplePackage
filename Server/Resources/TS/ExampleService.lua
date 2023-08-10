-- Compiled with unity-ts v2.1.0
local Reflect = require("Shared/Resources/rbxts_include/node_modules/@easy-games/flamework-core/out/init.lua").Reflect
local Service = require("Shared/Resources/rbxts_include/node_modules/@easy-games/flamework-core/out/init.lua").Service
local ExampleService
do
	ExampleService = setmetatable({}, {
		__tostring = function()
			return "ExampleService"
		end,
	})
	ExampleService.__index = ExampleService
	function ExampleService.new(...)
		local self = setmetatable({}, ExampleService)
		return self:constructor(...) or self
	end
	function ExampleService:constructor()
	end
	function ExampleService:OnStart()
		print("ExampleService says hello!")
	end
end
-- (Flamework) ExampleService metadata
Reflect.defineMetadata(ExampleService, "identifier", "Server/ExampleService@ExampleService")
Reflect.defineMetadata(ExampleService, "flamework:implements", { "$:flamework@OnStart" })
Reflect.decorate(ExampleService, "$:flamework@Service", Service, {})
return {
	ExampleService = ExampleService,
}
-- ----------------------------------
-- ----------------------------------
