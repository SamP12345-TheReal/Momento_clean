i = 0

function Initialize()
	
	batteryPercentMeasure = SKIN:GetMeasure('MeasureBatteryPercent')
	batteryStatusMeasure = SKIN:GetMeasure('MeasureBatteryState')
	
end

function Update()
	
	btPercent = batteryPercentMeasure:GetValue()
	btStatus = batteryStatusMeasure:GetValue()

	if btStatus == 0 then
	
		SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "0"')
		SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "0"')
		SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "0"')
		SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "0"')
		
	else
	
		if btPercent > 75 then
		
			SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "255"')
			SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "255"')
			SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "255"')
			SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "255"')
		
		else
	
			if btPercent > 50 then
			
				SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "255"')
				SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "255"')
				SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "255"')
				SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "0"')
			
			else
		
				if btPercent > 25 then
				
					SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "255"')
					SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "255"')
					SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "0"')
					SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "0"')
				
				else
			
					if btPercent > 10 then
					
						SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "255"')
						SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "0"')
						SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "0"')
						SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "0"')
						
					else
				
						
				
					end
			
				end
		
			end
	
		end
		
		
	end
	
	SKIN:Bang('!SetOption MeterNoBattery ImageAlpha "0"')
	SKIN:Bang('!SetOption MeterCharging ImageAlpha "0"')
	
	if btStatus == 1 then
	
		SKIN:Bang('!SetOption MeterCharging ImageAlpha ')
		
		if i == 0 then
			
			SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "0"')
			SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "0"')
			SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "0"')
			SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "0"')
		
		else
		
			if i == 1 then
		
				SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "255"')
				SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "0"')
				SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "0"')
				SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "0"')
			
			else
			
				if i == 2 then
			
					SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "255"')
					SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "255"')
					SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "0"')
					SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "0"')
				
				else
				
					if i == 3 then
			
						SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "255"')
						SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "255"')
						SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "255"')
						SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "0"')
				
					else
				
						if i == 4 then
			
							SKIN:Bang('!SetOption MeterBatteryFirstBar ImageAlpha "255"')
							SKIN:Bang('!SetOption MeterBatterySecondBar ImageAlpha "255"')
							SKIN:Bang('!SetOption MeterBatteryThirdBar ImageAlpha "255"')
							SKIN:Bang('!SetOption MeterBatteryFourthBar ImageAlpha "255"')
				
						end
				
					end
				
				end
			
			end
			
		end
		
		
		i = i + 1
		if i == 5 then
			i = 0
		end
		
	else
		
		if btStatus == 0 then
			
			SKIN:Bang('!SetOption MeterNoBattery ImageAlpha "255"')
		
		end
	
	end
	
	return ""
end