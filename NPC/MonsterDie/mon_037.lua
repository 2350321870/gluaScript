Txhuanxing_nTotalMonsterNum = 21
Tbp4_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 21
function OnDie()
----------------------- ��ʯ��
----------------------------------------
if(LuaQueryTask("T654")==1)then
local r = LuaRandom(5)
  if(r<4)then
   if (LuaItemCount("o_mission324") < 5) then
     LuaGive("o_mission324",1)
     if(LuaItemCount("o_mission324")>=5) then
     CheckNpcStatusByMonItemID("T654","o_mission324")
     LuaSay("���ѵõ�@25����ʯ֮��@0��ȥ�ظ�@4̫��ɽ��@0��@3ʯԽ@0��")
     LuaOtherSendMenu()
     end
   end
  end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_037/Txhuanxing")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ@2��ʯ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_037/Tbp4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ��ʯ��@0���쵽@2������կ@0��@3�����ܹ�@0����@2����@0��@2����@0�������")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_037/Tfjtx")==21)then
		LuaSay("��ʾ�����Ѿ�ɱ��20ֻ��ʯ�ˣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon31")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
------------------------------------------
return 1
end
