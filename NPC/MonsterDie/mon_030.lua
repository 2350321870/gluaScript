 T587_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 16
T216_nTotalMonsterNum = 51
Thgz_5_nTotalMonsterNum = 41
Thgz_6_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 16
function OnDie()

local num1=LuaQueryTask("T560")
local Tbprw4=LuaQueryTask("Tbprw4")
local Tbprw4_1=LuaQueryTask("Tbprw4_1")


------------------------------
local num1=LuaQueryTask("T587")

-----------------------


 if(num1==1) then
local count = LuaQueryTask("task_kill/mon_030/T587")
 if(count==21) then
 CheckNpcStatusByMonItemID("T587","mon_030")
LuaSay("���Ѿ��ɹ�������@320ֻ��Ҷ��@0���Ͽ�ظ��������ֵ�@3�������@0��")
LuaOtherSendMenu()
end
end

-----------------------
if(LuaQueryTask("T583")==1) then
  	local r = LuaRandom(10)
  	if(r<7)then
  		if (LuaItemCount("o_mission326") < 10) then
     		LuaGive("o_mission326",1)
     	if(LuaItemCount("o_mission326")==10) then
     	    CheckNpcStatusByMonItemID("T583","o_mission326")
     		LuaSay("���ѵõ�10����Ҷ���ۡ�")
     		LuaOtherSendMenu()
     	end
	end
end
end




if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_1")==1)then
		if(LuaQueryTask("task_kill/mon_030/Tbprw4")==26)then
			LuaSay("���Ѿ��ɹ�������@325ֻ�����@0���Ͽ쵽@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0������ɣ�")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_030/Txhuanxing")==16)then
		LuaSay("���Ѿ�ɱ��15ֻ@2�����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end



if(LuaQueryTask("T216")==6)then
	if(LuaQueryTask("task_kill/mon_030/T216")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ@2�����@0����˹���ն��[�]��ץ��ʱ��ظ������ǵĽ��幫���ɡ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------�����н�ש����
		local t=LuaQueryTask("hgz_dj")
		if(t==5) then
			if(LuaQueryTask("task_kill/mon_030/Thgz_5")==2) then----ɱ��һ����
				LuaSay("�����ϵ�@2��ש����@0������ȡ@2�����@0���������Ͽ�Ŭ��ɱ�ְɣ�")				
			elseif(LuaQueryTask("task_kill/mon_030/Thgz_5")==41) then
				LuaSay("��ϲ���@2��ש����@0��ȡ�����ɹ�����ȥ@4�߾�@0��@2�߾�����Ա��С�壩@0��ȡ@2��ש@0�ɣ�")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------�����н�ש����
		LuaSay("������û�н�ש���ߣ����˱��ˣ���ȥ@2�����������@0@4���ҿⷿ�ܹ�@0��@2��ǽ��@0͵��һ��@2��ש����@0��@2�߾���С��@0�ɣ�")
		LuaDelTask("task_kill/mon_030/Thgz_5")---ɾ��ɱ�ּ�����
		LuaDelTask("hgz_dj")
		LuaDelTask("Thgz")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------�����н�ש����
		local t=LuaQueryTask("hgz_dj")
		if(t==6) then
			if(LuaQueryTask("task_kill/mon_030/Thgz_6")==2) then----ɱ��һ����
				LuaSay("�����ϵ�@2��ש����@0������ȡ@2�����@0���������Ͽ�Ŭ��ɱ�ְɣ�")				
			elseif(LuaQueryTask("task_kill/mon_030/Thgz_6")==51) then
				LuaSay("��ϲ���@2��ש����@0��ȡ�����ɹ�����ȥ@4�߾�@0��@2�߾�����Ա��С�壩@0��ȡ@2��ש@0�ɣ�")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------�����н�ש����
		LuaSay("������û�н�ש���ߣ����˱��ˣ���ȥ@2�����������@0@4���ҿⷿ�ܹ�@0��@2��ǽ��@0͵��һ��@2��ש����@0��@2�߾���С��@0�ɣ�")
		LuaDelTask("task_kill/mon_030/Thgz_6")---ɾ��ɱ�ּ�����
		LuaDelTask("hgz_dj")
		LuaDelTask("Thgz")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_030/Tfjtx")==16)then
		LuaSay("��ʾ�����Ѿ�ɱ��15ֻ����������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon24")==1) then
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

