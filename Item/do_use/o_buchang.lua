function do_use()
	local level = LuaQuery("level")
	if(LuaQueryTask("Hour")~=GetCurrentHour())then
		LuaDelTask("Second_5")
	end
	if(LuaQueryTask("Second_5")==0)then
		LuaSay("拉轰馅饼：每小时你都能吃我一次哦，吃后能获得大量经验哦*恭喜你得到"..GetCurrentHour().."点的馅饼！")
		LuaAddJx("combat_exp",level*level*50+level*10000,"Second_5")
		LuaSetTask("Hour",GetCurrentHour())
		LuaSetTask("Second_5",99)
	
	else
		local a = 60 - GetCurrentMinute()
		LuaSay("你刚吃过馅饼哦，再过"..a.."分钟你又能吃传说中的馅饼了哦@!")
	end
	LuaOtherSendMenu()
		
return 0 
end
