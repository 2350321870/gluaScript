T672_nTotalMonsterNum = 36
T664_nTotalMonsterNum = 36
Txhuanxing_nTotalMonsterNum = 26
T271_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 26
function OnDie()
local num1=LuaQueryTask("T672")
local num2=LuaQueryTask("T664")
----------------------- ���
----------------------------------------	
if(num1==1)then
	local count=LuaQueryTask("task_kill/mon_040/T672")
	if(count==36)then
		CheckNpcStatusByMonItemID("T672","mon_040")
		LuaSay("���Ѿ��ɹ�����35ֻ��䣬���κ���ȥ��Ľ������")
		LuaOtherSendMenu()
	end
end 
if(num2==1)then
	local count=LuaQueryTask("task_kill/mon_040/T664")
	if(count==36)then
		CheckNpcStatusByMonItemID("T664","mon_040")
		LuaSay("���Ѿ��ɹ�����35ֻ��䣬���κ���ȥ�һ�̫���")
		LuaOtherSendMenu()
	end
end 

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_040/Txhuanxing")==26)then
		LuaSay("���Ѿ�ɱ��25ֻ@2���@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T271")==5)then	
	if(LuaQueryTask("task_kill/mon_040/T271")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_040/Tfjtx")==26)then
		LuaSay("��ʾ�����Ѿ�ɱ��26ֻ��䣬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon36")==1) then
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