T425_nTotalMonsterNum = 26
T401_nTotalMonsterNum = 26
T406_nTotalMonsterNum = 26
T217_nTotalMonsterNum = 51
T200_nTotalMonsterNum = 101
T464_nTotalMonsterNum = 21
Tbp4_nTotalMonsterNum = 51
function OnDie()
if(LuaQueryTask("T425")==1) then
	local count = LuaQueryTask("task_kill/mon_017/T425")
	if(count==26) then
	CheckNpcStatusByMonItemID("T425","mon_017")
	LuaSay("���Ѿ��ɹ�������25��@2��������@0����ظ�@2������Ӫ@0��@2��վС��@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T401")==1) then
	local count = LuaQueryTask("task_kill/mon_017/T401")
	if(count==26) then
	CheckNpcStatusByMonItemID("T401","mon_017")
	LuaSay("���Ѿ��ɹ�������25��@2��������@0����ظ�@2������Ӫ@0��@2л��@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T406")==1) then
	local count = LuaQueryTask("task_kill/mon_017/T406")
	if(count==26) then
    CheckNpcStatusByMonItemID("T406","mon_017")
	LuaSay("���Ѿ��ɹ�������25��@2��������@0����ظ�@2������Ӫ@0��@2л��@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T271")==2)then
	if(LuaQueryTask("task_kill/mon_017/T271")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ��������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T200")==1)then
	if(LuaQueryTask("task_kill/mon_017/T200")==101)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��100ֻ@2��������@0�������@3������С@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_017/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ������������ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_017/Tbp4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ��������@0���쵽@2������կ@0��@3�����ܹ�@0����@2����@0��@2����@0�������")
		LuaOtherSendMenu()
	end
end
------------------------------------------
---------***��������***--------------
if(HuoDongDay()==12) then
		r=LuaRandom(40)
		if(r==1) then
		LuaGive("o_mission197",1)
		LuaShowNotify("�õ���ԭʫ��1")
		elseif(r==2) then
		LuaGive("o_mission198",1)
		LuaShowNotify("�õ���ԭʫ��2")
		elseif(r==3) then
		LuaGive("o_mission199",1)
		LuaShowNotify("�õ���ԭʫ��3")
		end
end

return 1
end

function  HuoDongDay()
nowday=GetCurrentDay()
HDday={}
HDday[1]={"2011-4-28","2011-4-29","2011-4-30","2011-5-1","2011-5-2","2011-5-3","2011-5-4"}--2011�Ͷ���
HDday[2]={"2011-6-2","2011-6-3","2011-6-4","2011-6-5","2011-6-6","2011-6-7","2011-6-8"}--2011�����
	
	if(nowday==HDday[1][1] or nowday==HDday[1][2] or nowday==HDday[1][3] or nowday==HDday[1][4] or nowday==HDday[1][5] or nowday==HDday[1][6] or nowday==HDday[1][7]) then
		return 11	--�Ͷ���
	elseif(nowday==HDday[2][1] or nowday==HDday[2][2] or nowday==HDday[2][3] or nowday==HDday[2][4] or nowday==HDday[2][5] or nowday==HDday[2][6] or nowday==HDday[2][7]) then
		return 12	--�����
	else
		return 0
	end
end