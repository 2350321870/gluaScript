T600_nTotalMonsterNum = 21
T604_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
T269_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()-----------------------  ����
local Tbprw4=LuaQueryTask("Tbprw4")
local Tbprw4_4=LuaQueryTask("Tbprw4_4")
if(LuaQueryTask("T591")==1) then
	local r=LuaRandom(10)
	if(r<7) then
		local count=LuaItemCount("o_mission309")
			if(count<20) then
				LuaGive("o_mission309",1)
				local count= LuaItemCount("o_mission309")
				if(count==20) then
					CheckNpcStatusByMonItemID("T590","o_mission309")
					LuaSay("��ʾ�����Ѿ��õ��㹻��ħ��֮Ѫ��ȥ�ظ��������ֵĹ���˰�")
					LuaOtherSendMenu()
				end
			else
			    LuaSay("��ʾ�����Ѿ��õ��㹻��ħ��֮Ѫ��ȥ�ظ��������ֵĹ���˰�")
			    LuaOtherSendMenu()
			end
	end
end
if(LuaQueryTask("T600")==1)then
	if(LuaQueryTask("task_kill/mon_031/T600")==21)then
		CheckNpcStatusByMonItemID("T600","mon_031")
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��20ֻ����")
		LuaOtherSendMenu()
	end
end  
if(LuaQueryTask("T602")==1)then
	LuaSay("����ʦ�ܹ��죬�ļƺ��أ�����С��Ϊ�")
	LuaSetTask("T602",2) 
end 
if(LuaQueryTask("T604")==1)then
	if(LuaQueryTask("task_kill/mon_031/T604")==31)then
	    CheckNpcStatusByMonItemID("T604","mon_032")
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��30ֻ��������ȥ�ظ�������ʦ�ɡ�")
		LuaOtherSendMenu()
    end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_031/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220������@0���Ͽ쵽@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0������ɣ���")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_4")==1)then
		if(LuaQueryTask("task_kill/mon_031/Tbprw4")==26)then
			LuaSay("���Ѿ��ɹ�������@325ֻ����@0���Ͽ쵽@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0������ɣ�")
			LuaOtherSendMenu()
		end
	end
end
if(LuaQueryTask("T269")==3) then
	if(LuaQueryTask("task_kill/mon_031/T269")==101) then
		LuaSay("���Ѿ��ɹ���ɱ��100ֻ@2����@0")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_031/Txhuanxing")==16)then
		LuaSay("���Ѿ�ɱ��15ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_031/Tfjtx")==16)then
		LuaSay("��ʾ�����Ѿ�ɱ��15ֻ���������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon25")==1) then
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