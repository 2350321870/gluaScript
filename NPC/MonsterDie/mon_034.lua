T611_nTotalMonsterNum = 21
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 17
Tbp4_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 17
function OnDie()
local num1=LuaQueryTask("T611")
-----------------------
if(num1==1) then
	local count = LuaQueryTask("task_kill/mon_034/T611")
	if(count==21) then
	    CheckNpcStatusByMonItemID("T611","mon_034")
		LuaSay("���Ѿ��ɹ�������20ֻ���ޱ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_034/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220�����ޱ�@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_034/Txhuanxing")==17)then
		LuaSay("���Ѿ�ɱ��16ֻ@2���ޱ�@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_034/Tbp4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ���ޱ�@0���쵽@2������կ@0��@3�����ܹ�@0����@2����@0��@2����@0�������")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_033/Tfjtx")==17)then
		LuaSay("��ʾ�����Ѿ�ɱ��16ֻ���ޱ������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon28")==1) then
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