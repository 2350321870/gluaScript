Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
Tbprw004_nTotalMonsterNum = 21
T271_nTotalMonsterNum = 51
function OnDie()
-----------------------  ��ħ�� 
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_055/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220����ħ��@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end
----------------------------------------
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_055/Txhuanxing")==36)then
		LuaSay("���Ѿ�ɱ��35ֻ@2��ħ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
------------------------------------------
if(LuaQueryTask("T821")==1)then
	local r=LuaRandom(3)
	if(r==0 or r==1)then
		if(LuaItemStatusNormalCount("o_mission422")<20) then
			LuaGive("o_mission422",1)
			LuaShowNotify("�õ�1����Ƥ")
		else
			LuaSay("���Ѿ��õ���20����Ƥ�ˣ��쵽��������������峤����ȡ�����ɣ�")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_055/Tfjtx")==36)then
		LuaSay("��ʾ�����Ѿ�ɱ��35ֻ��ħ�ǣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon49")==1) then
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
if(LuaQueryTask("T271")==6)then	
	if(LuaQueryTask("task_kill/mon_055/T271")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ��ħ��")
		LuaOtherSendMenu()
	end
end
------------------------------------------
return 1
end