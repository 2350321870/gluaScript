Txhuanxing_nTotalMonsterNum = 46
Tfjtx_nTotalMonsterNum = 39
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_074/Txhuanxing")==46)then
		LuaSay("���Ѿ�ɱ��45ֻ@2�ɺ���ħ@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_074/Tfjtx")==39)then
		LuaSay("��ʾ�����Ѿ�ɱ��38ֻ�ɺ���ħ�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon68")==1) then
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