NPCINFO = {
serial="73" ,
base_name="taoyuanming",
icon=2559,
NpcMove=2559 ,
name="��Ԩ��" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="�����ι�������ƽ����",
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
	local T620= LuaQueryTask("T620")
	local T621= LuaQueryTask("T621")
	local T622= LuaQueryTask("T622")
	local T624= LuaQueryTask("T624")
	local T625= LuaQueryTask("T625")
	local T626= LuaQueryTask("T626")
	local T594=LuaQueryTask("T594")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_56")==1 or LuaQueryTask("Tsnpc_56")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_56")
		if(LuaQueryTask("Tsnpc_56")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_56")==1 or LuaQueryTask("Tenpc_56")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_56")
		if(LuaQueryTask("Tenpc_56")==1)then
			havetask2=1
		end
	end
	if(T620>0 and T620<99 )  then
		AddTopSayMenuItem("@2���˽̻塾���顿","T620")
		havetask2 =1
	end
	
	if(T622==1)  then
		AddTopSayMenuItem("@2ͳһ֮��1�����顿","T622")
		if(LuaItemCount("o_mission020")>=2 and LuaItemCount("o_mission039")>=2) then
			havetask2 =1
		else
			havetask4 =1
		end
	end
	if(T624==1) then
		AddTopSayMenuItem("@2�ʱ����ҡ����顿","T624")
	end
	if(T625==1)  then
		AddTopSayMenuItem("@2���ո��ˡ����顿","T625")
	end		
	if(T626==1 or T626==2)  then
		AddTopSayMenuItem("@2Ѱ�����������顿","T626")
		if(T626==2)then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T734")==2 and LuaQueryTask("T734b")==0)  then
		AddTopSayMenuItem("@2��������顿","T734b")
		if(LuaItemCount("o_mission300")>=1)then
		havetask2 =1
		else
		havetask4 =1
		end
	end
	if(LuaQueryTask("T594")==2) then
		AddTopSayMenuItem("@2���ϲѶ�����顿","T594")
		havetask2=1
	end
	
	
	if(LuaQueryTask("T302")==15 and LuaQueryTask("T302O")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302O")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T627")==1 )  then
		AddTopSayMenuItem("@2����ҹ�桾ѭ����","T627")
		havetask4 =1
	end
	if(T621==1 )  then
		AddTopSayMenuItem("@2ͳһ֮��2�����顿","T621")
		havetask4 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T620==0 and LuaQuery("level")>=40)  then
		AddTopSayMenuItem("���˽̻塾���顿","T620")
		havetask1 =1
	end
	if(T622==0 and  LuaQuery("level")>=40)  then
		AddTopSayMenuItem("ͳһ֮��1�����顿","T622")	
		havetask1 =1
	end
	if(T621==0  and LuaQueryTask("T622")==99) then
		AddTopSayMenuItem("ͳһ֮��2�����顿","T621")
		havetask1 =1
	end
	if(T624==0 and T626==99 and level>=41) then
		AddTopSayMenuItem("�ʱ����ҡ����顿","T624")
		havetask1 =1
	end
	if(T625==0 and T624==99)  then
		AddTopSayMenuItem("���ո��ˡ����顿","T625")
		havetask1 =1	
	end	
	if(T626==0  and LuaQuery("level")>=41)  then
		AddTopSayMenuItem("Ѱ�����������顿","T626")
		havetask1 =1
		end
	if(LuaQueryTask("T627")==0  and level>=40 and level<45)  then
		AddTopSayMenuItem("����ҹ�桾ѭ����","T627")
		havetask1 =1
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
if(havetask ==2 )then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	AddTopSayMenuItem("����","liaotian","0")
end
return 1  
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("��Ԩ����������Ƿ��棬˥�ܲ��������˵��������ԭ��������˲���ĥ�����ʧ��")     --����
	
elseif(answer=="T302O") then
	   if(LuaQueryTask("T302O")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("��Ԩ������л������Զǧ�����ţ�")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302O",99)
	   UpdateMenu()
	   end


elseif(answer=="T620") then                     -----��Ԩ��������
       if(LuaQueryTask("T620")==0) then
		LuaSay("��Ԩ�����������ս�ң��������ش�һЩ����@3��������@0������ɣ�")
		LuaSay("��Ԩ����@3������������@0���ļ������˼�룿")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("[��]�Ӽ�","NO_11")
		AddMenuItem("[��]���","N11_ANSWER")
		AddMenuItem("[��]ī��","NO_11")
		AddMenuItem("[��]����","NO_11")

       elseif(LuaQueryTask("T620") == 1 ) then
	    LuaSay("��Ԩ����@3�ͷ�����@0���ļ������˼�룿")
	    AddMenuItem("@7��ѡ��","")
	    AddMenuItem("[��]����","NO_21")
	    AddMenuItem("[��]�ݺ��","NO_21")
	    AddMenuItem("[��]ũ��","NO_21")
	    AddMenuItem("[��]����","N21_ANSWER")

        elseif(LuaQueryTask("T620") == 2 ) then
        LuaSay("��Ԩ����@3�ټ�����@0ָ�����й��ĸ�ʱ�ڣ�")
        AddMenuItem("@7��ѡ��","")
	    AddMenuItem("[��]�Ƴ�","NO_31")
	    AddMenuItem("[��]�峯","NO_31")
	    AddMenuItem("[��]ս��ʱ��","N31_ANSWER")
	    AddMenuItem("[��]����","NO_31")

        elseif(LuaQueryTask("T620") == 3 ) then
	    LuaSay("��Ԩ����@3��Ϊ����@0��˭����ģ�")
	    AddMenuItem("@7��ѡ��","")
	    AddMenuItem("[��]����","NO_41","")
	    AddMenuItem("[��]����","N41_ANSWER","")
	    AddMenuItem("[��]������","NO_41","")
	    AddMenuItem("[��]ī��","NO_41","")
		end

	   elseif(answer=="NO_11") then
           LuaSetTask("T620",0)
           LuaSay("��Ԩ��������ɣ���ô�򵥵�����Ҳ��������ٴ�")

	   elseif(answer=="N11_ANSWER") then
			if(LuaQueryTask("T620")<1) then
           	LuaSetTask("T620",1)
          	LuaAddJx("combat_exp",80000,"T620")
            LuaSay("��Ԩ������ô�򵥵�����������Ҳûʲôϡ��ģ���������")
            DoTalk("T620")
            end
		elseif(answer=="NO_21") then
             LuaSetTask("T620",1)
	         LuaSay("��Ԩ���������ˣ������ٴ�")

		elseif(answer=="N21_ANSWER") then
            if(LuaQueryTask("T620")<2) then
		     LuaSetTask("T620",2)
          	 LuaAddJx("combat_exp",95000,"T620")
          	 LuaSay("��Ԩ���������㻹�������������������")
          	 DoTalk("T620")
          	 end

		elseif(answer=="NO_31") then
             LuaSetTask("T620",2)
	         LuaSay("��Ԩ�����������ȷʵ��һ���ѶȰ��������������ѡ��")

		elseif(answer=="N31_ANSWER") then
           if(LuaQueryTask("T620")<3) then
            LuaSetTask("T620",3)
           	LuaAddJx("combat_exp",125000,"T620")
           	LuaSay("��Ԩ���������Ǵ����������Ҳ֪������������һ�����⡣")
           	DoTalk("T620")
          	end

		elseif(answer=="NO_41") then
            LuaSetTask("T620",3)
            LuaSay("��Ԩ�����������ȷʵ�����ѶȰ��������������ѡ��")

		elseif(answer=="N41_ANSWER") then
            if(LuaQueryTask("T620")<99) then
            LuaSetTask("T620",99)
	        LuaSay("��Ԩ����������̫�����ˣ���Ȼȫ����֪����")
		LuaSay("��Ԩ���������������ĵĸ����㣬��Ҫ��Ʒװ��������ȥɱҰ��BOSS�͸����������м��ʳ���Ӧ�ȼ�����װŶ@!")
	        LuaGive("coin",2000,"T620")
		LuaGive("e_head014",1,2,"T620")
            LuaAddJx("combat_exp",120000,"T620")
			LuaAddAchievementSchedule("Task_num",1)	
            DelLog("620")
            UpdateMenu()
            end 
                                                                               -------��������
elseif(answer=="T622") then
	local T622= LuaQueryTask("T622")
	if(T622==0)then
		LuaSay("��Ԩ��������������ɻ��@3����@0��@2ͭ��@0��@3����@0Ŷ��")
		LuaSay("��Ԩ�����ռ���@2�������������������������@0�������ң���������ڽ��������̴�ͨ��������Ŷ@!")
	   	LuaSetTask("T622",1)
	  	AddLog("ͳһ֮��1�����顿",622)
		UpdateMenu()
	elseif(T622==1) then
		if(LuaItemCount("o_mission020")>=2 and LuaItemCount("o_mission039")>=2) then
			LuaSay("��Ԩ�������¸���������֮��һ�㣬ɱ����С�㣬����Ҳ�޷����棬����֮������ͳһ��ƽ�⣬�ʰ����ںϡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T622jl")
		else
			LuaSay("��Ԩ������Ҫ��@3������������@0��@3������������@0�أ��㻹û�õ�����Ҫ�Ķ�����")
        		UpdateTopSay("������������������������������������������ң�")
        end
	end
    elseif(answer=="T622jl")then
		if(LuaQueryTask("T622")==1) then
			LuaSetTask("T622",99)
        		LuaAddJx("combat_exp",385000,"T622") --ԭ385000��369574
			LuaGive("coin",2700,"T622")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("622")
			DelItem("o_mission020",2)
			DelItem("o_mission039",2)
			UpdateMenu()
        end
 
 elseif(answer=="T621") then                                                 -------ɱ������
	if(LuaQueryTask("T621")==0) then
		LuaSay("��Ԩ����ҹ��Σ������,����ȥ��ɱ@4����ؿ�@0��@330��ҹ��@0��")
		LuaSetTask("task_kill/mon_047/T621",1)
		LuaSetTask("T621",1)
		AddLog("ͳһ֮��2�����顿",621)
		UpdateTopSay("����30��ҹ��")
		UpdateMenu()
	elseif(LuaQueryTask("T621")==1) then
		if(LuaQueryTask("task_kill/mon_047/T621")>=31) then
		LuaSay("��Ԩ�����������嶼����Щ����ѱ��ҹ�棬����ڤ�粻�飬�����ǲб����ʵ��˾�Ҫ�Ա��Ʊ���")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T621jl")
		else
		LuaSay("��Ԩ�����㻹ûɱ��@230��ҹ��@0��")
		UpdateTopSay("ɱ��30��ҹ����������")
		end
	end
	
	elseif(answer=="T621jl")then
		if(LuaQueryTask("T621")==1) then
			LuaDelTask("task_kill/mon_047/T621")
			LuaSetTask("T621",99)
			LuaAddJx("combat_exp",385000,"T621")--ԭ385000��369574
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("621")
			UpdateMenu()
			end                                                                                        ---- �Ի�����
  elseif(answer=="T624") then
	local T624= LuaQueryTask("T624")
	 if(T624==0)then
			LuaSay("Ϊ�񱱷�������ͳһǱ���ģ�ֻ�б����ʱ����@3�ذ���@0��ȥ��@4����ؿ�@0��@3�ذ���@0��̽��ͳһ֮��")
			LuaSetTask("T624",1)
			AddLog("�ʱ����ҡ����顿",624)
			UpdateMenu()
  		elseif(T624==1) then
	      	LuaSay("��Ԩ��:����ô��û�е�@4����ؿ�@0��@3�ذ���@0����ȥ����")
 	 	end



elseif(answer=="T594") then
	if(LuaQueryTask("T594")==2) then
		LuaSay("��Ԩ��:������������Ӣ�۰���")
		AddMenuItem("@7�������","")
       		AddMenuItem("��ȡ����","T594jl")
	end
	elseif(answer=="T594jl") then
		if(LuaQueryTask("T594")==2) then
		LuaAddJx("combat_exp",334555,"T594")--ԭ280000��334555
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T594",99)
		DelLog("594")
		UpdateMenu()
   	 	end
 	

elseif(answer=="T625")then
	if(LuaQueryTask("T625")==0)then
		LuaSay("��Ԩ������@4������·@0��@3�ذ���@0��������������ԭ������")
		LuaSetTask("T625",1)
		AddLog("���ո��ˡ����顿",625)
		UpdateMenu()
	elseif(LuaQueryTask("T625")==1)then
		LuaSay("��Ԩ������Ϊ�λ�û��@2����ؿ�@0��@3�ذ���@0����ȥ����")
		UpdateTopSay("������ؿ����ذ���") 
 	end


elseif(answer=="T626")then
	if(LuaQueryTask("T626")==0)then
		LuaSay("��Ԩ�����ݹ�����Ⱥ�ۣ���������ʵ�����������޼�Ҳ����@4������@0��@3�޼�@0��������������ԭ������")
		LuaSay("��Ԩ�����Ҹ�������һ�⽻������������Ҫ��ʩ�����������������£�����ͳһ���£�")
		LuaSetTask("T626",1)
		AddLog("Ѱ�����������顿",626)
		UpdateMenu()
	elseif(LuaQueryTask("T626")==1)then
		LuaSay("��Ԩ������Ϊ�λ�û��@2������@0��@3�޼�@0����ȥ����")
	elseif(LuaQueryTask("T626")==2)then
		LuaSay(""..LuaQueryStr("name")..":�޼��Ż�δ����˺���ˣ������Ժ�Ҫ��ȥ������")
		LuaSay("��Ԩ�����������ˣ�������֮ı��")
		AddMenuItem("@7�������","")
       		AddMenuItem("��ȡ����","T626jl")
	end
	elseif(answer=="T626jl") then
		if(LuaQueryTask("T626")==2) then
			if(LuaFreeBag()>=1)then
				LuaAddJx("combat_exp",417000,"T626") --ԭ417000��407273
				LuaGive("e_necklace007",1,2,"T626")
				LuaGive("coin",1000,"T626")
				LuaAddAchievementSchedule("Task_num",1)	
				LuaSetTask("T626",99)
				DelLog("626")
				UpdateMenu()
			else
				LuaSay("@5��ܰ��ʾ���뱣�ֱ�����һ���λ��������ȡ���Ľ�����Ϊ����������ʧ��Ŷ@!")
			end
   	 	end
            


elseif(answer=="T734b") then
                 if(LuaQueryTask("T734b") ==0 and LuaItemCount("o_mission300")>=1) then
    			 DelItem("o_mission300",1)
    			 LuaSay("��Ԩ�������Ѿ��ܾò�֪��ζ�ˣ��ذ�����������ܵ���")
    			 LuaSay("��Ԩ��������лл�ذ���")
    			 LuaSetTask("T734b",99)
     			 UpdateMenu()
			end

elseif(answer=="T594") then
	if(LuaQueryTask("T594")==2) then
		LuaSay("��Ԩ��:������������Ӣ�۰���")
		AddMenuItem("@7�������","")
       		AddMenuItem("��ȡ����","T594jl")
	end
elseif(answer=="T594jl") then
	if(LuaQueryTask("T594")==2) then
		LuaAddJx("combat_exp",400000,"T594") --ԭ400000��334555
		LuaSetTask("T594",99)
		DelLog("594")-------��־��ɾ��
		UpdateMenu()
	end


 elseif(answer=="T627") then  -------����ҹ��
	if(LuaQueryStrTask("627day")~=GetCurrentDay())then
		LuaDelTask("T627num")
	end
	if(LuaQueryTask("T627")==0) then	
			LuaSay("��Ԩ����Ӣ���������ã�����ҹ��������գ���������ȥ����30ֻҹ��ɡ����Ǿ���@4����ؿ�@0��")
			if(TeamCount()>=2)then
				LuaSay("��Ԩ������Ӵ�ֲ����ж���ľ���ӳɣ����ܼӿ���������ٶȺͽ�������@!")
			else
				LuaSay("��Ԩ������Խ��Խ�׵Ĺ�����ǰ������������Ǻܳ�����Ŷ�����������϶��飬���ж���ľ��齱��Ŷ@!")
			end
			LuaSetTask("task_kill/mon_047/T627",1)
			LuaSetTask("T627",1)
			LuaAddTask("T627num",1)
			LuaSetTask("627day",GetCurrentDay())
			AddLog("����ҹ�桾ѭ����",627)
			UpdateTopSay("����30��ҹ����������")
			UpdateMenu()
	elseif(LuaQueryTask("T627")==1) then
		if(LuaQueryTask("task_kill/mon_047/T627")>=31) then
		LuaSay("��Ԩ�������ĺܺã����Ǹ���Ľ�����")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T627jl")
		else
		LuaSay("��Ԩ�����㻹û����@230��ҹ��@0���������㹻��ҹ���������Ұɡ����Ǿ���@4����ؿ�@0��")
		end
	end
	
	elseif(answer=="T627jl")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T627")==1 and LuaQueryTask("task_kill/mon_047/T627")>=31) then
			LuaDelTask("task_kill/mon_047/T627")
			LuaDelTask("T627")
			local jingyan
			local bexp
			local money
			if(LuaQuery("level")<20)then
				money=200
			elseif(LuaQuery("level")<30)then
				money=300
			elseif(LuaQuery("level")<40)then
				money=400
			elseif(LuaQuery("level")<40)then
				money=500
			elseif(LuaQuery("level")<100)then
				money=600
			end
			if(TeamCount()>=2)then
				bexp=90770
			else
				bexp=56770
			end
			if(LuaQueryTask("T627num")<=30)then
			LuaGive("coin",money,"T627")
			jingyan=(bexp+level^2*20)
			else
			LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
			jingyan=(bexp+level^2*20)/2
			end
			LuaAddJx("combat_exp",jingyan,"T627")
			if(LuaQueryTask("T627_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T627_a",99)
			end
	
			DelLog("627")
			UpdateMenu()
			end 


elseif(answer=="Tsnpc_56")then
	if(LuaQueryTask("Tsnpc_56")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��Ԩ�������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_56",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_56")==2)then
		LuaSay("��Ԩ�������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_56")then
	if(LuaQueryTask("Tenpc_56")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("��Ԩ�����ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_56",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_56")==2)then
		LuaSay("��Ԩ�������Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end
