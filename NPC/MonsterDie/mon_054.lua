Txhuanxing_nTotalMonsterNum = 36
T831_nTotalMonsterNum = 31
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_054/Txhuanxing")==36)then
		LuaSay("���Ѿ�ɱ��35ֻ@2ɳ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
----------------------------------------------
if(LuaQueryTask("T831")==1)then
	if(LuaQueryTask("task_kill/mon_054/T831")==31)then
		LuaSay("���Ѿ�ɱ��30ֻ@2ɳ��@0���쵽ɳĮ���޵����⴦��ȡ�����ɣ�")
		LuaOtherSendMenu()
	end
end
----------------------------------------------
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_054/Tfjtx")==34)then
		LuaSay("��ʾ�����Ѿ�ɱ��33ֻɳ�������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon51")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

return 1
end