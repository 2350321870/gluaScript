T582_nTotalMonsterNum =31
Txhuanxing_nTotalMonsterNum = 16
T271_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local T582=LuaQueryTask("T582")

local num1=LuaQueryTask("T560")
local Tbprw4=LuaQueryTask("Tbprw4")
local Tbprw4_2=LuaQueryTask("Tbprw4_2")

if(LuaQueryTask("T582")==1) then
		LuaQueryTask("T582")count = LuaQueryTask("task_kill/mon_032/T582") 
 	if(count==31) then
 	    CheckNpcStatusByMonItemID("T582","mon_032")
		LuaSay("���Ѿ��ɹ�������30ֻ���ã��Ͽ�ظ��������ֵ�������ʰ�")
		LuaOtherSendMenu()
	end
end
-----------------------  ����
if(LuaQueryTask("T592")==1) then
  LuaQueryTask("T582")r = LuaRandom(10)
  if(r<1)then
   	if (LuaItemCount("o_mission310") ==0) then
		LuaGive("o_mission310",1)
     		if(LuaItemCount("o_mission310")==1) then
     			LuaSay("���ѵõ�Ѫ�飬��ȥ���������ֵĹ���ˡ�")
     			LuaOtherSendMenu()
    		end
    end
  end

end
if(LuaQueryTask("T600")==1)then
	if(LuaQueryTask("task_kill/mon_032/T600")>=21)then
	    CheckNpcStatusByMonItemID("T600","mon_032")
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��20ֻ����")
		LuaOtherSendMenu()
    end
end

if(LuaQueryTask("T602")==2)then
	LuaSay("����ʦ��а�񣬺ܰ��࣬����С��Ϊ�")
	LuaSetTask("T602",3)
	UpdateMenu()
end 

if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_2")==1)then
		if(LuaQueryTask("task_kill/mon_032/Tbprw4")==26)then
			LuaSay("���Ѿ��ɹ�������@325ֻ����@0���Ͽ쵽@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0������ɣ�")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_032/Txhuanxing")==16)then
		LuaSay("���Ѿ�ɱ��15ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T271")==4)then
	if(LuaQueryTask("task_kill/mon_032/T271")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ����")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_032/Tfjtx")==16)then
		LuaSay("��ʾ�����Ѿ�ɱ��15ֻ���ã����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon26")==1) then
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