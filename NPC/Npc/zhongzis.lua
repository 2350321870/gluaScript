NPCINFO = {
serial= "32" ,
base_name="zhongzis",
icon= 2541,
NpcMove=2541,
name= "�������ˡ��̡�" ,
iconaddr=1,
butt="10|10|63",
name_color = "CEFFCE" ,
lastsay="��ֲ�ɻ�÷�����;���",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=4,
{"o_seed001",0,8},
{"o_seed002",0,8},
{"o_seed005",0,8},
{"o_seed015",0,8},
}

QLYB_SZ={} --ǧ��Ѻ������
QLYB_SZ[1]={"һƷ�ڻ�",o_biaohuo001,o_biaohuo002}
QLYB_SZ[2]={"@7��Ʒ�ڻ�@0",o_biaohuo003,o_biaohuo004}
QLYB_SZ[3]={"@5��Ʒ�ڻ�@0",o_biaohuo005,o_biaohuo006}
QLYB_SZ[4]={"@3��Ʒ�ڻ�@0",o_biaohuo007,o_biaohuo008}
QLYB_SZ[5]={"@1��Ʒ�ڻ�@0",o_biaohuo009,o_biaohuo0010}

function do_talk(answer)
if(answer=="ask") then
	havetask =0
	local level=LuaQuery("level")
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("@3��������","buy1")
	if(LuaQueryTask("T211")==0 and level>=12)then
		AddTopSayMenuItem("�ɼ���ֲ���̡̳�","T211")
		havetask1=1
	end
	if(level>=30)then
		if(GetCurrentDay()~=LuaQueryStrTask("qlybTaskday")) then
			--AddTopSayMenuItem("@7ǧ�����̡�ÿ�ա�","Tqlxs")
			AddTopSayMenuItem("@7ǧ��Ѻ�ڡ�ÿ�ա�","QLYB")
			havetask1=1
		else
			--AddTopSayMenuItem("@7ǧ�����̡�ÿ�ա�","Tqlxs")
			AddTopSayMenuItem("@7ǧ��Ѻ�ڡ�ÿ�ա�","QLYB")
		end
	elseif(level>=25)then
		if(GetCurrentDay()~=LuaQueryStrTask("qlybTaskday")) then
			--AddTopSayMenuItem("@2[��]@0@7ǧ�����̡�ÿ�ա�","Tqlxs")
			AddTopSayMenuItem("@2[��]@0@7ǧ��Ѻ�ڡ�ÿ�ա�","QLYB")
			havetask1=1
		else
			--AddTopSayMenuItem("@2[��]@0@7ǧ�����̡�ÿ�ա�","Tqlxs")
			AddTopSayMenuItem("@2[��]@0@7ǧ��Ѻ�ڡ�ÿ�ա�","QLYB")
		end
	
	end
	if((LuaQueryTask("Tsnpc_19")==1 or LuaQueryTask("Tsnpc_19")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_19")
		if(LuaQueryTask("Tsnpc_19")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_19")==1 or LuaQueryTask("Tenpc_19")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_19")
		if(LuaQueryTask("Tenpc_19")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tsnpc_18")==1 or LuaQueryTask("Tsnpc_18")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_18")
		if(LuaQueryTask("Tsnpc_18")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_18")==1 or LuaQueryTask("Tenpc_18")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_18")
		if(LuaQueryTask("Tenpc_18")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_2")==1 or LuaQueryTask("TfindNPC_2")==2)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask2=1
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_2")==98)then
		AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
	end

	if(LuaQueryTask("T211")==1)then
		AddTopSayMenuItem("@2�ɼ���ֲ���̡̳�","T211")
		havetask2=1
	end

	if(LuaQueryTask("Tcoc")==15)then
		AddTopSayMenuItem("@2�̼���","Tcoc")
		havetask2 =1
		end
	if(LuaQueryTask("T265")==1 and LuaQueryTask("T265E")==0)  then
		AddTopSayMenuItem("@2���ٽ��������顿","T265E")
		havetask2 =1
		end
		
    	if(LuaQueryTask("T302")==4 and LuaQueryTask("T302D")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302D")
		havetask2 =1
	end
	AddTopSayMenuItem("@9������ֲ��","jrzzc")
	if(LuaQueryTask("T211")==99)  then
	AddTopSayMenuItem("��ֲ˵��","plant_intro")
	end
	if(LuaQueryTask("T211")==99 and level>=20)then
		AddTopSayMenuItem("@9�ɼ���ֲ���̡̳�","T211")
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
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end 
return 1 
elseif(answer=="buy1") then
	--LuaSay("��������:Ŀǰ������ʱȱ��,�����ͨ��һЩ����õ�Щ����,����ʲô����,���Լ�̽������.")
	DoBuy()
elseif(answer=="liaotian") then
	LuaSay("��������:��!������Դ���Ű�,����Ȧȥ������,�޵����ְ�...")
			LuaDelTask("T214")
		         DelLog("214")
elseif(answer=="Tybzz") then
	if(LuaQuery("level")<25) then
	     LuaSay("�������ˣ�25�����ϵ���Ҳſ��Բ������Ͽ������߰ɡ�@!")
         LuaSendMenu()
	    return 0
	end
	if(GetCurrentDay()~=LuaQueryStrTask("ybzz_day")) then
		LuaSetTask("ybzz_ev",0)
		LuaSetTask("ybzz_day",GetCurrentDay())
	end
	LuaSay("�������ˣ�����ռ���һЩ�ǳ���ϡ�����ӣ��������ޣ�ÿ����ÿ��ֻ���Ի�ȡһ��.")
    AddMenuItem("@7�����б�@0","")
    	AddMenuItem("@7���˵��","ybzz_sm")
		AddMenuItem("������������","ybzz_jy")
		AddMenuItem("������+50","ybzz_j50")
		AddMenuItem("�ǻ۷�+50","ybzz_jzh50")
		AddMenuItem("���ݷ�+50","ybzz_jmj50")
elseif(answer=="ybzz_sm") then
	LuaSay("�������ˣ��������ӵ�ʱ���������ֲ�ص㣬����ʱ�䣬���챣��ʱ�䣬��Ҫ����ˡ�")
	LuaSay("�������ˣ����Լ���ֲ����Գ��ݣ��ɼ�����ѯ״̬���Ա��˵�ֲ����Խ��зų棬��ѯ״̬�����˱����ڲſ��Բɼ���") 
	LuaSay("�������ˣ��ɼ��Լ���ֲ����Ҫ���Ĳɼ�ʯ���ɼ���ʯ��ͭ�ҵȣ������ʱ���뿴ÿ�����ӵ�˵��.")
	LuaSay("�������ˣ��ɼ����˵�ֲ����Ҫ���Ĳɼ���ʯ�������Լ���ֲ�ﻹ�Ǳ��˵�ֲ���Ʒ���㣬�������Բɼ���") 
	LuaSay("�������ˣ�@2�ɼ�ʯ@0ֻ��ͨ�����Լ���ֲ����ݻ�ã�@2�ɼ���Ƭ@0ֻ��ͨ���ų���˵�ֲ����.")
	LuaSay("�������ˣ�@2����@0���Լ���ֲ�������������@2���ݼ�@0��@2�ų�@0�ή��ֲ�������ٶȣ�����@2����@0�������ʱ���뿴ÿ�����ӵ�����˵��.")
	LuaSay("�������ˣ�@2���ݼ��ͳ���@0�������ڽ����������嶷ɽ��ɽկ��ֻ�ȡ�����й�����Ч��") 
elseif(answer=="ybzz_jy") then
	LuaSay("�������ˣ�@3������������@0����ֲ�ص�������м����߼���ֲ��������ʱ��4Сʱ�����챣����10���ӣ���Ҫ�ɼ��ȼ�8�����˱�����С�ı����˲ɼ�Ŷ��")
	LuaSay("�������ˣ��Լ���ֲ�ɼ�����5���ɼ�ʯ@0��5���ɼ���ʯ����10000ͭ�ң��ɼ�������ֲ�ģ�����10���ɼ���ʯ����20000ͭ�ң����㲻�ܲɼ���")
	LuaSay("�������ˣ���������5�����ݼ�����ȡһ���ɼ�ʯ���ų�����5�����ӣ���ȡһ���ɼ���ʯ.")
	LuaSay("�������ˣ�@3������������@0�ɼ����Ի�ȡһ�����������һСʱ�������Ӽ�ֵ5000ͭ�ң��Ƿ���?") 
	AddMenuItem("@7�Ƿ���@0","")
		AddMenuItem("����","ybzz_nob")
    	AddMenuItem("����","ybzz_buy")
		
elseif(answer=="ybzz_nob") then
elseif(answer=="ybzz_buy") then
	if(LuaQueryTask("ybzz_ev")==0) then
		 if(LuaItemCount("coin") >=5000)then
		 	   LuaGive("o_seed044",1,"ybzz_buyy")
		 	   LuaGive("coin",-5000,"")
		 	   LuaSetTask("ybzz_ev",1)
		  else
		  	  LuaSay("�������ˣ�ͭ�Ҳ���5000.")
		  end
	else
		LuaSay("��������:����칺��������ˡ�")
	end
-----------------------------------
elseif(answer=="ybzz_j50") then
	LuaSay("�������ˣ�@3������+50����@0����ֲ�ص�������м����߼���ֲ��������ʱ��4Сʱ�����챣����10���ӣ���Ҫ�ɼ��ȼ�1�����˱�����С�ı����˲ɼ�Ŷ��")
	LuaSay("�������ˣ��Լ���ֲ�ɼ�����5���ɼ�ʯ@0��5���ɼ���ʯ����10000ͭ�ң��ɼ�������ֲ�ģ�����10���ɼ���ʯ����20000ͭ�ң����㲻�ܲɼ���")
	LuaSay("�������ˣ���������5�����ݼ�����ȡһ���ɼ�ʯ���ų�����5�����ӣ���ȡһ���ɼ���ʯ.")
	LuaSay("�������ˣ�@3������+50����@0�޳��ӣ��ɼ�5�ξͿ��Գ��죬�ɼ����Ի�ȡһ��������+50��һСʱ�������Ӽ�ֵ1000ͭ�ң��Ƿ���?") 
	AddMenuItem("@7�Ƿ���@0","")
		AddMenuItem("����","ybzz_nobj50")
    	AddMenuItem("����","ybzz_buyj50")
		
elseif(answer=="ybzz_nobj50") then
elseif(answer=="ybzz_buyj50") then
	if(LuaQueryTask("ybzz_ev")==0) then
		 if(LuaItemCount("coin") >=1000)then
		 	   LuaGive("o_seed045",1,"ybzz_buyy")
		 	   LuaGive("coin",-1000,"")
		 	   LuaSetTask("ybzz_ev",1)
		  else
		  	  LuaSay("�������ˣ�ͭ�Ҳ���1000.")
		  end
	else
		LuaSay("��������:����칺��������ˡ�")
	end
elseif(answer=="ybzz_jzh50") then
	LuaSay("�������ˣ�@3�ǻ۷�+50����@0����ֲ�ص�������м����߼���ֲ��������ʱ��4Сʱ�����챣����10���ӣ���Ҫ�ɼ��ȼ�1�����˱�����С�ı����˲ɼ�Ŷ��")
	LuaSay("�������ˣ��Լ���ֲ�ɼ�����5���ɼ�ʯ@0��5���ɼ���ʯ����10000ͭ�ң��ɼ�������ֲ�ģ�����10���ɼ���ʯ����20000ͭ�ң����㲻�ܲɼ���")
	LuaSay("�������ˣ���������5�����ݼ�����ȡһ���ɼ�ʯ���ų�����5�����ӣ���ȡһ���ɼ���ʯ.")
	LuaSay("�������ˣ�@3�ǻ۷�+50����@0�޳��ӣ��ɼ�5�ξͿ��Գ��죬�ɼ����Ի�ȡһ���ǻ۷�+50��һСʱ�������Ӽ�ֵ1000ͭ�ң��Ƿ���?") 
	AddMenuItem("@7�Ƿ���@0","")
		AddMenuItem("����","ybzz_nobjzh50")
    	AddMenuItem("����","ybzz_buyjzh50")
		
elseif(answer=="ybzz_nobjzh50") then
elseif(answer=="ybzz_buyjzh50") then
	if(LuaQueryTask("ybzz_ev")==0) then
		 if(LuaItemCount("coin") >=1000)then
		 	   LuaGive("o_seed046",1,"ybzz_buyy")
		 	   LuaGive("coin",-1000,"")
		 	   LuaSetTask("ybzz_ev",1)
		  else
		  	  LuaSay("�������ˣ�ͭ�Ҳ���1000.")
		  end
	else
		LuaSay("��������:����칺��������ˡ�")
	end
elseif(answer=="ybzz_jmj50") then
	LuaSay("�������ˣ�@3���ݷ�+50����@0����ֲ�ص�������м����߼���ֲ��������ʱ��4Сʱ�����챣����10���ӣ���Ҫ�ɼ��ȼ�1�����˱�����С�ı����˲ɼ�Ŷ��")
	LuaSay("�������ˣ��Լ���ֲ�ɼ�����5���ɼ�ʯ@0��5���ɼ���ʯ����10000ͭ�ң��ɼ�������ֲ�ģ�����10���ɼ���ʯ����20000ͭ�ң����㲻�ܲɼ���")
	LuaSay("�������ˣ���������5�����ݼ�����ȡһ���ɼ�ʯ���ų�����5�����ӣ���ȡһ���ɼ���ʯ.")
	LuaSay("�������ˣ�@3���ݷ�+50����@0�޳��ӣ��ɼ�5�ξͿ��Գ��죬�ɼ����Ի�ȡһ�����ݷ�+50��һСʱ�������Ӽ�ֵ1000ͭ�ң��Ƿ���?") 
	AddMenuItem("@7�Ƿ���@0","")
		AddMenuItem("����","ybzz_nobjmj50")
    	AddMenuItem("����","ybzz_buyjmj50")
		
elseif(answer=="ybzz_nobjmj50") then
elseif(answer=="ybzz_buyjmj50") then
	if(LuaQueryTask("ybzz_ev")==0) then
		 if(LuaItemCount("coin") >=1000)then
		 	   LuaGive("o_seed047",1,"ybzz_buyy")
		 	   LuaGive("coin",-1000,"")
		 	   LuaSetTask("ybzz_ev",1)
		  else
		  	  LuaSay("�������ˣ�ͭ�Ҳ���1000.")
		  end
	else
		LuaSay("��������:����칺��������ˡ�")
	end
-------------------------------------------
elseif(answer=="T302D") then
	if(LuaQueryTask("T302D")==0) then
		LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
		LuaSay("�������ˣ��벻����������ҲԶ��������!")
		DelItem("o_mission076",1)
		LuaSetTask("T302D",99)
		UpdateMenu()
	end

elseif(answer=="plant_intro")then
	LuaSay("��������:@1����ֲ�������˽���ֲ�Ĺ�أ���ϸ�����ˣ�")
	LuaSay("��������:ֲ������˵���ж���ÿ�׶εĳɳ�ʱ�䣬���º�ɼ���������м����׶Σ��ɳ���ɺ�20�����ڶ����ڲ����ߡ�")
	--LuaSay("��������:���ֲ�ﻹ���ڲ����ߣ�������͵�ɻᱻ��������Ʒ��ֵ������Ǯ����Ǯ�����������ߣ���@2�����߲����߲���õ�������")
	LuaSay("��������:ֲ��@2�ɳ����20���Ӻ�@0�Ͳ����ڲ������ˣ����˲���@2�����Ǯ@0����@2����������߲�����")
	LuaSay("��������:Ҫ��Ϊʲô���Ǻǣ�������Դ���ţ�������ȥ�㷿�ز��ˣ�ÿ�ŵ�ͼ���ֻ����ʮ���á�")
	LuaSay("��������:����������㻹ռ�ŵز��ɣ��Ǳ��˾�û�����ˡ�")
	LuaSay("��������:@7�������������û������������һ�飬�ҵ����ӿ��ǰ��������˵ġ�")

elseif(answer=="jrzzc") then
	AddMenuItem("��ֲ��","")
	AddMenuItem("������ֲ��1","cp1_1")
	AddMenuItem("������ֲ��2","cp1_2")
	AddMenuItem("�м���ֲ��1","cp2_1")
	AddMenuItem("�м���ֲ��2","cp2_2")
	AddMenuItem("�߼���ֲ��1","cp3_1")	
	AddMenuItem("�߼���ֲ��2","cp3_2")
elseif(answer=="cp1_1") then
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant01")
	else
	LuaSay("ֻ�б����˲��ܽ���")
	end
elseif(answer=="cp1_2") then
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant01_2")
	else
	LuaSay("ֻ�б����˲��ܽ���")
	end
elseif(answer=="cp2_1")then
	local level=LuaQuery("level")
	if(level>=25 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant02")
	else
	LuaSay("25�����ϵı����˲��ܽ���")
	end
elseif(answer=="cp2_2")then
	local level=LuaQuery("level")
	if(level>=25 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant02_2")
	else
	LuaSay("25�����ϵı����˲��ܽ���")
	end
elseif(answer=="cp3_1")then
	local level=LuaQuery("level")
	if(level>=40 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant03")
	else
	LuaSay("40�����ϵı����˲��ܽ���")
	end
elseif(answer=="cp3_2")then
	local level=LuaQuery("level")
	if(level>=40 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant03_2")
	else
	LuaSay("40�����ϵı����˲��ܽ���")
	end


elseif(answer=="Tcoc")then---------------------�̼���8 Tcoc===15
	if(LuaQueryTask("Tcoc")==15)then
		LuaSay("��������:��,�Ҷ����������,�����̻��ܸ����ṩ�µ���ҵ����,���Ե�����.")
		LuaSetTask("Tcoc",16)
		LuaSetTask("T955",16)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		end
	end
	UpdateMenu()

elseif(answer=="T265E") then                       -----���ٽ��� 
			if(LuaQueryTask("T265E") ==0) then
    			LuaSay("�������ˣ�����ûʲô������ģ������㼸�����Ӱ�!��ȥ��ֲ����ֲ����������ջ�Ŷ@!")
    			LuaSay("�������ˣ�ʲô���㲻����ֲ�������Ҫ������ú�ѧѧӴ~��@4������@0���@2���ͽ�����ֲ��@0�ˡ�@!")
			LuaSetTask("T265E",99)
			UpdateMenu()
			UpdateNPCMenu("xiean")
			end

elseif(answer=="T211") then                   -------��ֲ����
		if(LuaQueryTask("T211") == 0) then
			LuaSay("�������ˣ��򿪱�����@3ֱ��ʹ������@0����ֲ�ͳɹ���ֲ������Ժ󣬼��ɽ��вɼ���")
			LuaSay("�������ˣ���ֲ���Ա�ʹ��@3�ɼ�����@0�Ϳɽ��вɼ�����ֲ������ֲ���У���ֲ��ɼ�@21������@0�����ҡ�")
			LuaSay("�������ˣ���������@22����������@0���㵽������ֲ��������ֲ�ɣ���@3��������Խ�����ֲ��@0��")
			LuaSay("@5�������ˣ���Ҫ�ر�˵��һ�µ��ǣ������ֵ����ӺͲɼ����Ļ����������񱳰�Ŷ�������ͨ���鿴����˵���鿴����ʲô����@!")
			LuaSay("@7��ܰ��ʾ@0�������ֲ���Ѿ������ˣ�Ҳ���Բɼ�������ֲ���������������Ŷ��@!��ɱ����񽫻��з��Ľ�����")
			LuaSetTask("T211",1)
			LuaGive("o_seed025",2)
			AddLog("��ֲ",211)
			UpdateMenu()
			UpdateTopSay("ȥ������ֲ����ֲ")
		elseif(LuaQueryTask("T211") == 1) then
			if(LuaItemCount("o_mission093") >0) then
				LuaSay("�������ˣ�û�뵽����ô���ѧ������ֲ�Ͳɼ�������ǰ;����������")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T211jl")
			else
				LuaSay("�������ˣ��㻹û�а��Ҳɼ��������أ���������ֲ����ֲ������30���ӾͿɲɼ���")
				LuaSay("@1��ܰ��ʾ�������ֲ���Ѿ������ˣ�Ҳ���Բɼ�������ֲ���������������Ŷ��@!")
				if(LuaItemCount("o_seed025")==0) then
					LuaGive("o_seed025",2)
				end
			end
		elseif(LuaQueryTask("T211") == 99)then
			LuaSay("�������ˣ��򿪱�����@3ֱ��ʹ������@0������ֲ�ɹ���ֲ������Ժ󣬼��ɽ��вɼ�")
			LuaSay("�������ˣ���ֲ�����ʹ��@3�ɼ�����@0�Ϳɽ��вɼ�����ֲ������ֲ���У����������������ֲ����")
			LuaSay("��ʾ�������������")
		end
	elseif(answer=="T211jl")then
		if(LuaQueryTask("T211")==1) then
			if(LuaItemCount("o_mission093") >0) then
				LuaSetTask("T211",99)
				DelItem("o_mission093",LuaItemCount("o_mission093"))
				LuaAddJx("combat_exp",80000,"T211")
				LuaGive("coin",2000,"T211")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("211")
				UpdateMenu()
			end
		end

elseif(answer=="T214") then
	if(LuaQueryTask("T214") == 0) then
		LuaSay("��������:��˵�У�������Ƶ����˽��й�ǧ�����̣����ܶ�ı��������@4���ĺ���@0����·�ϡ�")
		LuaSay("��������:�Ҹ���һ��@2����@0����ȥ@4���ĺ���@0��@3��һ��ָ·��@0�������ڳ�����������Ұɣ��һ������Ľ�����")
		LuaSay("��������:���Դ�@3������@0����@3ǧ������@0����@4���ĺ���@0��ͼ����@2���񱳰��е�����@0�ڱ���")
		LuaSay("@7��ܰ��ʾ@0��@!��ɱ����񽫻��з��Ľ�����")
		LuaSetTask("T214",1)
	        LuaGive("o_mission023",1)
		AddLog("���̵ı��ء����顿",214)
		UpdateTopSay("ȥ���ĺ�����ȡ���̵ı���")
		UpdateMenu()
	elseif(LuaQueryTask("T214") == 1) then
		if(LuaItemStatusNormalCount("o_mission016")>=1)then
			LuaSay("��������:���������������������������̱��أ��������ˡ�@!")
			LuaSay("@7��ܰ��ʾ@0:ֻҪ�ߵ�@4���ĺ��ǵľ�ͷ@0����@3��������@0���ٻظ�@3��������@0�����@3ǧ������@0�����зǳ����Ľ�����ȥ���԰ɡ�@!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T214jl")
		elseif(LuaItemStatusNormalCount("o_mission016")==0)then
			LuaSay("��������:�㻹û�еõ����̱��أ����Դ�@3������@0����@3ǧ������@0����@4���ĺ���@0��ͼ��")
			LuaSay("��������:��@4���ĺ���@0��@3��һ��ָ·��@0��������@2���񱳰��е�����@0�ڳ�����������Ұɣ��һ������Ľ�����")
		end 
	end 

	elseif(answer=="T214jl")then
		         if(LuaQueryTask("T214")==1) then
			     LuaSetTask("T214",99)
		         LuaSetTask("214time",GetCurrentTime())
		         DelItem("o_mission016",1)
		         DelItem("o_mission023",1)
		         LuaAddJx("combat_exp",60000,"T214")
			 LuaGive("coin",2000,"T214")
		         DelLog("214")
                 UpdateMenu()
                 end
elseif(answer=="Tqlxs") then                     -----------ǧ������
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("qlxsTaskday")) then
		LuaSetTask("Tqlxs",0)
		LuaSetTask("T952",0)
		LuaSetTask("Tqlxsdotime",0)
		local a=LuaItemCount("o_mission037")
		if(a>0) then
		DelItem("o_mission037",a)
		end   
	end
	local shijiancha=GetCurrentTime()-LuaQueryTask("qlxstime")
	if(shijiancha>1800 or LuaQueryTask("T214")==1) then
		if(LuaQueryTask("Tqlxs")==0) then  
			if(LuaQueryTask("Tqlxsdotime")<3) then   
				LuaSay("�������ˣ���˵@4���ĺ���@0��һλ@3��������@0���������кܶ������챦��ȴԸ�⻻ȡ���ǵ���ͨ��Ʒ��")
				LuaSay("�������ˣ���@4���ĺ���@0ʵ����̫��ңԶ����ֻҪ��������Щ���ﻻ��@2ҹ����@0�Ϳ��Եõ��߶����")
				if(LuaQueryTask("Tqlxswxts")==0) then 
				LuaSay("@7��ܰ��ʾ@0�����ĺ�����ͳһol��������������Ϸ�����ĵ�ͼ֮һ��������ǰ����@!ף����Ϸ��죡")
				end
				AddMenuItem("@7�Ƿ�ֱ�Ӵ���","")
				AddMenuItem("�Լ���","myself")
				AddMenuItem("ֱ�Ӵ���","chuansong")
			else
			LuaSay("�������ˣ����˿ɲ���̫̰���ˣ��������Ѿ����������˽�����3����Ʒ���������������Ұɡ�")
			LuaSay("�������ˣ������㻹����ȥ���ĺ�������Ҫȥ���ĺ�����@!")
			if(LuaQueryTask("huan7")==1)then
				LuaSay("�������ˣ����߻���ɣ�ȥ�ظ������ǵ�˾��Ԫ�԰�@!")
				LuaSetTask("huan7",2)
				UpdateMenu()
			end
			AddMenuItem("@7�Ƿ�ȥ","")
			AddMenuItem("ȥ","goto")
			end
     
		elseif(LuaQueryTask("Tqlxs")==1) then 	
			LuaSay("�������ˣ���˵��@3��������@0����@4���ĺ���@0�����ұߣ�������������ʱ�̵��ˡ�") 
			AddMenuItem("@7�Ƿ�ȥ","")
			AddMenuItem("ȥ","goto")
			AddMenuItem("ֱ�Ӵ���","chuansongyi")
		     
		elseif(LuaQueryTask("Tqlxs")==2) then
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
			if(LuaItemCount("o_mission034")>=5) then
				LuaSay("�������ˣ����ڵó�������ʲôʱ���������ۼ��������˼Ҿͺ��ˡ�")
				if(LuaQueryTask("Tqlxswxts")==0) then 
					LuaSetTask("Tqlxswxts",99)
				end
				local time=GetCurrentTime()
				LuaSetTask("qlxstime",time)
				if(LuaRandom(20)==19) then
					LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
					LuaGive("o_box002",1,"Tdiaoyutg")
				end
				DelItem("o_mission034",LuaItemCount("o_mission034"))
				if(LuaQueryTask("huan7")==1)then
				LuaSay("�������ˣ����߻���ɣ�ȥ�ظ������ǵ�˾��Ԫ�԰�@!")
				LuaSetTask("huan7",2)
				UpdateMenu()
				end
				local jingyan=20000+level^2*24+level*2500
				if(level<20) then 
			       LuaGive("coin",1500,"Tqlxs")
			       else
			       LuaGive("coin",2500,"Tqlxs")
			       end
				if(LuaQueryTask("bprszj") == 1 and TeamCount()>= 2) then
				LuaSay("�������ˣ�ԭ�������ѵ����������ϲ��Ϊ���������һ�����")
				LuaAddMembers(1)
				else
				LuaSetTask("bprszj",0)
				end
			LuaAddJx("combat_exp",jingyan,"Tqlxs")
			LuaSetTask("Tqlxs",0)
			DelLog("952")
			end
		end   
 else
 LuaSay("�������ˣ���������Ҫ���30���Ӳ��ܼ�����ȡ�������ĵȴ���@!")
 end

    elseif(answer=="chuansong") then		
	   if(LuaItemCount("o_state005j")>0) then
	   DelItem("o_state005j",1)
		LuaSetTask("Tqlxs",1) 
		LuaSetTask("T952",1) 
		AddLog("ǧ�����̡�ÿ�ա�",952)
		    LuaAddTask("Tqlxsdotime",1)     
		    LuaGive("o_mission037",20)
		    LuaSetTask("qlxsTaskday",GetCurrentDay())
	   ChangeMap("lu_tyhj",32556,184)
	   elseif(LuaItemCount("o_state005")>0) then
	   LuaSay("��ʾ���������ı������޷�ʹ�ã�������ֻ���̳ǵı�����@!")			
	   else
	   LuaSay("��ʾ����ֻ��Ҫ����һ��@2��ҵ�С������@0���Ϳ��Դ��͵����ĺ��ǵĵ����˴���")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("��ʾ������˵����ٰ��̵���Ϳɴ��̳ǣ�ѡ�����̳Ǿͺ��ˡ�")
		else	
			LuaSay("��ʾ������Ҽ����ٰ�2���Ϳɴ��̳ǣ�ѡ�����̳Ǿͺ��ˡ�")
		end
	   end 

    elseif(answer=="chuansongyi") then		
	   if(LuaItemCount("o_state005j")>0) then
	   ChangeMap("lu_tyhj",32556,184)
	   DelItem("o_state005j",1)
	   elseif(LuaItemCount("o_state005")>0) then
	   LuaSay("��ʾ���������ı������޷�ʹ�ã�������ֻ���̳ǵı�����@!")			
	   else
	   LuaSay("��ʾ����ֻ��Ҫ����һ��@2��ҵ�С������@0���Ϳ��Դ��͵����ĺ��ǵĵ����˴���")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("��ʾ������˵����ٰ��̵���Ϳɴ��̳ǣ�ѡ�����̳Ǿͺ��ˡ�")
		else
			LuaSay("��ʾ������Ҽ����ٰ�2���Ϳɴ��̳ǣ�ѡ�����̳Ǿͺ��ˡ�")
		end
	   end 

	elseif(answer=="myself") then
		LuaSetTask("Tqlxs",1) 
		LuaSetTask("T952",1) 
		AddLog("ǧ�����̡�ÿ�ա�",952)
		    LuaAddTask("Tqlxsdotime",1)     
		    LuaGive("o_mission037",20)
		    LuaSetTask("qlxsTaskday",GetCurrentDay())
		    ChangeMap("lu_tyhj")

	elseif(answer=="goto") then
	 ChangeMap("lu_tyhj")

--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1) then
				if(LuaQueryTask("TfindNPC_2")==1)then
					LuaSay("�������ˣ��ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽�˹���ս�µ������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_2",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_2")==2)then
					LuaSay("�������ˣ��ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽�˹���ս�µ������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_2",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("�������ˣ���Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("�������ˣ����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end


elseif(answer=="Tsnpc_19")then
	if(LuaQueryTask("Tsnpc_19")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸���ļӼ��ż�������ȥ�ܻ���")
		LuaSay("�������ˣ��ҿ�����˵")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_19",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_19")==2)then
		LuaSay("�������ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_19")then
	if(LuaQueryTask("Tenpc_19")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ��������ʳ��ȱ������Ҫ����������")
		LuaSay("�������ˣ�����ͼӽ�׼��")
		LuaSetTask("Tenpc_19",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_19")==2)then
		LuaSay("�������ˣ���ȥ������������Ͱ�")
	end	
elseif(answer=="Tsnpc_18")then
	if(LuaQueryTask("Tsnpc_18")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸���ļӼ��ż�������ȥ�ܻ���")
		LuaSay("�������ˣ����ȿ���")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_18",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_18")==2)then
		LuaSay("�������ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_18")then
	if(LuaQueryTask("Tenpc_18")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ�������˵���ϴ�����һ������ֵ���")
		LuaSay("�������ˣ�������˼��ҹ�����Σ���������õĽ���")
		LuaSetTask("Tenpc_18",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_18")==2)then
		LuaSay("�������ˣ���ȥ������������Ͱ�")
	end	
elseif(answer=="QLYB") then                     -----------ǧ��Ѻ��
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("qlybTaskday")) then
		LuaSetTask("QLYB",0)
		LuaSetTask("qlybTaskday",GetCurrentDay())
	end
	if(LuaQueryTask("QLYB_pinzhi")==0)then
	    LuaSetTask("QLYB_pinzhi",1)
	end
	local qlyb_pinzhi=LuaQueryTask("QLYB_pinzhi")
		if(LuaQueryTask("QLYB")==0) then
				AddMenuItem("��ǰ�ɽ�ȡ"..(QLYB_SZ[qlyb_pinzhi][1]).."��","")
				AddMenuItem("ͭ��ˢƷ��","QLYB_tongbi")
				AddMenuItem("Ԫ��ˢƷ��","QLYB_yuanbao")
				if(LuaQuery("VIPlv")>=5)then --vip5�����ܴ���
				AddMenuItem("ˢ�����Ʒ��","QLYB_yuanbaomanji")
				end
				AddMenuItem("��ȡ�ڻ�","QLYB_lingqu")
				AddMenuItem("����Ѻ�ڵ�ͼ","QLYB_ditu")
				AddMenuItem("�淨˵��","QLYB_shuoming")
				UpdateMenu()
		elseif(LuaQueryTask("QLYB")==1) then
			LuaSay("�������ˣ����Ѿ������ڻ��ˣ���Ѻ�ڹ�ȥ�ɣ�")
			AddMenuItem("�Ѿ���ȡ"..(QLYB_SZ[qlyb_pinzhi][1]).."��","")
			AddMenuItem("����Ѻ�ڵ�ͼ","QLYB_ditu")
			AddMenuItem("�淨˵��","QLYB_shuoming")
			UpdateMenu()
		elseif(LuaQueryTask("QLYB")==99) then
			LuaSay("�������ˣ��������Ѿ�Ѻ�ڹ��ˣ����������ɡ�")
		end
elseif(answer=="QLYB_shuoming") then ------�淨˵��
	LuaSay("�������ˣ�Ѻ��ǰ����ˢ�ڻ���Ʒ����Ȼ����ȡ20���ڻ�(ͭ��ˢΪ��׼���ʣ�Ԫ��ˢ��ϸ߸���ˢ����Ʒ�ڻ�)���ߵ�ͼȥ������·�ϻᱻ��ɱ��")
	LuaSay("�������ˣ��������⼶�����ң�ÿ��1������20���ڻ��У�15�������󲻻���䣬5�����������伴��������75%�Ľ�����25%�Ľ������Ա������ߣ�")
	LuaSay("�������ˣ�ר���������ڻ��������ޣ������п�������10����Ʒ�ڻ���20��Ʒ�ڻ���50����Ʒ�ڻ���")
	LuaSay("�������ˣ��һ�����ʱ��ÿ��Ʒ�����ڻ�����20�����ಿ�ֲ����㣡���磺50����Ʒ�ڻ����һ�����ʱ��20�����㣡")
elseif(answer=="QLYB_tongbi") then ------ͭ��ˢ
    local level= LuaQuery("level")
    if(LuaItemCount("coin")>=level*1000) then
        local r =LuaRandom(100)
        if(LuaQueryTask("QLYB_pinzhi")==1 and r<60)then
            LuaGive("coin",-1*level*1000,"QLYB")
        	LuaSetTask("QLYB_pinzhi",2)
        	LuaSay("�������ˣ�����ڻ�Ʒ���Ѿ��ﵽ@7��Ʒ@0��")
        elseif(LuaQueryTask("QLYB_pinzhi")==2 and r<40)then
            LuaGive("coin",-1*level*1000,"QLYB")
        	LuaSetTask("QLYB_pinzhi",3)
        	LuaSay("�������ˣ�����ڻ�Ʒ���Ѿ��ﵽ@5��Ʒ@0��")
        elseif(LuaQueryTask("QLYB_pinzhi")==3 and r<20)then
            LuaGive("coin",-1*level*1000,"QLYB")
        	LuaSetTask("QLYB_pinzhi",4)
        	LuaSay("�������ˣ�����ڻ�Ʒ���Ѿ��ﵽ@3��Ʒ@0��")
        elseif(LuaQueryTask("QLYB_pinzhi")==4 and r<10)then
            LuaGive("coin",-1*level*1000,"QLYB")
        	LuaSetTask("QLYB_pinzhi",5)
        	LuaSay("�������ˣ�����ڻ�Ʒ���Ѿ��ﵽ@1��Ʒ@0��")
        elseif(LuaQueryTask("QLYB_pinzhi")==5)then
            LuaSay("�������ˣ�����ڻ�Ʒ���Ѿ��ﵽ��Ʒ��������ˢ")
        else
         	LuaGive("coin",-1*level*1000,"QLYB")
         	LuaSay("�������ˣ�ˢ��ʧ�ܣ��ڻ�Ʒ�����䣡")
        end
    else
        LuaSay("�������ˣ���Ҫ@3"..(level*1000).."ͭ��@0����ˢ���ڻ���Ʒ����")
    end
elseif(answer=="QLYB_yuanbao") then
    local level= LuaQuery("level")
    if(LuaQueryMoney()>=2) then
        local r =LuaRandom(100)
        if(LuaQueryTask("QLYB_pinzhi")==1 and r<60)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("QLYB_pinzhi",2)
        	LuaSay("�������ˣ�������2Ԫ��������ڻ�Ʒ���Ѿ��ﵽ@7��Ʒ@0��")
        elseif(LuaQueryTask("QLYB_pinzhi")==2 and r<40)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("QLYB_pinzhi",3)
        	LuaSay("�������ˣ�������2Ԫ��������ڻ�Ʒ���Ѿ��ﵽ@5��Ʒ@0��")
        elseif(LuaQueryTask("QLYB_pinzhi")==3 and r<20)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("QLYB_pinzhi",4)
        	LuaSay("�������ˣ�������2Ԫ��������ڻ�Ʒ���Ѿ��ﵽ@3��Ʒ@0��")
        elseif(LuaQueryTask("QLYB_pinzhi")==4 and r<10)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("QLYB_pinzhi",5)
        	LuaSay("�������ˣ�������2Ԫ��������ڻ�Ʒ���Ѿ��ﵽ@1��Ʒ@0��")
        elseif(LuaQueryTask("QLYB_pinzhi")==5)then
            LuaSay("�������ˣ�����ڻ�Ʒ���Ѿ��ﵽ��Ʒ��������ˢ")
        else
          	LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
          	LuaSay("�������ˣ�������2Ԫ����ˢ��ʧ�ܣ��ڻ�Ʒ�����䣡")
        end
    else
        LuaSay("�������ˣ���Ҫ@32Ԫ��@0����ˢ���ڻ���Ʒ����")
    end
elseif(answer=="QLYB_yuanbaomanji") then
	if(LuaQuery("VIPlv")>=5 and LuaQueryMoney()>=30)then
     	LuaAddYB(1,-30)
     	LuaSay("������30Ԫ��")
        LuaSetTask("QLYB_pinzhi",5)
	else
	    LuaSay("�������ˣ���Ҫ@330Ԫ��@0���ܽ��ڻ���Ʒ��������@1��Ʒ@0��")
	end
elseif(answer=="QLYB_lingqu") then
	if(LuaQueryTask("QLYB_pinzhi")==1)then
		LuaGive("o_biaohuo001",15,"QLYB")
		LuaGive("o_biaohuo002",5,"QLYB")
	elseif(LuaQueryTask("QLYB_pinzhi")==2)then
		LuaGive("o_biaohuo003",15,"QLYB")
		LuaGive("o_biaohuo004",5,"QLYB")
	elseif(LuaQueryTask("QLYB_pinzhi")==3)then
		LuaGive("o_biaohuo005",15,"QLYB")
		LuaGive("o_biaohuo006",5,"QLYB")
	elseif(LuaQueryTask("QLYB_pinzhi")==4)then
		LuaGive("o_biaohuo007",15,"QLYB")
		LuaGive("o_biaohuo008",5,"QLYB")
	elseif(LuaQueryTask("QLYB_pinzhi")==5)then
		LuaGive("o_biaohuo009",15,"QLYB")
		LuaGive("o_biaohuo010",5,"QLYB")
	end
	LuaSetTask("QLYB",1)
	ChangeMap("lu_qlyb")
elseif(answer=="QLYB_ditu") then
	ChangeMap("lu_qlyb")

-----------------------

end
LuaSendMenu()
return 1
end

