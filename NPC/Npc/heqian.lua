NPCINFO = {
serial="57" ,
base_name="heqian",
icon=2559,
NpcMove=2559 ,
name="��ǫ" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="������ս�ң�������һ�ݰ���",
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0

	local level= LuaQuery("level")

	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_40")==1 or LuaQueryTask("Tsnpc_40")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_40")
		if(LuaQueryTask("Tsnpc_40")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_40")==1 or LuaQueryTask("Tenpc_40")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_40")
		if(LuaQueryTask("Tenpc_40")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T464")==1 )then
		AddTopSayMenuItem("@2�ֵ����塾ѭ����","T464")
		havetask2 =1
	end
	if(LuaQueryTask("T853") == 1 or LuaQueryTask("T853") == 2) then
		AddTopSayMenuItem("@2���վ��ѡ����顿","T853")
		if(LuaQueryTask("T853") == 1)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T476") == 1  or LuaQueryTask("T476") == 2)then
		AddTopSayMenuItem("@2���ա����顿","T476")
		if(LuaQueryTask("T476") == 1)then
		havetask2 =1
		end
	end

	if(LuaQueryTask("T461") == 1)then
		AddTopSayMenuItem("@2��ҩ�������顿","T461")
		if(LuaItemCount("o_drug_hp3")>=5 and LuaItemCount("o_drug_mp3")>=5 )then
		havetask2 =1
		end
	end

	if(LuaQueryTask("T463") == 1)then
		AddTopSayMenuItem("@2���衾ѭ����","T463")
		if(LuaItemStatusNormalCount("o_mission168") >= 1) then
		havetask2 =1
		end 
	end
        if(LuaQueryTask("T451") == 1)then
		AddTopSayMenuItem("@2�β���ҩ�����顿","T451")
		if (LuaItemCount("o_mission365")>=1)then
		havetask2 =1
		end
	end
--�����ǻ�ɫ�ʺŲ���
	if(LuaQueryTask("T460") == 1)then
		AddTopSayMenuItem("@2�ɺӡ����顿","T460")
		havetask4 =1
	end
	if(LuaQueryTask("T462") == 1)then
		AddTopSayMenuItem("@2�ײ����㡾ѭ����","T462")
		havetask4 =1
	end
--�����ǻ�ɫ�ʺŲ���
	if(LuaQueryTask("T460") == 0 and level>=28) then
		AddTopSayMenuItem("�ɺӡ����顿","T460")
		havetask1=1
	end
	if(LuaQueryTask("T461") == 0 and level>=27) then
		AddTopSayMenuItem("��ҩ�������顿","T461")
		havetask1=1
	end
	if(LuaQueryTask("T462") == 0 and level>=26 and level<33) then
		AddTopSayMenuItem("�ײ����㡾ѭ����","T462")
		havetask1=1
	end
	if(LuaQueryTask("T463") == 0 and level>=28 and level<34) then
		AddTopSayMenuItem("���衾ѭ����","T463")
		havetask1=1
	end
	if(LuaQueryTask("T464")==0 and level<=40 and level>=25)then
		AddTopSayMenuItem("�ֵ����塾ѭ����","T464")
		havetask1 =1
	end
--�����ǻ�ɫ��̾�Ų���
	
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
------------------------------------------------
elseif(answer=="liaotian") then             --------���վ���
	LuaSay("��ǫ�����������������³��ӣ�")
	LuaDelTask("T376")
	DelLog("376")
	UpdateMenu()
elseif(answer=="T853")then
	if(LuaQueryTask("T853") == 1)then
		LuaSay("��ʾ����ǫȡ���彣����ȥ�ɣ�@3����@0����˵������ʲô������Ҫ���æ��")
		LuaGive("o_mission302",1)
		UpdateTopSay("��ȥ��ˮ�԰��������")
		LuaSetTask("T853",2)
		AddLog("���վ��ѡ����顿",853)
		UpdateMenu()
	else
		LuaSay("��ǫ��@3����@0��@4��ˮ�԰�@0���㻹û�а�@2�彣@0��������")
	end

elseif(answer=="T476")then
	if(LuaQueryTask("T476") == 1)then
		LuaSay("��ǫ��ɱ�����ƣ������׶�������һ��@2ɱ��ҩ@0�����в�����˪�ɷ֣���ȥ��@3����@0")
		LuaGive("o_mission340",1)
		UpdateTopSay("��ȥ@4��ˮ�԰�@0��@3����@0��")
		LuaSetTask("T476",2)
		AddLog("���ա����顿",476)
		UpdateMenu()
	else
		LuaSay("��ǫ��@3����@0��@4��ˮ�԰�@0���㻹û�а�@2ɱ��ҩ@0��������")
	end
elseif(answer=="T460")then              ----�ɺ�
	if(LuaQueryTask("T460") == 0) then
		LuaSay("��ǫ�����±�������ǰ��@4��ˮ�԰�@0������@3Ѩ����@0�������ͷ���������@2Ѩ����@025ֻ����ͨ��·��")
		LuaSay("��ǫ����Ӳ����������°빦�������ܽύ�����������Ŷ�����ֵܣ���ͳһ@!��")
		LuaSetTask("T460",1)
		LuaSetTask("task_kill/mon_022/T460",1)
		UpdateTopSay("����25��Ѩ����")
		AddLog("�ɺӡ����顿",460)
		UpdateMenu()
	elseif(LuaQueryTask("T460")==1) then
		if(LuaQueryTask("task_kill/mon_022/T460")>=26) then
		LuaSay("��ǫ��@3����@0�ѹ�Ҳ������֮�٣��������˴�С�����ѣ���·һͨ��������ȥ����@4��ˮ�԰�@0��@2����@0�ɡ�")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("��ǫ�����⵱�������ɲ��Ұ��ɿ�ͨ�˰��ɵ�ͼ�������ͨ���Զ�Ѱ·���������կŶ@!")
			else
				LuaSay("��ǫ�����⵱�������ɲ��Ұ��ɿ�ͨ�˰��ɵ�ͼ�������ͨ�������ͼ���������կŶ@!")
			end
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T460jl")
		else
		LuaSay("��ǫ���㻹ûɱ��25��@2Ѩ����@0��")
                UpdateTopSay("ɱ��25��Ѩ������������")
		end
	end
	elseif(answer=="T460jl")then
	if(LuaQueryTask("T460")==1) then
		if(LuaQueryTask("task_kill/mon_022/T460")>=26) then
			if(LuaFreeBag()>=1)then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",304000,"T460")
				else
					LuaAddJx("combat_exp",274000,"T460")
				end
				if(LuaQueryTask("Ttaozhuang30C") == 0) then
				LuaGive("e_head166",1,2,"T460")
				LuaSetTask("Ttaozhuang30C",99)
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("coin",2200,"T460")
				LuaDelTask("task_kill/mon_022/T460")
				DelLog("460")
				LuaSetTask("T460",99)
				UpdateMenu()
			else
				LuaSay("��ʾ����ı����ռ䲻��1������������������ȡŶ@!")
			end
		end
        end
elseif(answer=="T461")then   ---------��ҩ����
	 if(LuaQueryTask("T461") == 0)then
		LuaSay("��ǫ������ͷ�������ҵģ����ŵô���ҩ�źã������ɷ�Ϊ���·ֱ���5��@2����ɢ������¶@0!����ȥҩƷ��������")
		LuaSetTask("T461",1)
		AddLog("��ҩ�������顿",461)
		UpdateTopSay("ȥҩƷ��������ֱ���5������ɢ������¶��")
		UpdateMenu()
	 elseif(LuaQueryTask("T461")==1) then
		if(LuaItemCount("o_drug_hp3")>=5 and LuaItemCount("o_drug_mp3")>=5 )then
		LuaSay("��ǫ���������ҩ����������Ͱ�ȫ����")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T461jl")
		else
		LuaSay("��ǫ�������ϵ�@2����ɢ������¶@0����5��!")
		end
	 end
	elseif(answer=="T461jl")then
	if(LuaItemCount("o_drug_hp3")>=5 and LuaItemCount("o_drug_mp3")>=5 )then
		LuaSetTask("T461",99)
		LuaAddJx("combat_exp",263000,"T461")
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_drug_hp3",5)
		DelItem("o_drug_mp3",5)
		DelLog(461)
		UpdateMenu()
		end

elseif(answer=="T462")then
	if(LuaQueryTask("T462") == 0) then
		LuaSay("��ǫ��@2��ˮ��@0�ײ��ޱȣ�����һ���������գ��ͷ���������@225����ˮ��@0��ظ���")
		if(TeamCount()>=2)then
			LuaSay("��ǫ�����������Ķӳ����Ͼ��ж౶�����״̬����ô��Ҳ�����ܵ�50%Ŷ")
		else
			LuaSay("��ǫ��һ���˴�ֺ���Ŷ��������������һ�������񣬻��ж���ļ���ӳ�Ŷ@!")
		end
		LuaSetTask("T462",1)
		LuaSetTask("task_kill/mon_021/T462",1)
		AddLog("�ײ����㡾ѭ����",462)
		UpdateMenu()
		UpdateTopSay("����25����ˮ��")
	elseif(LuaQueryTask("T462")==1) then
		local a=LuaQueryTask("task_kill/mon_021/T462")-1
		if(LuaQueryTask("task_kill/mon_021/T462")>=26) then
		LuaSay("��ǫ�����һ����������Σ�����յ������ˣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T462jl")
		else
		LuaSay("��ǫ���㻹ûɱ��25��@2��ˮ��@0�����Ѿ�ɱ��"..a.."����")
                UpdateTopSay("ɱ��25����ˮ����������")
		end
	end
	elseif(answer=="T462jl")then
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T462")==1) then
			if(LuaQueryTask("task_kill/mon_021/T462")>=26) then
			local jingyan
			if(TeamCount()>=2)then
				LuaSay("@1��ʾ�������Ӿ���ӳ�")
				jingyan=(70835+level^2*20)
			else
				jingyan=(39835+level^2*20)
			end
			local money
			if(LuaQuery("level")<20)then
				money=200
			elseif(LuaQuery("level")<30)then
				money=300
			elseif(LuaQuery("level")<40)then
				money=400
			elseif(LuaQuery("level")<50)then
				money=500
			elseif(LuaQuery("level")<100)then
				money=600
			end
			LuaGive("coin",money,"T462")

			LuaAddJx("combat_exp",jingyan,"T462")
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_021/T462")
			DelLog("462")
			LuaDelTask("T462")
			UpdateMenu()
			end
                end
                
elseif(answer=="T463")then           ----------���� 
	    if(GetCurrentDay()~=LuaQueryStrTask("463Taskday")) then
            LuaSetTask("463dotime",0)  
	    end
	 if(LuaQueryTask("463dotime") < 11)then
		 if(LuaQueryTask("T463") == 0)then
			LuaSay("��ǫ������������ʽ��ţ������ɷ�������ռ�1ֻ@2����@0������")
			LuaSay("��ǫ��@2����@0�ڵ���Ĺ������м��ʻ�ã�Ҳ���Դ�����������ﹺ��@7������һ���������10��@0��")
			LuaSetTask("T463",1)
			AddLog("���衾ѭ����",463)
			UpdateTopSay("ȥ�ռ�1ֻ����")
			UpdateMenu()
		 elseif(LuaQueryTask("T463")==1) then
			if(LuaItemStatusNormalCount("o_mission168") >= 1) then
			LuaSay("��ǫ����ˣ����н�ʿ���м������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T463jl")
			else
			LuaSay("��ǫ���㻹û1ֻ�����أ�@2����@0�ڵ���Ĺ������м��ʻ�ã�Ҳ���Դ�����������ﹺ��")
			end
		 end
	 else
		LuaSay("��ǫ��������Ѿ�������10ֻ���㣬�Ѿ������ˣ�������������һ����ռ��������ɡ�")
	 end
elseif(answer=="T463jl")then
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaItemStatusNormalCount("o_mission168") >= 1 ) then
		LuaSetTask("T463",0)
		LuaGive("coin",4000,"T463")
		local jingyan=(47000+level^2*20)
		LuaAddJx("combat_exp",jingyan,"T463")
		if(LuaQueryTask("T463_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T463_a",99)
		end
		DelItem("o_mission168",1)
		LuaSetTask("463Taskday",GetCurrentDay())
		LuaAddTask("463dotime",1) 
		DelLog(463)
		UpdateMenu()
	end

elseif(answer=="T451" )then                  --------�β���ҩ 
	 if(LuaQueryTask("T451")==1) then
		if (LuaItemCount("o_mission365")>=1)then
      		LuaSay("��ǫ����л�ˣ�����ҩ���Ѿ��о��ö��ˣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T451jl")
		end
	end
	elseif(answer=="T451jl")then
		if (LuaItemCount("o_mission365")>=1)then
		LuaSetTask("T451",99)
     		LuaAddJx("combat_exp",263000,"T451")
			LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission365",1)
		DelLog(451)
		UpdateMenu()
		UpdateNPCMenu("liulaozhi")
		end 
	-------------------
--�ֵ�����
elseif(answer=="T376")then
	if(LuaQueryTask("T376")==0)then
		LuaSay("��ǫ����������Ҫ������Ӳ��ܽ���")
		if(TeamCount()>=2)then
			if(TeamQueryTask("T376")==0)then
				LuaSay("��ǫ���ڴ������гɳ���û�������ǲ��еģ������ھ��������㣬�����Ķ�����һ��ɱ��30ֻѨ����")
				LuaSay("��ǫ����Ķ��ѻ�û��ȡ����Ŷ���Ͽ�������������һͬɱ��Ŷ�����֮��ɱ�Ĺ������������һ��ɱ��Ŷ@!")
				LuaSay("@1�ر���ʾ�������ڼ䲻Ҫ�˳���ӣ���Ȼ�����޷����")
				LuaSetTask("T376",1)
				AddLog("�ֵ����塾���顿",376)
				LuaSetTask("task_kill/mon_022/T376",1)
				UpdateMenu()
			elseif(TeamQueryTask("T376")==1)then
				LuaSay("��ǫ���ڴ������гɳ���û�������ǲ��еģ������ھ��������㣬�����Ķ�����һ��ɱ��30ֻѨ����")
				LuaSay("��ǫ���Ͽ����Ķ���һ���ɱѨ����ɣ����֮��ɱ�Ĺ������������һ��ɱ��Ŷ��")
				LuaSay("@1�ر���ʾ�������ڼ䲻Ҫ�˳���ӣ���Ȼ�����޷����")
				LuaSetTask("T376",1)
				AddLog("�ֵ����塾���顿",376)
				LuaSetTask("task_kill/mon_022/T376",1)
				UpdateMenu()
			elseif(TeamQueryTask("T376")==99)then
				LuaSay("��ǫ����Ķ����Ѿ���������������������ô�󣬻��кܶ���Ŷ��")
			end
		else
			LuaSay("��ǫ����û�ж��飬���ܽ�ȡ������Ŷ��")
		end
	elseif(LuaQueryTask("T376")==1)then
		if(TeamCount()>=2)then
			if(LuaQueryTask("task_kill/mon_022/T376")>=31 and TeamQueryTask("task_kill/mon_022/T376")>=31)then
				LuaSay("��ǫ����Ϊ�����ҵ�һ��Ը�����һͬ��ս�����Ѷ�����@!")
				LuaSay("��ǫ�����ֵܣ���ͳһ��")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T376jl")
			else
				LuaSay("��ǫ�����ǻ�ûɱ��30ֻѨ����Ŷ,����Ŷ@!")
				--[[LuaSay("��ǫ�����ǻ�ûɱ��30ֻѨ����Ŷ,,��ɱ��"..(LuaQueryTask("task_kill/mon_022/T376")-1).."ֻ����Ķ���ɱ��"..(TeamQueryTask("task_kill/mon_022/T376")-1).."ֻ@!")
				if(LuaQueryTask("task_kill/mon_022/T376")>=31 and TeamQueryTask("task_kill/mon_022/T376")<31)then
					LuaSay("��ǫ�����Ѿ���ɱ��"..(LuaQueryTask("task_kill/mon_022/T376")-1).."ֻѨ���룬@1����@0��Ķ���ֻ��ɱ��"..(TeamQueryTask("task_kill/mon_022/T376")-1).."ֻ���Ͽ�ȥ�������ɡ�")
				end
				if(LuaQueryTask("task_kill/mon_022/T376")<31 and TeamQueryTask("task_kill/mon_022/T376")>=31)then
					LuaSay("��ǫ����Ż�ɱ��"..(LuaQueryTask("task_kill/mon_022/T376")-1).."ֻѨ���룬��Ķ���@1�Ѿ�@0��ɱ��"..(TeamQueryTask("task_kill/mon_022/T376")-1).."ֻ���Ͽ�����������ɡ�")
				end]]
			end
		else
			LuaSay("��ǫ���������������״̬�²��ܽ�����һ����")
		end
	end
	elseif(answer=="T376jl")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("task_kill/mon_022/T376")>=31 and TeamQueryTask("task_kill/mon_022/T376")>=31)then
			LuaAddJx("combat_exp",220000,"T376")
			LuaGive("coin",2000,"T376")
			LuaSetTask("T376",99)
			DelLog("376")
			UpdateMenu()
		end
	else
		LuaSay("��ǫ����Ҫ������Ӳ�����ȡ������")

	end

--�ֵ����ѭ����
elseif(answer=="T464")then
	if(LuaQueryStrTask("T464day")~=GetCurrentDay())then
		LuaDelTask("T464")
		LuaDelTask("T464num")
		UpdateMenu()
	end
	if(LuaQueryTask("T464")==0)then
		LuaSay("��ǫ����������Ҫ������Ӳ��ܽ���")
		if(TeamCount()==2)then
			if(LuaQueryTask("T464num")<10)then
				if(TeamQuery("level")<35 and TeamQuery("level")>=25)then
					if(TeamQueryTask("T464num")<10)then
						if(TeamQueryTask("T464")==0)then
							coldata={AutoSearchTask_killMon(0)}
							LuaSetTask("T464col",coldata[1])
							LuaSay("��ǫ��������´��ң�Ұ�޺��У������Ķ���ȥ@4"..coldata[2].."@0һ��ɱ��@3"..coldata[5].."@0��@4"..coldata[3].."@0�ɡ�")
							LuaSay("��ǫ����Ķ��ѻ�û��ȡ����Ŷ���Ͽ�������������һͬɱ��Ŷ�����֮��ɱ�Ĺ������������һ��ɱ��Ŷ@!")
							LuaSay("@1�ر���ʾ�������ڼ䲻Ҫ�˳���ӣ���Ȼ�����޷����")
							LuaSetTask("T464",1)
							AddLog("�ֵ����塾ѭ����",464)
							LuaSetTask("T464day",GetCurrentDay())
							LuaSetTask(coldata[4],1)
							UpdateMenu()
						elseif(TeamQueryTask("T464")==1)then
							coldata={AutoSearchTask_killMon(TeamQueryTask("T464col"))}
							LuaSetTask("T464col",coldata[1])
							LuaSay("��ǫ���ڴ������гɳ���û�������ǲ��еģ������ھ��������㣬�����Ķ���ȥ@4"..coldata[2].."@0һ��ɱ��@3"..coldata[5].."@0��@4"..coldata[3].."@0")
							LuaSay("��ǫ���Ͽ����Ķ���һ���ɱѨ����ɣ����֮��ɱ�Ĺ������������һ��ɱ��Ŷ��")
							LuaSay("@1�ر���ʾ�������ڼ䲻Ҫ�˳���ӣ���Ȼ�����޷����")
							LuaSetTask("T464",1)
							AddLog("�ֵ����塾ѭ����",464)
							LuaSetTask("T464day",GetCurrentDay())
							LuaSetTask(coldata[4],1)
							UpdateMenu()
						elseif(TeamQueryTask("T464")==99)then
							LuaSay("��ǫ����Ķ����Ѿ���������������������ô�󣬻��кܶ���Ŷ��")
						end
					else
						LuaSay("��ǫ��������Ķ����Ѿ�����10�θ�������Ŷ�������Ҹ�������һ������@!")	
					end
				else
					LuaSay("��ǫ����Ķ���δ�ܴﵽ��ȡ�������������")
				end
			else
				LuaSay("��ǫ���������Ѿ�����10�θ�������Ŷ��ЪЪ����������@!")
			end
		else
			LuaSay("��ǫ����û�ж��飬���ܽ�ȡ������Ŷ��")
		end
	elseif(LuaQueryTask("T464")==1)then
		if(TeamCount()==2)then
			coldata1={AutoSearchTask_killMon(LuaQueryTask("T464col"))}
			if(LuaQueryTask(coldata1[4])>=21 and TeamQueryTask(coldata1[4])>=21)then
				LuaSay("��ǫ����Ϊ�����ҵ�һ��Ը�����һͬ��ս�����Ѷ�����@!")
				LuaSay("��ǫ�����ֵܣ���ͳһ��")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T464jl")

			else
				local a = TeamQueryTask(coldata1[4])-1
				local b = 0
				if(a==-1)then
					b=0
				else
					b=a
				end
				LuaSay("��ǫ�����ǻ�ûɱ��"..coldata1[5].."ֻ"..coldata1[3].."Ŷ����Щ�������"..coldata1[2].."������Ŷ@!")
				LuaSay("��ǫ�����ɱ��"..(LuaQueryTask(coldata1[4])-1).."ֻ����Ķ��ѻ�ɱ��"..b.."ֻ")	
			end
		else
			LuaSay("��ǫ������@3����@0���״̬�²��ܽ�����һ����")
		end
	elseif(LuaQueryTask("T464")==99)then
		LuaSay("��ǫ����Ķ��ѻ�δ��ȡ������Ŷ��")
	end


	elseif(answer=="T464jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(TeamCount()==2)then
			coldata2={AutoSearchTask_killMon(LuaQueryTask("T464col"))}
			if(LuaQueryTask(coldata2[4])>=21 and TeamQueryTask(coldata2[4])>=21)then
				--local jingyan=(68835+level^2*20)
				local jingyan=(128835+level^2*20)
				LuaAddTask("T464num",1)
				LuaAddJx("combat_exp",jingyan,"T464")
				LuaGive("coin",2000,"T464")
				LuaSetTask("T464",99)
				DelLog("464")
				if(QueryAllTeamMemberTaskSuccess("T464",99)==1)then
					SetAllTeamMemberValueTask("T464",0)
				end
				UpdateMenu()

			end
		else
			LuaSay("��ǫ����Ҫ������Ӳ�����ȡ������")
		end

elseif(answer=="Tsnpc_40")then
	if(LuaQueryTask("Tsnpc_40")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��ǫ�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_40",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_40")==2)then
		LuaSay("��ǫ�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_40")then
	if(LuaQueryTask("Tenpc_40")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("��ǫ���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_40",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_40")==2)then
		LuaSay("��ǫ�����Ѿ������ˣ����ȥ��ȡ������")
	end




end 
LuaSendMenu()
return 1
end


function AutoSearchTask_killMon(collection)
killMon={}
killMon[1]={1,"����֮��","�˵�","task_kill/mon_003/T464",20}
killMon[2]={2,"����֮��","���׳�","task_kill/mon_004/T464",20}
killMon[3]={3,"����֮��","���׳�","task_kill/mon_004/T464",20}
killMon[4]={4,"��������","���","task_kill/mon_007/T464",20}
killMon[5]={5,"��������","����","task_kill/mon_008/T464",20}
killMon[6]={6,"�嶷ɽ","����","task_kill/mon_010/T464",20}
killMon[7]={7,"�嶷ɽ","��ʦ�˱�","task_kill/mon_011/T464",20}
killMon[8]={8,"ɽկ","��ʦ��ͽ","task_kill/mon_012/T464",20}
killMon[9]={9,"ɽկ","����","task_kill/mon_013/T464",20}
killMon[10]={10,"ɽկ����","����","task_kill/mon_014/T464",20}
killMon[11]={11,"ɽկ����","��ʦ����","task_kill/mon_015/T464",20}
killMon[12]={12,"������Ӫ","��������","task_kill/mon_016/T464",20}
killMon[13]={13,"������Ӫ","��������","task_kill/mon_017/T464",20}
killMon[14]={14,"��Ӫǰ��","��������","task_kill/mon_019/T464",20}
killMon[15]={15,"��Ӫǰ��","����","task_kill/mon_020/T464",20}
killMon[16]={16,"��ˮ֮��","��ˮ��","task_kill/mon_021/T464",20}
killMon[17]={17,"��ˮ֮��","Ѩ����","task_kill/mon_022/T464",20}
killMon[18]={18,"��ˮ�԰�","��ˮ��","task_kill/mon_023/T464",20}
killMon[19]={19,"��ˮ�԰�","��ˮ��","task_kill/mon_024/T464",20}

if(collection==0)then
	collection=LuaRandom(18)+2
end

	str1=killMon[collection][2]--��ͼ
	str2=killMon[collection][3]--������
	str3=killMon[collection][4]--ɱ�ּ�����
	str4=killMon[collection][5]--����


	return collection,str1,str2,str3,str4
end