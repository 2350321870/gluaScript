T506_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local num1=LuaQueryTask("T506")
local num2=LuaQueryTask("T571")
-----------------------  ص��սʿ
 if(num2==1) then
	local count = LuaQueryTask("task_kill/mon_027/T571") 
	if(count==21) then
		CheckNpcStatusByMonItemID("T571","mon_027")
		LuaSay("���Ѿ��ɹ�������20ֻص��սʿ���Ͽ�ظ�@4μˮ֮��@0��@3����@0��")
		LuaOtherSendMenu()
	end
end
---------------------------
 if(num1==1) then
	local count = LuaQueryTask("task_kill/mon_027/T506") 
	if(count==31) then
		CheckNpcStatusByMonItemID("T506","mon_027")
		LuaSay("���Ѿ��ɹ�������30ֻص��սʿ���Ͽ�ظ������ǵķ����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_027/Tbprw004")==21)then
	LuaSay("���Ѿ�������@220��ص��սʿ@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_027/Txhuanxing")==16)then
		LuaSay("���Ѿ�ɱ��15ֻ@2ص��սʿ@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_027/Tfjtx")==16)then
		LuaSay("��ʾ�����Ѿ�ɱ��15ֻص��սʿ�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon21")==1) then
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

