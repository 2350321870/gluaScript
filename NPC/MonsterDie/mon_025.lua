T490_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 16
Thgz_4_nTotalMonsterNum = 41
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local T562=LuaQueryTask("T562")

------------------------------------------
if(LuaQueryTask("T562")==0) then                    --------------��������
	if(LuaQuery("level")>30) then              ----------��һ������
		local r = LuaRandom(10)                       --------��������
		if(r==0)then
			LuaSay("ص���ڱ����������ס�֣�������Ϣ���ߴ����㡣һ��������Ҧ��վ�ڵ�ʱ�򿴼�Ҧ�ɵ������������������Ҿ��������ȣ�������������ȥ")
			LuaSay("ص���ڱ�����ΪҦ�ɾ�ս�ܣ�Ҧ������������������ı������������޼Ὣ������ɱ�޼Ὣ�����ҽ�ȥ����ײ��")
			LuaSay(""..LuaQueryStr("name").."����Ȼ������£������ȥ��@3Ҧ��@0�ʸ������")
			LuaSetTask("T562",1)
   			AddLog("Ҧ�ɵ���ı�����顿",T562)
  			UpdateNPCMenu("yaochang")
   			LuaSendMenu()
        end
    end
end

if(LuaQueryTask("T533")==1) then
  local r = LuaRandom(10)	
  if(r<2)then
   if (LuaItemCount("o_mission342") < 1) then
     LuaGive("o_mission342",1)
     if(LuaItemCount("o_mission342")>=1) then 
     LuaSay("��õ��˻��뽣��ɱ��@210��ص���ڱ�@0��ȥ��������������������˰�")
     LuaOtherSendMenu()
     end
     end
  end
end
if(LuaQueryTask("T533")==1) then
	if(LuaQueryTask("task_kill/mon_025/T533") == 11) then
         CheckNpcStatusByMonItemID("T533","mon_025")
 		 LuaSay("���Ѿ�������@210��ص���ڱ�@0����ȥ��@3��������@0��")
 		 LuaSetTask("T533",1)
  		 LuaOtherSendMenu()
	end
end
--------------------------------------- ���ڵĿ���
if(LuaQueryTask("T490")==1) then
	local count= LuaQueryTask("task_kill/mon_025/T490",1)
	if(count==31) then
	    CheckNpcStatusByMonItemID("T490","mon_025")
		LuaSay("���Ѿ��ɹ�������30ֻ@3ص���ڱ�@0���Ͽ�ظ���������ķ��ڰ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_025/Tbprw004")==21)then
	LuaSay("���Ѿ�������@220��ص���ڱ�@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_025/Txhuanxing")==16)then
		LuaSay("���Ѿ�ɱ��15ֻ@2ص���ڱ�@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------�����н�ש����
		local t=LuaQueryTask("hgz_dj")
		if(t==4) then
			if(LuaQueryTask("task_kill/mon_025/Thgz_4")==2) then----ɱ��һ����
				LuaSay("�����ϵ�@2��ש����@0������ȡ@2ص���ڱ�@0���������Ͽ�Ŭ��ɱ�ְɣ�")				
			elseif(LuaQueryTask("task_kill/mon_025/Thgz_4")==41) then
				LuaSay("��ϲ���@2��ש����@0��ȡ�����ɹ�����ȥ@4�߾�@0��@2�߾�����Ա��С�壩@0��ȡ@2��ש@0�ɣ�")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------�����н�ש����
		LuaSay("������û�н�ש���ߣ����˱��ˣ���ȥ@2�����������@0@4���ҿⷿ�ܹ�@0��@2��ǽ��@0͵��һ��@2��ש����@0��@2�߾���С��@0�ɣ�")
		LuaDelTask("task_kill/mon_025/Thgz_4")---ɾ��ɱ�ּ�����
		LuaDelTask("hgz_dj")
		LuaDelTask("Thgz")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_025/Tfjtx")==16)then
		LuaSay("��ʾ�����Ѿ�ɱ��15ֻص���ڱ������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon19")==1) then
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

