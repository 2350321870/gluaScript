T611_nTotalMonsterNum = 21
T615_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Tbprw4_nTotalMonsterNum = 16
Txhuanxing_nTotalMonsterNum = 17
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 17
Tpt4_nTotalMonsterNum = 51
function OnDie()
local num1=LuaQueryTask("T611")
local Tbprw4=LuaQueryTask("Tbprw4")
local Tbprw4_3=LuaQueryTask("Tbprw4_3")
-----------------------
if(num1==1) then
	local count = LuaQueryTask("task_kill/mon_033/T611")
	if(count==21) then
	    CheckNpcStatusByMonItemID("T611","mon_033")
		LuaSay("���Ѿ��ɹ�������20ֻʬ��")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T615")==1) then
	local count = LuaQueryTask("task_kill/mon_033/T615")
	if(count==31) then
	    CheckNpcStatusByMonItemID("T615","mon_033")
		LuaSay("���Ѿ��ɹ�������30ֻʬ�棬��ȥ�ظ�������ɡ�")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_3")==1)then
		if(LuaQueryTask("task_kill/mon_033/Tbprw4")==26)then
			LuaSay("���Ѿ��ɹ�������@325��ʬ��@0���Ͽ쵽@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0������ɣ�")
			LuaOtherSendMenu()
		end
	end
end


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_033/Txhuanxing")==17)then
		LuaSay("���Ѿ�ɱ��16ֻ@2ʬ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_033/Tpt1")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻʬ��@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_033/Tpt4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻʬ��@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_033/Tfjtx")==17)then
		LuaSay("��ʾ�����Ѿ�ɱ��16ֻʬ�棬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon27")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
-----------------------------------------
return 1
end

