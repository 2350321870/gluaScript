T424_nTotalMonsterNum = 26
T400_nTotalMonsterNum = 26
T216_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 13
T_newycb_nTotalMonsterNum =21
Tpt4_nTotalMonsterNum = 51
function OnDie()
if(LuaQueryTask("T424")==1) then
	local count = LuaQueryTask("task_kill/mon_016/T424")
	if(count==26) then
	CheckNpcStatusByMonItemID("T424","mon_016")
	LuaSay("���Ѿ��ɹ�������25��@2��������@0����ظ�@4������Ӫ@0��@2��վС��@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T400")==1) then
	local count = LuaQueryTask("task_kill/mon_016/T400")
	if(count==26) then
	CheckNpcStatusByMonItemID("T400","mon_016")
	LuaSay("���Ѿ��ɹ�������25��@2��������@0����ظ�@4������Ӫ@0��@2л��@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_016/Txhuanxing")==13)then
		LuaSay("���Ѿ�ɱ��12ֻ@2��������@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T216")==3)then
	if(LuaQueryTask("task_kill/mon_016/T216")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ@2��������@0����˹���ն��[�]��ץ��ʱ��ظ������ǵĽ��幫���ɡ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_016/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ������������ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_016/Tpt1")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ��������@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_016/Tpt4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ��������@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_016/Tfjtx")==13)then
		LuaSay("��ʾ�����Ѿ�ɱ��12ֻ�������������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon12")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
-------------------------------------------
if(LuaQueryTask("T_newycb")==5) then
	if(LuaQueryTask("task_kill/mon_016/T_newycb") >= 21) then
  		LuaSay("���Ѿ�ɱ����@520����������@0��")
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
