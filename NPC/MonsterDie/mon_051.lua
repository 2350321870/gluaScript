Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 31
Tfjtx_nTotalMonsterNum = 31
T216_nTotalMonsterNum = 51
function OnDie()

---------------------------------------------  ��Ы 
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_051/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220����Ы@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_051/Txhuanxing")==31)then
		LuaSay("���Ѿ�ɱ��30ֻ@2��Ы@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
-----------------------------------------
if(LuaQueryTask("T801")==1)then
	local r=LuaRandom(3)
	if(r==0 or r==1)then
		if(LuaItemStatusNormalCount("o_mission420")<20) then
			LuaGive("o_mission420",1)
			LuaShowNotify("�õ�1����Ы��")
		else
			LuaSay("���Ѿ��õ���20����Ы���ˣ��쵽���гǽ�����ذ��Ҵ���ȡ�����ɣ�")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_051/Tfjtx")==31)then
		LuaSay("��ʾ�����Ѿ�ɱ��30ֻ��Ы�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon45")==1) then
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
if(LuaQueryTask("T216")==8)then
	if(LuaQueryTask("task_kill/mon_035/T216")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ@2��Ы@0����˹���ն��[�]��ץ��ʱ��ظ������ǵĽ��幫���ɡ�")
		LuaOtherSendMenu()
	end
end
------------------------------------------
return 1
end