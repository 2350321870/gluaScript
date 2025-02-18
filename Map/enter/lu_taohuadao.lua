ans = {} 	
function OnEnter()
	ans.rtype = 0
	if(GetCurrentDay()~=LuaQueryStrTask("Tjhday")) then
		LuaDelTask("Thunyinsq")
		LuaDelTask("Tjhday")
	end
	if(LuaQueryTask("Thunyinsq")>0) then  --申请了结婚或者补办婚礼的人
		ans.rtype = 1
	else
		if(GetCurrentHour()>11) then     ---特定时间内不能随便进入
			if(LuaItemCount("o_state087y")>0) then      --有结婚请柬的人
				DelItem("o_state087y",1)
				ans.rtype = 1
			elseif(LuaItemCount("o_state087j")>0) then
				DelItem("o_state087j",1)
				ans.rtype = 1
			else
				LuaSay("提示：为防止破坏婚礼，12点到24点，必需有结婚请柬或者申请了结婚的玩家才能进入世外桃源@z")
			end
		else
			ans.rtype = 1
		end
	end
	LuaOtherSendMenu()
return ans.rtype
end