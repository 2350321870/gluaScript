ans = {} 	
function OnEnter()
	ans.rtype = 0
	if(GetCurrentDay()~=LuaQueryStrTask("jjbf_1day")) then
		LuaSetTask("jjbf_1time",0)
	end
	local level=LuaQuery("level")
	if(LuaQueryTask("jjbf_1time")<3) then    -----------------���븱���������ƣ������ǸĻ�3�� 
		if(level>=20 and level<30) then
			LuaSay("��ʾ�����������40����������@3���ƹ�������@0��@350ֻ@0�������޷�������ˮ������")
			LuaSay("��ʾ����ˮ����@340����@0��رգ���ץ��ʱ�������ˮ������")
			LuaSetTask("task_kill/mon_110/Tjjbf_1",1)
			LuaSetTask("task_kill/mon_111/Tjjbf_1",1)
			--      LuaAddTask("jjbf_1time",1)
			LuaSetTask("jjbf_1day",GetCurrentDay())
			LuaAddJx("combat_exp",level*100,"FB_Lv20")
			ans.rtype=1
		else
			LuaSay("��ʾ���ȼ���@320��29֮��@0���ܽ���ø���")
		end
	else
		LuaSay("��ʾ���ø���ÿ�����������ó���3��")
	end
	LuaOtherSendMenu()
return ans.rtype
end