function do_use()
	local level = LuaQuery("level")
	if(LuaQueryTask("Hour")~=GetCurrentHour())then
		LuaDelTask("Second_5")
	end
	if(LuaQueryTask("Second_5")==0)then
		LuaSay("�����ڱ���ÿСʱ�㶼�ܳ���һ��Ŷ���Ժ��ܻ�ô�������Ŷ*��ϲ��õ�"..GetCurrentHour().."����ڱ���")
		LuaAddJx("combat_exp",level*level*50+level*10000,"Second_5")
		LuaSetTask("Hour",GetCurrentHour())
		LuaSetTask("Second_5",99)
	
	else
		local a = 60 - GetCurrentMinute()
		LuaSay("��ճԹ��ڱ�Ŷ���ٹ�"..a.."���������ܳԴ�˵�е��ڱ���Ŷ@!")
	end
	LuaOtherSendMenu()
		
return 0 
end
