T441_nTotalMonsterNum = 26
T445_nTotalMonsterNum = 26
Tbprw3_nTotalMonsterNum = 21
T216_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Thgz_3_nTotalMonsterNum = 41
Tfjtx_nTotalMonsterNum = 13
function OnDie() -------����ʿ��2
 if(LuaQueryTask("T441")==1) then
	local count = LuaQueryTask("task_kill/mon_020/T441")
	if(count==26) then
	    CheckNpcStatusByMonItemID("T441","mon_020")
		LuaSay("���Ѿ�����25�����񣬿�ظ�@4��Ӫǰ��@0��л���ɣ�")
		LuaOtherSendMenu()
	end
end
 if(LuaQueryTask("T445")==1) then
	local count = LuaQueryTask("task_kill/mon_020/T445")
	if(count==26) then
	    CheckNpcStatusByMonItemID("T445","mon_020")
		LuaSay("���Ѿ�����25�����񣬿�ظ�@4��Ӫǰ��@0��л���ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw3")==1) then
	if(LuaQueryTask("task_kill/mon_020/Tbprw3")==21) then
		LuaSay("���Ѿ��ɹ�������@320������@0���Ͽ�ظ�@4����@0��@3����@0�ɻ���@4������կ@0��@3�����ܹ�@0��")	
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_020/Txhuanxing")==13)then
		LuaSay("���Ѿ�ɱ��12ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T216")==4)then
	if(LuaQueryTask("task_kill/mon_020/T216")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ@2����@0��ץ��ʱ��Ŷ��")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_020/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ���񣬿�ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------�����н�ש����
		local t=LuaQueryTask("hgz_dj")
		if(t==3) then
			if(LuaQueryTask("task_kill/mon_020/Thgz_3")==2) then----ɱ��һ����
				LuaSay("�����ϵ�@2��ש����@0������ȡ@2����@0���������Ͽ�Ŭ��ɱ�ְɣ�")				
			elseif(LuaQueryTask("task_kill/mon_020/Thgz_3")==41) then
				LuaSay("��ϲ���@2��ש����@0��ȡ�����ɹ�����ȥ@4�߾�@0��@2�߾�����Ա��С�壩@0��ȡ@2��ש@0�ɣ�")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------�����н�ש����
		LuaSay("������û�н�ש���ߣ����˱��ˣ���ȥ@2�����������@0@4���ҿⷿ�ܹ�@0��@2��ǽ��@0͵��һ��@2��ש����@0��@2�߾���С��@0�ɣ�")
		LuaDelTask("hgz_dj")
		LuaDelTask("task_kill/mon_020/Thgz_3")---ɾ��ɱ�ּ�����
		LuaDelTask("Thgz")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_020/Tfjtx")==13)then
		LuaSay("��ʾ�����Ѿ�ɱ��12ֻ�������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon14")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
return 1
end
