ans = {} 	
function OnEnter()
	ans.rtype = 0
	if(GetCurrentDay()~=LuaQueryStrTask("Tjhday")) then
		LuaDelTask("Thunyinsq")
		LuaDelTask("Tjhday")
	end
	if(LuaQueryTask("Thunyinsq")>0) then  --�����˽����߲���������
		ans.rtype = 1
	else
		if(GetCurrentHour()>11) then     ---�ض�ʱ���ڲ���������
			if(LuaItemCount("o_state087y")>0) then      --�н��������
				DelItem("o_state087y",1)
				ans.rtype = 1
			elseif(LuaItemCount("o_state087j")>0) then
				DelItem("o_state087j",1)
				ans.rtype = 1
			else
				LuaSay("��ʾ��Ϊ��ֹ�ƻ�����12�㵽24�㣬�����н�������������˽�����Ҳ��ܽ���������Դ@z")
			end
		else
			ans.rtype = 1
		end
	end
	LuaOtherSendMenu()
return ans.rtype
end