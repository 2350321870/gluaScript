Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T820_nTotalMonsterNum =31

function OnDie()
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_056/Txhuanxing")==36)then
		LuaSay("���Ѿ�ɱ��35ֻ@2ս����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
-------------------------------
if(LuaQueryTask("T820")==1)then
	if(LuaQueryTask("task_kill/mon_056/T820")==31)then
		LuaSay("���Ѿ�ɱ��30ֻ@2ս����@0���쵽��������������峤����ȡ�����ɣ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_056/Tfjtx")==36)then
		LuaSay("��ʾ�����Ѿ�ɱ��35ֻս���ޣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon50")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
-----
--------------------------------

return 1
end