T392_nTotalMonsterNum = 11
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()
local num5=LuaQueryTask("T392")
if(num5==1)then
	if(LuaQueryTask("task_kill/mon_014/T392")==11 and LuaQueryTask("task_kill/mon_015/T392")>=11)then
	CheckNpcStatusByMonItemID("T392","mon_014")
	LuaSay("���ѳɹ���ɱ10�������10����ʦ��������ȥ�ظ�����֮�ɡ�")
	LuaOtherSendMenu()
	end
	end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_014/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_014/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ���룬��ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_014/Tfjtx")==11)then
		LuaSay("��ʾ�����Ѿ�ɱ��10ֻ���룬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon10")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
----------------
return 1
end