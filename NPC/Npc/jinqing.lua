NPCINFO = { 
serial="25" ,
base_name="jinqing" ,
icon=2562,
NpcMove=2562,
name="���幫�����顿" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE" ,
lastsay="�ܴٳ������е��˶�����������ã������Ҹ�",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
		 local level= LuaQuery("level")
		AddTopSayMenuItem("@7�����б�","")
		for i=4,10,1 do
			if(GetCurrentDay()=="2011-8-"..i.."")then
				AddTopSayMenuItem("@3��Ϧ�","Tqixijie")
			end
		end
		if(LuaQueryTask("TzhongqiudsA")==1 or LuaQueryTask("TzhongqiudsA")==2) then       --����
		AddTopSayMenuItem("@2ʫ������@0","Tzhongqiuds")
		havetask=2
		end
		AddTopSayMenuItem("@3����ƽ̨","HYPT")
		if(LuaQueryTask("T123")==0 and LuaQueryTask("T126")==99) then
			AddTopSayMenuItem("������Ӫ�����顿","T123")
			havetask =1
		end
		--if(LuaQueryTask("T126")==0 and level >=20)  then
			--AddTopSayMenuItem("�Ƽ����ˡ��̡̳�","T126")
			--havetask =1
		--end 
		if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_jinqing")==0)  then	--����ڻ
			AddTopSayMenuItem("@2���Ӵ���","Tduanwu")
			havetask =2
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_9")==1 or LuaQueryTask("TfindNPC_9")==2)then
				AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_9")==98)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
		end

		if(LuaQueryTask("T126")==1)  then
			AddTopSayMenuItem("@2�Ƽ����ˡ��̡̳�","T126")
			if(LuaQueryTask("T126A") == 99) then
			havetask =2
			end
		end 
		if(LuaQueryTask("T123")==1) then
			AddTopSayMenuItem("@2������Ӫ�����顿","T123")
		end
		AddTopSayMenuItem("@3����","hunyin")

		if((LuaQueryTask("Tsnpc_11")==1 or LuaQueryTask("Tsnpc_11")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_11")
			if(LuaQueryTask("Tsnpc_11")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_11")==1 or LuaQueryTask("Tenpc_11")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_11")
			if(LuaQueryTask("Tenpc_11")==1)then
				havetask2=1
			end
		end
		
		if(LuaQuery("level")>=20) then
			AddTopSayMenuItem("@3��Ǯ������","JQHJY")
		end

		if(LuaQueryTask("bao_B")~=0)then
			AddTopSayMenuItem("@2��֦���顾���ء�","T127")
			havetask =2
		end
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
			AddTopSayMenuItem("@3�������᡾���","T1005")
		end
		if(LuaQueryTask("T302")==2 and LuaQueryTask("T302B")==0) then
			AddTopSayMenuItem("@2ÿ����ʹ@0","T302B")	
			havetask =2 
		end 
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1

elseif(answer=="liaotian") then
	LuaSay("���幫�������Ҹ��࣬�����ܿࡣ���������������ģ�����Щ�£�Ϊ�һ�����������ɡ�")

---------------------------�����
elseif(answer=="Tduanwu") then
    if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_jinqing")==0)  then
        if(LuaItemStatusNormalCount("o_mission205")>=1) then
        LuaSay("���幫�����ѵ�������ܵ���ÿ����綼����������")
		DelItem("o_mission205",1)
		LuaSetTask("Tdwj_zzcq_jinqing",99)
		UpdateMenu()
	else
  		LuaSay(""..LuaQueryStr("name").."��С�����ǲ�������Ȼ���ֶ��������ȥ׼��@3��Ʒ����")
        end
	end
elseif(answer=="Tzhongqiuds")then
    if(LuaQueryTask("TzhongqiudsA")==1)then
        LuaSay("���幫��������������Ѱʫ�ģ����ҿ������ҵ���ʲôʫ�����ʫд����ã���ϧ������û�У�")
        LuaSay("���幫������@3��������@0����ȥ����������Ҳ���ܵõ�����Ҫ��ʫ��")
		LuaSetTask("TzhongqiudsA",2)
				AddMenuItem("ѡ��","")
			     	AddMenuItem("�������ĺ���","cstyj")
			     	AddMenuItem("���ڲ�ȥ","zjptyj")
    elseif(LuaQueryTask("TzhongqiudsA")==2) then
		LuaSay("���幫��:��ô�㻹û��@3��������@0����ȥ�أ�")
		AddMenuItem("ѡ��","")
				     	AddMenuItem("�������ĺ���","cstyj")
				     	AddMenuItem("���ڲ�ȥ","zjptyj")
	end
 elseif(answer=="cstyj")then
					        ChangeMap("lu_tyhj")
					 elseif(answer=="zjptyj")then
					     LuaSay("��ʾ�����ڲ�ȥ��")
----------------------------------------------------

elseif(answer=="T124") then         ------------------------�ʴȹ���
		if(LuaQueryTask("T124") == 0 ) then
		  LuaSay("���幫���������޼������ѹ����ս���Ѿ����ӵ����Ϸ������һ��Ů���޷����������Щ����������æ�ɣ�")
		  LuaSay("���幫������˵ǰ��ҩ����ţ��ɷ��ͷ�Ӣ�۰����ȥ@4��������@0��@3ҩƷ����@0������@21�ݽ�ɢ@0��@!")
		  LuaSetTask("T124",1)
		  UpdateTopSay("ȥҩƷ���˴�����1ƿ��ɢ")
		  AddLog("�ʴȹ��������顿",124)
		  UpdateMenu()
		elseif(LuaQueryTask("T124") == 1 ) then
		  if(LuaItemCount("o_drug_hp1")>=1) then
		    LuaSay("���幫������л���İ�������������˾��Ҳ����������Ķ��飡")
		    LuaSay("@1��ܰ��ʾ�����Ѿ��ﵽ20��������ȥ@4������@0��@3ѱ��ʦ@0����ȡ��ѵ�@3���鱦��@0ʱ��Ŷ��@!")
		    AddMenuItem("@7�������","")
		    AddMenuItem("��ȡ����","T124jl")
		    else
		    LuaSay("���幫�����㻹û��ȥ@3ҩƷ����@0������@2һƿ��ɢ@0�أ�������������ɡ�")
		  end
		end
          elseif(answer=="T124jl")then
           if(LuaQueryTask("T124")==1) then
		    DelItem("o_drug_hp1",1)
		    LuaSetTask("T124",99)
		    DelLog("124")
		    LuaAddJx("combat_exp",119000,"T124")
			LuaAddAchievementSchedule("Task_num",1)
		    UpdateMenu()
		    end

elseif(answer=="T123") then              ------------------------������Ӫ 
		if(LuaQueryTask("T123")==0) then
		LuaSay("���幫�������´��ң�������Ű���һ���һ�����ȴֻ��ƫ��һ�磬�ҿ��б��������֧���Ҵ������")
		LuaSay("���幫����������ֵ���٣��β�ȥ֧Ԯ������ʿ��˳���������ο�ʱ���������ȥ��@4������Ӫ@0��@3л��@0�ɣ�@2����@0���Ǿ͵��ˡ�")
                LuaSetTask("T123",1)
		UpdateTopSay("ȥ�ұ�����Ӫ��л��̸��")
                AddLog("������Ӫ�����顿",123)
		UpdateMenu()
		elseif(LuaQueryTask("T123")==1) then
		LuaSay("���幫������ȥ��@3л��@0�ɣ���������������ģ���������@4������Ӫ@0�У�@2����@0���Ǿ͵��ˡ�")
		end

 ----------------------------------------------------------     ����

elseif(answer=="hunyin") then
	local level= LuaQuery("level")
	LuaSay("���幫������Ҫ�����Ҫ���������Ƚ������룬����ɹ�����ȥ@4������Դ@0��顣@!")
	LuaSay("���幫�����ҽ����ǵĸ�������Ա���Ϳɽ���@4������Դ@0�ˡ�")
	AddMenuItem("@7����","")
	AddMenuItem("������","sqjh")       --����󣬵�������飬����ʧЧ
	AddMenuItem("�������","buban")
	AddMenuItem("�������","sqlh")
elseif(answer=="sqjh") then
	local level= LuaQuery("level")
        if(GetCurrentDay()~=LuaQueryStrTask("Tjhday")) then
		LuaDelTask("Thunyinsq")
		LuaDelTask("Tjhday")
        end
	if(TeamCount()== 2 and level>=30 and TeamQuery("level")>=30) then
		if(IsLassie()==0) then   --��������   
			if(LuaQueryTask("Thunyinsq")==0) then 
				if(LuaItemCount("coin")>=20000) then
					LuaSay("��ʾ����Ҫ����2����Ҫ@3˫˫������@0�������Ϳ��Խ���@4������Դ@0���л����ˣ�����������ֻ�е���Ŷ@!")
					LuaSay("��ʾ��Ϊ��ֹ�����ƻ����������@312�㵽24���@0���л������ʱ����ֻ�г�@2�������@0�߲��ܽ���@!")
					LuaNotice("@3"..LuaQueryStr("name").."@0��@3"..TeamQueryStr("name").."@0�����˽�飬��ӭ���ǰȥ@4������Դ@0����Ŷ@!")
					LuaGive("coin",-20000,"Thunyin")
					LuaSetTask("Thunyinsq",1) 
					LuaSetTask("Tjhday",GetCurrentDay())
				else
					LuaSay("��ʾ��������@32Wͭ��@0����������Ŷ��@!")
				end
			else
				LuaSay("��ʾ�����Ѿ������˽�����룬��������������@!")
			end
		else
			LuaSay("���幫���������Ѿ�����ˣ������������飬�������Բ������Ŷ��@!")
		end
	else
		LuaSay("��ʾ��2��@330��@0��@3û����ż@0�������ӣ����������顣")
	end                                                            
		
elseif(answer=="buban") then
	local level= LuaQuery("level")
	if(TeamCount()== 2 and IsLassie()==1) then
		if(LuaQueryTask("Thunyinsq")~=2) then 
			if(LuaItemCount("coin")>=100000) then 
				LuaGive("coin",-100000,"Thunyin")
				LuaSay("��ʾ��������2�˶����벹�����󣬾Ϳ��Խ���@4������Դ@0���л����ˡ���Ҫ2�˶�����Ŷ��@!")
				LuaSay("@5��ʾ����Ҫע����ǲ������ֻ�޵�����ЧŶ���Ͽ�ץ��ʱ��")
				LuaSetTask("Thunyinsq",2)
				LuaSetTask("Tjhday",GetCurrentDay())
			else
				LuaSay("��ʾ�����ϱ�����10Wͭ�Ҳ������벹�����@!")
			end
		else
			LuaSay("��ʾ�����Ѿ�������@3�������@0�������������ˡ�@!") 
		end 
	else
		LuaSay("��ʾ���Ѿ����˻�������Ҫ������Ӻ�ſ����벹�����������ֻ��@3������@0��@!")

	end 
      
elseif(answer=="sqlh") then
	LuaSay("��ʾ��ȥ��@4������Դ@0��@3����@0����")

-----------------------------------------------------------
elseif(answer=="T302B") then
	   if(LuaQueryTask("T302B")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("���幫����û�뵽���������ƣ������˸���д�ţ������һ���������������@!")
	   DelItem("o_mission076",1) 
	   LuaSetTask("T302B",99)
	   UpdateMenu()
	   end


elseif(answer=="T120") then
   if(GetCurrentDay()~=LuaQueryStrTask("T120day")) then
      LuaSetTask("T120",0)
      LuaSetTask("T120A",0)
      LuaSetTask("T120B",0)
   end
   if(LuaQueryTask("T120")==0) then
       if(TeamCount()== 2 and IsLassie()==1) then
		   LuaSay("���幫���������������ɽ�ˣ����ջ���������ǰ�Ƿǳ��Ĳ԰�������")
		   LuaSay("���幫�����Ǳߵ�@3˾��Ԫ��@0���Ǽ����ó�˫��Ե��˶�������2�˱���˫˫ͨ��@3˾��Ԫ��@0�Ŀ��顣")
		   UpdateTopSay("ȥ˾��Ԫ�Դ����ܿ���ɡ�")
           LuaSetTask("T120day",GetCurrentDay())
           LuaSetTask("T120",1)
	   AddLog("���Ŀ���[ÿ��]",120)
           UpdateNPCMenu("chenshimei")
	   else
         LuaSay("��ʾ���������2����ӣ����ɽӴ�����")
	   end
	 elseif(LuaQueryTask("T120")==1) then
		if(TeamCount()== 2 and IsLassie()==1) then
		    if(LuaQueryTask("T120A")==99 and TeamQueryTask("T120A")==99) then
		      LuaSay("���幫������Ȼ�ܹ�ͨ��@3˾��Ԫ��@0�Ŀ��飬���������������మ�ģ��ܶ��˶��ڽ�Ǯ��ǰ���������ء�")
		      LuaSay("���幫����������Ҫͨ�����Ŀ��飬����2�˻���һ��ȥ�����ĺ������ұߵ�@3��������@0Ŷ��@!")
		      LuaSetTask("T120",2)
		      AddLog("���Ŀ���[ÿ��]",120)
		    elseif(LuaQueryTask("T120A")==98 or TeamQueryTask("T120A")==98) then
		     LuaSay("���幫������������һ��Ϊ�˽�Ǯ����������ˣ����ǿɱ���������û��ͨ��@3˾��Ԫ��@0�Ŀ��飬����õ��κεĽ�����")
		     LuaSetTask("T120",99)
		     DelLog("120")
		     UpdateMenu()
		    elseif(LuaQueryTask("T120A")<98 and TeamQueryTask("T120A")<98) then
		     LuaSay("���幫��������2�˻�û��ȥ@3˾��Ԫ��@0������ܿ����ء�")
		     UpdateTopSay("ȥ˾��Ԫ�Դ����ܿ���")
            else
             LuaSay("���幫���������е�һ�˻�û��ȥ����˾��Ԫ�ԵĿ����ء�")
		   end
        else
            LuaSay("���幫�����������2����Ӳ��ܽ�������@!")
        end
	elseif(LuaQueryTask("T120")==2) then
	 local level= LuaQuery("level")
	 	if(level>80)then
			level=80
		end
         if(TeamCount()==2 and IsLassie()==1) then
               if(TeamQueryTask("T120B")==99 and LuaQueryTask("T120B")==99) then
                 LuaSay("���幫�������Ǿ�Ȼͨ�������ؿ��飬������Ƚ�ᰡ��")
                 local jingyan=200000+35*level^2
                 LuaAddJx("combat_exp",jingyan,"T120")
                 LuaGive("coin",5000,"T120")
                 LuaSetTask("T120",99)
		 DelLog("120")
			   else
			     LuaSay("���幫�������Ƿ���2�˻�û��һ��ȥ�����ĺ������ұߵ����������ء�")
               end
           else
           LuaSay("���幫�����������2����Ӳ��ܽ�������")
           end

	elseif(LuaQueryTask("T120")==99) then
		LuaSay("���幫�������Ѿ������˽���@3���Ŀ���@0���������������Ұɡ�")
   end

elseif(answer=="T126") then                    ------------�Ƽ�����
	if(LuaQueryTask("T126") == 0) then
         LuaSay("���幫�����ǲ������Ϊʲô���˲���Ǯ����ӵ�кܶ��������ߣ��ǲ�����Ľ����������Ǹ���һȺС�ܣ�")
         LuaSay("���幫������Щ����@3�Ƽ�ϵͳ@0�Ĺ��ͣ�ֻҪ���ɹ��Ƽ�������һ����ͳһ���������л����ô����Ļ����Լ����ֻ����ߵĻ��ᡣ ")
         LuaSay("���幫������������Ǯ����������Ǯ�˵���硣��ȥ@3������@0�����˽�һ���Ƽ�ϵͳ�ɣ� ")
	 LuaSetTask("T126",1)
         AddLog("�Ƽ����ˡ��̡̳�",126)
         UpdateMenu()  
	 UpdateTopSay("ȥ�������˽��Ƽ�ϵͳ")
	elseif(LuaQueryTask("T126") == 1) then 
		LuaSay("�����ǻ����˸������˺���ң��������������Խύ���ܶ�����Ŷ")
		end
		  elseif(answer=="T126jl") then
                if(LuaQueryTask("T126") == 1 and LuaQueryTask("T126A") == 99) then
		        LuaSetTask("T126",99)
		        DelLog("126")
		        LuaAddJx("combat_exp",112500,"T126")
				LuaAddAchievementSchedule("Task_num",1)
		        LuaGive("coin",1000,"T126")
		        UpdateMenu()
			end
-------------------------------------------------------------
elseif(answer=="T127")then--TeamQuery

	if(LuaQueryStrTask("127Taskday")~=GetCurrentDay()) then
		LuaSetTask("127dotime",0)
	end
	if(LuaItemStatusNormalCount("o_mission153")>=1)then
		if(LuaQueryTask("127dotime")<10) then
			if(LuaQueryTask("T127")==0)then
				LuaSay("���幫������֦�����Ƶ����ϵͳ�����Ҳ��Ҫ��ͨ������ڹ���Ƶ��˵�䣺@3�Ұ�ͳһ@0,˵����������Ŷ��һ��Ҫ�����һ��Ŷ")
				LuaSetTask("T127",1)
				AddLog("��֦����",127)
				UpdateMenu()
			elseif(LuaQueryTask("T127")==1)then
				if(LuaQueryTempStr("last_channel_msg")=="�Ұ�ͳһ")then
					LuaSay("���幫������ϵͳ�����ɹ���ף����Ϸ��죡")
					if(LuaItemStatusNormalCount("o_mission153")>=1)then
						AddMenuItem("@7�������","")
						AddMenuItem("��ȡ����","T127jl")
					else
						LuaSay("��ʾ���㱳������û�н�֦��������ȡ����")
					end
				elseif(LuaQueryTempStr("last_channel_msg")=="")then
					LuaSay("���幫���������ͷʲôҲû˵,��~~��")
					LuaDelTask("T127")
					LuaDelTask("bao_B")
					DelLog("127")
					DelItem("o_mission153",1)
					UpdateMenu()
				elseif(LuaQueryTempStr("last_channel_msg")=="����Ҳ��˵")then
					LuaSay("���幫�����㣬�㣬�㣬����������~~~~~~�����������ˣ�")
					LuaSet("hp",LuaRandom(10))
					FlushMyInfo(0)
					LuaNotice("���@3"..LuaQueryStr("name").."@0û�������Ļ���������һ�����ȵ��ڵأ���Ҳ����������")
					LuaDelTask("T127")
					LuaDelTask("bao_B")
					DelLog("127")
					DelItem("o_mission153",1)
					UpdateMenu()
				elseif(LuaQueryTempStr("last_channel_msg")=="��Ů")then
					LuaSay("���幫�����������ǲ��Ե�@!")
					LuaDelTask("T127")
					LuaDelTask("bao_B")
					DelLog("127")
					DelItem("o_mission153",1)
					UpdateMenu()
				else
					LuaSay("���幫�������Ǵ�����˻���˵�˻��������治��������ȡһ���������Ҫ����һ����֦����Ҫ�˷ѻ���Ŷ��")
					LuaDelTask("T127")
					LuaDelTask("bao_B")
					DelLog("127")
					DelItem("o_mission153",1)
					UpdateMenu()
				end
			end
		else
			LuaSay("���幫��������������ף��̫���ˣ�����������@!")
			LuaDelTask("bao_B")
			UpdateMenu()
		end
	else
		LuaSay("���幫����С���ӣ���������ôƯ����Ҳ����ˣ����ʵ�ĸ����ң��ǲ���͵͵����ȥ������@!")
	end
	
	elseif(answer=="T127jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaItemStatusNormalCount("o_mission153")>=1)then
			if(LuaQueryTask("T127")==1) then
				local jingyan
				LuaDelTask("T127")
				DelItem("o_mission153",1)
				LuaDelTask("bao_B")
				if(level<20)then
					jingyan=(21037+level^2*20)
				elseif(level<30)then
					jingyan=(33000+level^2*20)
				elseif(level<40)then
					jingyan=(43682+level^2*30)
				elseif(level<50)then
					jingyan=(53682+level^2*30)
				elseif(level<60)then
					jingyan=(64682+level^2*30)
				else
					jingyan=(84682+level^2*40)
				end
				LuaAddJx("combat_exp",jingyan,"T127")
				LuaGive("coin",3000+LuaRandom(7000),"T127")
				DelLog("127")
				UpdateMenu()
			end
		else
			LuaSay("@5��ʾ����û��Я����֦")
		end


---------------------------------

-------------------------------------------------��Ǯ������
elseif(answer=="JQHJY") then
	if(LuaQueryStrTask("JQHJY_Taskday")~=GetCurrentDay()) then
		LuaSetTask("JQHJY_TIMES",0)
		LuaSetTask("TIMES_times",0)
		LuaSetTask("JQHJY_Taskday",GetCurrentDay())
	end
	--LuaSay("���幫�����������������@2��Ǯ������@0����������������������ˣ����ܸ����������ʽ�һ�����ã�")
	if(LuaQueryTask("JQHJY_TIMES")<10 and LuaQuery("level")<=98) then
		--LuaSay("���幫��������Ի���@35000@0ͭ�һ�ȡ����ֵ����ȡ�ľ���ֵ����1�򣬶�Ŀɴ�100�򣡻��ܻ�@2"..(10-LuaQueryTask("JQHJY_TIMES")).."@0�Σ�")
		AddMenuItem("ѡ���б�","")
        AddMenuItem("1680Ԫ��ֱ��55��","JQHJY55_YES2")
		AddMenuItem("50wͭ�һ�����","JQHJY_YES2")
		AddMenuItem("5wͭ�һ�����","JQHJY10_YES2")        
		AddMenuItem("����","JQHJY_NO2")		
	else
		if(LuaQuery("level")>98)then
			LuaSay("���幫�������Ѿ�99����,�Լ�Ҫѧ��ȥ������,�����ٳ�����");
		else
		LuaSay("���幫����������Ǯ������Ĵ����Ѿ��ﵽ10�Σ�������500��@2Ԫ��@0��ȡ10�ν�Ǯ������Ļ��ᣡ")
		AddMenuItem("ѡ���б�","")
		AddMenuItem("��","JQHJY_YES")		
		AddMenuItem("����","JQHJY_NO")
		end
		
	end
elseif(answer=="JQHJY_NO") then
	LuaSay("���幫�����Ǻǣ��Լ��������Ҳ��ʧΪһ�ַ�����")
elseif(answer=="JQHJY_YES") then
	--��ѯͨ��LuaItemStatusNormalCount("o_gold1y")
	--DelItem("o_gold1y",500)
	if(LuaQueryMoney()>=500) then
        if(LuaQueryTask("TIMES_times")<200) then
        LuaAddYB(1,-500)
	    LuaSetTask("JQHJY_TIMES",0)
	    LuaAddTask("TIMES_times",1)
	    LuaSay("���幫����������10�ν�Ǯ������Ļ����ˣ�")
	    else
	    LuaSay("���幫������лӢ������������͵���Ϊֹ�ɣ������������Ұɣ�")
	    end
	else
		LuaSay("���幫����������û��500��@9Ԫ��@0��")
	end
elseif(answer=="JQHJY_NO2") then
	LuaSay("���幫�����Ǻǣ��Լ��������Ҳ��ʧΪһ�ַ�����")
elseif(answer=="JQHJY_YES2") then
    if(LuaQueryTask("JQHJY_TIMES")<10 and LuaQuery("level")<=98) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaItemCount("coin")>=500000) then
	    local r = LuaRandom(100)
	    local jingyan
		if(r>=80) then
			  jingyan=90000+level^2*40 
		elseif(r>=50 and r<80) then
			  jingyan=180000+level^2*40   
		elseif(r>=35 and r<50) then
			  jingyan=450000+level^2*40     
 		--elseif(<=64) then
		--	  jingyan=900000+level^2*40        
		else
			  jingyan=900000+level^2*40 
		end 
		LuaGive("coin",-500000,"JQHJY")
		LuaAddJx("combat_exp",jingyan*11,"JQHJY")
		LuaAddTask("JQHJY_TIMES",1)
	else
		LuaSay("���幫���������ϲ���@3500000@0ͭ�ң�")
	end
    else
        LuaSay("���幫����������Ǯ������Ĵ����Ѿ��ﵽ10�Σ�������500��@2Ԫ��@0��ȡ10�ν�Ǯ������Ļ��ᣡ")
    end
elseif(answer=="JQHJY55_YES2")then
    local level= LuaQuery("level")
	if(level<55)then
        if(LuaQueryMoney()>=30)then		
            LuaAddYB(1,-1680)
            LuaAddJx("combat_exp",530000000,"JQHJY")
        else
            LuaSay("��û���㹻��Ԫ����")  
        end        
	else
        LuaSay("���ѳ���55��,����Ҫ�ٹ���!")
	end    
elseif(answer=="JQHJY10_YES2") then
	if(LuaQueryTask("JQHJY_TIMES")<10 and LuaQuery("level")<=98) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaItemCount("coin")>=50000) then
	    local r = LuaRandom(100)
	    local jingyan
		if(r>=80) then
			  jingyan=90000+level*level*40 
		elseif(r>=50 and r<80) then
			  jingyan=180000+level*level*40   
		elseif(r>=35 and r<50) then
			  jingyan=450000+level*level*40     
 		--elseif(<=64) then
		--	  jingyan=900000+level^2*40        
		else
			  jingyan=900000+level*level*40 
		end 
		LuaGive("coin",-50000,"JQHJY")
		LuaAddJx("combat_exp",jingyan*2,"JQHJY")
		LuaAddTask("JQHJY_TIMES",1)
	else
		LuaSay("���幫���������ϲ���@350000@0ͭ�ң�")
	end
    else
        LuaSay("���幫����������Ǯ������Ĵ����Ѿ��ﵽ10�Σ�������500��@2Ԫ��@0��ȡ10�ν�Ǯ������Ļ��ᣡ")
    end
--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_9")==1)then
					LuaSay("���幫�����ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_9",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_9")==2)then
					LuaSay("���幫�����ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_9",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("���幫������Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("���幫�������Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end

	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end

elseif(answer=="Tsnpc_11")then
	if(LuaQueryTask("Tsnpc_11")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸���������ż������滹���ź�����")
		LuaSay("���幫����������������������")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_11",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_11")==2)then
		LuaSay("���幫�������ҿ����ˣ����ȥ�����ɣ��ٺ�")
	end
elseif(answer=="Tenpc_11")then
	if(LuaQueryTask("Tenpc_11")==1)then
		LuaSay(""..LuaQueryStr("name").."��������������Ҵ������㣺�������������֣�һƬ���Ļ����� ")
		LuaSay("���幫������Ե�޷֣�����̸Ҳ")
		LuaSetTask("Tenpc_11",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_11")==2)then
		LuaSay("���幫������ȥ�������Ǵ��ˣ��Ҷ�֪���ˣ�����������Զ������")
	end

	
elseif(answer=="HYSY")then

	if(LuaQueryStr("lassie")~="")  then
		if(LuaQueryTempStr("last_world_msg")==SYXT(2,1,0))  then
			SYXT(2,0,1)
		else
		    LuaSay("��ʾ����ֻҪ�ڹ���Ƶ�����ģ���@3"..SYXT(2,1,0).."@0����Ȼ������콱")
		end
	else
		LuaSay("��ʾ����û�н�飡�޷����д�����")
	end


elseif(answer=="HYPT")then
	AddMenuItem("@7�����б�","","")
	AddMenuItem("@7���뵽�����б�","SQ_HY","")
	AddMenuItem("@7��Ҫ���","zhao_HY","")
	AddMenuItem("@3��������","HYSY")
	AddMenuItem("@3����ƽ̨˵��","HYPTSM")
elseif(answer=="HYPTSM")then
    LuaSay("��ʾ����ֻҪ�����б�ɹ���������־ͻ�浽�����б��У�������Ҿ��ܶ����������ˣ�")
    LuaSay("��ʾ����ѡ����Ӧ�Ĳ˵������������ֺ������������������ˣ�ǰ������Ҫ������������")
    LuaSay("��ʾ���ڻ����б��ϵ����ֿ��Ա���3�죡3���ᱻϵͳ�Զ�ɾ�����������ɹ����������Ҳ�ᱻϵͳ���б�ɾ����")
    LuaSay("��ʾ���������б������Ϊ200��ÿ��������Ǽ�������Ϊ10000ͭ�ң�")
elseif(answer=="SQ_HY")then     ---�ɹ��������ʾ�������б� 
	if(IsLassie()==1)then
		LuaSay("��ʾ�����Ѿ���鲻�������룬�ɲ�����ô����Ŷ@!")
	else
		
		AddMenuItem("@7�����б�","","")
		AddMenuItem("@7���뵽�����б�","SQ_HY_yes","")
	end
elseif(answer=="SQ_HY_yes")then
	if(LuaIsInRegister("marry")==0) then
		LuaSay("��ʾ��������Ǽǣ�Ҫ����@310000ͭ��@0��")
		if(LuaItemCount("coin")>=10000) then
			LuaAddRegister("marry")
			if(LuaIsInRegister("marry")==1) then
				LuaSay("��ʾ������ɹ���")	
				LuaGive("coin",-10000,"HYPT")
			end
		
		else
			LuaSay("��ʾ��������ͭ�Ҳ���@310000@0��")
		end
	else
		LuaSay("��ʾ�����Ѿ������б��У�")
	end
elseif(answer=="zhao_HY")then   ---��ʾ
	LuaSendRegister("marry")	



--������ʼ
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..��������
elseif(answer=="T1005") then
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(GetCurrentDay()~=LuaQueryStrTask("1005Taskday")) then
		LuaDelTask("T1005")
		LuaDelTask("1005dotime")
		LuaDelTask("task_kill/mon_007/T1005/usefultime")
		LuaDelTask("1005killnum")
		--LuaDelTask("1005time") 
		LuaDelTask("task_kill/mon_007/T1005")
		LuaDelTask("1005Taskday")
	end
	AddMenuItem("@7�����б�","","")
	if(LuaQueryTask("T1005")==0) then 
		LuaSay("���幫����ÿ���11��Ϳɿ�ʼ�μӱ��ص��������ᣬ12�������������Ϊ�����ߣ�����ô������齱������ɫװ��1��")
		LuaSay("���幫����������ʽ��10����֮�ڻ�ɱ@3���@0��Ŀ��������������Զ���ύ�ɼ���ȡ������õ�һ����Ϊ���ĳɼ�")
		
		AddMenuItem("ռ������","shenqing","")
	elseif(LuaQueryTask("T1005")==1) then 
		AddMenuItem("�ɼ��ύ","tijiao","")
	elseif(LuaQueryTask("T1005")==2 and hour==11 and min<50) then 
		AddMenuItem("����ɱ��","mapown","")
	end
	AddMenuItem("������Ϣ","xinxi")
	AddMenuItem("�����ƺ�","chenghao")
	AddMenuItem("��������","jiangli")

elseif(answer=="shenqing") then
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(level<=50) then 
		if(hour==11) then
			LuaDelTask("1005firstget")
			if(IsMapHostNoParameter()~="true")then
				LuaSay("���幫������ͼ�����ǿ������ϵ���ҫ����Ҫ��Ϊ�����ǵ��������ǾͿ�챨���ɣ�ֻ��Ҫ����@32000ͭ��@0�Ϳ�����")
				LuaDelTask("647firstget")
				AddMenuItem("@7�����б�","","")
				AddMenuItem("����","mapown","")
				AddMenuItem("��������","nomapown","")
			else
				LuaSay("���幫���������������ɲμ�������ص�����")
			end
		elseif(hour<11)then
			LuaSay("���幫���������ǵ�����������û��ʼ�أ�11��������ʽ��ʼ")
		else
			LuaSay("���幫�������ǿ�ϧ�������ǵ������Ѿ�������ÿ���11:00��11:50֮ǰ�����Ե�������������")
		end
      else
		LuaSay("���幫����50�����µ���Ҳ��ܲμӽ���������������Ŷ")
      end

elseif(answer=="tijiao") then   
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(hour<12) then
		local killnum=LuaQueryTask("task_kill/mon_007/T1005")-1
		if(killnum>0)then
			local usetime=GetCurrentTime()-LuaQueryTask("1005time")
			if(usetime>=540) then  
				if(killnum>LuaQueryTask("1005killnum"))then             -------------��óɼ�����
					LuaSetTask("1005killnum",killnum)  
					SaveMaxValueInRoom(killnum)
				end
				LuaSay("���幫�������ڸղŵ�10�����ڣ�����ɱ��@3"..killnum.."@0����ƣ������ڵ���óɼ���@3"..LuaQueryTask("1005killnum").."��")
				LuaSetTask("T1005",2)
				UpdateMenu()
				if(hour==11 and min<=50)then
					LuaSay("���幫�����㻹Ҫ������ս��ͼ�������Ǿͼ���������ٶ�ȥ��ɱ��ưɣ���󽫼�¼�����óɼ�")
	    				AddMenuItem("@7�����б�","","")
					AddMenuItem("����ɱ��","mapown","")            
					AddMenuItem("��������","giveup","")
				end
			else
				LuaSay("���幫������ȷ��Ҫ�ύ�ɼ���10���ӵ�ʱ�仹û���أ��㻹���Լ�����ɱ�������߳ɼ�")
				AddMenuItem("@7ѡ���б�","","")
				AddMenuItem("���ύ","goon","")
				AddMenuItem("@1�ύ@0","nowtijiao","")
			end
		else
			LuaSay("���幫�������ڸղŵĻ�У�û�л�ɱ�κν�ƣ������ύ�ɼ�")
		end
	else
		LuaSay("���幫�������10�����Ѿ������ˣ��������ύ�ɼ�") 
	end
   
elseif(answer=="jiangli") then              -------------��һ�ε���ȡ�ͺ���ÿ4Сʱ��ȡһ��
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(hour~=11)then
		local name=LuaQueryStr("name")
		local grade=GetGradePos(name)
		if(IsMapHost("lu_jkc")=="true")then         
			if(LuaQueryTask("1005firstget")==0) then
				LuaSay("���幫������ϲ���ڱ��ε���ռ����ж����ͷ�꣬��Ϊ���ص����������Ի��@3"..LuaQueryStr("title").."@0�ĳƺš�")
				LuaAddJx("combat_exp",80*level^2,"T1005")
				LuaGive("e_earring001t",1,2)  
				LuaSetTask("T1005",99) 
				LuaNotice("@2����������"..LuaQueryStr("name").."@0��ȡ��@22000@0ͭ����װһ���ʹ�������,ÿ4Сʱ��������һ�ν���")
				LuaSetTask("1005time",GetCurrentTime()) 
				LuaSetTask("1005firstget",1) 
				LuaGive("coin",2000,"T1005")
				LuaSay("���幫�����ڱ�����������֮ǰ����ÿ��4Сʱ�����Ե�����������ȡ����")  
				UpdateMenu()
			else
				local shijiancha=(GetCurrentTime()-LuaQueryTask("1005time"))
				if(shijiancha>=14400) then
					LuaSetTask("1005time",GetCurrentTime()) 
					LuaAddJx("combat_exp",20*level^2,"T1005")
					LuaGive("coin",1000,"T1005")
					LuaNotice("@2����������"..LuaQueryStr("name").."@0��ȡ��@21000@0ͭ�Һʹ�������")
					LuaSay("���幫�����ڱ�����������֮ǰ����ÿ��4Сʱ�����Ե�����������ȡ����")   
				else
					LuaSay("���幫����2�ν�������ȡ�������Ҫ����4Сʱ�������ڲ�����ȡ")
				end
			end
       
		elseif(grade==2 and LuaQueryTask("T1005")==2)then                    
			LuaSay("���幫������Ȼû���õ����ص�������λ���õ���2��Ҳ�ǿ�ϲ�ɺصġ�����Ŭ������ȡ�´ζ��")
			LuaGive("coin",1500,"T1005")
			LuaAddJx("combat_exp",60*level^2,"T1005")
			LuaNotice("@2������������2��"..LuaQueryStr("name").."@0��ȡ��@21500@0ͭ�Һʹ�������")
			LuaSetTask("T1005",99)
			UpdateMenu()
		elseif(grade==3 and LuaQueryTask("T1005")==2)then                       
			LuaSay("���幫������Ȼû���õ����ص�������λ���õ���3��Ҳ�ǿ�ϲ�ɺصġ�����Ŭ������ȡ�´ζ��")
			LuaGive("coin",1000,"T1005")
			LuaAddJx("combat_exp",40*level^2,"T1005")
			LuaNotice("@2������������3��"..LuaQueryStr("name").."@0��ȡ��@21000@0ͭ�Һʹ�������")
			LuaSetTask("T1005",99)
			UpdateMenu()
		else
			LuaSay("���幫����ǰ3��������ô����ľ��齱�����������ɻ����װ1������ϧ���²���������")
		end
		
	else
		LuaSay("���幫������ͼ�������ڻ�����������12�����Ż�����µĵ�ͼ����")
	end
	
	
	

elseif(answer=="chenghao") then
	local name=LuaQueryStr("name")
	local grade=GetGradePos(name)
	if(IsMapHost("lu_jkc")=="true")then
		if(QueryTitle("title")~=10) then       
			if(hour==11) then
				LuaSay("���幫�����������ǽ��������������ڼ䣬���ɻ�������ƺţ������ս����������������")
			else
				LuaSay("���幫�����������ǽ����ǵ���������Ҫ����ƺ���")
				AddMenuItem("@7ѡ���б�","")
				AddMenuItem("����ƺ�","jihuo")
				AddMenuItem("������","bujihuo")
			end
		else
			LuaSay("���幫�������Ѿ������������ƺ�")
		end
	else
		LuaSay("���幫�����㲻�Ǳ��ص��������޷���������ƺ�")
	end

elseif(answer=="xinxi") then
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	LuaSay("���幫��������������������ɱ�ַ�ʽ���ᡣ")
	LuaSay("���幫����11�㿪ʼ������11��50�ֽ���������12���������֮������")
	if(hour==11 and LuaQueryTask("T1005")>=1) then
		local chengji=GetBestGradeNum()
		LuaSay("���幫����������ʱ�ŵ�һ�ģ���ɱ��@3"..chengji.."@0����ƣ�ʱ���޶࣬���Ŭ��׷�ϰѡ�")    
	end

     
elseif(answer=="giveup") then
		local killnum=LuaQueryTask("task_kill/mon_007/T1005")-1
		LuaSay("���幫����������10������ɱ��Ƶĳɼ�Ϊ@3"..killnum.."��@0����ȷ�����ټ�����������")
		AddMenuItem("@7ѡ���б�","")
		AddMenuItem("��������","mapown")
		AddMenuItem("��������","fangqi")


elseif(answer=="mapown") then
	if(LuaQueryTask("T1005")==0) then    
		if(LuaItemCount("coin")>=2000) then
			LuaGive("coin",-2000,"T1005")   
			LuaSay("���幫������@310������@0��ɱ���������ң�����Ϊ���ص������������ɼ���Ҫ��12��֮ǰ�ύ")
			LuaSetTask("T1005",1)
			LuaSetTask("task_kill/mon_007/T1005/usefultime",GetCurrentTime()+600)
			LuaSetTask("1005time",GetCurrentTime())	 
			LuaSetTask("task_kill/mon_007/T1005",1)
			LuaSetTask("1005Taskday",GetCurrentDay())
			UpdateMenu()
		else
			LuaSay("���幫����������@32000ͭ��@0�ſɱ���")
		end
	else
		LuaSay("���幫������@310������@0��ɱ���������ң�����Ϊ���ص������������ɼ���Ҫ��12��֮ǰ�ύ")
		LuaSetTask("task_kill/mon_007/T1005/usefultime",GetCurrentTime()+600)
		LuaSetTask("1005time",GetCurrentTime())	
		LuaSetTask("T1005",1) 
		LuaSetTask("task_kill/mon_007/T1005",1)
		UpdateMenu()
	end
  


elseif(answer=="goon") then  
     LuaSay("���幫������������ǵ�ѡ�񣬴���10���Ӿͻ������Ŀ������ᵽ����֮λ")

elseif(answer=="nowtijiao") then  
	local killnum=LuaQueryTask("task_kill/mon_007/T1005")-1
	if(killnum>LuaQueryTask("1005killnum"))then            
		LuaSetTask("1005killnum",killnum)  
		SaveMaxValueInRoom(killnum)
		LuaSay("���幫������ղŹ���ɱ��@3"..killnum.."@0����ƣ������ڵ���óɼ���@3"..LuaQueryTask("1005killnum").."��")
		LuaSetTask("T1005",2)
		UpdateMenu()
	else
		LuaSay("���幫�����㱾���ύ�ĳɼ�û�г��������óɼ��������ύ��������ȥ��ɱ������ưɡ�")
	end

elseif(answer=="nomapown") then  
	LuaSay("���幫������õĻ�������㣬�ѵ�������������ˣ���11��50֮ǰ�������������ﱨ��")

elseif(answer=="jihuo")then
	SetTitleMeg(10)                    
	LuaSay("���幫����������@3"..LuaQueryStr("title").."@0�ĳƺ�")
elseif(answer=="bujihuo")then
	LuaSay("���幫����ӵ�ж���ƺ�ʱ������ȡ�ĳƺŻḲ��ǰ��ĳƺţ�����Ե���Ӧ��npc����ȡϲ���ĳƺ�")


elseif(answer=="fangqi")then
      LuaSay("���幫�������Ѿ������˼��������������ղŵĳɼ�����Ϊ����������ѡ��׼")
      LuaSetTask("T647",99)




--------------**��Ϧ�**---------------
elseif(answer=="Tqixijie") then
	AddMenuItem("@7��Ϧ���˽�","")
	AddMenuItem("@3��Ϧף��","Tqxzf")
	AddMenuItem("@3õ�廨��","Tmghk")
	--AddMenuItem("@3��ߴ�˫��","Tqrj")
	AddMenuItem("@3��Ϧ�һ�","Tqxdh")
	AddMenuItem("@7�����","hdjs")	
-------------**�����**----------------
elseif(answer=="hdjs") then
	LuaSay("@7�ʱ��@0��8��13�ŵ�8��19��")
        LuaSay("@7��ص�@0�����س��������سǡ���ֲ�������ĺ���")
	LuaSay("@7��Ϧף��@0����һ�����õ��ӵƵ�@4���״�ׯ@0��@3��������@0������ͨ�����̴����룩���ڶ������ص�@3���幫��@0���ش����⣬����������@3��������@0������ɺ��м��ʻ��@3ϲȵ��ë@0")
        LuaSay("@7õ�廨��@0����һ������Ů��ӵ�@4��������@0��@3�����̴���ֲõ��@0���õ�@2���ŵ�õ��@0���ڶ����������幫��������õ�壬��@2ϲȵ��ë@0������кܴ��ʻ�ñ���ȵ��ߣ�")
       -- LuaSay("@7��ߴ�˫��@0����һ��:��@4�����@0���@3���@0��@4�ڷ綴@0�е�@3������@0���Ի����ڶ����������̴���@22������@0�ظ����幫������ɺ�ɻ������װ������ȣ�")
	LuaSay("@7��Ϧ�һ�@0��ʹ��һ��@3õ�廨�Ƕ�@0��һ��@33��ë@0�л�����@3ϲȵ��ë@0��ʹ��һ��@35��ë@0���Ի�һ��@3ϲȵ��ë@0")
---------------**õ�廨��**--------------
elseif(answer=="Tmghk")then
  	if(TeamCount()==2 and LuaQuery("level")>10 and TeamQueryStr("gender")~=LuaQueryStr("gender"))then
		if(GetCurrentDay()~=LuaQueryStrTask("mghkday"))then
		LuaDelTask("TmghkM")
		LuaDelTask("TmghkW")
		LuaSetTask("Tmghka",0)
		LuaSetTask("Tmghkb",0)
		LuaSetTask("mghkday",GetCurrentDay())
		end
		if(LuaQueryStrTask("mghkday")~=TeamQueryStrTask("mghkday"))then
			LuaSay("���幫����ֻ����İ��½ӹ��˻����ſ��Խӣ�����İ���һ�����������ɣ�")
			--LuaSay(""..LuaQueryStrTask("mghkday").."  "..TeamQueryStrTask("mghkday").."")
			LuaSendMenu()
			return 1
		end	 
		if(TeamCount()==2 and ((LuaQueryTask("TmghkW")==0 and LuaQueryStr("gender")=="Ů��") or (LuaQueryTask("TmghkM")==0 and LuaQueryStr("gender")=="����")))then
			if((LuaQueryTask("TmghkW")==0 )and LuaQueryStr("gender")=="Ů��")then
				LuaSay("���幫�������������˽ڣ�����@33��õ������@0��õ�������ú��ˣ�")
				LuaSay("���幫�������������ֵ�@4��������@0��@3��������@0����ֲ���ֳ�@3���ŵ�õ��@0���������Ұɣ�")
				LuaSay("��ʾ��õ�����ӿ���������ֲ����ֲ,�õ�@3ϲȵ��ë@0����ң�������õ��ʱ�м��ʻ��@1���ش�@0��")
				LuaSetTask("TmghkW",1)
				LuaGive("o_seed012",3)	
				LuaSetTask("mghkday",GetCurrentDay())
				AddLog("õ�廨��",mghkW)
			elseif((LuaQueryTask("TmghkM")==0 )and LuaQueryStr("gender")=="����")then
				LuaSay("�������ˣ����������˽ڣ�����@33��õ������@0��õ�������ú��ˣ�")
				LuaSay("���幫����ǣ�������ֵ�@4��������@0��@3��������@0����ֲ�ɣ������ֳ�@3���ŵ�õ��@0���������Ұɣ�")
				LuaSay("��ʾ��õ�����ӿ���������ֲ����ֲ���õ�@3ϲȵ��ë@0����ң�������õ��ʱ�м��ʻ��@1���ش�@0��")
				LuaGive("o_seed012",3)	
				LuaSetTask("TmghkM",1)
				AddLog("õ�廨��",mghkM)
			end	
		elseif(TeamCount()==2 and ((LuaQueryTask("TmghkW") == 1 and  LuaQueryStr("gender")=="Ů��") or (LuaQueryTask("TmghkM") == 1 and LuaQueryStr("gender")=="����"))) then
			if(LuaQueryTask("TmghkW") ==1 and LuaQueryStr("gender")=="Ů��")then
				local a=LuaItemCount("o_mission141")
				if(a>=1) then
				LuaSay("���幫���������Ļ������ѻ��͸����ɣ�")
				AddMenuItem("��ѡ��","")
				AddMenuItem("����1�䡾���ж��ӡ�","yes1")
				AddMenuItem("����3�䡾�Һܰ��㡿","yes3")
				AddMenuItem("����9�䡾�쳤�ؾá�","yes9")
				AddMenuItem("����","no")
				else    
				LuaSay("���幫����õ�廨�أ��㻹û�еõ�һ��@3���ŵ�õ��@0����@4��������@0��@3��������@0����ֲõ�廨�����������˻������������Ұɣ�")
				end
			elseif(LuaQueryTask("TmghkM") == 1 and LuaQueryStr("gender")=="����") then
				local b=LuaItemCount("o_mission141")
				if(b>=1) then
				LuaSay("���幫���������Ļ������ѻ��͸����ɣ�")
				AddMenuItem("��ѡ��","")
				AddMenuItem("����1�䡾���ж��ӡ�","yes1")
				AddMenuItem("����3�䡾�Һܰ��㡿","yes3")
				AddMenuItem("����9�䡾�쳤�ؾá�","yes9")
				AddMenuItem("����","no")
				else
				LuaSay("���幫����õ�廨�أ��㻹û�еõ�һ��@3���ŵ�õ��@0����@4��������@0��@3��������@0����ֲõ�廨�����������˻������������Ұɣ�")
				end
			end
		elseif(TeamCount()==2 and ((LuaQueryTask("TmghkW")==2 and LuaQueryStr("gender")=="Ů��") or (LuaQueryTask("TmghkM")==2 and LuaQueryStr("gender")=="����")))then
			if(LuaQueryTask("TmghkW")==2 and LuaQueryStr("gender")=="Ů��")then
				local a=3-LuaQueryTask("Tmghka")
				if(a>0)then
				LuaSay("���幫�����˴�@3õ�廨��@0�������ɣ�����������@3"..a.."@0������õ��Ļ��ᣡ")
				LuaDelTask("TmghkW")
				else
				LuaSay("���幫��������������õ���Ѵﵽ����!")
				LuaSetTask("TmghkW",99)
				end
			else
			if(LuaQueryTask("TmghkM")==2 and LuaQueryStr("gender")=="����")then
				local b=3-LuaQueryTask("Tmghkb")
				if(b>0)then
				LuaSay("���幫�����˴�õ�廨���������ɣ�����������@3"..b.."@0������õ��Ļ��ᣡ")
				LuaDelTask("TmghkM")
				else
				LuaSay("���幫��������������õ���Ѵﵽ����!")
				LuaSetTask("TmghkM",99)
				end
			end  
			end
		elseif(TeamCount()==2 and ((LuaQueryTask("TmghkW")==99 and LuaQueryStr("gender")=="Ů��") or (LuaQueryTask("TmghkM")==99 and LuaQueryStr("gender")=="����")))then
			if(LuaQueryTask("TmghkW")==99 and LuaQueryStr("gender")=="Ů��")then
			LuaSay("���幫��������@3õ�廨��@0�������ɣ�")
			DelLog("mghkW")
			elseif(LuaQueryTask("TmghkM")==99 and LuaQueryStr("gender")=="����")then
			LuaSay("���幫��������@3õ�廨��@0�������ɣ�")
			DelLog("mghkM")
			end      
		end	
	else
	    LuaSay("���幫������Ҫ@2�ȼ�����10������������������@0�ſɽӴ����񣡻���@2��Ķ����Ѿ��ͱ����������@0������һ��������İ��°ɣ�")
 	end
	UpdateMenu()

	elseif(answer=="yes1")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(TeamCount()==2 and LuaQueryTask("TmghkW") ==1  and LuaQueryStr("gender")=="Ů��" and LuaItemCount("o_mission141")>=1)then		
			if(LuaQueryTask("Tmghka")<3)then
				LuaSay("���幫�������ͳɹ���")
				LuaAddTask("Tmghka",1)
				LuaNotice("���@3"..LuaQueryStr("name").."@0Ϊ���@3"..TeamQueryStr("name").."@0�ͳ���һ��@1���ж���@0�ĺ�õ�壡")
				if(LuaQuery("level")==70)then
				LuaGive("coin",30000,"TmghkW")
				else
				LuaAddJx("combat_exp",level^2*50+level*5000,"TmghkW")
				end
				LuaSetTask("TmghkW",2)
				DelItem("o_mission141",1)
				if(LuaItemCount("o_mission220")>=1)then
				local r = LuaRandom(10)			   --3/10�ĸ��ʻ���������
            			if(r==0)then
            			LuaGive("o_box001j",1)                      --1/10�ĸ��ʻ�ñ���
				elseif(r==1)then
				LuaGive("o_state008j",1)                      --1/10�ĸ��ʻ��˫������
				elseif(r==2)then
				LuaGive("o_state008j",1)                      --1/10�ĸ��ʻ��˫������
            			end
				DelItem("o_mission220",1)
            			end
				UpdateMenu()
			else
				LuaSay("���幫��������������õ���Ѵﵽ���ޣ�")
				LuaSetTask("TmghkW",99)
			end
			
		elseif(TeamCount()==2 and LuaQueryTask("TmghkM") ==1  and LuaQueryStr("gender")=="����" and LuaItemCount("o_mission141")>=1)then		
			if(LuaQueryTask("Tmghkb")<3)then
			LuaSay("���幫�������ͳɹ���")
			LuaAddTask("Tmghkb",1)
			LuaNotice("���@3"..LuaQueryStr("name").."@0Ϊ���@3"..TeamQueryStr("name").."@0�ͳ���һ��@1���ж���@0�ĺ�õ�壡")
			if(LuaQuery("level")==70)then
				LuaGive("coin",30000,"TmghkW")
			else
				LuaAddJx("combat_exp",level^2*50+level*5000,"TmghkW")
			end
			LuaSetTask("TmghkM",2)
			DelItem("o_mission141",1)
			if(LuaItemCount("o_mission220")>=1)then
				local r = LuaRandom(10)			   --3/10�ĸ��ʻ���������
            			if(r==0)then
            			LuaGive("o_box001j",1)                      --1/10�ĸ��ʻ�ñ���
				elseif(r==1)then
				LuaGive("o_state008j",1)                     --1/10�ĸ��ʻ��˫������
				elseif(r==2)then
				LuaGive("o_state008j",1)                      --1/10�ĸ��ʻ��˫������
				end
			DelItem("o_mission220",1)
			end
			UpdateMenu()
			else
			LuaSay("���幫��������������õ���Ѵﵽ���ޣ�")
			LuaSetTask("TmghkM",99)
			end
		end
 --------------------***����3��õ��*------------------------------------------------------------
    elseif(answer=="yes3")then
	local level=LuaQuery("level")
		if(level>80)then
		level=80
		end
		if(LuaItemCount("o_mission141")>=3)then
		if(TeamCount()==2 and LuaQueryTask("TmghkW") ==1  and LuaQueryStr("gender")=="Ů��" )then
			if(LuaQueryTask("Tmghka")<3)then
				LuaSay("���幫�������ͳɹ���")
				LuaAddTask("Tmghka",1)
				LuaNotice("���@3"..LuaQueryStr("name").."@0Ϊ���@3"..TeamQueryStr("name").."@0�ͳ���3��@1�Ұ���@0�ĺ�õ�壡")
				if(LuaQuery("level")==70)then
					LuaGive("coin",(level^2*150+level*5000)/30,"TmghkW")
				else
					LuaAddJx("combat_exp",level^2*150+level*5000,"TmghkW")
				end
				LuaSetTask("TmghkW",2)
				DelLog("õ�廨��",mghkW)
				DelItem("o_mission141",3)
				if(LuaItemCount("o_mission220")>=1)then
				local r = LuaRandom(10)			   
            			if(r==5)then
            			LuaGive("o_box001j",1)                      --1/10�ĸ��ʻ�ñ���
				elseif(r==8)then
				LuaGive("o_box002",1)                      --1/10�ĸ��ʻ���ұ�����
				elseif(r<2)then
				LuaGive("o_state008j",1)                      --1/10�ĸ��ʻ��˫������
				elseif(r==7)then
				LuaGive("o_state087j",1)                      --1/10�ĸ��ʻ�ú��
            			end
				DelItem("o_mission220",1)
				end
				UpdateMenu()
			else
				LuaSay("���幫��������������õ���Ѵﵽ���ޣ�")
				LuaSetTask("TmghkW",99)
			end
		elseif(TeamCount()==2 and LuaQueryTask("TmghkM") ==1  and LuaQueryStr("gender")=="����" )then
			if(LuaQueryTask("Tmghkb")<3)then
				LuaSay("���幫�������ͳɹ���")
				LuaAddTask("Tmghkb",1)
				LuaNotice("���@3"..LuaQueryStr("name").."@0Ϊ���@3"..TeamQueryStr("name").."@0�ͳ���3��@1�Ұ���@0�ĺ�õ�壡")
				if(LuaQuery("level")==70)then
					LuaGive("coin",(level^2*150+level*5000)/30,"TmghkW")
				else
					LuaAddJx("combat_exp",level^2*150+level*5000,"TmghkW")
				end
				LuaSetTask("TmghkM",2)
				DelLog("õ�廨��",mghkM)
				DelItem("o_mission141",3)
				if(LuaItemCount("o_mission220")>=1)then
				local r = LuaRandom(10)			   
            			if(r==5)then
            			LuaGive("o_box001j",1)                      --1/10�ĸ��ʻ�ñ���
				elseif(r==8)then
				LuaGive("o_box002",1)                      --1/10�ĸ��ʻ���ұ�����
				elseif(r<2)then
				LuaGive("o_state008j",1)                      --1/10�ĸ��ʻ��˫������
				elseif(r==7)then
				LuaGive("o_state087j",1)                      --1/10�ĸ��ʻ�ú��
				end
				DelItem("o_mission220",1)
				end
				UpdateMenu()
			else
				LuaSay("���幫��������������õ���Ѵﵽ���ޣ�")
				LuaSetTask("TmghkM",99)
			end
		end
		else
			LuaSay("���幫�����㻹û�д���3��õ�廨�أ�")
		end
 -------------------------**����9��õ��**---------------------------------------
        elseif(answer=="yes9")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaItemCount("o_mission141")>=9)then
		if(TeamCount()==2 and LuaQueryTask("TmghkW") ==1  and LuaQueryStr("gender")=="Ů��" )then
			if(LuaQueryTask("Tmghka")<3)then
				LuaSay("���幫�������ͳɹ���")
				LuaAddTask("Tmghka",1)
				LuaNotice("���@3"..LuaQueryStr("name").."@0Ϊ���@3"..TeamQueryStr("name").."@0�ͳ���9��@1�쳤�ؾ�@0�ĺ�õ�壡")
				if(LuaQuery("level")==70)then
					LuaGive("coin",(level^2*250+level*5000)/30,"TmghkW")
				else
					LuaAddJx("combat_exp",level^2*250+level*5000,"TmghkW")		--��ȡ����
				end
				LuaSetTask("TmghkW",2)
				DelLog("õ�廨��",mghkW)
				DelItem("o_mission141",9)
				if(LuaItemCount("o_mission220")>=1)then
				r = LuaRandom(20)			  
            			if(r<4)then
            			LuaGive("o_box001j",1)                      --2/10�ĸ��ʻ�ñ���
				elseif(5<r and r<10)then
				LuaGive("o_box002",1)                      --2/10�ĸ��ʻ�ñ���
				elseif(r==10)then
				LuaGive("o_state089j",1)                      --1/20�ĸ��ʻ��ף����
				elseif(r==11)then
				LuaGive("e_state088j",1)                      --1/20�ĸ��ʵ����
				elseif(15<r and r<20)then
				LuaGive("o_state008j",1)                      --2/10�ĸ��ʻ��˫������
				elseif(11<r and r<13)then
				LuaGive("o_state087j",1)                      --2/10�ĸ��ʻ�ú��
            			end
				DelItem("o_mission220",1)
				end
				UpdateMenu()
			else
				LuaSay("���幫��������������õ���Ѵﵽ���ޣ�")
				LuaSetTask("TmghkW",99)
			end
		elseif(TeamCount()==2 and LuaQueryTask("TmghkM") ==1  and LuaQueryStr("gender")=="����" )then
			if(LuaQueryTask("Tmghkb")<3)then
				LuaSay("���幫�������ͳɹ���")
				LuaAddTask("Tmghkb",1)
				LuaNotice("���@3"..LuaQueryStr("name").."@0Ϊ���@3"..TeamQueryStr("name").."@0�ͳ���9��@1�쳤�ؾ�@0�ĺ�õ�壡")
				if(LuaQuery("level")==70)then
					LuaGive("coin",(level^2*250+level*5000)/30,"TmghkW")
				else
					LuaAddJx("combat_exp",level^2*250+level*5000,"TmghkW")		--��ȡ����
				end
				LuaSetTask("TmghkM",2)
				DelLog("õ�廨��",mghkM)
				DelItem("o_mission141",9)
				if(LuaItemCount("o_mission220")>=1)then
				r = LuaRandom(20)			  
            			if(r<4)then
            			LuaGive("o_box001j",1)                      --2/10�ĸ��ʻ�ñ���
				elseif(5<r and r<10)then
				LuaGive("o_box002",1)                      --2/10�ĸ��ʻ�ñ���
				elseif(r==10)then
				LuaGive("o_state089j",1)                      --1/20�ĸ��ʻ��ף����
				elseif(r==11)then
				LuaGive("e_state088j",1)                      --1/20�ĸ��ʻ�����
				elseif(15<r and r<20)then
				LuaGive("o_state008j",1)                      --2/10�ĸ��ʻ��˫������
				elseif(11<r and r<13)then
				LuaGive("o_state087j",1)                      --2/10�ĸ��ʻ�ú��
				end
				DelItem("o_mission220",1)
				end
				UpdateMenu()
			else
				LuaSay("���幫��������������õ���Ѵﵽ���ޣ�")
				LuaSetTask("TmghkM",99)
			end
		end
		else
			LuaSay("���幫�����㻹û�д���9��õ�廨�أ�")
		end
        elseif(answer=="no")then
		if(TeamCount()==2 and LuaQueryTask("TmghkW") ==2  and LuaQueryStr("gender")=="Ů��" and LuaItemCount("o_mission141")>=1)then		
		LuaSay("���幫��������һ�仨�Ͳ�Ը�ͣ�")
	    elseif(TeamCount()==2 and LuaQueryTask("TmghkM") ==2  and LuaQueryStr("gender")=="����" and LuaItemCount("o_mission141")>=1)then
		LuaSay("���幫��������һ�仨�Ͳ�Ը�ͣ�")
		UpdateMenu()
		end
 ---------------**��Ϧף��**----------------------------------------------	      		 
       		 
elseif(answer=="Tqxzf")  then
	if(GetCurrentDay()~=LuaQueryStrTask("qxzfday"))then
		LuaDelTask("Tqxzf")
		LuaSetTask("Tqxzfa",0)    --���ô��������ֵΪ��Tqxzfa
		LuaSetTask("qxzfday",GetCurrentDay())
	end
	if(LuaQuery("level")>10)then
	if(LuaQueryTask("Tqxzf")==0 )then
		LuaSay("���幫����������ţ����֯Ů�������ӣ�����һյ�ӵƵ�@3��������@0������ţ��֯Ů����ȵ��֮·��")
		LuaSay("���幫�������������ھ��״�ׯ�����ͨ�����̴������ȥ���ںӱ߾����ҵ�@3��������@0��")
		LuaGive("o_mission221",1)
		UpdateTopSay("��������������ȥ�ɣ�")
		LuaSetTask("Tqxzf",1)
		AddLog("��Ϧף��",qxzf)
		LuaSetTask("qxzfday",GetCurrentDay())
	UpdateMenu()
	UpdateNPCMenu("yuweng")
	elseif(LuaQueryTask("Tqxzf")==1 )then
		LuaSay("���幫������ô��û�е�@3��������@0����ȥ����")
		LuaSay("���幫�������������ھ��״�ׯ�����ͨ�����̴������ȥ���ںӱ߾����ҵ�@3��������@0��")
 ------------------**��ʼ����**---------------------------------
	elseif(LuaQueryTask("Tqxzf")==2 ) then
		if(LuaQueryTask("Tqxzfa")~=99)then
		r=LuaRandom(16)
		if(r==0)then
		LuaSay("���幫������Ϧ����ʲô�ڣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���˽�","F")
		AddMenuItem("���ɽ�","T")
		AddMenuItem("��Ů��","F")
		AddMenuItem("ţ��֯Ů��","F")

      		elseif(r==1)then
		LuaSay("���幫����֯Ů�Ǻη���ʥ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����֮��","F")
		AddMenuItem("����","F")
		AddMenuItem("���","F")
		AddMenuItem("��Ů","T")

		elseif(r==2)then
		LuaSay("���幫����ţ���к����")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("һŮ","F")
		AddMenuItem("һ��","F")
		AddMenuItem("һ��һŮ","T")
		AddMenuItem("û��","F")

		elseif(r==3)then
		LuaSay("���幫���������Ϧ����Щϰ�ף�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","F")
		AddMenuItem("����","T")
		AddMenuItem("���̻�","F")
		AddMenuItem("û��ʲô","F")

		elseif(r==4)then
		LuaSay("���幫����ӯӯһˮ�䣬������ʲô��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��ȥ������","F")
		AddMenuItem("����������","T")
		AddMenuItem("����������","F")
		AddMenuItem("��Ӻ�Ů","F")

		elseif(r==5)then
		LuaSay("���幫�����������Ǿó�ʱ,�����ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������˿������","F")
		AddMenuItem("�����ڳ���ĺĺ","T")
		AddMenuItem("���겢�ڴ�����","F")
		AddMenuItem("�̹�ȵ�Ź�·","F")

		elseif(r==6)then
		LuaSay("���幫��������ǣţ֯Ů��,ǰ�����ʲô��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����С������ө","F")
		AddMenuItem("���ҹɫ����ˮ","T")
		AddMenuItem("��������仭��","F")
		AddMenuItem("���̻ؽŶ����","F")
		elseif(r==7)then
		LuaSay("���幫���������˼�һ����,�����ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�η�����ֻ�ƻ�","T")
		AddMenuItem("˭�����������","F")
		AddMenuItem("���겢�ڴ�����","F")
		AddMenuItem("�̹�ȵ�Ź�·","F")

		elseif(r==8)then
		LuaSay("���幫�������������˼��ɣ������˼����Ѷࡣ��˭д�ģ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��Ϳ","F")
		AddMenuItem("¬��","F")
		AddMenuItem("���","T")
		AddMenuItem("����","F")
		elseif(r==10)then
		LuaSay("���幫������һ�ʲ��ã���һ�����٣���һ�֣�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("Ϳ","F")
		AddMenuItem("��","F")
		AddMenuItem("Ϧ","T")
		AddMenuItem("��","F")
		elseif(r==11)then
		LuaSay("���幫������Ϧ��ȵ�ţ���һ������")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���нӹ�","F")
		AddMenuItem("����һ��","F")
		AddMenuItem("�ռ�Խ�","T")
		AddMenuItem("��½����","F")
		elseif(r==12)then
		LuaSay("���幫����.��Ϧһ��ȵ�׷ɣ���һ���ֳ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��������","F")
		AddMenuItem("����֮��","F")
		AddMenuItem("���Ӳ���","T")
		AddMenuItem("��Ӱ����","F")
		elseif(r==13)then
		LuaSay("���幫������Ϧδ�������ѣ���һ���ֳ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��ƿװ�¾�","F")
		AddMenuItem("ˮ������","F")
		AddMenuItem("���ɲ�����","T")
		AddMenuItem(" һȥ������","F")
		elseif(r==14)then
		LuaSay("���幫������Ϯ����Ϧ���£���һ���ֳ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�����Ʒ�","F")
		AddMenuItem("�»�һ��","F")
		AddMenuItem("��������","T")
		AddMenuItem("��֪��ʶ","F")
		elseif(r==15)then
		LuaSay("���幫����ţ��֯Ů����Ϧ����һ������ ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����ɳ","F")
		AddMenuItem("����","F")
		AddMenuItem("ȵ����","T")
		AddMenuItem("��ū�� ","F")
		end
	elseif(LuaQueryTask("Tqxzfa")==99)then
		LuaSay("���幫������������ɣ����������ʲô����@3��������@0����ȥ�ɣ�")
		LuaSay("���幫�������������ھ��״�ׯ�����ͨ�����̴������ȥ���ںӱ߾����ҵ�@3��������@0��")
		LuaDelTask("Tqxzfa")
	end 	
-------------------**�������**-------------------------------------------------
	elseif(LuaQueryTask("Tqxzf")==3)then
		LuaSay("���幫������������ɣ����������ʲô����@3��������@0����ȥ�ɣ�")
		LuaSay("���幫�������������ھ��״�ׯ�����ͨ�����̴������ȥ���ںӱ߾����ҵ�@3��������@0��")
	elseif(LuaQueryTask("Tqxzf")==4)then
		LuaSay("���幫����@3��������@0����������飬���������")
	elseif(LuaQueryTask("Tqxzf")==5 )then
		LuaSay("���幫��������������������֮���ţ�������ôԶ��·���ҿ��ˣ����ǹ��ڵ�һ�����⣬���°ɣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","Tqxzfjl") 
		UpdateMenu()
		UpdateNPCMenu("yuweng")
	elseif(LuaQueryTask("Tqxzf")==99 )then
		LuaSay("���幫����������Ѿ��������Ϧף���Ļ��")			
	end 
	else
	    LuaSay("���幫������ȼ������������ȹ���10���Ժ������ɣ�")
	end
	
	elseif(answer=="F")then                      		--�������
		if(LuaQueryTask("Tqxzfa")<4)then
			LuaSay("���幫���������ˣ�����~ ~ ~�����Ľ���Ҳû�ˣ�")
			LuaAddTask("Tqxzfa",1)
			DoTalk("Tqxzf")
		else
			LuaSay("���幫���������ˣ�����~ ~ ~�����Ľ���Ҳû�ˣ�")
			LuaSay("���幫������������ɣ��쵽@3��������@0����ȥ�ɣ�")
			LuaSetTask("Tqxzfa",99)
			LuaSetTask("Tqxzf",3)	
		end
		UpdateMenu()
		UpdateNPCMenu("yuweng")
	elseif(answer=="T") then                            --������ȷ
		if(LuaQueryTask("Tqxzfa")<4) then
			LuaSay("���幫������ϲ�����ˣ�")
            		ra=LuaRandom(10)
			if(ra<2) then
            		LuaGive("o_mission220",1)	--1/5���ʻ��ϲȵ��ë
			LuaSay("���幫������ϲ��õ���һ������@3ϲȵ��ë@0��")
			end                --���ϲȵ��ë
            		LuaSay("���幫��:�������̫���ˣ���������һ�����⣡��������")
            		LuaAddTask("Tqxzfa",1)
			DoTalk("Tqxzf")
		else
			LuaSay("���幫������ϲ�����ˣ�")
            		ra=LuaRandom(10)
			if(ra<2) then
            		LuaGive("o_mission220",1)	--1/5���ʻ��ϲȵ��ë
			LuaSay("@3���幫������ϲ��õ���һ������@3ϲȵ��ë@0��")
			end                --���ϲȵ��ë
			LuaSay("���幫������������ɣ��쵽@3��������@0����ȥ�ɣ�")
			LuaSetTask("Tqxzfa",99)
			LuaSetTask("Tqxzf",3)
			
		end
		UpdateMenu()
		UpdateNPCMenu("yuweng")
								--����
	elseif(answer=="Tqxzfjl")then
		local level=LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("Tqxzf")==5)then
		if(LuaQuery("level")==70)then
			LuaGive("coin",(level^2*150+level*10000)/30,Tqxzf)
		else
			LuaAddJx("combat_exp",level^2*150+level*10000,"Tqxzf")
		end
		LuaSetTask("Tqxzf",99)
		DelLog("��Ϧף��",qxzf)
		UpdateMenu()	
		end	
 -------------------------------------**��Ϧ�һ�**------------------------------------------------------------------
	elseif(answer=="Tqxdh")then
		if(level>10)then
		LuaSay("���幫����@3ϲȵ��ë@0���������ļ���֮�ӵ���������������ˣ�")
		LuaSay("���幫������������Զһ�����@3ϲȵ��ë@0������õ�廨�����ʱ��ӵ��ϲȵ��ë��õ������ƷŶ��")
		AddMenuItem("@7ѡ��һ�����","")
		AddMenuItem("�����һ�","dhno")
		AddMenuItem("�ϳɷ�","Tqxhc")
		AddMenuItem("������","Tqxhh")
		else
		LuaSay("���幫������ȼ������������ȵ���10���������ɣ�")
		end
	elseif(answer=="Tqxhc")then
		LuaSay("���幫������ѡ���˺ϳɷ�������Ҫ��һ��@3õ�廨�Ƕ�@0��һ��@33��ë@0��")
		LuaSay("��ʾ��@3õ�廨�Ƕ�@0������@4��ֲ��@0����@3õ������@0�ɼ��õ�")
		LuaSay("@1��ʾ���ϳ���һ�����գ������ѡ��")
		AddMenuItem("@7��Ը��ϳ���","")
		AddMenuItem("���Һú�����","dhno")
		AddMenuItem("Ը��ϳ�","Tqxyyhc")
	elseif(answer=="Tqxhh")then
		LuaSay("���幫������ѡ���˻���������ֻ��Ҫ��һ��@35��ë@0���ҽ����Ϳ��Եõ�@3ϲȵ��ë@0�ˣ�")
		AddMenuItem("@7��Ը�⻥����","")
		AddMenuItem("���Һú�����","dhno")
		AddMenuItem("Ը�⻥��","Tqxyyhh")
	elseif(answer=="Tqxyyhc")then
		if(LuaItemCount("o_material_13")>=1 and LuaItemCount("o_mission140")>=1 )then
			r=LuaRandom(10)
			if(r<3)then
			LuaGive("o_mission220",1)	--1/3���ʻ��ϲȵ��ë
			LuaSay("���幫������ϲ��õ���һ������@3ϲȵ��ë@0��")
			DelItem("o_material_13",1)
			DelItem("o_mission140",1)
			else
			LuaSay("���幫��������~ ~�ϳ�ʧ���ˣ���Ҫ���ģ��´�׼�ܺϳɳɹ���")
			DelItem("o_material_13",1)
			DelItem("o_mission140",1)
			end
		else
			LuaSay("���幫�������ϻ�û���ռ���ȫ�أ�����������Ҫһ��@3õ�廨�Ƕ�@0��һ��@33��ë@0��")
		end
	elseif(answer=="Tqxyyhh")then
		if(LuaItemCount("o_material_15")>=1 )then
			LuaGive("o_mission220",1)
			LuaSay("���幫������ϲ��õ���һ������@3ϲȵ��ë@0��")
			DelItem("o_material_15",1)
		else
			LuaSay("���幫�����㻹û��һ��@35��ë@0�أ�������һ��@35��ë@0���������Ұɣ�")
		end
	elseif(answer=="dhno")then
			LuaSay("���幫������ϲȵ��ë����õ�廨��ʱ���л�������������Ŷ���ڿ��ǿ��ǰɡ�")
---------------------**��ߴ�˫��**-------------------------------------------------------------------

   elseif(answer=="Tqrj")then--���˽�
	if(GetCurrentDay()~=LuaQueryStrTask("qrjday"))then
	LuaSetTask("qrjday",GetCurrentDay())
	LuaDelTask("Tqrj")	
	DelItem("o_mission187",1)
	DelItem("o_mission188",2)
	end
	if(LuaQuery("level")>10 and TeamCount()== 2 and TeamQueryStr("gender")~=LuaQueryStr("gender"))then 
	--���˽ڻTqrj
	--ʱ��:2.14 or ���³���,��2��
	----��0:���㴫��
	--��1:��ߴ�˫��
	--����:˫������o_mission187
	----
	if(LuaQueryTask("Tqrj")==0)then
	LuaSay("��һ��:���ȵ�@4�����@0���@3���@0��@4�ڷ綴@0�е�@3������@0�����@2��ߴ�˫��@0�������.")
	LuaSay("��ʾ�����˴˻��ǧ��Ҫ����������������Ŷ���������ȡ����������")
	LuaSetTask("Tqrjid",TeamQueryStr("id"))
	LuaSetTask("Tqrj",1)
	UpdateMenu()
	elseif(LuaQueryTask("Tqrj")==1)then
		LuaSay("���幫������@4�����@0���@3���@0����ȥ��")
	elseif(LuaQueryTask("Tqrj")==2)then
		LuaSay("���幫������@4�ڷ綴@0�е�@3������@0����ȥ��")
	elseif(Tqrj==3)then
	LuaSay("����������������������ȴ��������������ʲô��.")
	LuaSay("�����µ�����ӽ����������������.")
	AddMenuItem("��ȡ������?","")
	AddMenuItem("��ȡ����","Tqrjjl1")
	elseif(Tqrj==4)then
	LuaSay("�����Ǹ������ڴ�������,������³ô˼ѽھٰ���������ǿ������ĵľٰ�һ�ν��ջ���ɣ�.")
	LuaSay("�ڶ���:����ȥ@2����̨@0��@2��������@0���Ұ�.��@4������Դ@0������ʳ�Ķ�����Ӧ����.")
	LuaSetTask("Tqrj",5)
	UpdateMenu()
	elseif(Tqrj==5)then
		if(LuaItemCount("o_mission188")==2)then		
		LuaSay("̫����,���»��粻ȱʳ����.")
		DelItem("o_mission188",2)
		LuaSetTask("Tqrj",6)
		LuaSay("�����µ�����ӽ����������������.")
		AddMenuItem("��ȡ������?","")
		AddMenuItem("��ȡ����","Tqrjjl2")
		else
		LuaSay("����ȥ@2����̨@0��@2��������@0���Ұ�.��@4������Դ@0������ʳ�Ķ�����Ӧ����.")
		end
	elseif(Tqrj==6)then
		LuaSay("̫����,���»��粻ȱʳ����.")
		LuaSay("�����µ�����ӽ����������������.")
		AddMenuItem("��ȡ������?","")
		AddMenuItem("��ȡ����","Tqrjjl2")
	else
	LuaSay("������������˸�����.")
	end
	else
	LuaSay("���幫�����ȼ���Ҫ����10������Ů������ӵ���ҲſɽӴ˻��")
	end 
	
	
	elseif(answer=="Tqrjjl1" and LuaQueryTask("Tqrj")==3)then
		if(LuaFreeBag()<3)then	LuaShowNotify("�����ٱ���@23@0�񱳰��ռ�")	return 1 end
		LuaSetTask("Tqrj",4)
			if(level>80)then
		level=80
	end
		if(TeamCount()== 2 and LuaQueryStr("gender")=="����" and  LuaQueryStrTask("Tqrjid")==TeamQueryStr("id")) then
			if(LuaItemCount("e_clothes071t1")==0 and LuaItemCount("e_pants071t1")==0 and LuaQueryTask("a")==0)then
			LuaGive("e_pants071t1",1,3,"Tqrj")
			LuaGive("e_clothes071t1",1,3,"Tqrj")
			LuaSetTask("a",99)
			end
			LuaAddJx("combat_exp",level^2*30+level*3000,"Tqrj")
			LuaGive("coin",2888,"Tqrj")
		elseif(TeamCount()== 2 and LuaQueryStr("gender")=="Ů��" and LuaQueryStrTask("Tqrjid")==TeamQueryStr("id"))then
			if(LuaItemCount("e_clothes071t1")==0 and LuaItemCount("e_pants071t1")==0 and LuaQueryTask("b")==0)then
			LuaGive("e_pants071t1",1,3,"Tqrj")
			LuaGive("e_clothes071t1",1,3,"Tqrj")
			LuaSetTask("b",99)
			end
			LuaAddJx("combat_exp",level^2*30+level*3000,"Tqrj")
			LuaGive("coin",1314,"Tqrj")
		else
		LuaSay("��ʾ���������Ѿ�����ӻʱ�����·����ˣ�������ȡ����������@1�Ӵ˻ʱ�������������@0�ſ���ȡ����Ŷ")
		end		
		LuaSay("(�ٴζԻ�������һ��)")
	elseif(answer=="Tqrjjl2" and LuaQueryTask("Tqrj")==6)then
		if(LuaFreeBag()<3)then	LuaShowNotify("�����ٱ���@23@0�񱳰��ռ�")	return 1 end
		LuaSetTask("Tqrj",7)
			if(level>80)then
		level=80
	end
  	if(TeamCount()== 2 and LuaQueryStr("gender")=="����" and  LuaQueryStrTask("Tqrjid")==TeamQueryStr("id")) then
		LuaGive("coin",2888,"Tqrj")
		LuaAddJx("combat_exp",level^2*150+level*10000,"Tqrj")
 	elseif(TeamCount()== 2 and LuaQueryStr("gender")=="Ů��" and LuaQueryStrTask("Tqrjid")==TeamQueryStr("id"))then
		LuaGive("coin",1314,"Tqrj")
		LuaAddJx("combat_exp",level^2*150+level*10000,"Tqrj")
	else
		LuaSay("��ʾ���������Ѿ�����ӻʱ�����·����ˣ�������ȡ����������@1�Ӵ˻ʱ�������������@0�ſ���ȡ����Ŷ")

	end





-----------------------
end
LuaSendMenu()
return 1
end
--/////////���ʱתΪ������ʱ����///////////
function SelfDefTime2Date(iTime)--iTime=GetCurrentTime()
local seconds=iTime+3600*8
--//seconds=GetCurrentTime()+3600*8
if(seconds>=3600*8)then
local days=floor(seconds/86400)
local weekday=days-floor(days/7)*7
local iYear=1970
local yearday=365
local iDays=days
while
	iDays>=yearday
do
	iYear=iYear+1
	iDays=iDays-yearday
	if((floor(iYear/4)==iYear/4 and floor(iYear/100)~=iYear/100) or floor(iYear/400)==iYear/400)then
	yearday=366
	else
	yearday=365
	end
end

local monthday=31
local iMonth=1
while
	iDays>=monthday
do
	iMonth=iMonth+1
	iDays=iDays-monthday
	if(iMonth==2)then
		if((floor(iYear/4)==iYear/4 and floor(iYear/100)~=iYear/100) or floor(iYear/400)==iYear/400)then
		monthday=29
		else
		monthday=28
		end
	elseif(iMonth==4 or iMonth==6 or iMonth==9 or iMonth==11)then
		monthday=30
	else
		monthday=31
	end
end
local Year=iYear
local Month=iMonth
local Day=iDays+1
local Hour=floor((seconds-days*86400)/3600)
local Minute=floor((seconds-floor(seconds/3600)*3600)/60)
local Second=floor(seconds-floor(seconds/60)*60)
return Year,Month,Day,Hour,Minute,Second--����������ʱ����
else
return 1970,1,1,8,0,0
end
end



shitu={}
shitu[1]={"һ��Ϊʦ����Ϊʦ"}
shitu[2]={"�һ��ʦ��һֱ��ͳһ����ȥ"}
shitu[3]={"һֱ��ʦ������ȥ"}
shitu[4]={"��Զ���뿪ʦ�����뿪ͳһ"}
shitu[5]={"��Զ������ʦ��������ͳһ"}
shitu[6]={"����Զ�����ҵ�ʦ��"}


hunyin={}
hunyin[1]={"�Ұ���ֱ����Զ"}
hunyin[2]={"�һ����һֱ��ͳһ����ȥ"}
hunyin[3]={"һֱ��������ȥ"}
hunyin[4]={"��Զ���뿪�㲻�뿪ͳһ"}
hunyin[5]={"��Զ�������㲻����ͳһ"}
hunyin[6]={"�Ұ��㵽����ʯ��"}
hunyin[7]={"��Ҫ������Զ��ͳһ����"}

bangpai={}
bangpai[1]={"��Ը׷�����ֱ����Զ"}
bangpai[2]={"�һ������һֱ��ͳһ����ȥ"}
bangpai[3]={"һֱ׷���������ȥ"}
bangpai[4]={"��Զ���뿪���ɲ��뿪ͳһ"}
bangpai[5]={"��Զ�����Ѱ��ɲ�����ͳһ"}
bangpai[6]={"�Ұ��Ұ�"}
bangpai[7]={"�������Ҽұ�ǿ�����"}

function SYXT(leixing,yuju,jiangli)
	--[[   SYXT(leixing,yuju,jiangli)
	        leixing 1��ʾ����ʦͽģ�飬2��ʾ���� ��3��ʾ����
            yuju    1��ʾ������䣬�������0 2���������֣������κη���
            jiangli 1��ʾ���ý���������ֱ��ִ�У����κη��ء��������0 2���������֣������κη���
	]]
	--[[   LuaQueryStr("lassie")��ż
			LuaQueryStr("master")ʦ��
			LuaQueryRank() > 2��Ĭ�ϰ���=1������=2������=3������=4�����ΪLuaQueryRank()==0������û�Ӱ���

			ע�⣺�����´�ģ�飬Ҫ������ص�npc��ֻҪ��������¼���
			Ŀǰ�õ���ģ���npc��1�����鳤 tianwuzhan  ---ʦͽ
			                     2�����幫������jinqing   -����
			                     3������jindi      ----����

	]]
	if(leixing==1)then ----------------------------------------------------------------------------ʦͽ����
	    if(LuaQueryTask("SYXT_shitu_r")==0) then
			local r=LuaRandom(6) +1
			LuaSetTask("SYXT_shitu_r",r)
		end

		local num=LuaQueryTask("SYXT_shitu_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س����
		    return shitu[num][1]
		end

		------------------ʦͽ���ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_shitu_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_shitu_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_shitu")
			LuaSetTask("SYXT_shitu_over",99)
		end
		--------------------------
	elseif(leixing==2)then ------------------------------------------------------------------------------------��������
		if(LuaQueryTask("SYXT_hunyin_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_hunyin_r",r)
		end

		local num=LuaQueryTask("SYXT_hunyin_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س����
		    return hunyin[num][1]
		end

		------------------�������ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_hunyin_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_hunyin_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_hunyin")
			LuaSetTask("SYXT_hunyin_over",99)
		end
		--------------------------
	elseif(leixing==3)then --------------------------------------------------------------------���ɲ���
			if(LuaQueryTask("SYXT_bangpai_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_bangpai_r",r)
		end

		local num=LuaQueryTask("SYXT_bangpai_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س����
		    return bangpai[num][1]
		end

		------------------���ɲ��ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_bangpai_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_bangpai_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_bangpai")
			LuaSetTask("SYXT_bangpai_over",99)
		end
		--------------------------
	end
end