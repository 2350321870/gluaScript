NPCINFO = {
serial="126" ,
base_name="laoweng" ,
icon=2558,
NpcMove=2558,
name="��������" ,
iconaddr=1 ,
butt="10|10|55" ,
name_color="CEFFCE",
lastsay="�������������գ�ʹ�գ�",
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
       local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
		if((LuaQueryTask("Tsnpc_58")==1 or LuaQueryTask("Tsnpc_58")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_58")
		if(LuaQueryTask("Tsnpc_58")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_58")==1 or LuaQueryTask("Tenpc_58")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_58")
		if(LuaQueryTask("Tenpc_58")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T738") ==2 or LuaQueryTask("T738") ==3) then
		AddTopSayMenuItem("@2�����ˡ����顿","T738")
		if(LuaQueryTask("T738")==2) then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T730")==1 or LuaQueryTask("T730")==2) then
		AddTopSayMenuItem("@2�ذ����ġ����顿","T730")
		if(LuaQueryTask("T730")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T744")==1 or LuaQueryTask("T744")==2) then
		AddTopSayMenuItem("@2���̵Ĺ��¡����顿","T744")
	end
	if(LuaQueryTask("T745")==1 or LuaQueryTask("T745")==2) then
		AddTopSayMenuItem("@2���̵Ĺػ������顿","T745")
		if(LuaQueryTask("T745")==2) then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T648")==2) then
		AddTopSayMenuItem("@2���ӵĹػ������顿","T648")
		havetask2 =1
	end
	if(LuaQueryTask("T734")==2 and LuaQueryTask("T734a")==0)  then
		AddTopSayMenuItem("@2��������顿@0","T734a")
		havetask2 =1
	end
	if(LuaQueryTask("Tbprw003")==5 or LuaQueryTask("Tbprw003")==6)then
		AddTopSayMenuItem("@2̽�����ơ�ÿ�ա�","Tbprw003")
		if(LuaQueryTask("Tbprw003")==5)then
			havetask2=1
		end
	end

--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T743") ==1) then
		AddTopSayMenuItem("@2���ԡ�ѭ����","T743")
		havetask4 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T743")==0 and  LuaQuery("level")>=41 and  LuaQuery("level")<=45 ) then
		AddTopSayMenuItem("���ԡ�ѭ����","T743")
		havetask1 =1
	end
	if(LuaQueryTask("T744")==0 and  LuaQuery("level")>=42 ) then
		AddTopSayMenuItem("���̵Ĺ��¡����顿","T744")
		havetask1 =1
	end
	if(LuaQueryTask("T745")==0 and  LuaQuery("level")>=42 ) then
		AddTopSayMenuItem("���̵Ĺػ������顿","T745")
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
--------------------------------------------------------------------------------
    if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")              --ͷ���ʺ�
	elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
    elseif(havetask ==1) then
        AddTopSayMenuItem("����","liaotian","1")                --ͷ��̾��
    else
	AddTopSayMenuItem("����","liaotian","0")
    end
	return 1
--------------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("��������:���·�������ʱ����̫ƽ�����ϰ��յ����ӣ��Ѱ����Ѱ���")   --����

--------------------------------------------------------------------------------
elseif(answer=="T730")then
	if(LuaQueryTask("T730")==1)then
		LuaSay("�������̣�������˭�������кι�ɣ�")
		LuaSay(""..LuaQueryStr("name").."��������@4����ؿ�@0��@3�ذ���@0֮�У�ǰ��̽�������˼ҵģ����˼������廹�ðɣ�")
		LuaSay("�������̣�ԭ����ˣ���������ˡ����͸�����ȥ�ظ�@3�ذ���@0������лл�����Ҿ�����ͷһ��������������˹��ģ�")
		LuaSetTask("T730",2)
		AddLog("�ذ����ġ����顿",730)
		UpdateMenu()
		UpdateNPCMenu("laoweng")
    elseif(LuaQueryTask("T730")==2)then
        LuaSay("�������̣��㻹��ʲô��Ҫ������ô����ȥ@4����ؿ�@0��@3�ذ���@0�ظ���")
	end
elseif(answer=="T738")then
	if(LuaQueryTask("T738")==2) then
		 LuaSay(""..LuaQueryStr("name").."���ذ��ǽ������������˼����Щ��ô��")
		 LuaSay("�������̣��������Ǻ��ˣ���@3�ذ���@0������Ⱦ�ˣ����ս���������ҵİɣ����հ���֧�����ͻ����ˡ�")
         LuaSay("�������̣������˵�ҩ��Ӧ���ܻ���һ�²��飬�������ȥ�����ɡ���������û�ñ����������ۣ�")
         LuaSetTask("T738",3)
		 AddLog("�����ˡ����顿",738) 
		 UpdateMenu()
		 UpdateNPCMenu("tuobayi")
	elseif(LuaQueryTask("T738")==3) then
		 LuaSay("�������̣���զ�Ͳ�֪�����ؼ����أ�@4����ؿ�@0��@3�ذ���@0����Σ�ڵ�Ϧ����զ��û��ҩ�͹�ȥ����")
	end	  

elseif(answer=="T743") then
	if(LuaQueryStrTask("743day")~=GetCurrentDay())then
			LuaDelTask("T743num")
	end
	if(LuaQueryTask("T743")==0)then
		LuaSay("�������̣�@4����ؿ�@0��@3�Ի�@0���������֣�������ʳ��Ҫ�����ˣ���ȥɱ��@330ֻ�Ի�@0�ɣ�")
		LuaSetTask("T743",1)
		LuaAddTask("T743num",1)
		LuaSetTask("743day",GetCurrentDay())
		LuaSetTask("task_kill/mon_046/T743",1)
		AddLog("���ԡ�ѭ����",743)
		UpdateMenu()
	elseif(LuaQueryTask("T743")==1)then
		if(LuaQueryTask("task_kill/mon_046/T743")>=31) then
			LuaSay("�������̣���л��İ�����")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T743jl")
		else
			LuaSay("�������̣��㻹û��ɱ��@330ֻ�Ի�@0��")
			UpdateTopSay("ɱ��30ֻ�Ի���������")
		end
	end

		elseif(answer=="T743jl")then
			local level=LuaQuery("level")
			if(level>80)then
				level=80
			end
			if(LuaQueryTask("task_kill/mon_046/T743")>=31) then
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
			if(LuaQueryTask("T743num")<=30)then
  			 jingyan=(58870+level^2*20)
			 LuaGive("coin",money,"T743")
			else
			 LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
			jingyan=(58870+level^2*20)/2
			end

				LuaAddJx("combat_exp",jingyan,"T743")
				if(LuaQueryTask("T743_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T743_a",99)
				end

				LuaDelTask("task_kill/mon_046/T743")
				LuaDelTask("T743")
				DelLog("743")
				UpdateMenu()
			end



elseif(answer=="T744") then
	if(LuaQueryTask("T744")==0) then
		LuaSay(""..LuaQueryStr("name").."��@3��������@0����Ϊ�ζ���һ������ķϵĴ��䣬��ļ����أ�")
		LuaSay("�������̣��������֣�ɱ������ȫ�ң���@3Ľ�ݴ�@0���������������ˣ���@3��̫��@0��ŪȨ�����ҷ��֣����Ӻ����ң����������ڴ˲ű�ס��С������")
		LuaSay(""..LuaQueryStr("name").."���治֪��@3Ľ�ݼ���@0���������Ĺ��°������������������ţ�")
		LuaSay("�������̣�������Ҳ����������֮�ˣ����ž͵�@4����ؿ�@0��@3�ذ���@0��ѯ�ʱ�֪��")
		LuaSetTask("T744",1)
		AddLog("�������̵Ĺ��¡����顿",744)
		UpdateMenu()
		UpdateNPCMenu("tuobayi")
	elseif(LuaQueryTask("T744")==1) then
		LuaSay("�������̣��㲻��Ҫ��֤����ô����ȥ��@4����ؿ�@0��@3�ذ���@0��")
	end
	
	

elseif(answer=="T745") then
	if(LuaQueryTask("T745")==0) then
		LuaSay("�������̣�Ľ�ݴ���һ�ӣ��Ը��Ƨ����������������С�Ͱ����������ͷ�Ӵ���һ����һֱ���������ӿ�����")
		LuaSay("�������̣����ڶ����ȥ��Ҳ��֪���������������Ҹ�������һ�⣬�㵽@4̫�йž�@0ȥ����@3����Ľ����@0�ɣ�")
		AddLog("�������̵Ĺػ������顿",745)
		LuaSetTask("T745",1)
		UpdateMenu()
	elseif(LuaQueryTask("T745")==1) then
		LuaSay("�������̣���û�е�@4̫�йž�@0��@3Ľ����@0����ȥ����")
	elseif(LuaQueryTask("T745")==2) then
		LuaSay("�������̣������ڹ�����ô����")
		LuaSay(" "..LuaQueryStr("name").."��������ͦ�õģ��㲻�ù�����" )
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T745jl")
	end
 	elseif(answer=="T745jl")then
			if(LuaQueryTask("T745")==2)  then
			LuaSetTask("T745",99)
			DelLog("745")
			LuaAddJx("combat_exp",459000,"T745")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",500,"T745")
			UpdateMenu()
			end		   


elseif(answer=="T648")then
	if(LuaQueryTask("T648")==2)then
		LuaSay(""..LuaQueryStr("name").."��Ľ�������Ҹ����㣬�����ڼҺú�����������ʱ���������������������˼ҵģ�")
		LuaSay("�������̣�����~~�����������������ˣ�")
		LuaSetTask("T648",3)
		AddLog("���ӵĹػ������顿",648)
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T648jl")
		UpdateMenu()
	end
		elseif(answer=="T648jl")then
			if(LuaQueryTask("T648")==3)  then
			LuaSetTask("T648",99)
			DelLog("648")
			LuaAddJx("combat_exp",598000,"T648")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",1000,"T648")
			UpdateMenu()
			end
			
elseif(answer=="T734a") then
                if(LuaQueryTask("T734a") ==0 and LuaItemCount("o_mission300")>=1) then
    			 DelItem("o_mission300",1)
    			 LuaSay("�������̣����Ѿ��ܾò�֪��ζ�ˣ��ذ�����������ܵ�")
    			 LuaSay("�������̣�����лл�ذ���")
    			 LuaSetTask("T734a",99)
     			 UpdateMenu()
     			 UpdateNPCMenu("tuobayi")
		end			
			
elseif(answer=="Tbprw003")then          -----------------------̽������
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw003")==5)then
			LuaSay(LuaQueryStr("name").."����˵���Ǵ�ҹ��ϵ����ߣ�����Զ����������������������⣬��֪�ɷ�")
			LuaSay("�������̣�������ô���ĺ�ѧ�ķ��ϣ�����ָ��һ������ʲô���Ⱑ��")
			LuaSay(LuaQueryStr("name").."����������Խ��Խ�����ٵ���սҲԽ��Խ�࣬����ô���أ�")
			LuaSay("�������̣����������ж�󣬲�Ҫ���˵����İ�����ּ����Ҫƫ�뷽������ˣ�")
			LuaSetTask("Tbprw003",6)
			UpdateMenu()

		elseif(LuaQueryTask("Tbprw003")==6)then
			LuaSay("�������̣���ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
		end
	else
		LuaSay("�������̣������������@2̽�����ơ�ÿ�ա�δ��ɣ������Զ����ã���@4����@0�����½�����ɣ�")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaDelTask("Tbprw003")
		UpdateMenu()
	end


elseif(answer=="Tsnpc_58")then
	if(LuaQueryTask("Tsnpc_58")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�������̣����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_58",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_58")==2)then
		LuaSay("�������̣����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_58")then
	if(LuaQueryTask("Tenpc_58")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�������̣��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_58",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_58")==2)then
		LuaSay("�������̣����Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end
