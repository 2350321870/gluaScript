T663_nTotalMonsterNum = 36
Tbprw004_nTotalMonsterNum = 21
T269_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 26
Tfjtx_nTotalMonsterNum = 26
function OnDie()
local num1=LuaQueryTask("T663")
----------------------- ��˧
----------------------------------------	
if(num1==1)then
	local count=LuaQueryTask("task_kill/mon_041/T663")
	if(count==36)then
		CheckNpcStatusByMonItemID("T663","mon_041")
		LuaSay("���Ѿ��ɹ�����35ֻ��˧�����κ���ȥ�һ�̫��ɣ�")
		LuaOtherSendMenu()
	end
end 

if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_041/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220����˧@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end
------------------------------------------
if(LuaQueryTask("T269")==4) then
	if(LuaQueryTask("task_kill/mon_041/T269")==101) then
		LuaSay("���Ѿ��ɹ���ɱ��100ֻ@2��˧@0")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_041/Txhuanxing")==26)then
		LuaSay("���Ѿ�ɱ��25ֻ@2��˧@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T681")==1) then
	if(LuaQueryTask("task_kill/mon_041/T269")==36) then
		CheckNpcStatusByMonItemID("T681","mon_041")
		LuaSay("���Ѿ��ɹ���ɱ��35ֻ@2��˧@0����ȥ�ظ�@3��̫��@0�ɣ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("T692")==1)then
local r = LuaRandom(5)
  if(r<4)then
   if (LuaItemCount("o_mission359") < 20) then
     LuaGive("o_mission359",1)
     if(LuaItemCount("o_mission359")>=20) then
     CheckNpcStatusByMonItemID("T692","o_mission359")
     LuaSay("���ѵõ�@220������@0��ȥ�ظ�@4̫��ɽ��@0��@3ʯԽ@0��")
     LuaOtherSendMenu()
     end
   end
  end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_041/Tfjtx")==26)then
		LuaSay("��ʾ�����Ѿ�ɱ��26ֻ��˧�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon37")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

---------------------------------------
return 1
end