NPCINFO = {
serial="56" ,
base_name="liulaozhi",
icon=2542,
NpcMove=2542,
name="����֮" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="�Ҷ�Ҫ��л����������ˮ֮��",
LuaType=1,
}
-------------------------------------------------------------
function do_talk(answer)
	if(answer=="ask")then
	havetask=0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	local level= LuaQuery("level")
        AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_41")==1 or LuaQueryTask("Tsnpc_41")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_41")
		if(LuaQueryTask("Tsnpc_41")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_41")==1 or LuaQueryTask("Tenpc_41")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_41")
		havetask2=1
	end		
	if(LuaQueryTask("T405") == 1)then
		AddTopSayMenuItem("@2Э�������顿","T405")
		havetask2 =1
	end	
	if(LuaQueryTask("T451") == 1)then
		AddTopSayMenuItem("@2�β���ҩ�����顿","T451")
		havetask2 =1
	end	
	if(LuaQueryTask("T454") == 1 or LuaQueryTask("T454") == 2)then
		AddTopSayMenuItem("@2�������ʡ����顿","T454")
		if (LuaItemCount("o_mission367")>=1)then
		havetask2 =1
		end 
	end
	if(LuaQueryTask("T443") == 1)then
		AddTopSayMenuItem("@2�����󽫡����顿","T443")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���		
	if(LuaQueryTask("T450") == 0 and level>=27)then
		AddTopSayMenuItem("������ҩ�����顿","T450")
		havetask1 =1
	end
	
	if(LuaQueryTask("T451") == 0 and LuaQueryTask("T450") == 99)then
		AddTopSayMenuItem("�β���ҩ�����顿","T451")
		havetask1 =1
	end
	
	if(LuaQueryTask("T452") == 0 and level>=27)then
		AddTopSayMenuItem("�����ѷ������顿","T452")
		havetask1 =1
	end
	
	if(LuaQueryTask("T453") == 0 and LuaQueryTask("T452") == 99)then
		AddTopSayMenuItem("�����ѷ�2�����顿","T453")
		havetask1 =1
	end
	
	if(LuaQueryTask("T454") == 0 and LuaQuery("level") >= 26)then
		AddTopSayMenuItem("�������ʡ����顿","T454")
		havetask1 =1
	end
----------------------------------------------------------------------
	if(LuaQueryTask("T452") == 1)then
		AddTopSayMenuItem("@2�����ѷ������顿","T452")
		havetask4 =1
	end
	
	if(LuaQueryTask("T453") == 1)then
		AddTopSayMenuItem("@2�����ѷ�2�����顿","T453")
		havetask4 =1
	end
	if(LuaQueryTask("T450") == 1)then
		AddTopSayMenuItem("@2������ҩ�����顿","T450")
		havetask4 =1
	end

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end
return 1

 elseif(answer=="liaotian") then
	LuaSay("����֮��������������������ָ�տɴ�!")

 elseif(answer=="T405")then       -----------------------------  Э��
	if(LuaQueryTask("T405") == 1) then
	LuaSay(""..LuaQueryStr("name").."��@3л��@0������������һ��֮����")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T405jl")
	end
elseif(answer=="T405jl")then
	if(LuaQueryTask("T405")==1) then
		LuaAddJx("combat_exp",204000,"T405")
		LuaAddAchievementSchedule("Task_num",1)
		DelLog("405")
		LuaSetTask("T405",99)
		UpdateMenu()
                end
elseif(answer=="T450")then            -----------������ҩ 
	if(LuaQueryTask("T450") == 0) then
	LuaSay("����֮��������ã�����ͬ�е�@3��ǫ@0���������ˣ��ͷ�����ȥ��ɱ��ˮ�����ռ�@215����ˮ����@0��ҩ�ģ�")
	LuaSetTask("T450",1)
	UpdateTopSay("��ȡ15����ˮ����")
	AddLog("������ҩ�����顿",450)
	UpdateMenu()
	elseif(LuaQueryTask("T450")==1) then
		if (LuaItemCount("o_mission364")>=15)then
		LuaSay("����֮�����º��ˣ���ǫ�Ĳ���ҩ��ҽ���ˣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T450jl")
		else
		LuaSay("����֮�������ռ���@2��ˮ����@0����15����")
		UpdateTopSay("�ռ�15����ˮ�����������Ұ�")
		end
	end
	elseif(answer=="T450jl")then
		if(LuaQueryTask("T450")==1) then
			if(LuaItemCount("o_mission364")>=15) then
				LuaAddJx("combat_exp",263000,"T450")
				LuaGive("coin",2300,"T450")
				if( LuaQueryStr("class")=="wu")then   --���ͣ�24�� ذ��
					if(LuaRandom(4)==1)then
						LuaGive("e_knife004",1,2,"T450")
					else
						LuaGive("e_knife004",1,1,"T450")
					end
				elseif(LuaQueryStr("class")=="xian")then --ıʿ��27�� ��
					if(LuaRandom(5)==1)then
						LuaGive("e_book003",1,2,"T450")
					else
						LuaGive("e_book003",1,1,"T450")
					end
				elseif(LuaQueryStr("class")=="shen")then--սʿ��27�� 
					if(LuaRandom(5)==1)then
						LuaGive("e_shield004",1,2,"T450")
					else
						LuaGive("e_shield004",1,1,"T450")
					end
				end
			LuaAddAchievementSchedule("Task_num",1)
			DelItem("o_mission364",15)
			DelLog("450")
			LuaSetTask("T450",99)
			UpdateMenu()
			end
                end                
elseif(answer=="T451")then         ------�β���ҩ
	 if(LuaQueryTask("T451") == 0)then
   		LuaSay("����֮�����������㵨���˼���ҩ���ͷ�������@3��ǫ@0�͹�ȥ��������@4��ˮ֮��@0��")
		LuaSetTask("T451",1)
		LuaGive("o_mission365",1)
 		UpdateTopSay("������ȥ�Һ�ǫ��")
 		AddLog("ǰ�������顿",451)
		UpdateMenu()
		UpdateNPCMenu("heqian")
	 elseif (LuaQueryTask("T451") == 1)then
		LuaSay("л������ҩ����@4��ˮ֮��@0��@3��ǫ@0��")
	 end
elseif(answer=="T452")then ------------�����ѷ�
if(LuaQueryTask("T452") == 0) then
	LuaSay("����֮��������ȥɱ@225����ˮ��@0���һ��ɽ�ʿҲɱһ�㣬��@2��ˮ��@0�����Ǳ���������ҩ��")
	LuaSay("����֮��������������������ӵļ򵥣����ܽύ�ĸ�����ֵ�@!")
	LuaSetTask("T452",1)
	LuaSetTask("task_kill/mon_021/T452",1)
	UpdateTopSay("����25����ˮ��")
	AddLog("�����ѷ������顿",452)
	UpdateMenu()
	elseif(LuaQueryTask("T452")==1) then
		if(LuaQueryTask("task_kill/mon_021/T452")>=26) then
		LuaSay("����֮������ˮ����ҩ���ܸ���ʿ���ˣ����ܻ�Ǯ����ʵ���ã�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T452jl")
		else
		LuaSay("����֮���㻹ûɱ��25��@2��ˮ��@0")
                UpdateTopSay("ɱ��25����ˮ����������")
		end
	end
	elseif(answer=="T452jl")then
		if(LuaQueryTask("T452")==1) then
			if(LuaQueryTask("task_kill/mon_021/T452")>=26) then
			if(TeamCount()>=2)then
				LuaAddJx("combat_exp",283000,"T452")
			else
				LuaAddJx("combat_exp",263000,"T452")
			end
			LuaGive("coin",2400,"T452")
			if(LuaRandom(10)==1)then --27����
				LuaGive("e_earring003",1,2,"T452")
			else
				LuaGive("e_earring003",1,2,"T452")
			end
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_021/T452")
			DelLog("452")
			LuaSetTask("T452",99)
			UpdateMenu()
			LuaSay("����֮�������Ǳ�����ͬʱ����ҵ���Ҳ�ǲ��ܻķϵģ���񽨿���@2Ǯׯ�ϰ�@0ÿ�췢��@4�̼���@0����������ǰȥ����")
			LuaSay("����֮��������һ������ÿ�����񣬲����ܵõ�����ͭ�ң����л������̳ǵ���Ŷ@A")
			AddMenuItem("@7������Ǯׯ�ϰ�","")
			AddMenuItem("ȷ�ϴ���","Tcs_qzlb")
			end
                end
	elseif(answer=="Tcs_qzlb")then
		ChangeMap("lu_jkc",334.614)
elseif(answer=="T453")then ------------�����ѷ�2
	if(LuaQueryTask("T453") == 0) then
	LuaSay("����֮��������ȥɱ@225��Ѩ����@0���һ��ɽ�ʿҲɱһ�㣬˳���ռ���֩�룬��@2Ѩ����@0�����Ǳ���������ҩ��")
	LuaSetTask("T453",1)
	LuaSetTask("task_kill/mon_022/T453",1)
	UpdateTopSay("����25��Ѩ����")
	AddLog("�����ѷ�2�����顿",453)
	UpdateMenu()
	elseif(LuaQueryTask("T453")==1) then
		if(LuaQueryTask("task_kill/mon_022/T453")>=26) then
		LuaSay("����֮����Ѩ������ҩ���ܸ���ʿ���ˣ����ܻ�Ǯ����ʵ���ã�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T453jl")
		else
		LuaSay("����֮���㻹ûɱ��25��@2Ѩ����@0��")
                UpdateTopSay("ɱ��25��Ѩ������������")
		end
	end
	elseif(answer=="T453jl")then
		if(LuaQueryTask("T453")==1) then
			if(LuaQueryTask("task_kill/mon_022/T453")>=26) then
			LuaAddJx("combat_exp",263000,"T453")
			LuaGive("coin",800,"T453")
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_022/T453")
			DelLog("453")
			LuaSetTask("T453",99)
			UpdateMenu()
			end
                end
                
elseif(answer=="T454")then         ------��������
	 if(LuaQueryTask("T454") == 0 )then
		if(LuaQuery("level") <=30)then
   		LuaSay("����֮����������æ���ͷ�����ȥ��@4������@0���@3Ǯׯ�ϰ�@0����æ������������")
		LuaSetTask("T454",1)
		LuaGive("o_mission317",1)
 		UpdateTopSay("��ȥ��������Ǯׯ�ϰ�")
 		AddLog("�������ʡ����顿",454)
		UpdateMenu()
		else
			LuaSay("����֮�����Ѿ���30�����ϵĴ����ˣ�����Ҫ���������ˣ�")
		end
	 elseif (LuaQueryTask("T454") == 1)then
		LuaSay("����֮��ȥ@4������@0��@3Ǯׯ�ϰ�@0����æ������������")
	 elseif (LuaQueryTask("T454") == 2)then
		if (LuaItemCount("o_mission367")>=1)then
      		LuaSay("����֮��·�������ˣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T454jl")
		end
     end
	elseif(answer=="T454jl")then
	if (LuaItemCount("o_mission367")>=1)then
		LuaSetTask("T454",99)
     		LuaAddJx("combat_exp",258000,"T454")
			LuaAddAchievementSchedule("Task_num",1)
     		LuaGive("coin",999,"T454")
		DelItem("o_mission367",1)
		DelLog(454)
		UpdateMenu()
		end
 ---------
elseif(answer=="T443") then              ------------------------������
		if(LuaQueryTask("T443")==1) then
		LuaSay("����֮�������������ֵ�̧���ˣ���ȻСӢ�������ģ��Ǿ�������úö���һ���ɡ�@!")
	        AddMenuItem("@7�������","")
	        AddMenuItem("��ȡ����","T443jl")
		end 
		elseif(answer=="T443jl")then	            
		       if(LuaQueryTask("T443")==1)then
				LuaSetTask("T443",99) 
				LuaAddJx("combat_exp",258000,"T443") 
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("443") 
				UpdateMenu() 
				end

elseif(answer=="Tsnpc_41")then
	if(LuaQueryTask("Tsnpc_41")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("����֮�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_41",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_41")==2)then
		LuaSay("����֮�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_41")then
	if(LuaQueryTask("Tenpc_41")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("����֮���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_41",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_41")==2)then
		LuaSay("����֮�����Ѿ������ˣ����ȥ��ȡ������")
	end

end 
LuaSendMenu()
return 1
end
