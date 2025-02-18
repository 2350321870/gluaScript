ans = {} 	
function OnEnter()
	ans.rtype = 1
	LuaSetTask("ginfm_inbj",1)  --进入标记
	LuaSetTask("ginfm_inday",GetCurrentDay())  --进入时间标记
	LuaAddTask("ginfm_incs",1)  --进入次数
	LuaSay("注意：进入帮战地图后如果下线或掉线，则再次进入需等待一定时间，下线或掉线次数越多，进入等待时间则越长")
	if(LuaQueryStrTask("Tbzljday")~=GetCurrentDay())then
		LuaSetTask("Tbzlj",0) --每天进入帮战地图后，才会重置帮战领奖，防止玩家只打一次帮战就可以天天领奖 
		LuaSetTask("Tbzljday",GetCurrentDay())
	end  
	LuaOtherSendMenu()
return ans.rtype
end