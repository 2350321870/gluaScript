Txhuanxing_nTotalMonsterNum = 49
Tfjtx_nTotalMonsterNum = 39
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_075/Txhuanxing")==49)then
		LuaSay("���Ѿ�ɱ��48ֻ@2ħ�˸��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_075/Tfjtx")==39)then
		LuaSay("��ʾ�����Ѿ�ɱ��38ֻħ�˸�ԣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon69")==1) then
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