T462_nTotalMonsterNum = 26
T452_nTotalMonsterNum = 26
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 14
function OnDie()-------------��ˮ��
if(LuaQueryTask("T462")==1) then
	local count = LuaQueryTask("task_kill/mon_021/T462")
	if(count==26) then
	CheckNpcStatusByMonItemID("T462","mon_021")
	LuaSay("���Ѿ��ɹ�������25��@2��ˮ��@0����ظ�@2��ˮ֮��@0��@2��ǫ@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T450")==1) then
	local r = LuaRandom(4)
	if(r<3)then
		if (LuaItemCount("o_mission364") < 15) then
		LuaGive("o_mission364",1)
			if(LuaItemCount("o_mission364")==15) then
			CheckNpcStatusByMonItemID("T450","o_mission364")
			LuaSay("���ѵõ�15��@2��ˮ����@0����ظ�@2��ˮ֮��@0��@2����֮@0�ɣ�")
			LuaOtherSendMenu()
			end
		end
	end
end
if(LuaQueryTask("T452")==1) then
	local count = LuaQueryTask("task_kill/mon_021/T452")
	if(count==26) then
	CheckNpcStatusByMonItemID("T452","mon_021")
	LuaSay("���Ѿ��ɹ�������25��@2��ˮ��@0����ظ�@2��ˮ֮��@0��@2����֮@0�ɣ�")
	LuaOtherSendMenu()
	end

end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_021/Txhuanxing")==14)then
		LuaSay("���Ѿ�ɱ��13ֻ@2��ˮ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_021/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ��ˮ������ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_021/Tfjtx")==14)then
		LuaSay("��ʾ�����Ѿ�ɱ��13ֻ��ˮ�������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon15")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
------------------------�����------------------------
if(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayesg")==99) then
	if(LuaQuery("level")>=30)then
	r = LuaRandom(3)
	if(r==1)then
  		if (LuaItemCount("o_mission523")<5) then
     		LuaGive("o_mission523",1)
     		elseif(LuaItemCount("o_mission523")==5) then
     		LuaSay("���ѵõ�5������Ƥ��ȥ�ظ�@4������@0��@3Ǯׯ�ϰ�@0�ɣ�")
     		LuaOtherSendMenu()
     		end
	end
	end
end 
------------------------------------------
return 1
end