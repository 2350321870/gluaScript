NPCINFO = {
serial= "36" ,
base_name="ydhuoji",
icon= 2508, 
NpcMove=2508,
name= "ҩƷ���ˡ��̡�" ,
iconaddr=1,
butt="20|15|73", 
name_color = "CEFFCE" , 
lastsay="15�����¿���ȥ������������",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=10,
{"o_drug_hp1" , 0  , 8 },
{"o_drug_hp2" , 0  , 8 },
{"o_drug_hp3" , 0  , 8 },
{"o_drug_mp1" , 0  , 8 },
{"o_drug_mp2" , 0  , 8 },
{"o_drug_mp3" , 0  , 8 },
{"o_mix_book021" , 2000  , 8 },
{"o_mix_book022" , 2000  , 8 },
{"o_mix_book023" , 2000  , 8 },
{"o_mix_book024" , 2000  , 8 },
}
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
        local level= LuaQuery("level")
	local T41= LuaQueryTask("T41")
		AddTopSayMenuItem("@7�����б�","")
		AddTopSayMenuItem("@3����","buy1")
		--if(LuaQueryTempStr("online")=="117" or LuaQueryTempStr("online")=="107")then
		if(T41==0)  then
			AddTopSayMenuItem("��Ʒ�ϳɡ��̡̳�","T41")
			havetask =1
		end 
		AddTopSayMenuItem("@3ÿ��ҩƷ����","Tyaopin")
		if((LuaQueryTask("Tsnpc_23")==1 or LuaQueryTask("Tsnpc_23")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_23")
			if(LuaQueryTask("Tsnpc_23")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_23")==1 or LuaQueryTask("Tenpc_23")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_23")
			if(LuaQueryTask("Tenpc_23")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_5")==1 or LuaQueryTask("TfindNPC_5")==2)then
				AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_5")==98)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
		end
		if(T41==1)  then
			AddTopSayMenuItem("@2��Ʒ�ϳɡ��̡̳�","T41")
			havetask =2
		end
		if(LuaQueryTask("T265")==1 and LuaQueryTask("T265D")==0)  then
			AddTopSayMenuItem("@2���ٽ��������顿","T265D")
			havetask =2
			end
		if(LuaQueryTask("Tcoc")==7)then
			AddTopSayMenuItem("@2�̼��򱳡�ÿ�ա�","Tcoc")
			havetask =2
			end
		if(LuaQueryTask("pettask") ==7) then
			AddTopSayMenuItem("@2�ͻ���ÿ�ա�","pettask")
			havetask=2
			end		 
		if(LuaQueryTask("T291") ==1)then
			AddTopSayMenuItem("@2˾��ı��������顿","T291")
			havetask =2
			end 
		if(LuaQueryTask("T391")==1 or LuaQueryTask("T391")==2)then
			AddTopSayMenuItem("@2����Ӣ�ۡ����顿","T391")
			havetask=2
		end
		if(LuaQueryTask("T640")==1)then
			AddTopSayMenuItem("@2�ⶾ���ˡ����顿","T640")
			havetask =2
		end
		if(LuaQueryTask("T732") ==2)then
			AddTopSayMenuItem("@2ȱϡҩ����顿","T732")
			havetask =2
		end 
		
		if(LuaQueryTask("T302")==7 and LuaQueryTask("T302G")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302G")
		havetask =2
		end
		AddTopSayMenuItem("@5ѧϰ��ιһ�@0","Tgjsm")
			AddTopSayMenuItem("ǰ���ٲ�԰","Cf1")
			
		if(T41==99 and level<20)  then
			AddTopSayMenuItem("@9��Ʒ�ϳɡ��̡̳�","T41")--����һ��ʱ����ʾ
		end
	if(havetask==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end	 
	return 1
elseif(answer=="liaotian") then
     if(LuaQueryStr("MobieType") ~= "S20")then
	LuaSay("ҩƷ���ˣ���λ�͹٣��ҿ��㻹�ǰ�ҩƷ�ŵ���ݼ��аɣ�����˵����ٵ�����������뱳����ѡ��ҩƷ���������ݼ����е�����һ����ݼ�С�񣬾Ϳ��Խ���ŵ���ݼ�����")
     else
	LuaSay("ҩƷ���ˣ���λ�͹٣��ҿ��㻹�ǰ�ҩƷ�ŵ���ݼ��аɣ�����ȷ�ϡ���+3�����뱳����ѡ��ҩƷ�󰴡�1379�������ɡ�")
    end 
	    
elseif(answer=="buy1") then
   if(LuaQuery("level")<10) then
		DoBuy()   
      else
	  	if(LuaQueryTask("lendmoney")~=0 and floor(GetCurrentTime()/86400)-LuaQueryTask("lend_day")-floor(LuaQueryTask("credit")/10)*7-7>0)then
		LuaSay("ҩƷ���ˣ�@1������Ĵ����ѹ�����δ�����̽��������������˲�������ʱ��ֹ�������������")
		LuaSay("ҩƷ���ˣ�@1����ȥ����Ǯׯ�Ĵ������������ɣ�����ʱ�������ֹ���๦�ܵġ�")
		else
		DoBuy()
		end
    end    

elseif(answer=="Tyaopin") then 
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("Typtaskday")) then
		LuaSetTask("Tyaopin",0)
	end
	if(LuaQueryTask("Tyaopin")==0) then
		if(level>9) then
			 LuaSay("��ʾ����ӭ��ȡ����ĵ�һ��ҩƷ���ͣ�@3��ֵ1w2��20����ҩ��20����ҩ@0������ҩƷ���޷��������˵�Ŷ��1Сʱ��������ȡһ�Σ�")
			 LuaSetTask("Tyaopin",1)
			 LuaSetTask("Typtaskday",GetCurrentDay())
			 LuaSetTask("Tyaopintime",GetCurrentTime())
			 LuaGive("o_drug_hp4",20,"Tyaopin")
			 LuaGive("o_drug_mp4",20,"Tyaopin")
    		else
    			LuaSay("��ʾ���ﵽ15������ң�ÿ�տ���ȡ��ֵ1w2��ҩƷ2�Σ�")
  		end
	elseif(LuaQueryTask("Tyaopin")==1) then
		if(GetCurrentTime() - LuaQueryTask("Tyaopintime")>=3600) then
			LuaSay("��ʾ����ӭ��ȡ����ĵڶ���ҩƷ���ͣ�@3��ֵ1w2��20����ҩ��20����ҩ@0������ҩƷ���޷��������˵�Ŷ��")
			LuaSetTask("Tyaopin",99)
			LuaSetTask("Typtaskday",GetCurrentDay())
			LuaGive("o_drug_hp4",20,"Tyaopin")
			LuaGive("o_drug_mp4",20,"Tyaopin")
		else
			LuaSay("��ʾ����һ����ȡ��1Сʱ���������ٿ���ȡ��ֵ1w2��ҩƷ1�Σ�")
		end
	elseif(LuaQueryTask("Tyaopin")==99) then
		LuaSay("��ʾ�����Ѿ���ȡ�˽����2��ҩƷ���ͣ�����������")
	end

elseif(answer=="pettask")then
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==7) then
	LuaSay("ҩƷ����:��лл����,ѱ��ʦ�������������Ʒ�ʾ��ǲ�һ��")
	LuaSetTask("pettask",8)
	LuaAddTask("ptnumber",1)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()		
	

elseif(answer=="T302G") then
	   if(LuaQueryTask("T302G")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("ҩƷ���ˣ����ҩ�Ľ��ţ�Ҫ���к���Ϣ�ɾͺ��ˡ�@!")
	   DelItem("o_mission076",1) 
	   LuaSetTask("T302G",99)
	   UpdateMenu()
	   end



elseif(answer=="Tcoc")then---------------------�̼���4 Tcoc===7
	if(LuaQueryTask("Tcoc")==7)then
	LuaSay("ҩƷ����:��˵��һ����ҩ��,ƽʱ�Ϳ����˺�������ʿ׬�����ҵ�Ǯ,�����벻�˴��̼�֮��.")
	LuaSetTask("Tcoc",8)
	LuaSetTask("T955",8)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_hp4",5,"Tcoc")
		LuaGive("o_drug_mp4",5,"Tcoc")
		end
	end
	UpdateMenu()

elseif(answer=="T265D") then                       -----���ٽ��� 
			if(LuaQueryTask("T265D") ==0) then
    			LuaSay("ҩƷ���ˣ�@2����ҩ��@0���������ҡ�ս��ʱ��ҩ�����������ʹ�ø�����Ŷ���Ҿ�����Щҩ���@!")
    			LuaSay("ҩƷ���ˣ��������ϵ����죬�һ����������ҩ���ݼ��ķ�����@!")
			LuaSetTask("T265D",99)
			LuaGive("o_drug_hp4",5,"T265D")
			LuaGive("o_drug_mp4",5,"T265D")
			UpdateMenu()
			UpdateNPCMenu("xiean")
			end

elseif(answer=="T291") then              -----------------------˾��ı���
		if(LuaQueryTask("T291")==1 ) then  
		LuaSay("ҩƷ���ˣ�Ӣ��Ϊ�˴�����ձ������ӣ���л�������������±��������Ҵ�����յĶ��ˡ�")
		LuaSay("ҩƷ���ˣ����ǵ�������֮�����ƹ����Ӣ������±��Ȭ����")
		LuaSay("�����ҩƷ���˸���ҩ���ٸ�������ˬ���������г�����")
		AddMenuItem("@7�������","")
	        AddMenuItem("��ȡ����","T291jl")
		end 
		elseif(answer=="T291jl")then	            
		       if(LuaQueryTask("T291")==1)then
				LuaSetTask("T291",99) 
				LuaAddJx("combat_exp",145000,"T291") 
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("291") 
				UpdateMenu() 
				end

elseif(answer=="T391")then      -----------------------------����Ӣ��
		if(LuaQueryTask("T391")==1)then
		LuaSay("ҩƷ���ˣ�����ʲô֢״����ҪʲôҩƷ��?")
		LuaSay(LuaQueryStr("name").."���������������ϸ˵��@4ɽկ����@0��@3����֮@0���о綾���нⶾ��ҩƷ�����Ӳ������⣡")
		LuaSay("ҩƷ���ˣ�������ʦ���ɵģ���Ⱥ�쵰���������нⶾ��ҩƷ���͸�����ˣ���ϣ�����ȳͶ����ƣ�����а��")
		LuaSetTask("T391",2)
		LuaGive("o_mission181",2)
		AddLog("����Ӣ�ۡ����顿",391)
		UpdateMenu()
		elseif(LuaQueryTask("T391")==2)then
		LuaSay("ҩƷ���ˣ�����ȥ�ɣ��𵢸���ʱ�գ�ȥ��@4ɽկ����@0��@3����֮@0��")
		end
				
----------------------------------------------
elseif(answer=="T640")then	
	if(LuaQueryTask("T640")==1)then	
		LuaSay(""..LuaQueryStr("name").."��@3Ľ����@0�ܼ����������ж�������̨��������")
		LuaSay("ҩƷ���ˣ���˶���Ҫһ��3������һ���������⣬�����ڷ����ܻ��⣡���ռ��ú�ȥ��@3Ľ����@0����")
		LuaSetTask("T640",2)
		AddLog("�ⶾ���ˡ����顿",640)
		UpdateMenu()
		UpdateNpcMenu()
	end
		
elseif(answer=="T732") then              ------------------------����ҩ��
	if(LuaQueryTask("T732")==2) then
		LuaSay(""..LuaQueryStr("name").."��������˵����������������@3��ɽѩ��@0����֪�����ܲ��ܸ�����ҡ�")
		LuaSay("ҩƷ���ˣ�ҩƷ�̵������@3��ɽѩ��@0��Ҫ��Ҳ���ԣ�������Щ���󣡲�֪���Ƿ�Ը�⻨@33500ͭ��@0����")
	    AddMenuItem("ѡ���б�","")
	    AddMenuItem("����","T732y")
	    AddMenuItem("����","T732n1")
	elseif(LuaQueryTask("T732")==3) then
	    LuaSay("ҩƷ���ˣ��㲻�Ǽ���ȥ���������@3�ذ���@0�𣿸Ͽ�ȥ�ɣ�")
	 end
    elseif(answer=="T732y")then
		if(LuaItemCount("coin")>=3500) then
		    LuaSay("ҩƷ���ˣ�@3��ɽѩ��@0���ú�ඡ�")
		    LuaGive("coin",-3500,"T732")
		    LuaGive("o_mission015",1)
		    LuaSetTask("T732",3)
		    AddLog("����ҩ����顿",732)
		    UpdateMenu()
		 else
		    LuaSay("ҩƷ���ˣ�����Ǯ����@33500ͭ@0�������ž���Ҳ���ܰ��ð����������Ҳ�ͳɱ����ˡ�")
		 end
	 elseif(answer=="T732n1")then
		LuaSay("ҩƷ���ˣ����СǮ����Ը�⻨����˵ʲô���ž��ˣ���...���ٿ��ǿ��ǰɣ�")
		AddMenuItem("ѡ���б�","")
		AddMenuItem("����","T732y")
		AddMenuItem("����","T732n2")
    elseif(answer=="T732n2")then
        LuaSay("ҩƷ���ˣ��������ˣ����ֲ���������ȥ��")


elseif(answer=="Cf1") then
	local level= LuaQuery("level")
	if(level>=10 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_farm01")
	else
	LuaSay("�����ɼ����豾����Ա10�����ܽ���.")
	end

elseif(answer=="T41") then                                       -------------��Ʒ�ϳ�
	if(LuaQueryTask("T41")== 0) then
		LuaSay("ҩƷ���ˣ��ҿ���������Ϊ����ͽ�����κϳ�@2�߼�����@0��")
		LuaSay("ҩƷ���ˣ���@218��1������@0���Ժϳ�@21��2������@0��@218��2������@0�ϳ�@21��3������@0���Դ����ơ�")
		LuaSay("ҩƷ���ˣ�ʹ��@2����@0���@22�����Ϻϳ���@0���Ϳɽ��в��ϵĺϳ��ˡ�")
		LuaGive("o_mix_book021",1,"T41")
		LuaGive("o_material_11",6,"T41")
		LuaSetTask("T41",1)
		AddLog("��Ʒ�ϳɡ��̡̳�",41)
		UpdateMenu()
		UpdateTopSay("�ñ����еĺϳ���ϳ�1��2��ë")
	elseif(LuaQueryTask("T41")== 1) then
		if(LuaItemCount("o_material_12") >0) then
			LuaSay("ҩƷ���ˣ������Ǵ���������ô��ͺϳ���1��2��ë���������@4��������@0��@3����@0�콱��")
			LuaSay("ҩƷ���ˣ�@2������@0���ǣ���@4��������@0�Ϳ��Լ���@3����@0�ˣ�")
			AddMenuItem("@7�Ƿ�@0Ѱ·��@4��������","")
			AddMenuItem("�Զ�Ѱ·����������","xl_jkdj")

		else
			LuaSay("ҩƷ���ˣ��㻹û�кϳ�@22��ë@0�أ�����������@22�����Ϻϳ���@0�Ϳ��Ժϳ��ˡ�")
			UpdateTopSay("ʹ�úϳ���ϳ�1��2��ë")
		end
	elseif(LuaQueryTask("T41")== 99) then	 
		LuaSay("ҩƷ���ˣ�@218��1������@0���Ժϳ�@21��2������@0��@218��2������@0�ϳ�@21��3������@0���Դ����ơ�")
		LuaSay("ҩƷ���ˣ��ϳɵ�ʱ�����Ҫ�ò�@2�Ϻϳ���@0��������Ĳ��Ϻϳ��飬�ᵯ��һ��ѡ��Ի���")
		LuaSay("ҩƷ���ˣ��ֱ�Ϊ�ϳ�2��Ƥ���ϳ�2��ë���ϳ�2���󣬺ϳ�2�������ϳ�2��ľ���ϳ�2���⡣")
		LuaSay("ҩƷ���ˣ�ֻҪ���������㹻�Ĳ��ϣ������Ӧ�İ�ť�����ܻ�ø�һ�ȼ��Ĳ��ϣ��ܼ򵥰ɡ�")
		LuaSay("��ʾ�������������")
	end
	elseif(answer=="xl_jkdj")then
		AutoPathByTaskStep("T41",1)

--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_5")==1)then
					LuaSay("ҩƷ���ˣ��ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_5",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_5")==2)then
					LuaSay("ҩƷ���ˣ��ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_5",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("ҩƷ���ˣ���Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("ҩƷ���ˣ����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end

elseif(answer=="Tsnpc_23")then
	if(LuaQueryTask("Tsnpc_23")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("ҩƷ���ˣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_23",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_23")==2)then
		LuaSay("ҩƷ���ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_23")then
	if(LuaQueryTask("Tenpc_23")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ���������Ĺ��ף�ϣ�����ٽ�����")
		LuaSay("ҩƷ���ˣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_23",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_23")==2)then
		LuaSay("ҩƷ���ˣ����Ѿ������ˣ����ȥ��ȡ������")
	end
elseif(answer=="Tgjsm") then
	LuaSay("�һ��������������@2�����ǵ�ҩƷ����@0������@3�һ�Ш��@0��������һ��ĵ�ͼ@2ʹ�ùһ�Ш��@0���������㼴�ɹһ����һ�ʱ�䵽����@2�ٴ�ʹ�ùһ�Ш��@0��ȡ�һ����档")
	LuaSay("ע�����@2�һ��ɹ�������ͼ@0�������š�NPC���͡������硢����������ץ��...����ɵ���ͼ����@1������Ϊ�����һ����Զ����ùһ�ϵͳ@0��@7�һ���������@0��@2����һ����������ߺ���δ��ȡ�һ�����ǰ�벻Ҫ�뿪�߾�@0����")
	LuaSay("��ʾ��1��@2�ȼ�����@0��@110�����ϲ��ܹһ�@0��2��@2��ͼ����@0��@1��boss��Ǹ�����ͼ@0��3��@2����ȼ�����@0��@1�һ����ﲻ�ܸ߳��Լ��ȼ�3��@0��4���һ���ʽ��ͨ���һ���ͭ�ҹһ���ͨ������ȡ����-�̳�-Ԫ���̳��й���")	
	LuaSay("�һ���ʽ����@2ͨ���һ������йһ���ս״̬@0���ܱ���������Ҷ���ץ������ɵı�����ͼ��ͭ�ҹһ���û�йһ���ս״̬")
	LuaSay("�һ��ɹ���@2�۳���Ӧͨ����ͭ��@0���һ���ʼ����������ͼ��ɹһ�ʧ�ܣ�@1�������κ�ͨ����ͭ��@0��")
	LuaSay("�һ�ʱ�䵽����@1����ʹ�ùһ�Ш����ȡ�һ�����@0�����������ͼ�һ�ʧ������ɵ���ʧ����ȡ�����@2�۳��һ�Ш��һ��@0,@7�кܴ���ʻ�������̳ǵ���@0Ŷ.")



end
LuaSendMenu()
return 1
end