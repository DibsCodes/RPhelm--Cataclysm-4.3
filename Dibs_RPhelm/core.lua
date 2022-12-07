-- frame creation and event registration
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_UPDATE_RESTING")
f:RegisterEvent("PLAYER_LOGIN")

--function to hide the helm based on IsResting()
local function helmtoggle()
	if IsResting() == 1 then
		if ShowingHelm() == 1 then
			ShowHelm()
		end
	else
		if ShowingHelm() == nil then
			ShowHelm()
		end
	end
end

--event handler...sloppy as fuck...I have no clue what I'm doing
f:SetScript("OnEvent", function(self,event,...) 
	
	if event == "PLAYER_LOGIN" then
		helmtoggle()
	end
	
	if event == "PLAYER_UPDATE_RESTING" then
		helmtoggle()			
	end
end)
