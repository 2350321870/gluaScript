T472_nTotalMonsterNum = 31
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Tbp4_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 14
function OnDie()
-------------��ˮ��

if(LuaQueryTask("T474")==1) then
	local r = LuaRandom(5)
	if(r<3)then
		if (LuaItemCount("o_mission311") < 10) then
		LuaGive("o_mission311",1)
			if(LuaItemCount("o_mission311")==10) then
			LuaSay("���ѵõ�10��@2��ˮ�Ե�@0����ظ�@2��ˮ�԰�@0��@2����@0�ɣ�")
			LuaOtherSendMenu()
			end
		end
	end
end
if(LuaQueryTask("T472")==1) then
	if(LuaQueryTask("task_kill/mon_024/T472")==31) then
	CheckNpcStatusByMonItemID("T472","mon_024")
	LuaSay("���Ѿ��ɹ�������@230����ˮ��@0����ظ�@2��ˮ�԰�@0��@2����@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_024/Txhuanxing")==14)then
		LuaSay("���Ѿ�ɱ��13��@2��ˮ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_024/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ��ˮ�ԣ���ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_024/Tbp4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ��ˮ��@0���쵽@2������կ@0��@3�����ܹ�@0����@2����@0��@2����@0�������")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_024/Tfjtx")==14)then
		LuaSay("��ʾ�����Ѿ�ɱ��13ֻ��ˮ�ԣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon18")==1) then
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
