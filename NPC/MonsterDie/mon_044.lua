T713_nTotalMonsterNum = 21
T715_nTotalMonsterNum = 21
Tbprw6_nTotalMonsterNum = 16
Txhuanxing_nTotalMonsterNum = 26
Tbp4_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 26
function OnDie()
-----------------------  ����ʬ 
----------------------------------------
if(LuaQueryTask("T713")==1)then
		if(LuaQueryTask("task_kill/mon_044/T713")==21 and LuaQueryTask("task_kill/mon_045/T713")>=21)then
		CheckNpcStatusByMonItemID("T713","mon_044")
		LuaSay("���Ѿ�ɱ����20������ʬ��20��Ѫ��ʬ����ȥ�ظ����������Ĺ���˰ɣ�")
		LuaOtherSendMenu()
		end
		end

if(LuaQueryTask("T715")==1)then
		if(LuaQueryTask("task_kill/mon_044/T715")==21 and LuaQueryTask("task_kill/mon_045/T715")>=21)then
		CheckNpcStatusByMonItemID("T715","mon_044")
		LuaSay("���Ѿ�ɱ����20������ʬ��20��Ѫ��ʬ����ȥ�ظ����������Ĺ���˰ɣ�")
		LuaOtherSendMenu()
		end
		end
if(LuaQueryTask("Tbprw6")==1)then
	if(LuaQueryTask("task_kill/mon_044/Tbprw6")==16 and LuaQueryTask("task_kill/mon_042/Tbprw6")>=16)then
		LuaSay("���Ѿ�������@315������ʬ@0����ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɡ�")
	elseif(LuaQueryTask("task_kill/mon_044/Tbprw6")==16 and LuaQueryTask("task_kill/mon_042/Tbprw6")<16)then
		LuaSay("@3����ʬ@0�ѽ����ˣ���ȥ@4������@0ɱ15��@3���@0�ɣ�")
	end
	LuaOtherSendMenu()
end

if(LuaQueryTask("Tbprw11_2")==2)then
	if (LuaItemCount("o_mission407") < 10) then
		local r = LuaRandom(3)
		if(r==1)then
     		LuaGive("o_mission407",1)
		end
	end
    if(LuaItemCount("o_mission407")==10) then
     	LuaSay("���ѵõ�@310����ʬ��ͷ@0����ȥ��@4������Ĺ@0��@3����@0�ɡ�")
     	LuaOtherSendMenu()
    end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_044/Txhuanxing")==26)then
		LuaSay("���Ѿ�ɱ��25ֻ@2����ʬ@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_044/Tbp4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ����ʬ@0���쵽@2������կ@0��@3�����ܹ�@0����@2����@0��@2����@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_044/Tfjtx")==26)then
		LuaSay("��ʾ�����Ѿ�ɱ��26ֻ����ʬ�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon40")==1) then
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