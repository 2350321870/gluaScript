T621_nTotalMonsterNum = 31
T648_nTotalMonsterNum = 21
T627_nTotalMonsterNum = 31
Txhuanxing_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 21
function OnDie()
local num1=LuaQueryTask("T621")
local num3=LuaQueryTask("T648")

-----------------------  ҹ��

----------------------------------------
 if(num1==1) then
 if(LuaQueryTask("task_kill/mon_047/T621")==31) then
  CheckNpcStatusByMonItemID("T621","mon_047")
LuaSay("���Ѿ��ɹ�������@330ֻҹ��@0���쵽@4��Ƿ���@0��@3��Ԩ��@0�ɣ�")
LuaOtherSendMenu()
end
end


if(num3==1) then
 if( LuaQueryTask("task_kill/mon_047/T648")==21) then
 CheckNpcStatusByMonItemID("T648","mon_047")
LuaSay("���Ѿ��ɹ�������20ֻҹ��")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("T627")==1) then
 if( LuaQueryTask("task_kill/mon_047/T627")==31) then
 CheckNpcStatusByMonItemID("T627","mon_047")
LuaSay("���Ѿ��ɹ�������30ֻҹ�棬��ȥ�ظ���Ԩ����")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_047/Txhuanxing")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ@2ҹ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_047/Tfjtx")==21)then
		LuaSay("��ʾ�����Ѿ�ɱ��20ֻҹ�棬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon34")==1) then
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
