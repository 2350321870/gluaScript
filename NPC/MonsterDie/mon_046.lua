--T632_nTotalMonsterNum = 71
T731_nTotalMonsterNum = 31
T623_nTotalMonsterNum = 31
T648_nTotalMonsterNum = 21
T743_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 21

function OnDie()
local num1=LuaQueryTask("T731")
local num2=LuaQueryTask("T623")
local num3=LuaQueryTask("T648")
-----------------------  �Ի�
---------------------------------------
--[[if(LuaQueryTask("T632")==1)then
	if(LuaQueryTask("task_kill/mon_046/T632")>=71)then
	LuaSay("���Ѿ�������@270���Ի�@0����ȥ�ظ�@4̫�йž�@0��@3Ľ�ݴ�@0�ɡ�")
	LuaOtherSendMenu()
	end
end]]








 if(num1==1) then
 if(LuaQueryTask("task_kill/mon_046/T731")>=31) then
 CheckNpcStatusByMonItemID("T731","mon_046")
LuaSay("���Ѿ��ɹ�������@330ֻ�Ի�@0����ظ�@4����ؿ�@0��@3�ذ���@0��")
LuaOtherSendMenu()
end
end

 if(num2==1) then
 if(LuaQueryTask("task_kill/mon_046/T623")>=31) then
 CheckNpcStatusByMonItemID("T623","mon_046")
LuaSay("���Ѿ��ɹ�������@330@0ֻ�Ի�,��ظ���Ƿ������Ԩ����")
LuaOtherSendMenu()
end
end

if(num3==1) then
 if(LuaQueryTask("task_kill/mon_046/T648")>=21) then
 CheckNpcStatusByMonItemID("T648","mon_046")
LuaSay("���Ѿ��ɹ�������20ֻ�Ի�")
LuaOtherSendMenu()
end
end


if(LuaQueryTask("T734")==1)then
local r = LuaRandom(10)
  if(r<2)then
   if (LuaItemCount("o_mission300") < 2) then
     LuaGive("o_mission300",1)
     if(LuaItemCount("o_mission300")>=2) then
     LuaSay("���ѵõ�@3����Ի���@0��ȥ�ظ�@4����ؿ�@0��@3�ذ���@0��")
     LuaOtherSendMenu()
     end
   end
  end
end

if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_046/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220���Ի�@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_046/Txhuanxing")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ@2�Ի�@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T743")==1) then
 if( LuaQueryTask("task_kill/mon_046/T743")==31) then
 CheckNpcStatusByMonItemID("T743","mon_046")
LuaSay("���Ѿ��ɹ�������@330ֻ�Ի�@0����ȥ��@4����ؿ�@0��@3��������@0�ɣ�")
LuaOtherSendMenu()
end
end



if(LuaQueryTask("Tbprw5")==1) then
	local r = LuaRandom(2)
	if(r==1)then
  		if (LuaItemCount("o_mission400") < 10) then
     		LuaGive("o_mission400",1)
     		elseif(LuaItemCount("o_mission400")>=10) then
     		LuaSay("���ѵõ�10���Ի���צ�ӣ�ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
     		LuaOtherSendMenu()
     	end
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_046/Tfjtx")==21)then
		LuaSay("��ʾ�����Ѿ�ɱ��20ֻ�Ի������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon33")==1) then
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
