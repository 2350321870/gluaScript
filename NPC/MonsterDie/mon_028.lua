T560_nTotalMonsterNum =31
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local num1=LuaQueryTask("T560")
-----------------------------------------
if(num1==1) then
local count = LuaQueryTask("task_kill/mon_028/T560")
 if(count==31) then
 CheckNpcStatusByMonItemID("T560","mon_028")
LuaSay("���Ѿ��ɹ�������30ֻ���ޣ��뵽μˮ֮����Ҧ�ɽ������")
LuaOtherSendMenu()
end
end
if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_0")==1)then
		if(LuaQueryTask("task_kill/mon_028/Tbprw4")==26)then
			LuaSay("���Ѿ��ɹ�������@325ֻ����@0���Ͽ쵽@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0������ɣ�")
			LuaOtherSendMenu()
		end
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_028/Txhuanxing")==16)then
		LuaSay("���Ѿ�ɱ��15ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_028/Tfjtx")==16)then
		LuaSay("��ʾ�����Ѿ�ɱ��15ֻ���ޣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon22")==1) then
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

