T331_nTotalMonsterNum = 16
T325_nTotalMonsterNum = 11
T323_nTotalMonsterNum = 5
Thx03_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Thgz_1_nTotalMonsterNum = 41
Thgz_2_nTotalMonsterNum = 51
Tbp4_nTotalMonsterNum = 51
function OnDie()
-------------���� 
------------------------------------
if(LuaQueryTask("T331")==1) then
  if(LuaQueryTask("task_kill/mon_008/T331") == 16) then
  CheckNpcStatusByMonItemID("T331","mon_008")
  LuaSay("���Ѿ�������@215������@0")
  LuaOtherSendMenu()
  end
end

if(LuaQueryTask("T325")==1) then
  if(LuaQueryTask("task_kill/mon_008/T325") == 11) then
  CheckNpcStatusByMonItemID("T325","mon_008")
  LuaSay("���Ѿ�������@210ֻ����@0")
  LuaOtherSendMenu()
  end
end

if(LuaQueryTask("T323")==1) then
  if(LuaQueryTask("task_kill/mon_008/T323") == 6) then
  CheckNpcStatusByMonItemID("T323","mon_008")
  LuaSay("���Ѿ�������@25ֻ����@0����ȥ�ظ�@4��������@0��@3����@0��")
  LuaOtherSendMenu()
  end
end

if(LuaQueryTask("Thx03")==5)then
	if(LuaQueryTask("task_kill/mon_008/Thx03")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ����")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_008/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_008/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ��������ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------�����н�ש����
		local t
		t=LuaQueryTask("hgz_dj")
		if(t==1) then
			if(LuaQueryTask("task_kill/mon_008/Thgz_1")==2) then----ɱ��һ����
				LuaSay("�����ϵ�@2��ש����@0������ȡ@2����@0���������Ͽ�Ŭ��ɱ�ְɣ�")				
			elseif(LuaQueryTask("task_kill/mon_008/Thgz_1")==41) then
				LuaSay("��ϲ����ȡ�����ɹ�����ȥ@4�߾�@0��@2�߾�����Ա��С�壩@0��ȡ@2��ש@0�ɣ�")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------�����н�ש����
		LuaSay("������û�н�ש���ߣ����˱��ˣ���ȥ@2�����������@0@4���ҿⷿ�ܹ�@0��@2��ǽ��@0͵��һ��@2��ש����@0��@2�߾���С��@0�ɣ�")
		LuaDelTask("Thgz")
		LuaDelTask("hgz_dj")
		LuaDelTask("task_kill/mon_008/Thgz_1")---ɾ��ɱ�ּ�����
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------�����н�ש����
		local t
		t=LuaQueryTask("hgz_dj")
		if(t==2) then
			if(LuaQueryTask("task_kill/mon_008/Thgz_2")==2) then----ɱ��һ����
				LuaSay("�����ϵ�@2��ש����@0������ȡ@2����@0���������Ͽ�Ŭ��ɱ�ְɣ�")				
			elseif(LuaQueryTask("task_kill/mon_008/Thgz_2")==51) then
				LuaSay("��ϲ����ȡ�����ɹ�����ȥ@4�߾�@0��@2�߾�����Ա��С�壩@0��ȡ@2��ש@0�ɣ�")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------�����н�ש����
		LuaSay("������û�н�ש���ߣ����˱��ˣ���ȥ@2�����������@0@4���ҿⷿ�ܹ�@0��@2��ǽ��@0͵��һ��@2��ש����@0��@2�߾���С��@0�ɣ�")
		LuaDelTask("Thgz")
		LuaDelTask("hgz_dj")
		LuaDelTask("task_kill/mon_008/Thgz_2")---ɾ��ɱ�ּ�����
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_008/Tbp4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ����@0���쵽@2������կ@0��@3�����ܹ�@0����@2����@0��@2����@0�������")
		LuaOtherSendMenu()
	end
end


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
-------------����ڻ-----------------
if(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayesg")==99) then
	if(LuaQuery("level")>10 and LuaQuery("level")<=15)then
		r = LuaRandom(2)
		if(r==1)then
	  			if (LuaItemCount("o_mission521")<5) then
	     		LuaGive("o_mission521",1)
	     		elseif(LuaItemCount("o_mission521")==5) then
	     		LuaSay("���ѵõ�5����Ƥ��ȥ�ظ�@4������@0��@3Ǯׯ�ϰ�@0�ɣ�")
	     		LuaOtherSendMenu()
	     		end
		end
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