NPCINFO = {
serial= "66" ,
base_name="ydhuoji1",
icon= 2508, 
NpcMove=2508,
name= "ҩƷ���ˡ��̡�" ,
iconaddr=1,
butt="20|20|77", 
name_color = "CEFFCE" , 
lastsay="�Զ���Ѫҩ�̳�ҩƷ������",
have_sell_item=1,
LuaType=1,
}

addBuyitem={
count=10,
{"o_drug_hp1" , 0, 8 },
{"o_drug_hp2" , 0, 8 },
{"o_drug_hp3" , 0, 8 },
{"o_drug_mp1" , 0, 8 },
{"o_drug_mp2" , 0, 8 },
{"o_drug_mp3" , 0, 8 },
{"o_mix_book025" , 2000  , 8 },
{"o_mix_book026" , 2000  , 8 },
{"o_mix_book027" , 2000  , 8 },
{"o_mix_book028" , 2000  , 8 },
}
function do_talk(answer)
 if (answer=="ask") then
	 local T492 = LuaQueryTask("T492")
	 local T482 = LuaQueryTask("T482")
	 local T701 = LuaQueryTask("T701")
	 local level = LuaQuery("level")
	 local T485 = LuaQueryTask("T485")
	 local T551 = LuaQueryTask("T551")
	 local T552 = LuaQueryTask("T552")
	 local T647 = LuaQueryTask("T647")
	 local T741 = LuaQueryTask("T741")
	 local T732 = LuaQueryTask("T732")
	 local T737 = LuaQueryTask("T737")
	 local Tbprw9=LuaQueryTask("Tbprw9")
	 local Tbprw9_3=LuaQueryTask("Tbprw9_3")
	havetask =0		 
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	local havetask4=0	--��ɫ�ʺ�
	AddTopSayMenuItem("@7�����б�","")
        AddTopSayMenuItem("����","buy1")
 		AddTopSayMenuItem("@3���������","Tcf4")
		if(T552==0 and level>=31 and level<36) then
			 AddTopSayMenuItem("�ռ����ơ�ѭ����","T552")
			havetask1=1	--��̾��
		end
		if((LuaQueryTask("Tsnpc_50")==1 or LuaQueryTask("Tsnpc_50")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_50")
			if(LuaQueryTask("Tsnpc_50")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_50")==1 or LuaQueryTask("Tenpc_50")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_50")
			if(LuaQueryTask("Tenpc_50")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("Tcoc")==21)then
			AddTopSayMenuItem("@2�̼���","Tcoc")
			havetask2 =1
		end
		if(T485==1 or T485==2) then
			AddTopSayMenuItem("@2�������񡾾��顿","T485")
			if(T485==1)then
			havetask2=1
			end
		end
		if(T552==1) then
			 AddTopSayMenuItem("@2�ռ����ơ�ѭ����","T552")
			 if(LuaItemCount("o_mission325")>=5) then	--��ʾ��ɫ�ʺ�
				 havetask2=1
			else
				havetask4=1
			end
		end
		if(T647==1 or T647==2) then
			AddTopSayMenuItem("@2��ȴ��ӡ����顿","T647")
			if(LuaQueryTask("T647")==1) then	--��ʾ��ɫ�ʺ�
				havetask2=1
			end
		end
		if(T737==1 or T737==2) then
			AddTopSayMenuItem("@2����ҩ����顿","T737")
			if(LuaQueryTask("T737")==1) then	--��ʾ��ɫ�ʺ�
				havetask2=1
			end
		end
		if(T732 ==1 or T732 ==2) then
 			AddTopSayMenuItem("@2ϡȱҩ����顿","T732")
 			if(LuaQueryTask("T732")==1) then
 			havetask =2
 			end
		end		
		if(T482==1 or T482==2) then
			AddTopSayMenuItem("@2ҽ�����񡾾��顿","T482")
			if(T482==1) then	--��ʾ��ɫ�ʺ�
				havetask2=1
			elseif(T482==2) then
				if(LuaItemCount("o_mission329")==1) then	--��ʾ��ɫ�ʺ�
					havetask2=1
				else
					havetask4=1	--��ɫ�ʺ�
				end
			end
		end
		if(LuaQueryTask("Tbprw9_3")==1) then
			AddTopSayMenuItem("@2�������ʡ�ÿ�ա�","Tbprw9_3")
			havetask=2
		end
		AddTopSayMenuItem("@5ѧϰ��ιһ�@0","Tgjsm")
			AddTopSayMenuItem("ǰ���ٻ���","Cf2")
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
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end	 
	return 1
elseif(answer=="buy1") then
		DoBuy()


elseif(answer=="liaotian") then
      LuaSay("ҩƷ���ˣ�ɱ��Խ����ҩƷ����")
      
elseif(answer=="Tgjsm") then
	LuaSay("�һ��������������@2�����ǵ�ҩƷ����@0������@3�һ�Ш��@0��������һ��ĵ�ͼ@2ʹ�ùһ�Ш��@0���������㼴�ɹһ����һ�ʱ�䵽����@2�ٴ�ʹ�ùһ�Ш��@0��ȡ�һ����档")
	LuaSay("ע�����@2�һ��ɹ�������ͼ@0�������š�NPC���͡������硢����������ץ��...����ɵ���ͼ����@1������Ϊ�����һ����Զ����ùһ�ϵͳ@0��@7�һ���������@0��@2����һ����������ߺ���δ��ȡ�һ�����ǰ�벻Ҫ�뿪�߾�@0����")
	LuaSay("��ʾ��1��@2�ȼ�����@0��@110�����ϲ��ܹһ�@0��2��@2��ͼ����@0��@1��boss��Ǹ�����ͼ@0��3��@2����ȼ�����@0��@1�һ����ﲻ�ܸ߳��Լ��ȼ�3��@0��4���һ���ʽ��ͨ���һ���ͭ�ҹһ���ͨ������ȡ����-�̳�-Ԫ���̳��й���")	
	LuaSay("�һ���ʽ����@2ͨ���һ������йһ���ս״̬@0�����ܱ�������ץ����ն�ס����̣����ܱ���������Ҷ���ץ������ɵı�����ͼ��ͭ�ҹһ���û�йһ���ս״̬")
	LuaSay("�һ��ɹ���@2�۳���Ӧͨ����ͭ��@0���һ���ʼ����������ͼ��ɹһ�ʧ�ܣ�@1�������κ�ͨ����ͭ��@0��")
	LuaSay("�һ�ʱ�䵽����@1����ʹ�ùһ�Ш����ȡ�һ�����@0�����������ͼ�һ�ʧ������ɵ���ʧ����ȡ�����@2�۳��һ�Ш��һ��@0,@7�кܴ���ʻ�������̳ǵ���@0Ŷ.")


elseif(answer=="Tcf4")then
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(hour==12 or hour==23)then			
	LuaSay("������@212:00~13:00@0������@223:00~24:00@0ʱ�ֿ���@2����ũ��@0,�л���ɵ��߼����ϣ����ĵȴ��ɡ�@!")
	AddMenuItem("Ҫ����@2����ũ��@0��","")
	AddMenuItem("������","no")
	AddMenuItem("@2����","yescf4")
	else
	LuaSay("������@212:00~13:00@0������@223:00~24:00@0ʱ�ֿ���@2����ũ��@0,�л���ɵ��߼����ϣ����ĵȴ��ɡ�@!")
	LuaSay("���ڷ�����ʱ����:@2"..hour.."ʱ"..minute.."��@0.��������ʱ��")
	end
elseif(answer=="yescf4")then
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(hour==12 or hour==23)then
	ChangeMap("lu_farm04")
	end
elseif(answer=="no")then
	LuaSay("ҩƷ���ˣ���ռ�ı��˶�����ռ�����Ӳ��ɽ�Ҳ��")

elseif(answer=="Cf2") then 
	local level = LuaQuery("level")
	if(level>=40)then
		if(LuaQuery("till")>=500)then
		ChangeMap("lu_farm02")
		else
		LuaSay("�ɼ������Ȳ���,��Ĳɼ������ﵽ500���ϲ��ܽ���.")
		end
	else
	LuaSay("�м��ɼ���40�����ܽ���")
	end
elseif(answer=="Tcoc")then---------------------�̼���8 Tcoc===19
	if(LuaQueryTask("Tcoc")==21)then
		LuaSay("ҩƷ����:��Ϊ����ı�����ҵ�Ȼ����.")
		LuaSetTask("Tcoc",22)
		LuaSetTask("T955",22)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		LuaGive("coin",1000,"Tcoc")
		LuaGive("o_drug_mp4",3,"Tcoc")
		UpdateMenu()
	end

		
elseif(answer=="T485") then
	if(LuaQueryTask("T485")==1) then
		LuaSay("ҩƷ���ˣ��������´��ң�������������������һ����Ϊ���أ����ˣ�������һ��@3����@0�����ȸ�@4��������@0��@3����@0��ȥ��")
		LuaSetTask("T485",2)
		LuaGive("o_mission321",1)
		AddLog("�������񡾾��顿",485)
		UpdateMenu()
	elseif(LuaQueryTask("T485")==2) then
		LuaSay("ҩƷ���ˣ��������ȸ�@4��������@0��@3����@0��ȥ��������")
	end			                              
---------------------------- �ռ�����
elseif(answer=="T552") then         
		if(LuaQueryTask("T552") == 0 ) then
				LuaSay("ҩƷ���ˣ����˿ɲ������Ű�")
				LuaSay(""..LuaQueryStr("name").."С���磬��ʲô�¾���˵��!")
				LuaSay("ҩƷ���ˣ�����ҩ�������ռ���������ҩƷ������ȥ@4��������@0�ռ�@35����ë������@0��")
				LuaSetTask("T552",1)
		  		UpdateTopSay("ȥ���������ռ�5����ë������")
		      		AddLog("�ռ����ơ�ѭ����",552)
		  		UpdateMenu()
		elseif(LuaQueryTask("T552") == 1 ) then
		  	if(LuaItemCount("o_mission325")>=5) then
            		LuaSay("ҩƷ���ˣ���л���°�æ�ˣ�����������ģ����԰��Ҷ���Щ����")
		    	AddMenuItem("@7�������","")
		    	AddMenuItem("��ȡ����","T552jl")
			else
		    	LuaSay("ҩƷ���ˣ��㻹û���ռ���@35����ë������@0�ء�")
            		UpdateTopSay("��ȥ�ռ�5����ë������")
          		end
		end
        
		elseif(answer=="T552jl")then
			local level = LuaQuery("level")
				if(level>80)then
		level=80
	end
          		if(LuaQueryTask("T552")==1) then
		 		if(LuaItemCount("o_mission325")>=5) then
		    		DelItem("o_mission325",LuaItemCount("o_mission325"))
		    		LuaDelTask("T552")	
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
				if(TeamCount()>=2)then
					LuaSay("@1��ʾ�������Ӿ���ӳ�")
					jingyan=(80835+level^2*20)
				else
					jingyan=(42000+level^2*20)
				end
				LuaAddJx("combat_exp",jingyan,"T552")
				DelLog("552")
				LuaGive("coin",money,"T552")
				if(LuaQueryTask("T552_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T552_a",99)
				end
		    		UpdateMenu()
		    		end
			end 
			
 elseif(answer=="T482") then
	if(LuaQueryTask("T482")==1) then
                LuaSay(""..LuaQueryStr("name").."�����������@2��ҩ@0��")
	        LuaSay("ҩƷ���ˣ��еģ���ʮ��ͭ��һ����")
                LuaSay(""..LuaQueryStr("name").."���������Ҿ�Ȼ���Ǵ�Ǯ�ˣ������ô�찡����������������İ���")
		LuaSay("ҩƷ���ˣ����û��Ǯ���Ͱ�����Ѱ��һ��@2��Ƥ@0��ɱ�������������ë�� �����Եõ���Ƥ��")
		LuaSetTask("T482",2)		
	        AddLog("ҽ�����񡾾��顿",482)
		UpdateMenu()
	elseif(LuaQueryTask("T482")==2) then
	     if(LuaItemCount("o_mission329")==1) then
		LuaSay("ҩƷ��:��ô�찡������һƿ@3��ҩ@0����ȥ���˰�")
         	DelItem("o_mission329",1)
                LuaGive("o_mission335",1)
      	        LuaSetTask("T482",3)
	        AddLog("ҽ�����񡾾��顿",482)
		UpdateMenu()
	     else
		LuaSay("ҩƷ����:ɱ�����������@3��ë��@0 �����Եõ�@3��Ƥ@0,��ȥ��")
	     end
	else
	LuaSay("ҩƷ����:@3��ҩ@0����ı������ȥ���˰ɣ�")
	end
	     
	                                                

elseif(answer=="T647") then              ------------------------��ҽ
	if(LuaQueryTask("T647")==1) then
		LuaSay(LuaQueryStr("name").."�������Ѻ�����@2������@0���о綾�����ʿ��н��֮����")
		LuaSay("ҩƷ���ˣ�����Ǿ綾������˭��˺ݶ�������Ҫ@21��������@0��@21����������@0�����ڷ����ܻ���˶���")
		LuaSay("ҩƷ���ˣ�������Ҫ��@2̫��ɽ�Ȼ�ɱ̫�й�Գ@0�õ�������������Ե�@2�����������������@0ȡ�ã�")
		LuaSay(LuaQueryStr("name").."�������ˣ�")
                LuaSetTask("T647",2)
		UpdateTopSay("·;���գ������ౣ�ذ�")
                AddLog("��ȴ��ӡ����顿",647)
                UpdateMenu()
	elseif(LuaQueryTask("T647")==2 ) then
	LuaSay("ҩƷ���ˣ�����Σ�ڵ�Ϧ����ȥ�Ѽ�ҩ�İɣ�")
	end




elseif(answer=="T737") then              ------------------------����ҩ��
	if(LuaQueryTask("T737")==1) then
		LuaSay(""..LuaQueryStr("name").."��������˵����������������@3��ɽѩ��@0����֪�����ܲ��ܸ�����ң��Ҽ��ž��ˡ�")
		LuaSay("ҩƷ���ˣ���������@3��ɽѩ��@0��Ҫ��Ҳ���ԣ�������Щ���󣡲�֪���Ƿ�Ը�⻨@33300ͭ��@0����")
	    AddMenuItem("ѡ���б�","")
	    AddMenuItem("����","T737y")
	    AddMenuItem("����","T737n1")
    elseif(LuaQueryTask("T737")==2) then
        LuaSay("ҩƷ���ˣ��㲻�Ǽ���ȥ��������ô��������")
	 end 
    elseif(answer=="T737y")then
		if(LuaQueryTask("T737")==1 and LuaItemCount("coin")>=3300) then
            LuaSay("ҩƷ���ˣ�@3��ɽѩ��@0���ú�ඡ�")
			LuaGive("o_mission015",1)
            AddLog("����ҩ����顿",737)
            LuaSetTask("T737",2)
            UpdateMenu()
		 else
		    LuaSay("ҩƷ���ˣ��ҿɲ����͸�����Ŷ������û��3300ͭ���ҿɲ�����")
		 end
	 elseif(answer=="T737n1")then
        LuaSay("ҩƷ���ˣ����СǮ����Ը�⻨����˵ʲô���ž��ˣ���...���ٿ��ǿ��ǰ�")
        AddMenuItem("ѡ���б�","")
	    AddMenuItem("����","T737y")
	    AddMenuItem("����","T737n2")
    elseif(answer=="T737n2")then
        LuaSay("ҩƷ���ˣ��������ˣ��ҾͲ��Ż�û������")

elseif(answer=="T732") then              ------------------------ϡȱҩ��
	if(LuaQueryTask("T732")==1) then
		LuaSay(LuaQueryStr("name").."�������ﲻ����@3��ɽѩ��@0�𣬸���һ�꣬����Ǯ�Ҷ���")
		LuaSay("ҩƷ���ˣ����֮�����˾Ͳ������֮���ˣ��㵽@4��������@0��@3ҩƷ����@0����ȥ�����ɣ�")
		UpdateTopSay("ȥ�ҽ������ϵ�ҩƷ��������ɽѩ��")
		LuaSetTask("T732",2)
		AddLog("ϡȱҩ����顿",732)
		AddMenuItem("�Ƿ������������ϣ�","")
		AddMenuItem("��","Tshi")
		AddMenuItem("��","Tfou")
		UpdateMenu()
    elseif(LuaQueryTask("T732")==2)then
        LuaSay("ҩƷ���ˣ��㲻��Ҫ��@4��������@0��@3ҩƷ����@0����ȥ��������ô��ûȥ��")
		UpdateMenu()
    end
	elseif(answer=="Tshi")then
		ChangeMap("lu_jkcn")
	elseif(answer=="Tfou")then
		LuaSay("ҩƷ���ˣ���ʱ������ȥ���������ٹ��@!")
						
		
elseif(answer=="Tbprw9_3")  then
if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw9_3")==1) then
		LuaSay(""..LuaQueryStr("name").."���ҷ���۵�ʥּǰ������@3��������ҩƷ@0�������и����㡣")
		LuaSay("ҩƷ���ˣ�����@3��������ҩƷ@0Ҫʹ��@33000ͭ��@0")
		AddMenuItem("ѡ���б�","")
        AddMenuItem("��","YES")
	    AddMenuItem("����","NO1")
	end
	if(LuaQueryTask("Tbprw9")==2) then
		LuaSay("ҩƷ���ˣ���ȥ��@3��������ҩƷ@0�͸�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
	end
else
		LuaSay("ҩƷ���ˣ��µ�һ�죬�µĿ�ʼ���������ǰ��@3�������ʡ�ÿ�ա�@0����û��ɣ�")
		LuaSay("ҩƷ���ˣ����ڵ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0���½�ȡ����@3�������ʡ�ÿ�ա�@0����ɣ�")
end
elseif(answer=="YES") then
	if(LuaQueryTask("Tbprw9_3")== 1) then
		if(LuaItemCount("coin")>=3000) then
			LuaGive("o_mission405",1)
			LuaGive("coin",-3000,"Tbprw9")
			LuaSay("ҩƷ���ˣ���ȥ��@3��������ҩƷ@0�͸�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
			LuaSetTask("Tbprw9",2)
			LuaSetTask("Tbprw9_3",99)
		elseif(LuaItemCount("coin")<3000) then
			LuaSay("ҩƷ���ˣ�������ֻ��@3"..LuaItemCount("coin").."ͭ��@0,����@33000ͭ��@0����")
			LuaSay("ҩƷ���ˣ�����Ȼ�ǽ���������@3��������ҩƷ@0�ģ���Ҳ�����������������Ⱑ��")
		end
	end
elseif(answer=="NO1") then
	if(LuaQueryTask("Tbprw9_3")== 1) then
		LuaSay("ҩƷ���ˣ���ôС����@33000ͭ��@0����Ը����")
		LuaSay("ҩƷ���ˣ���˵���ۺܴ���Ŷ�����������£������Բ��������ġ�")
		LuaSay("ҩƷ���ˣ�������ɣ���ȥ�ý��")
		AddMenuItem("ѡ���б�","")
        AddMenuItem("��","YES")
	    AddMenuItem("����","NO2")
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("Tbprw9_3")== 1) then
		LuaSay("ҩƷ���ˣ������ⲻ������˰ɣ���Ҳ��ǿ���㣬���������ˡ�")
	end

elseif(answer=="Tsnpc_50")then
	if(LuaQueryTask("Tsnpc_50")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("ҩƷ���ˣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_50",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_50")==2)then
		LuaSay("ҩƷ���ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_50")then
	if(LuaQueryTask("Tenpc_50")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("ҩƷ���ˣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_50",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_50")==2)then
		LuaSay("ҩƷ���ˣ����Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end
