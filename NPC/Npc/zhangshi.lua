NPCINFO = { 
serial="68" ,
base_name="zhangshi",
icon=2562,
NpcMove=2562,
name="����" ,
iconaddr=1 ,
butt="5|5|61" ,
name_color="CEFFCE" ,
lastsay="Ҧ�ɲ��Ǹ��ó����Ǹ����ɷ�",
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
	local T561=LuaQueryTask("T561") --------Ҧ��    �ܽ���ı
	local T571=LuaQueryTask("T571")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_52")==1 or LuaQueryTask("Tsnpc_52")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_52")
		if(LuaQueryTask("Tsnpc_52")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_52")==1 or LuaQueryTask("Tenpc_52")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_52")
		if(LuaQueryTask("Tenpc_52")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T561")==1 or T561==2) then
		AddTopSayMenuItem("@2�ܽ���ı�����顿","T561")
		if(LuaQueryTask("T561")==1) then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T570")==1) then
		AddTopSayMenuItem("@2��ի��𡾾��顿","T570")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T571==1) then
		AddTopSayMenuItem("@2����սʿ��ѭ����","T571")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T570")==0 and level>=33) then
		AddTopSayMenuItem("��ի��𡾾��顿","T570")
		havetask1 =1
	end
 	if(T571==0 and level>=31 and level <=35) then
		AddTopSayMenuItem("����սʿ��ѭ����","T571")
		havetask1=1
	end	
--����Ϊ��ɫ��̾�Ų���
	

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
------------------------------------------------
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

elseif(answer=="T571") then
	if(LuaQueryStrTask("571day")~=GetCurrentDay())then
		LuaDelTask("T571num")
	end
	
	if(LuaQueryTask("T571") == 0 ) then
		LuaSay("���ϣ�ص��սʿ�б����ʣ�Σ������������ȥնɱ@220��ص��սʿ@0��")
		if(TeamCount()<2)then
			LuaSay("���ϣ�һ����̫���ģ�һ����̫��į���Ҹ�����һ��������ɣ������ܴ򷢼�į�����ܻ�ú�������Ŷ@!")
		end
		LuaSetTask("T571",1)
		LuaSetTask("task_kill/mon_027/T571",1)
		AddLog("����սʿ��ѭ����",571)
		LuaAddTask("T571num",1)
		LuaSetTask("571day",GetCurrentDay())
		UpdateMenu()
		UpdateTopSay("��μˮ֮������20��ص��սʿ")

	elseif(LuaQueryTask("T571") == 1 ) then
     		if(LuaQueryTask("task_kill/mon_027/T571")>=21)then
            		LuaSay("������ʣ���л���°�æ�ˣ�����������ģ��Ͱ��Ҷ�ɱЩ�ɡ�")
		    	AddMenuItem("@7�������","")
		    	AddMenuItem("��ȡ����","T571jl")
			else
		    	LuaSay("���ϣ��㻹û��ɱ��@220��ص��սʿ@0�ء�")
            		UpdateTopSay("��ȥɱ20��ص��սʿ")
          	end
	end
	

		elseif(answer=="T571jl")then
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
          		if(LuaQueryTask("T571")==1) then
     				if(LuaQueryTask("task_kill/mon_027/T571")>=21)then
       		 			LuaDelTask("task_kill/mon_027/T571")
		    			LuaDelTask("T571")
					local jingyan
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
					if(LuaQueryTask("T571num")<=30)then
						if(TeamCount()>=2)then
							LuaSay("@1��ʾ�������Ӿ���ӳ�")
							jingyan=(80835+level^2*20)
						else
							jingyan=(43950+level^2*20)
						end
						LuaGive("coin",money,"T571")
					else
						LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
						jingyan=(43950+level^2*20)/2
					end

		    			LuaAddJx("combat_exp",jingyan,"T571")
					LuaGive("coin",500,"T571")
					DelLog("571")
						if(LuaQueryTask("T571_a")==0) then
							LuaAddAchievementSchedule("Task_num",1)
							LuaSetTask("T571_a",99)
						end
		    			UpdateMenu()
		    		end
			end
	-------------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("���ϣ����ɷ�����Ϊ����Ҳ���Ȳ�����!")

elseif(answer=="T561") then
    if(LuaQueryTask("T561")==1) then
	LuaSay("���ϣ�����������˰��̣������Ϊ����Ҫ����Ҫ���Σ������������ô�죡")
	LuaSay("���ϣ��ҽ�����һ��@2ذ��@0����Ӣ�۽�@2ذ�׽���Ҧ��@0��Ҧ����Ȼ�����ף�")
       	LuaSay("���ϣ���лӢ�۰�����")
       	LuaGive("o_mission304",1,"T561")
       	LuaSetTask("T561",2)
	AddLog("�ܽ���ı�����顿",561)
	UpdateMenu()
    elseif(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==0) then
        LuaSay("���ϣ�Ӣ��,СŮ�Ӱ���ô��Ҫ����Ʒ�����㣬��ȴ����Ū���ˣ�")
        LuaSay("���ϣ������������ѣ����¹��ҷ���Ľ�������Ӣ�����أ�")
        LuaGive("0_mission304",1,"T561")
	UpdateMenu()
	UpdateTopSay("��ذ�׽���μˮ֮����Ҧ��")
    elseif(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==1) then
        LuaSay("���ϣ���@2ذ��@0����@4μˮ֮��@0��@3Ҧ��@0")
        UpdateTopSay("��ذ�׽���μˮ֮����Ҧ��")
    end
	
	--------------------------------------------��ի���
elseif(answer=="T570")  then
	--if(GetCurrentDay()~=LuaQueryStrTask("570Taskday")) then
	--LuaSetTask("T570",0)
	--end
	if(LuaQueryTask("T570")==0)then
		LuaSay("���ϣ�����������������һ��Υ�����ĵ����飬�����ںܺ�ڣ�������������������")
		LuaSay("���ϣ��������ͱ�Ӫ���һ��ʿ������%����&&*����Ҫ����ҵ��������Ը������һ�����@2ʮ����@0ô��")
		LuaSetTask("T570",1)
		AddLog("��ի��𡾾��顿",570)
		local time1=GetCurrentTime()
		--LuaSetTask("570Taskday",GetCurrentDay())
		LuaSetTask("570time",time1)
		UpdateMenu()
	elseif(LuaQueryTask("T570")==1)then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("570time"))
	    if(shijiancha>=600)then
	        LuaSay("���ϣ�лл������")
	        AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T570jl")
	    else
		LuaSay("���ϣ����ı�Ŀ���ڻ��ͨ���Ѿ�����@3"..shijiancha.."@0��")
		UpdateTopSay("�����������������10����")
	    end
	end
	elseif(answer=="T570jl")then
		if(LuaQueryTask("T570")==1)then
			if((GetCurrentTime() - LuaQueryTask("570time"))>=600)then
				if(LuaFreeBag()>=1)then
					LuaSay("���ϣ��������һ�ѻƽ�󿳵�������@!")
					LuaSay("��ܰ��ʾ����Ҫ��Ʒװ��������ȥɱҰ��BOSS�͸����������м��ʳ���Ӧ�ȼ�����װ")
					if(LuaQueryStr("class")=="shen") then      --սʿ --�̼��� 35���ƽ�����
						LuaGive("e_falchion010",1,3,"T570")	
						elseif(LuaQueryStr("class")=="wu") then       --���� 36����
						LuaGive("e_sword012",1,3,"T570")
						elseif(LuaQueryStr("class")=="xian") then       --ıʿ36
						LuaGive("e_pen006",1,3,"T570")
					end
					LuaSetTask("T570",99)
					LuaAddJx("combat_exp",261000,"T570")-- ԭ301000��173659
					LuaAddAchievementSchedule("Task_num",1)	
					DelLog("570")
					LuaDelTask("570time")
					UpdateMenu()
				else
					LuaSay("@5��ܰ��ʾ���뱣�ֱ�����һ���λ��������ȡ���Ľ�����Ϊ����������ʧ��Ŷ@!")
				end
			end
		end

elseif(answer=="Tsnpc_52")then
	if(LuaQueryTask("Tsnpc_52")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("���ϣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_52",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_52")==2)then
		LuaSay("���ϣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_52")then
	if(LuaQueryTask("Tenpc_52")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("���ϣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_52",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_52")==2)then
		LuaSay("���ϣ����Ѿ������ˣ����ȥ��ȡ������")
	end	

end
LuaSendMenu()
return 1
end 

