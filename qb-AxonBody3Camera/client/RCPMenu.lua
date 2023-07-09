-- 定义LUA_PATH 环境变量
-- export LUA_PATH = "~"



CreateThread( function()
	while true do
		Wait(0)
			SendNUIMessage({ShowUI = true})
	end
end)

x = 0
weapon = true
CreateThread(function()
	while true do
		Wait(0)
		w = GetSelectedPedWeapon(PlayerPedId())
		if ((w ~= -1569615261) and (w == x) and (weapon)) then
        	SendNUIMessage({weapon = true})
        	weapon = false
        elseif not (w == x) then
        	x = w
        	weapon = true
        end
	end
end)

RegisterCommand('axonbody3', function()
	SendNUIMessage({ShowPowerButton = true})
	SetNuiFocus(true,true)
end, false)

RegisterNUICallback('close', function()
	SetNuiFocus(false)	
end)

-- RegisterCommand('rec', function()
-- 	-- local record = luajava.bindClass("com.Jayson.record.fxbase.RecorderUtil")

-- 	-- local rec = luajava.new(record)

-- 	-- rec:setFileName("H:\\")

-- 	-- rec:setStartx(0)

-- 	-- rec:setStarty(0)

-- 	-- rec:setWidth(2560)

-- 	-- rec:setHeight(1440)

-- 	-- local testRec = rec:getVideoRecorderInstance("testRecorder")

-- 	-- testRec.start()

-- 	-- Wait(10000)

-- 	-- testRec.stop()

-- end,false)