T332_nTotalMonsterNum = 7
T354_nTotalMonsterNum = 21
T351_nTotalMonsterNum = 21
Thx03_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()
-------------��ʦ�˱� 
------------------------------------
if(LuaQueryTask("T332")==1) then
  if(LuaQueryTask("task_kill/mon_011/T332") == 7) then
  CheckNpcStatusByMonItemID("T332","mon_011")
  LuaSay("���Ѿ�������6����ʦ�˱�����ȥ�ظ�@4��������@0��@3����@0�ɡ�")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("T354")==1)then
	if(LuaQueryTask("task_kill/mon_011/T354")==21)then
	    CheckNpcStatusByMonItemID("T354","mon_011")
	    LuaSay("���Ѿ��������20����ʦ�˱������ȥ����@4�嶷ɽ@0��@3����@0�ɣ�")
	    LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T351")==1)then
	if(LuaQueryTask("task_kill/mon_011/T351")==21)then
	    CheckNpcStatusByMonItemID("T351","mon_011")
	    LuaSay("���Ѿ��������20����ʦ�˱������ȥ����@4�嶷ɽ@0��@3����@0�ɣ�")
	    LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T369")==1) then
  local r = LuaRandom(10)	
  if(r<4)then
   if (LuaItemCount("o_mission007") < 1) then
     LuaGive("o_mission007",1)
     if(LuaItemCount("o_mission007")>=1) then
     CheckNpcStatusByMonItemID("T369","o_mission007")
     LuaSay("���ѵõ�����@2а����¼@0��ȥ�ظ�@4�嶷ɽ@0��@3��ʦ��ͽ@0��")
     LuaOtherSendMenu()
     end
     end
  end
end
if(LuaQueryTask("T368")>0 and LuaQueryTask("T368")<99) then
	local r = LuaRandom(5)	
	if(r==0)then
		LuaSetTask("T368A",99)
		LuaSet("hp",0)
		FlushMyInfo("0")
		LuaSay("��ʾ�����ں���ʦ��ͽ�Ľ�̸�����У��ܵ���а�����䣬����ʦ�˱�ֱ��ɱ���ˡ�")
		LuaSay("��ʾ����Ҫ���а�����䣬�ǾͿ�ȥ��@4�嶷ɽ@0@3��ʦ��ͽ@0�ɡ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Thx03")==6)then
	if(LuaQueryTask("task_kill/mon_0011/Thx03")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ��ʦ�˱�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_011/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2��ʦ�˱�@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_011/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ��ʦ�˱�����ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_011/Tfjtx")==11)then
		LuaSay("��ʾ�����Ѿ�ɱ��10ֻ��ʦ�˱������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon6")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
  -----------------------------------
return 1
end