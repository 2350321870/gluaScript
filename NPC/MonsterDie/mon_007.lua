T325_nTotalMonsterNum = 11
Thx03_nTotalMonsterNum = 51
T331_nTotalMonsterNum = 16
T324_nTotalMonsterNum = 13
Tbprw004_nTotalMonsterNum = 21
T271_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 11
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 11
Tpt4_nTotalMonsterNum = 51
function OnDie()
if(LuaQueryTask("Txc_baoz")==1) then
	local r=LuaRandom(15)
		if(r==2) then
			if(LuaItemStatusNormalCount("o_mission284")<1) then
				LuaGive("o_mission284",1,"Txinchun")
				LuaSay("��õ�@5һ������������@0")
				LuaOtherSendMenu()
			elseif(LuaItemStatusNormalCount("o_mission284")==1) then
				LuaSay("���Ѿ��õ���@5һ������������@0")
				LuaOtherSendMenu() 
			end
		end
end
if(LuaQueryTask("T276")==1) then
	if (LuaItemCount("o_mission003") < 10) then
		LuaGive("o_mission003",1)
		--[[if(LuaItemCount("o_mission003")==1) then
			local a = LuaQueryItemID(4,"o_mission003","wangzhubu")
			SendCommand("call=��ϲ���õ�һ��������ߣ��ռ���10���Ϳ���ȥ��������Ŷ��|2|0|0|8|"..a.."")	
			LuaOtherSendMenu()
		end]]
		if(LuaItemCount("o_mission003")==10) then
			CheckNpcStatusByMonItemID("T276","o_mission003")
			LuaSay("���ѵõ�@210ֻ���֮��@0��ȥ�ظ�@4��������@0��@3��ԣ@0��")
			LuaOtherSendMenu()
		end
	end
end
if(LuaQueryTask("T325")==1) then
  if(LuaQueryTask("task_kill/mon_007/T325") == 11) then
  CheckNpcStatusByMonItemID("T325","mon_007")
  LuaSay("���Ѿ�������@210ֻ���@0")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("Thx03")==4)then
	if(LuaQueryTask("task_kill/mon_007/Thx03")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T331")==1) then
  if(LuaQueryTask("task_kill/mon_007/T331") == 16) then
  CheckNpcStatusByMonItemID("T331","mon_007")
  LuaSay("���Ѿ�������@215ֻ���@0")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("T324")==1) then
  if(LuaQueryTask("task_kill/mon_007/T324") == 13) then
  LuaSay("���Ѿ�������@212ֻ���@0����ȥ�ظ�@4��������@0��@3����@0��")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_007/Tbprw004")==21)then
	LuaSay("���Ѿ�������@220ֻ���@0����ȥ�ظ�@4����@0��@3����@0��")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T271")==1)then
	if(LuaQueryTask("task_kill/mon_007/T271")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_007/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2���@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_007/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ��ƣ���ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end	
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_007/Tpt1")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ���@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_007/Tpt4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ���@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_007/Tfjtx")==11)then
		LuaSay("��ʾ�����Ѿ�ɱ��10ֻ��ƣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon4")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
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