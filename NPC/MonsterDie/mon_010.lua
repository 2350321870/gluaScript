T350_nTotalMonsterNum = 21
T361_nTotalMonsterNum = 21
Tbprw004_nTotalMonsterNum = 21
Thx03_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()
-------------����
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_010/Tbprw004")==21)then
	LuaSay("���Ѿ��������@220ֻ����@0�����ȥ����@4����@0��@3����@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T350")==1)then
	if(LuaQueryTask("task_kill/mon_010/T350")==21)then
	    CheckNpcStatusByMonItemID("T350","mon_010")
	    LuaSay("���Ѿ��������20ֻ���ǣ����ȥ����@3����@0�ɣ�")
	    LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T353")==1)  then
	r=LuaRandom(10)
	if(r<7)then
	    if(LuaItemCount("o_mission349")<=15)then
	        LuaGive("o_mission349",1)
	        if(LuaItemCount("o_mission349") == 15) then
	            CheckNpcStatusByMonItemID("T353","o_mission349")
        		LuaSay("���ѵõ�15����Ƥ����ȥ��¸��ʦ��ͽ��")
            		LuaOtherSendMenu()
		 	end
        end
	end
end
if(LuaQueryTask("T357")==1)  then
	r=LuaRandom(10)
	if(r<3)then
	    if(LuaItemCount("o_mission009")<1)then
	        LuaGive("o_mission009",1)
	        if(LuaItemCount("o_mission009") == 1) then
        		LuaSay("���ѵõ�����Կ�ף�ȥ�������������Ӱ�")
            		LuaOtherSendMenu()
		 	end
        end
	end
end
if(LuaQueryTask("T361")==1)then
	if(LuaQueryTask("task_kill/mon_010/T361")==21)then
	    CheckNpcStatusByMonItemID("T361","mon_010")
	    LuaSay("���Ѿ��������20ֻ���ǣ����ȥ����@3��ʦ��ͽ@0�ɣ�")
	    LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thx03")==7)then
	if(LuaQueryTask("task_kill/mon_010/Thx03")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_010/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_010/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ���ǣ���ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_010/Tfjtx")==11)then
		LuaSay("��ʾ�����Ѿ�ɱ��10ֻ��ƣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon5")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
-------------------����ڻ-----------------
if(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayesg")==99) then
	if(LuaQuery("level")>15 and LuaQuery("level")<30)then
	r = LuaRandom(3)
	if(r==1)then
  		if (LuaItemCount("o_mission522")<5) then
     		LuaGive("o_mission522",1)
     		elseif(LuaItemCount("o_mission522")==5) then
     		LuaSay("���ѵõ�5������Ƥ��ȥ�ظ�@4������@0��@3Ǯׯ�ϰ�@0�ɣ�")
     		LuaOtherSendMenu()
     		end
	end
	end
end 
------------------------------------
return 1
end