Tbprw004_nTotalMonsterNum = 21
T800_nTotalMonsterNum =31
Txhuanxing_nTotalMonsterNum = 31
Tfjtx_nTotalMonsterNum = 31
function OnDie()

-------------------------------------------- �ʱ����� 
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_050/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220���ʱ�����@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end
------------------------------------------
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_050/Txhuanxing")==31)then
		LuaSay("���Ѿ�ɱ��30ֻ@2�ʱ�����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
-----------------------------------------
if(LuaQueryTask("T800")==1)then
	if(LuaQueryTask("task_kill/mon_050/T800")==31)then
		LuaSay("���Ѿ�ɱ��30ֻ@2�ʱ�����@0���쵽���гǽ�����ذ��Ҵ���ȡ�����ɣ�")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_050/Tfjtx")==31)then
		LuaSay("��ʾ�����Ѿ�ɱ��30ֻ�ʱ����������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon44")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
-----
-----------------------------------------
return 1
end