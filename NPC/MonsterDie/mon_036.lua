T656_nTotalMonsterNum = 11
T645_nTotalMonsterNum = 21
T649_nTotalMonsterNum = 31
T200_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 21
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 21
Tpt4_nTotalMonsterNum = 51
function OnDie()
local num1=LuaQueryTask("T645")
-----------------------  ���ƾ���
----------------------------------------
if(num1==1) then
	local r=LuaRandom(9)
	if(r<7) then
		if(LuaItemCount("o_mission354")<20)then
			LuaGive("o_mission354",1)
			if(LuaItemCount("o_mission354")==20)then
				CheckNpcStatusByMonItemID("T645","o_mission354")
				LuaSay("���Ѿ��ռ�����@420�����ƴ�@0����ȥ��@3Ľ����@0�����ɣ�")
				LuaOtherSendMenu()
			end
		end
	end
end 		
----------------------------------------
if(LuaQueryTask("T656")==1)then
if(LuaQueryTask("task_kill/mon_036/T656")==11)then
CheckNpcStatusByMonItemID("T656","mon_036")
LuaSay("���Ѿ�ɱ��@310ֻ���ƾ���@0�ˣ���ȥ�ظ�@4̫��ɽ��@0��@3ʯԽ@0�ɣ�")
LuaOtherSendMenu()
end
end

--if(LuaQuery("T645")==1) then
    -- if(LuaQuery("task_kill/mon_036/T645")==21) then
    -- LuaSay("������20ֻ���ƾ��飬��ȥ�ظ�@3̫�йž�@0��@2Ľ�����@0��")
     --LuaOtherSendMenu()
     --end
--end
	
if(LuaQueryTask("T649")==1)then
if(LuaQueryTask("task_kill/mon_036/T649")==31)then
CheckNpcStatusByMonItemID("T649","mon_036")
LuaSay("���Ѿ�ɱ��@330ֻ���ƾ���@0�ˣ�ȥ�ظ�@4̫�йž�@0��@3Ľ����@0�ɣ�")
LuaOtherSendMenu()
end
end





if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_036/Txhuanxing")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ@2���ƾ���@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T200")==4)then
	if(LuaQueryTask("task_kill/mon_036/T200")==101)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��100ֻ@2���ƾ���@0�������@3������С@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_036/Tpt1")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ���ƾ���@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_036/Tpt4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ���ƾ���@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_036/Tfjtx")==21)then
		LuaSay("��ʾ�����Ѿ�ɱ��20ֻ���ƾ��飬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon30")==1) then
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