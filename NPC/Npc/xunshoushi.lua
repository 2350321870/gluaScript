NPCINFO = {
serial="33" ,
base_name="xunshoushi" ,
icon=2552,
NpcMove=2552,
name="ѱ��ʦ���衿" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="����ר�Ÿ�����ҵ����" ,
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=6,
{"o_cwmbs" , 0  , 8 },
{"o_cwgm" , 0  , 8 },
{"e_pet01" , 0  , 8 },
{"e_pet02" , 0  , 8 },
{"e_pet03" , 0  , 8 },
{"e_pet04" , 0  , 8 },
}

	tCost1={
	{"","","","","",""},
	{"","","","","",""},
	{"@34����","","o_material_59","",1,""},
	{"@34����","","o_material_59","",2,""},
	{"@35����","","o_material_60","",1,""},
	{"@35����","@3��Ʊ","o_material_60","o_gold2y",2,2},
	{"@36����","@3��Ʊ","o_material_61","o_gold2y",1,5},
	{"@37����","@3��ɴȯ","o_material_62","o_zhaiquan1y",1,1},
	{"@38����","@3��ɴȯ","o_material_63","o_zhaiquan1y",1,1},
	}-------------------------------------15%�ɹ���   ����1����   ����2����   ����1ID   ����2ID   ����1����   ����2����

	tCost2={
	{"@31����","","o_material_56","",1,""},
	{"@33����","","o_material_58","",1,""},
	{"@34����","@3��Ʊ","o_material_59","o_gold2y",3,1},
	{"@35����","@3��Ʊ","o_material_60","o_gold2y",1,3},
	{"@35����","@3��Ʊ","o_material_60","o_gold2y",3,5},
	{"@36����","@3��ɴȯ","o_material_61","o_zhaiquan1y",1,1},
	{"@37����","@3��ɴȯ","o_material_62","o_zhaiquan1y",1,3},
	{"@38����","@3��ɴȯ","o_material_63","o_zhaiquan1y",1,5},
	{"@38����","@3����ȯ","o_material_63","o_zhaiquan2y",1,1},
	}-------------------------------------100%�ɹ���   ����1����   ����2����   ����1ID   ����2ID   ����1����   ����2����

	 tS={
	{"1","@3�ƺ�","����"},
	{"2","@3����","����"},
	{"3","@3��Ӱ","����"},
	{"4","@3����","����"},
	{"5","@3�ϵ�","����"},
	{"6","@3����","����","����"},
	{"7","@3ѩ��","����","����"},
	{"8","@3����","����","����"},
	}---------------  ��������   ��������  ������������

	tCost3={
	{2,2,14,1,"","",""},
	{2,2,32,2,1,"",""},
	{3,3,65,4,3,"",""},
	{3,3,107,6,5,1,1},
	{4,4,146,10,9,2,3},
	{4,5,250,15,14,4,5},
	{5,6,380,23,21,7,9},
	{5,7,630,38,37,12,15},
	{6,8,1000,60,53,20,22},
	}----zqzl<=5�ٶ� zqzl>5�ٶ� Ѫ���� ����+zqzl<=5��  zqzl<=5���� zqzl>=5���� zqzl>=5��

function do_talk(answer)
if (answer=="ask") then 
        havetask =0 
        local T101=LuaQueryTask("T101")
        local T103=LuaQueryTask("T103")
        local T104=LuaQueryTask("T104")
        local T105=LuaQueryTask("T105")       
		local level= LuaQuery("level")
		AddTopSayMenuItem("@7�����б�","")
		if(LuaQueryTask("Tgivepet") <99 and level>5 and LuaQueryTask("T362")~=99)   then
		AddTopSayMenuItem("@3���ͳ���","givepet")       ----���ͳ��� 
		end
		AddTopSayMenuItem("@3�������","petxg")
		AddTopSayMenuItem("@3�������","hsxg")
		AddTopSayMenuItem("@3���鱦��","baobao")        -----���鱦��
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_11")==1 or LuaQueryTask("TfindNPC_11")==2)then
				AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_11")==98)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
		end
		if((LuaQueryTask("Tsnpc_16")==1 or LuaQueryTask("Tsnpc_16")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_16")
			if(LuaQueryTask("Tsnpc_16")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_16")==1 or LuaQueryTask("Tenpc_16")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_16")
			if(LuaQueryTask("Tenpc_16")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("Tcoc")==3)then
		AddTopSayMenuItem("@2�̼���","Tcoc")
		havetask =2
		end
--		if(EquipInfo(10)~="")then
--		AddTopSayMenuItem("@7�ͻ�[ÿ��]","pettask")
--		end
		if(LuaQueryTask("T362")==1 or LuaQueryTask("T362")==2)then
			AddTopSayMenuItem("@2�����顾���顿","T362")
			if(LuaQueryTask("T362")==1)then
				havetask=2
			end
		end
	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end	 
	return 1
   
		
elseif(answer=="liaotian")then
	LuaSay("ѱ��ʦ:�����Ǹ�������ֵ�����,�Դ������ҿ�ϸ������,�����Ǵ�����С����,�Ҷ���ѱ��")
elseif(answer=="pet_buy") then

		DoBuy() 

	----------------������ز����Ӳ˵�-----------------
elseif(answer=="petxg")then	
	local level= LuaQuery("level")
		AddMenuItem("@7�������","")
		if( level>=18   )then
		AddMenuItem("@3��������","pet_rw") ---------------------------------��������------
		end
        AddMenuItem("@3�����й�","T102")       --------��������һ���
		AddMenuItem("@3��������","pet")           ------����ѱ�����
		AddMenuItem("@3����ʳƷ�һ�","pet_food")

		if( level>=18   )then
		AddMenuItem("@3�����̵�","pet_buy")
		end
       
		AddMenuItem("@5�������","pet_star")

		if(level>20)   then
		AddMenuItem("@6���ｻ��","pet_fuck")      
		end  
		
        AddMenuItem("@7�������","pet_free")  
   


		AddMenuItem("@1�������˵��","jssm")


elseif(answer=="jssm")then
    LuaSay("ѱ��ʦ��Ŀǰ������3��Ʒ�ʵĳ����ɫ���ֵ�Ϊ��ͨ�����ɫΪ�Ϻó���ƽ����ֵ�Ϊ��ó��")
    LuaSay("ѱ��ʦ��Ʒ��Խ�õĳ�����������ٶ�Խ�죡����ÿ�γɳ�����������Ҳ���࣡����������ֱ���������ԣ����������������ԵĴ�����")
    LuaSay("ѱ��ʦ������ѳ���װ�������Ϻ󣬳���Ĺ�������������������ֵ��ֱ�Ӹ��ӵ���Ľ�ɫ�����ϣ�")
    LuaSay("ѱ��ʦ��@3�ƽ�@0����Ļ���������������Ϊ30��30��300�������������������������ɳ�ֵΪ7��7��85��")
    LuaSay("ѱ��ʦ��@5��ɫ@0����Ļ���������������Ϊ20��20��200�������������������������ɳ�ֵΪ6��6��80��")
    LuaSay("ѱ��ʦ��@7��ɫ@0����Ļ���������������Ϊ10��10��100�������������������������ɳ�ֵΪ5��5��75��")

elseif(answer=="pet")then
	local pet={	
		{"e_pet01","@7Ԫ����@0","1","@7������","e_pet13","��","e_pet01y","o_material_22",1,"3��Ƥ",200000},--4Ƥ
		{"e_pet02","@7������@0","1","@7ף������","e_pet14","��","e_pet02y","o_material_58",1,"3����",200000},--4��
		{"e_pet03","@7������@0","1","@7��ԯ��Ȯ","e_pet15","��","e_pet03y","o_material_31",1,"3����",200000},--4��
		{"e_pet04","@7�¾���@0","1","@7Ů���è","e_pet16","��","e_pet04y","o_material_13",1,"3��ë",200000},--4ë
		{"e_pet05","@5Ԫ����@0","2","@5������","e_pet17","��","e_pet05y","o_material_24",1,"5��Ƥ",400000},
		{"e_pet06","@5������@0","2","@5ף������","e_pet18","��","e_pet06y","o_material_60",1,"5����",400000},
		{"e_pet07","@5������@0","2","@5��ԯ��Ȯ","e_pet19","��","e_pet07y","o_material_33",1,"5����",400000},
		{"e_pet08","@5�¾���@0","2","@5Ů���è","e_pet20","��","e_pet08y","o_material_15",1,"5��ë",400000},
		{"e_pet09","@3Ԫ����@0","3","@3������","e_pet21","��","e_pet09y","o_material_26",1,"7��Ƥ",800000},
		{"e_pet10","@3������@0","3","@3ף������","e_pet22","��","e_pet10y","o_material_62",1,"7����",800000},
		{"e_pet11","@3������@0","3","@3��ԯ��Ȯ","e_pet23","��","e_pet11y","o_material_35",1,"7����",800000},
		{"e_pet12","@3�¾���@0","3","@3Ů���è","e_pet24","��","e_pet12y","o_material_17",1,"7��ë",800000},
	}

			for i=1,12,1 do
				if(EquipInfo(10)==pet[i][2])then
					LuaSetTemp("pet_add",1)
					break
				end

			end
	--EquipInfo(10)--����װ��λ
	--LuaPetExp()--���ﾭ��?����û��,��LuaPetQuery("exp")Q����
	--LuaPetDelete()==1--ɾ������
	if(LuaQueryTemp("pet_add")==1)then
		AddMenuItem("@7�������","")
		AddMenuItem("@3��������","pet_hpts")
		AddMenuItem("@3��������","pet_attts")
		AddMenuItem("@3��������","pet_defts")
	else
		
		LuaSay("��δ�����ĳ���װ��������Ŷ")
	end



	-----------------���������Ӳ˵�----------------------- 

elseif(answer=="pet_rw")then
    if(LuaQueryStrTask("Tptrw_Taskday")~=GetCurrentDay()) then
        ptre_r=LuaRandom(2)
        LuaSetTask("open",ptre_r)
		LuaSetTask("Tptrw_Taskday",GetCurrentDay())
	end
	AddMenuItem("@7���������б�","")
	if(LuaQueryStrTask("T101_Taskday")~=GetCurrentDay()) then
		AddMenuItem("@3��������ÿ�ա�","T101")
		havetask=1
	else
		AddMenuItem("@3��������ÿ�ա�","T101")
	end
	if(LuaQueryStrTask("T103_Taskday")~=GetCurrentDay()) then
 		AddMenuItem("@3����𵤡�ÿ�ա�","T103")
		havetask=1
	else
		AddMenuItem("@3����𵤡�ÿ�ա�","T103")
	end


	if(LuaQueryTask("open") ==1)then
		if(LuaQueryStrTask("T104_Taskday")~=GetCurrentDay()) then
 			AddMenuItem("@1�޳�֮��ظ���","T104")
			havetask=1
		else
			AddMenuItem("@1�޳�֮��ظ���","T104")
		end
	end

	if(LuaQueryTask("open") ==0)then
		if(LuaQueryStrTask("T105_Taskday")~=GetCurrentDay()) then
 			AddMenuItem("@1���ݰ��͡�ÿ�ա�","T105")
			havetask=1
		else
			AddMenuItem("@1���ݰ��͡�ÿ�ա�","T105")
		end
	end
	    ------------------------------------------------------------------------------
elseif(answer=="givepet")then
		LuaSay("ѱ��ʦ������ͳһ֮·�������ε�Ӱֻ���ǲ��Ǿ��úܹ¶����ţ������˺ܶ���������һֻ�ɣ�")
		if(LuaFreeBag()>=1)then	
	 	AddMenuItem("@3���ͳ���","")
		AddMenuItem("@7Ԫ����","pet_1")
		AddMenuItem("@7������","pet_2")
		AddMenuItem("@7������","pet_3")  
		AddMenuItem("@7�¾���","pet_4")
		else
	    LuaSay("��ʾ�������ٱ���1������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    end
elseif(answer=="pet_1")then                            --------���ͳ��� 
	if(LuaQueryTask("Tgivepet")<99)  then
	LuaGive("e_pet01",1,"givepet")
	LuaSetTask("Tgivepet",99)
	UpdateMenu()
	end
elseif(answer=="pet_2")then 
	if(LuaQueryTask("Tgivepet")<99)  then
	LuaGive("e_pet02",1,"givepet")
	LuaSetTask("Tgivepet",99)
	UpdateMenu()
	end
elseif(answer=="pet_3")then 
	if(LuaQueryTask("Tgivepet")<99)  then
	LuaGive("e_pet03",1,"givepet")
	LuaSetTask("Tgivepet",99)
	UpdateMenu()
	end
elseif(answer=="pet_4")then 
	if(LuaQueryTask("Tgivepet")<99)  then
	LuaGive("e_pet04",1,"givepet")
	LuaSetTask("Tgivepet",99)
	UpdateMenu()   
	end 
	    ----------
elseif(answer=="pettask")then
	local pettask=LuaQueryTask("pettask")
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("ptnumber")>=6)then
		LuaSay("�������ĺ������,ʣ�µĻ���������������.�ú���Ϣһ�°�.")
		if(LuaQueryTask("ptnumber")==6)then
		LuaAddTask("ptnumber",1)
		LuaGive("o_food03",1,"pettask")
		end
		UpdateTopSay("���ű�̫��ѽ����̫���ﰡ")
	else
		if(pettask==0)then
			LuaSetTask("pettask",1)
			LuaSay("ѱ��ʦ:"..LuaQueryStr("name")..",����ѽ,����Ұ���ֻè�͸�@4��Դ��@0��@3�����@0,���Ǵ������ֺ�����.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==1)then
			LuaSay("ѱ��ʦ:�㻹û��è�͸�@4��Դ��@0��@3�����@0,��ȥ���,�һ��б����Ҫ������.")
		elseif(pettask==2)then
			LuaSetTask("pettask",3)
			LuaSay("ѱ��ʦ:"..LuaQueryStr("name")..",�����Ұ���һ��С���͵�@4����֮��@0��@3������@0����,ÿ�����ͳ���Ҫ��Ȯ.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==3)then
			LuaSay("ѱ��ʦ:�㻹û������С�����͵�@4����֮��@0��@3������@0���ﰡ,��������Ȯ��Ҫ�䲡����.")
		elseif(pettask==4)then
			LuaSetTask("pettask",5)
			LuaSay("ѱ��ʦ:@4������@0���Ǹ�@3˾��Ԫ��@0Ԥ����һ��ī��,������͹�ȥ��.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==5)then
			LuaSay("ѱ��ʦ:��ȥ���Ƕ�ī���͸�@3˾��Ԫ��@0��,������@4������@0��.")
		elseif(pettask==6)then
			LuaSetTask("pettask",7)
			LuaSay("ѱ��ʦ:@4��������@0��@3ҩƷ����@0�����ⶨ�������㹻����,��ȥ��������.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==7)then
			LuaSay("ѱ��ʦ:��ȥ�����е����㽻��@4��������@0��@3ҩƷ����@0.")
		elseif(pettask==8)then
			LuaSetTask("pettask",9)
			LuaSay("ѱ��ʦ:��˵������@3����@0���úô�������,Ҫ�涷��,��ȥ����һ�������͵�@4����@0��ȥ��.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==9)then
			LuaSay("ѱ��ʦ:��Ѷ����͸�@4����@0���@3����@0,���˿���Ҫɱͷ��.")
		elseif(pettask==10)then
			LuaSetTask("pettask",11)
			LuaSay("ѱ��ʦ:ȥ���⼸ֻ����͸�@4��������@0��@3����@0,��˵Ҫѱ�Ÿ�,�����ܸо����뿾�˳�.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==11)then
			LuaSay("ѱ��ʦ:������Ѹ����͸�@4��������@0��@3����@0,���ǧ����Ҹ�����͵͵���˳���.")
		end
	end

--------------------------------****����hp������ʼ****-----------------------------------



elseif(answer=="pet_hpts") then
        if(EquipInfo(10)~="")then
    		local pet_hptime=LuaPetQuery("pet_hptime")	--����HP����	
		if(pet_hptime==0) then
			LuaPetSet("pet_hptime",1) --��ʼ��������Ϊ1
			pet_hptime=LuaPetQuery("pet_hptime")
		end
		local a=pet_hptime   -------�����Ĵ���
		LuaSetTemp("a",a)
    		pet_hp={}
		pet_hp[1]={75,80,85,90,200,"o_material_29","1����",1,"","",0}              ---5  ÿ���������������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_hp[2]={75,80,85,90,200,"o_material_30","2����",1,"","",0}              ---10
		pet_hp[3]={75,80,85,90,200,"o_material_30","2����",2,"","",0}              ---15
		pet_hp[4]={75,80,85,90,2000,"o_material_31","3����",1,"o_gold2y","��Ʊ",1}              ---20
		pet_hp[5]={75,80,85,90,3000,"o_material_31","3����",2,"o_gold2y","��Ʊ",5}              ---25
		pet_hp[6]={75,80,85,90,10000,"o_material_32","4����",1,"o_gold2y","��Ʊ",5}              ---30
		pet_hp[7]={75,80,85,90,20000,"o_material_33","5����",1,"o_gold2y","��Ʊ",5}              ---35
		pet_hp[8]={75,80,85,90,50000,"o_material_34","6����",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_hp[9]={75,80,85,90,100000,"o_material_34","6����",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_hp[10]={75,80,85,90,150000,"o_material_34","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_hp[11]={75,80,85,90,300000,"o_material_34","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_hp[12]={75,80,85,90,500000,"o_material_34","6����",3,"o_zhaiquan2y","����ȯ",1}              ---60
		pet_hp[13]={75,80,85,90,800000,"o_material_34","6����",3,"o_zhaiquan2y","����ȯ",1}              ---65
		pet_hp[14]={75,80,85,90,1200000,"o_material_35","7����",1,"o_zhaiquan2y","����ȯ",2}              ---70
		pet_hp[15]={75,80,85,90,1200000,"o_material_35","7����",1,"o_zhaiquan2y","����ȯ",2}              ---75
		pet_hp[16]={75,80,85,90,1500000,"o_material_36","8����",1,"o_zhaiquan2y","����ȯ",2}              ---80
		--�ⶥ��
		pet_hp[17]={0,0,0,0,0,0,"o_material_37","9����",0,"o_zhaiquan2y","����ȯ",0}              ---85


		local pet_pz=LuaPetQuery("type")   --����Ʒ��
		LuaSay("��ʾ����ĳ��ﵱǰ�ȼ�Ϊ@3"..LuaPetQuery("lv").."����@0�����Ѿ�Ϊ�ó���������@3"..(LuaPetQuery("pet_hptime")-1).."��������@0")
		LuaSay("@7������������������@0��@3"..pet_hp[a][pet_pz].."��")
		if(a<=3) then
			LuaSay("@7������ķ�@0��@3"..(pet_hp[a][5]).."ͭ�ң�"..pet_hp[a][8].."��"..pet_hp[a][7].."")
		else
			LuaSay("@7������ķ�@0��@3"..(pet_hp[a][5]).."ͭ�ң�"..pet_hp[a][8].."��"..pet_hp[a][7].."��"..pet_hp[a][11].."��"..pet_hp[a][10].."")
		end
		if(LuaPetQuery("pet_hptime")<=16)then
			AddMenuItem("@7������������","")
			AddMenuItem("@3ȷ������","pet_hpyes")
			AddMenuItem("@3������","pet_hpno")
		else
			LuaSay("ѱ��ʦ��Ŀǰ���������Ѿ��ﵽ���ޣ��޷��������������ˣ������ڴ������������ݣ�")
		end
        
	else
		LuaSay("ѱ��ʦ�����Ȱѳ���װ�������ϣ�")
	end
elseif(answer=="pet_hpyes") then
		pet_hp={}
		pet_hp[1]={75,80,85,90,200,"o_material_29","1����",1,"","",0}              ---5  ÿ���������������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_hp[2]={75,80,85,90,200,"o_material_30","2����",1,"","",0}              ---10
		pet_hp[3]={75,80,85,90,200,"o_material_30","2����",2,"","",0}              ---15
		pet_hp[4]={75,80,85,90,2000,"o_material_31","3����",1,"o_gold2y","��Ʊ",1}              ---20
		pet_hp[5]={75,80,85,90,3000,"o_material_31","3����",2,"o_gold2y","��Ʊ",5}              ---25
		pet_hp[6]={75,80,85,90,10000,"o_material_32","4����",1,"o_gold2y","��Ʊ",5}              ---30
		pet_hp[7]={75,80,85,90,20000,"o_material_33","5����",1,"o_gold2y","��Ʊ",5}              ---35
		pet_hp[8]={75,80,85,90,50000,"o_material_34","6����",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_hp[9]={75,80,85,90,100000,"o_material_34","6����",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_hp[10]={75,80,85,90,150000,"o_material_34","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_hp[11]={75,80,85,90,300000,"o_material_34","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_hp[12]={75,80,85,90,500000,"o_material_34","6����",3,"o_zhaiquan2y","����ȯ",1}              ---60
		pet_hp[13]={75,80,85,90,800000,"o_material_34","6����",3,"o_zhaiquan2y","����ȯ",1}              ---65
		pet_hp[14]={75,80,85,90,1200000,"o_material_35","7����",1,"o_zhaiquan2y","����ȯ",2}              ---70
		pet_hp[15]={75,80,85,90,1200000,"o_material_35","7����",1,"o_zhaiquan2y","����ȯ",2}              ---75
		pet_hp[16]={75,80,85,90,1500000,"o_material_36","8����",1,"o_zhaiquan2y","����ȯ",2}              ---80
		--�ⶥ��
		pet_hp[17]={0,0,0,0,0,0,"o_material_37","9����",0,"o_zhaiquan2y","����ȯ",0}  
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
	if(LuaPetQuery("pet_hptime")<=LuaPetQuery("lv")/5 )  then
        	if(a<=3) then
				if(LuaItemCount("coin")>=pet_hp[a][5] and LuaItemStatusNormalCount(pet_hp[a][6])>=pet_hp[a][8]) then
					LuaGive("coin",-pet_hp[a][5],"Tpet_hp")   --Tpet_hp��������������
					DelItem(pet_hp[a][6],pet_hp[a][8])
					LuaPetSet("max_hp",LuaPetQuery("max_hp")+pet_hp[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_hptime",LuaPetQuery("pet_hptime")+1)
					LuaSay("@7�����ɹ�@0������������@3"..pet_hp[a][pet_pz].."��,����������Ϊ@3"..LuaPetQuery("max_hp").."")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_hp[a][5]).."ͭ�ң�"..pet_hp[a][8].."��"..pet_hp[a][7].."")
				end
			else
				if(LuaItemCount("coin")>=pet_hp[a][5] and LuaItemStatusNormalCount(pet_hp[a][6])>=pet_hp[a][8] and LuaItemStatusNormalCount(pet_hp[a][9])>=pet_hp[a][11]) then
					LuaGive("coin",-pet_hp[a][5],"Tpet_hp")   --Tpet_hp��������������
					DelItem(pet_hp[a][6],pet_hp[a][8])
					DelItem(pet_hp[a][9],pet_hp[a][11])
					LuaPetSet("max_hp",LuaPetQuery("max_hp")+pet_hp[a][pet_pz])
					LuaPetSet("pet_hptime",LuaPetQuery("pet_hptime")+1)
					FlushMyInfo("1")
					LuaSay("@7�����ɹ�@0������������@3"..pet_hp[a][pet_pz].."��,����������Ϊ@3"..LuaPetQuery("max_hp").."")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_hp[a][5]).."ͭ�ң�"..pet_hp[a][8].."��"..pet_hp[a][7].."��"..pet_hp[a][11].."��"..pet_hp[a][10].."")
				end
			end
	else
	LuaSay("ѱ��ʦ������ÿ����5�����ܶ�����1�����Եȼ������ȥ������ιʳ����������ȼ��ɣ�")
	end

elseif(answer=="pet_hpno") then
		pet_hp={}
		pet_hp[1]={75,80,85,90,200,"o_material_29","1����",1,"","",0}              ---5  ÿ���������������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_hp[2]={75,80,85,90,200,"o_material_30","2����",1,"","",0}              ---10
		pet_hp[3]={75,80,85,90,200,"o_material_30","2����",2,"","",0}              ---15
		pet_hp[4]={75,80,85,90,2000,"o_material_31","3����",1,"o_gold2y","��Ʊ",1}              ---20
		pet_hp[5]={75,80,85,90,3000,"o_material_31","3����",2,"o_gold2y","��Ʊ",5}              ---25
		pet_hp[6]={75,80,85,90,10000,"o_material_32","4����",1,"o_gold2y","��Ʊ",5}              ---30
		pet_hp[7]={75,80,85,90,20000,"o_material_33","5����",1,"o_gold2y","��Ʊ",5}              ---35
		pet_hp[8]={75,80,85,90,50000,"o_material_34","6����",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_hp[9]={75,80,85,90,100000,"o_material_34","6����",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_hp[10]={75,80,85,90,150000,"o_material_34","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_hp[11]={75,80,85,90,300000,"o_material_34","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_hp[12]={75,80,85,90,500000,"o_material_34","6����",3,"o_zhaiquan2y","����ȯ",1}              ---60
		pet_hp[13]={75,80,85,90,800000,"o_material_34","6����",3,"o_zhaiquan2y","����ȯ",1}              ---65
		pet_hp[14]={75,80,85,90,1200000,"o_material_35","7����",1,"o_zhaiquan2y","����ȯ",2}              ---70
		pet_hp[15]={75,80,85,90,1200000,"o_material_35","7����",1,"o_zhaiquan2y","����ȯ",2}              ---75
		pet_hp[16]={75,80,85,90,1500000,"o_material_36","8����",1,"o_zhaiquan2y","����ȯ",2}              ---80
		--�ⶥ��
		pet_hp[17]={0,0,0,0,0,0,"o_material_37","9����",0,"o_zhaiquan2y","����ȯ",0}
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
    LuaSay("ѱ��ʦ����������������������Ŷ��@7����������@0��@3"..pet_hp[a][pet_pz].."�㣡")

        --------------------------------****����hp��������****-----------------------------------



--------------------------------****����att������ʼ****-----------------------------------



	elseif(answer=="pet_attts") then
        if(EquipInfo(10)~="")then
    	local pet_atttime=LuaPetQuery("pet_atttime")
    	if(pet_atttime==0) then
    	LuaPetSet("pet_atttime",1) --��ʼ��������Ϊ1
    	pet_atttime=LuaPetQuery("pet_atttime")
    	end
    	local a=pet_atttime   -------�����Ĵ���
	LuaSetTemp("a",a)

		pet_att={}                                                               ---��ɫ����ȡ�������� 
		pet_att[1]={5,6,7,8,200,"o_material_47","1����",1,"","",0}              ---5  ÿ�������Ĺ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_att[2]={5,6,7,8,200,"o_material_48","2����",1,"","",0}              ---10
		pet_att[3]={5,6,7,8,200,"o_material_48","2����",2,"","",0}              ---15
		pet_att[4]={5,6,7,8,2000,"o_material_49","3����",1,"o_gold2y","��Ʊ",1}              ---20
		pet_att[5]={5,6,7,8,3000,"o_material_49","3����",2,"o_gold2y","��Ʊ",5}              ---25
		pet_att[6]={5,6,7,8,10000,"o_material_50","4����",1,"o_gold2y","��Ʊ",5}              ---30
		pet_att[7]={5,6,7,8,20000,"o_material_51","5����",1,"o_gold2y","��Ʊ",5}              ---35
		pet_att[8]={5,6,7,8,50000,"o_material_52","6����",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_att[9]={5,6,7,8,100000,"o_material_52","6����",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_att[10]={5,6,7,8,150000,"o_material_52","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_att[11]={5,6,7,8,300000,"o_material_52","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_att[12]={5,6,7,8,500000,"o_material_52","6����",3,"o_zhaiquan1y2","����ȯ",1}              ---60
		pet_att[13]={5,6,7,8,800000,"o_material_52","6����",3,"o_zhaiquan1y2","����ȯ",1}              ---65
		pet_att[14]={5,6,7,8,1200000,"o_material_53","7����",1,"o_zhaiquan1y2","����ȯ",2}              ---70
		pet_att[15]={5,6,7,8,1200000,"o_material_53","7����",1,"o_zhaiquan1y2","����ȯ",2}              ---75
		pet_att[16]={5,6,7,8,1500000,"o_material_54","8����",1,"o_zhaiquan1y2","����ȯ",2}              ---80
		--�ⶥ��
		pet_att[17]={0,0,0,0,0,0,"o_material_55","9����",0,"o_zhaiquan2y","����ȯ",0}              ---85


		pet_pz=LuaPetQuery("type")   --����Ʒ��
		LuaSay("��ʾ����ĳ��ﵱǰ�ȼ�Ϊ@3"..LuaPetQuery("lv").."����@0�����Ѿ�Ϊ�ó���������@3"..(LuaPetQuery("pet_atttime")-1).."�ι�������@0")
		LuaSay("@7��������������������@0��@3"..pet_att[a][pet_pz].."��")
        if(a<=3) then
        LuaSay("@7������ķ�@0��@3"..(pet_att[a][5]).."ͭ�ң�"..pet_att[a][8].."��"..pet_att[a][7].."")
        else
        LuaSay("@7������ķ�@0��@3"..(pet_att[a][5]).."ͭ�ң�"..pet_att[a][8].."��"..pet_att[a][7].."��"..pet_att[a][11].."��"..pet_att[a][10].."")
        end
        if(LuaPetQuery("pet_atttime")<=16)then
        AddMenuItem("@7���﹥��������","")
        AddMenuItem("@3ȷ������","pet_attyes")
        AddMenuItem("@3������","pet_attno")
        else
        LuaSay("ѱ��ʦ��Ŀǰ���﹥�����Ѿ��ﵽ���ޣ��޷��������������ˣ������ڴ������������ݣ�")
        end

    else
	LuaSay("ѱ��ʦ�����Ȱѳ���װ�������ϣ�")
	end
elseif(answer=="pet_attyes") then
		pet_att={}                                                               ---��ɫ����ȡ�������� 
		pet_att[1]={5,6,7,8,200,"o_material_47","1����",1,"","",0}              ---5  ÿ�������Ĺ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_att[2]={5,6,7,8,200,"o_material_48","2����",1,"","",0}              ---10
		pet_att[3]={5,6,7,8,200,"o_material_48","2����",2,"","",0}              ---15
		pet_att[4]={5,6,7,8,2000,"o_material_49","3����",1,"o_gold2y","��Ʊ",1}              ---20
		pet_att[5]={5,6,7,8,3000,"o_material_49","3����",2,"o_gold2y","��Ʊ",5}              ---25
		pet_att[6]={5,6,7,8,10000,"o_material_50","4����",1,"o_gold2y","��Ʊ",5}              ---30
		pet_att[7]={5,6,7,8,20000,"o_material_51","5����",1,"o_gold2y","��Ʊ",5}              ---35
		pet_att[8]={5,6,7,8,50000,"o_material_52","6����",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_att[9]={5,6,7,8,100000,"o_material_52","6����",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_att[10]={5,6,7,8,150000,"o_material_52","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_att[11]={5,6,7,8,300000,"o_material_52","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_att[12]={5,6,7,8,500000,"o_material_52","6����",3,"o_zhaiquan1y2","����ȯ",1}              ---60
		pet_att[13]={5,6,7,8,800000,"o_material_52","6����",3,"o_zhaiquan1y2","����ȯ",1}              ---65
		pet_att[14]={5,6,7,8,1200000,"o_material_53","7����",1,"o_zhaiquan1y2","����ȯ",2}              ---70
		pet_att[15]={5,6,7,8,1200000,"o_material_53","7����",1,"o_zhaiquan1y2","����ȯ",2}              ---75
		pet_att[16]={5,6,7,8,1500000,"o_material_54","8����",1,"o_zhaiquan1y2","����ȯ",2}              ---80
		--�ⶥ��
		pet_att[17]={0,0,0,0,0,0,"o_material_55","9����",0,"o_zhaiquan2y","����ȯ",0}              ---85
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
	if(LuaPetQuery("pet_atttime")<=LuaPetQuery("lv")/5 )  then
        	if(a<=3) then
				if(LuaItemCount("coin")>=pet_att[a][5] and LuaItemStatusNormalCount(pet_att[a][6])>=pet_att[a][8]) then
					LuaGive("coin",-pet_att[a][5],"Tpet_att")   --Tpet_att�����﹥��������
					DelItem(pet_att[a][6],pet_att[a][8])
					LuaPetSet("att",LuaPetQuery("att")+pet_att[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_atttime",LuaPetQuery("pet_atttime")+1)
					LuaSay("@7�����ɹ�@0��������������@3"..pet_att[a][pet_pz].."��,�����ܹ�����Ϊ@3"..LuaPetQuery("att").."")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_att[a][5]).."ͭ�ң�"..pet_att[a][8].."��"..pet_att[a][7].."")
				end
			else
				if(LuaItemCount("coin")>=pet_att[a][5] and LuaItemStatusNormalCount(pet_att[a][6])>=pet_att[a][8] and LuaItemStatusNormalCount(pet_att[a][9])>=pet_att[a][11]) then
					LuaGive("coin",-pet_att[a][5],"Tpet_att")   --Tpet_att�����﹥��������
					DelItem(pet_att[a][6],pet_att[a][8])
					DelItem(pet_att[a][9],pet_att[a][11])
					LuaPetSet("att",LuaPetQuery("att")+pet_att[a][pet_pz])
					LuaPetSet("pet_atttime",LuaPetQuery("pet_atttime")+1)
					FlushMyInfo("1")
					LuaSay("@7�����ɹ�@0��������������@3"..pet_att[a][pet_pz].."��,�����ܹ�����Ϊ@3"..LuaPetQuery("att").."")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_att[a][5]).."ͭ�ң�"..pet_att[a][8].."��"..pet_att[a][7].."��"..pet_att[a][11].."��"..pet_att[a][10].."")
				end
			end
	else
	LuaSay("ѱ��ʦ������ÿ����5�����ܶ�����1�����Եȼ������ȥ������ιʳ����������ȼ��ɣ�")
	end

elseif(answer=="pet_attno") then
	pet_att={}                                                               ---��ɫ����ȡ�������� 
		pet_att[1]={5,6,7,8,200,"o_material_47","1����",1,"","",0}              ---5  ÿ�������Ĺ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_att[2]={5,6,7,8,200,"o_material_48","2����",1,"","",0}              ---10
		pet_att[3]={5,6,7,8,200,"o_material_48","2����",2,"","",0}              ---15
		pet_att[4]={5,6,7,8,2000,"o_material_49","3����",1,"o_gold2y","��Ʊ",1}              ---20
		pet_att[5]={5,6,7,8,3000,"o_material_49","3����",2,"o_gold2y","��Ʊ",5}              ---25
		pet_att[6]={5,6,7,8,10000,"o_material_50","4����",1,"o_gold2y","��Ʊ",5}              ---30
		pet_att[7]={5,6,7,8,20000,"o_material_51","5����",1,"o_gold2y","��Ʊ",5}              ---35
		pet_att[8]={5,6,7,8,50000,"o_material_52","6����",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_att[9]={5,6,7,8,100000,"o_material_52","6����",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_att[10]={5,6,7,8,150000,"o_material_52","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_att[11]={5,6,7,8,300000,"o_material_52","6����",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_att[12]={5,6,7,8,500000,"o_material_52","6����",3,"o_zhaiquan1y2","����ȯ",1}              ---60
		pet_att[13]={5,6,7,8,800000,"o_material_52","6����",3,"o_zhaiquan1y2","����ȯ",1}              ---65
		pet_att[14]={5,6,7,8,1200000,"o_material_53","7����",1,"o_zhaiquan1y2","����ȯ",2}              ---70
		pet_att[15]={5,6,7,8,1200000,"o_material_53","7����",1,"o_zhaiquan1y2","����ȯ",2}              ---75
		pet_att[16]={5,6,7,8,1500000,"o_material_54","8����",1,"o_zhaiquan1y2","����ȯ",2}              ---80
		--�ⶥ��
		pet_att[17]={0,0,0,0,0,0,"o_material_55","9����",0,"o_zhaiquan2y","����ȯ",0}              ---85
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
    LuaSay("ѱ��ʦ�����������������Ĺ�����Ŷ��@7������������@0��@3"..pet_att[a][pet_pz].."�㣡")

        --------------------------------****����att��������****-----------------------------------



--------------------------------****����def������ʼ****-----------------------------------



	elseif(answer=="pet_defts") then
        if(EquipInfo(10)~="")then
    		local pet_deftime=LuaPetQuery("pet_deftime")
    	if(pet_deftime==0) then
		LuaPetSet("pet_deftime",1) --��ʼ��������Ϊ1
		pet_deftime=LuaPetQuery("pet_deftime")
    	end
    	local a=pet_deftime   -------�����Ĵ���
	LuaSetTemp("a",a)


	    pet_def={}
		pet_def[1]={5,6,7,8,200,"o_material_20","1��Ƥ",1,"","",0}              ---5  ÿ�������ķ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_def[2]={5,6,7,8,200,"o_material_21","2��Ƥ",1,"","",0}              ---10
		pet_def[3]={5,6,7,8,200,"o_material_21","2��Ƥ",2,"","",0}              ---15
		pet_def[4]={5,6,7,8,2000,"o_material_22","3��Ƥ",1,"o_gold2y","��Ʊ",1}              ---20
		pet_def[5]={5,6,7,8,3000,"o_material_22","3��Ƥ",2,"o_gold2y","��Ʊ",5}              ---25
		pet_def[6]={5,6,7,8,10000,"o_material_23","4��Ƥ",1,"o_gold2y","��Ʊ",5}              ---30
		pet_def[7]={5,6,7,8,20000,"o_material_24","5��Ƥ",1,"o_gold2y","��Ʊ",5}              ---35
		pet_def[8]={5,6,7,8,50000,"o_material_25","6��Ƥ",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_def[9]={5,6,7,8,100000,"o_material_25","6��Ƥ",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_def[10]={5,6,7,8,150000,"o_material_25","6��Ƥ",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_def[11]={5,6,7,8,300000,"o_material_25","6��Ƥ",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_def[12]={5,6,7,8,500000,"o_material_25","6��Ƥ",3,"o_zhaiquan1y2","����ȯ",1}              ---60
		pet_def[13]={5,6,7,8,800000,"o_material_25","6��Ƥ",3,"o_zhaiquan1y2","����ȯ",1}              ---65
		pet_def[14]={5,6,7,8,1200000,"o_material_26","7��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---70
		pet_def[15]={5,6,7,8,1200000,"o_material_26","7��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---75
		pet_def[16]={5,6,7,8,1500000,"o_material_27","8��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---80
		--�ⶥ��
		pet_def[17]={0,0,0,0,0,0,"o_material_28","9��Ƥ",0,"o_zhaiquan2y","����ȯ",0}              ---85


		pet_pz=LuaPetQuery("type")   --����Ʒ��
		LuaSay("��ʾ����ĳ��ﵱǰ�ȼ�Ϊ@3"..LuaPetQuery("lv").."����@0�����Ѿ�Ϊ�ó���������@3"..(LuaPetQuery("pet_deftime")-1).."�η�������@0")
		LuaSay("@7��������������������@0��@3"..pet_def[a][pet_pz].."��")
        if(a<=3) then
        LuaSay("@7������ķ�@0��@3"..(pet_def[a][5]).."ͭ�ң�"..pet_def[a][8].."��"..pet_def[a][7].."")
        else
        LuaSay("@7������ķ�@0��@3"..(pet_def[a][5]).."ͭ�ң�"..pet_def[a][8].."��"..pet_def[a][7].."��"..pet_def[a][11].."��"..pet_def[a][10].."")
        end
        if(LuaPetQuery("pet_deftime")<=16)then
        AddMenuItem("@7�������������","")
        AddMenuItem("@3ȷ������","pet_defyes")
        AddMenuItem("@3������","pet_defno")
        else
        LuaSay("ѱ��ʦ��Ŀǰ����������Ѿ��ﵽ���ޣ��޷��������������ˣ������ڴ������������ݣ�")
        end

    else
	LuaSay("ѱ��ʦ�����Ȱѳ���װ�������ϣ�")
	end
elseif(answer=="pet_defyes") then
		pet_def={}
		pet_def[1]={5,6,7,8,200,"o_material_20","1��Ƥ",1,"","",0}              ---5  ÿ�������ķ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_def[2]={5,6,7,8,200,"o_material_21","2��Ƥ",1,"","",0}              ---10
		pet_def[3]={5,6,7,8,200,"o_material_21","2��Ƥ",2,"","",0}              ---15
		pet_def[4]={5,6,7,8,2000,"o_material_22","3��Ƥ",1,"o_gold2y","��Ʊ",1}              ---20
		pet_def[5]={5,6,7,8,3000,"o_material_22","3��Ƥ",2,"o_gold2y","��Ʊ",5}              ---25
		pet_def[6]={5,6,7,8,10000,"o_material_23","4��Ƥ",1,"o_gold2y","��Ʊ",5}              ---30
		pet_def[7]={5,6,7,8,20000,"o_material_24","5��Ƥ",1,"o_gold2y","��Ʊ",5}              ---35
		pet_def[8]={5,6,7,8,50000,"o_material_25","6��Ƥ",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_def[9]={5,6,7,8,100000,"o_material_25","6��Ƥ",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_def[10]={5,6,7,8,150000,"o_material_25","6��Ƥ",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_def[11]={5,6,7,8,300000,"o_material_25","6��Ƥ",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_def[12]={5,6,7,8,500000,"o_material_25","6��Ƥ",3,"o_zhaiquan1y2","����ȯ",1}              ---60
		pet_def[13]={5,6,7,8,800000,"o_material_25","6��Ƥ",3,"o_zhaiquan1y2","����ȯ",1}              ---65
		pet_def[14]={5,6,7,8,1200000,"o_material_26","7��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---70
		pet_def[15]={5,6,7,8,1200000,"o_material_26","7��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---75
		pet_def[16]={5,6,7,8,1500000,"o_material_27","8��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---80
		--�ⶥ��
		pet_def[17]={0,0,0,0,0,0,"o_material_28","9��Ƥ",0,"o_zhaiquan2y","����ȯ",0}              ---85

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
	if(LuaPetQuery("pet_deftime")<=LuaPetQuery("lv")/5 )  then
        	if(a<=3) then
				if(LuaItemCount("coin")>=pet_def[a][5] and LuaItemStatusNormalCount(pet_def[a][6])>=pet_def[a][8]) then
					LuaGive("coin",-pet_def[a][5],"Tpet_def")   --Tpet_def���������������
					DelItem(pet_def[a][6],pet_def[a][8])
					LuaPetSet("def",LuaPetQuery("def")+pet_def[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_deftime",LuaPetQuery("pet_deftime")+1)
					LuaSay("@7�����ɹ�@0��������������@3"..pet_def[a][pet_pz].."��,�����ܷ�����Ϊ@3"..LuaPetQuery("def").."")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_def[a][5]).."ͭ�ң�"..pet_def[a][8].."��"..pet_def[a][7].."")
				end
			else
				if(LuaItemCount("coin")>=pet_def[a][5] and LuaItemStatusNormalCount(pet_def[a][6])>=pet_def[a][8] and LuaItemStatusNormalCount(pet_def[a][9])>=pet_def[a][11]) then
					LuaGive("coin",-pet_def[a][5],"Tpet_def")   --Tpet_def���������������
					DelItem(pet_def[a][6],pet_def[a][8])
					DelItem(pet_def[a][9],pet_def[a][11])
					LuaPetSet("def",LuaPetQuery("def")+pet_def[a][pet_pz])
					LuaPetSet("pet_deftime",LuaPetQuery("pet_deftime")+1)
					FlushMyInfo("1")
					LuaSay("@7�����ɹ�@0��������������@3"..pet_def[a][pet_pz].."��,�����ܷ�����Ϊ@3"..LuaPetQuery("def").."")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_def[a][5]).."ͭ�ң�"..pet_def[a][8].."��"..pet_def[a][7].."��"..pet_def[a][11].."��"..pet_def[a][10].."")
				end
			end
	else
	LuaSay("ѱ��ʦ������ÿ����5�����ܶ�����1�����Եȼ������ȥ������ιʳ����������ȼ��ɣ�")
	end

elseif(answer=="pet_defno") then
	pet_def={}
		pet_def[1]={5,6,7,8,200,"o_material_20","1��Ƥ",1,"","",0}              ---5  ÿ�������ķ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_def[2]={5,6,7,8,200,"o_material_21","2��Ƥ",1,"","",0}              ---10
		pet_def[3]={5,6,7,8,200,"o_material_21","2��Ƥ",2,"","",0}              ---15
		pet_def[4]={5,6,7,8,2000,"o_material_22","3��Ƥ",1,"o_gold2y","��Ʊ",1}              ---20
		pet_def[5]={5,6,7,8,3000,"o_material_22","3��Ƥ",2,"o_gold2y","��Ʊ",5}              ---25
		pet_def[6]={5,6,7,8,10000,"o_material_23","4��Ƥ",1,"o_gold2y","��Ʊ",5}              ---30
		pet_def[7]={5,6,7,8,20000,"o_material_24","5��Ƥ",1,"o_gold2y","��Ʊ",5}              ---35
		pet_def[8]={5,6,7,8,50000,"o_material_25","6��Ƥ",1,"o_zhaiquan1y","��ɴ��",1}              ---40
		pet_def[9]={5,6,7,8,100000,"o_material_25","6��Ƥ",1,"o_zhaiquan1y","��ɴ��",2}              ---45
		pet_def[10]={5,6,7,8,150000,"o_material_25","6��Ƥ",2,"o_zhaiquan1y","��ɴ��",5}              ---50
		pet_def[11]={5,6,7,8,300000,"o_material_25","6��Ƥ",2,"o_zhaiquan1y","��ɴ��",5}              ---55
		pet_def[12]={5,6,7,8,500000,"o_material_25","6��Ƥ",3,"o_zhaiquan1y2","����ȯ",1}              ---60
		pet_def[13]={5,6,7,8,800000,"o_material_25","6��Ƥ",3,"o_zhaiquan1y2","����ȯ",1}              ---65
		pet_def[14]={5,6,7,8,1200000,"o_material_26","7��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---70
		pet_def[15]={5,6,7,8,1200000,"o_material_26","7��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---75
		pet_def[16]={5,6,7,8,1500000,"o_material_27","8��Ƥ",1,"o_zhaiquan1y2","����ȯ",2}              ---80
		--�ⶥ��
		pet_def[17]={0,0,0,0,0,0,"o_material_28","9��Ƥ",0,"o_zhaiquan2y","����ȯ",0}              ---85

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
	LuaSay("ѱ��ʦ�����������������ķ�����Ŷ��@7������������@0��@3"..pet_def[a][pet_pz].."�㣡")

        --------------------------------****����def��������****-----------------------------------

elseif(answer=="pet_food") then -----------------------------------------------------------------����ʳƷ�һ�
	LuaSay("ѱ��ʦ��Ϊ�˷���Գ���ʳƷ��������������ó���ʳƷ�����𵤻�ȡ@1������@0����Ч����΢����40��@3����ʳƷ��������")
	LuaSay("ѱ��ʦ����ȡ1��@1������@0����Ҫ40��@3����ʳƷ������@0������65��@5����ʳƷ���š�@0������130��@7����ʳƷ���֡�@0������30��@1�����@0��")
	local num_jindan=LuaItemStatusNormalCount("o_food04")
	local num_jing=LuaItemStatusNormalCount("o_food03")
	local num_you=LuaItemStatusNormalCount("o_food02")
	local num_cu=LuaItemStatusNormalCount("o_food01")
	LuaSetTemp("num_jindan",num_jindan)
	LuaSetTemp("num_jing",num_jing)
	LuaSetTemp("num_you",num_you)
	LuaSetTemp("num_cu",num_cu)
	LuaSay("ѱ��ʦ����Ŀǰ��"..num_jing.."��@3����ʳƷ������@0��"..num_you.."��@5����ʳƷ���š�@0��"..num_cu.."��@7����ʳƷ���֡�@0��"..num_jindan.."��@1�����@0��")
	if(num_jindan>=30 or num_jing>=40 or num_you>=65 or num_cu>=130 )then
		num_dajindan=floor(num_jindan/30)+floor(num_jing/40)+floor(num_you/65)+floor(num_cu/130)  -------�����𵤵ļ���
		LuaSay("ѱ��ʦ���㵱ǰ���Ի�ȡ@1������@0������Ϊ"..num_dajindan.."����")
		AddMenuItem("@7�Ƿ񻻣�","")
		AddMenuItem("@7����","pet_food_no","")
		AddMenuItem("@7��","pet_food_yes","")
	else
	LuaSay("��ʾ�������ϵĳ���ʳƷ�����𵤣��в��㻻ȡһ�������𵤣�")
	end
elseif(answer=="pet_food_no") then
    LuaSay("ѱ��ʦ���㵱ǰ���Ի�ȡ@1������@0������Ϊ"..num_dajindan.."�����뻻�˿����������ң�")
elseif(answer=="pet_food_yes") then
	local num_jindan=LuaQueryTemp("num_jindan")
	local num_jing=LuaQueryTemp("num_jing")
	local num_you=LuaQueryTemp("num_you")
	local num_cu=LuaQueryTemp("num_cu")
    DelItem("o_food04",30*floor(num_jindan/30))
    DelItem("o_food03",40*floor(num_jing/40))
    DelItem("o_food02",65*floor(num_you/65))
    DelItem("o_food01",130*floor(num_cu/130))
    LuaGive("o_food05",num_dajindan)
    LuaSay("ѱ��ʦ�����Ѿ���ȡ��"..num_dajindan.."��@1������@0��")
	UpdateMenu()
	
elseif(answer=="pet_free") then               --------------------------�������
    if(LuaQueryStrTask("Tpet_free_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Tpet_free_times",0)
		LuaSetTask("Tpet_free_Taskday",GetCurrentDay())
	end
	if(EquipInfo(10)~="")then
	    LuaSay("ѱ��ʦ����������������л�㣬�����㲻�ٶ�����")
	    local pet_lv=LuaPetQuery("lv")
	    if(pet_lv>=20)then 
			if(pet_lv>=20 and pet_lv<40)then				
			   	LuaSay("ѱ��ʦ����������󣬿��Ի��"..(pet_lv-19).."��@3����ʳƷ������@0��ÿ�����ǰ10�λ���һ���ľ���ֵ��")
			elseif(pet_lv>=40 and pet_lv<80)then
			   	LuaSay("ѱ��ʦ����������󣬿��Ի��"..(pet_lv-39).."��@1������@0��ÿ�����ǰ10�λ���һ���ľ���ֵ��")
			end 
	   		AddMenuItem("@7�����б�","")
    		AddMenuItem("@7�ٵȻ�","Tpet_free_no")
    		AddMenuItem("@7����","Tpet_free_yes")
		else
		LuaSay("ѱ��ʦ������δ�ﵽ20�����޷�������")
		end
		 
	else
		LuaSay("ѱ��ʦ�����Ҫ�����ĳ���װ���ϣ�")
	end  
elseif(answer=="Tpet_free_no") then 
	local pet_lv=LuaPetQuery("lv")
	if(pet_lv>=20 and pet_lv<40)then				
	   	LuaSay("ѱ��ʦ����������󣬿��Ի��"..(pet_lv-19).."��@3����ʳƷ������@0��ÿ�����ǰ10�λ���һ���ľ���ֵ��")
	elseif(pet_lv>=40 and pet_lv<80)then
	   	LuaSay("ѱ��ʦ����������󣬿��Ի��"..(pet_lv-39).."��@1������@0��ÿ�����ǰ10�λ���һ���ľ���ֵ��")
	end 
elseif(answer=="Tpet_free_yes") then
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	local pet_lv=LuaPetQuery("lv")
    if(LuaDelEquip(10) ==1)  then -----ɾ������ɹ� 
		if(pet_lv>=20 and pet_lv<40)then				
		   	LuaGive("o_food03",pet_lv-19,"Tpet_free")
		elseif(pet_lv>=40 and pet_lv<80)then
			LuaGive("o_food05",pet_lv-39,"Tpet_free")
		end
		local lv_exp
		if(LuaQuery("level")<30) then    ------����� 
		lv_exp=30000
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		lv_exp=70000
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		lv_exp=150000
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		lv_exp=200000
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
		lv_exp=400000
		elseif(LuaQuery("level")>=70 ) then
		lv_exp=1000000
		end
  		local pet_free_exp=lv_exp+(LuaRandom(20)+1)*level^2
		if(LuaQueryTask("Tpet_free_times")<=10) then
		LuaAddJx("combat_exp",pet_free_exp,"Tpet_free")
		LuaAddTask("Tpet_free_times",1)
		else
		LuaSay("ѱ��ʦ�������������10�����ϣ������ٻ�þ��齱����")
		end
	else
	LuaSay("��ʾ���������ʧ�ܣ�")
	end

	
	
	
elseif(answer=="pet_star") then ----------------------------------------------------------------------------�������
    if(EquipInfo(10)~="")then   ---�Ƿ�װ�������ж�
    
	LuaSay("@1��ʾ@0��������ǲ����漰�κι���������ս�����ԣ�ֻ��ʹ������۸��ÿ���Ŀǰ�����ǵ�����9ʱ�������3��������˸�����Ч������Ҫ@1���Ѵ���ͭ�ң�@0")
	if(LuaPetQuery("petstar")==0)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ0������1�ǣ�Ҫ����@33��ͭ�ң�@0������3�ǵȣ���ĳ�����۾ͻ�����˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no0")
    	AddMenuItem("@7����","pet_star_yes0")
	elseif(LuaPetQuery("petstar")==1)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ1������2�ǣ�Ҫ����@310��ͭ�ң�@0������3�ǵȣ���ĳ�����۾ͻ�����˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no1")
    	AddMenuItem("@7����","pet_star_yes1")
	elseif(LuaPetQuery("petstar")==2)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ2������3�ǣ�Ҫ����@315��ͭ�ң�@0������3�ǵȣ���ĳ�����۾ͻ�����˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no2")
    	AddMenuItem("@7����","pet_star_yes2")	
	elseif(LuaPetQuery("petstar")==3)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ3������4�ǣ�Ҫ����@335��ͭ�ң�@0������6�ǵȣ���ĳ�����۾ͻ�϶���˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no3")
    	AddMenuItem("@7����","pet_star_yes3")
	elseif(LuaPetQuery("petstar")==4)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ4������5�ǣ�Ҫ����@350��ͭ�ң�@0������6�ǵȣ���ĳ�����۾ͻ�϶���˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no4")
    	AddMenuItem("@7����","pet_star_yes4")
	elseif(LuaPetQuery("petstar")==5)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ5������6�ǣ�Ҫ����@3100��ͭ�ң�@0������6�ǵȣ���ĳ�����۾ͻ�϶���˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no5")
    	AddMenuItem("@7����","pet_star_yes5")
	elseif(LuaPetQuery("petstar")==6)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ6������7�ǣ�Ҫ����@3250��ͭ�ң�@0������9�ǵȣ���ĳ�����۾ͻ������˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no6")
    	AddMenuItem("@7����","pet_star_yes6")
	elseif(LuaPetQuery("petstar")==7)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ7������8�ǣ�Ҫ����@3500��ͭ�ң�@0������9�ǵȣ���ĳ�����۾ͻ������˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no7")
    	AddMenuItem("@7����","pet_star_yes7")
    elseif(LuaPetQuery("petstar")==8)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ8������9�ǣ�Ҫ����@31000��ͭ�ң�@0������9�ǵȣ���ĳ�����۾ͻ������˸�����ǣ�")
		AddMenuItem("@7�����б�","")
    	AddMenuItem("@7�ٵȻ�","pet_star_no8")
    	AddMenuItem("@7����","pet_star_yes8")
    elseif(LuaPetQuery("petstar")==9)then
		LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ9���Ѿ�������ǵȣ�")
	end 
	
    else
		LuaSay("ѱ��ʦ�����Ҫ�����ĳ���װ���ϣ�")
	end

elseif(answer=="pet_star_no0") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ0������1�ǣ�Ҫ����@33��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes0") then
    if(LuaItemCount("coin")>=30000) then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������1�ǵȣ�")
    LuaGive("coin",-30000,"petstar_up")
    LuaPetSet("petstar",1)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���3��")
    end
elseif(answer=="pet_star_no1") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ1������2�ǣ�Ҫ����@310��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes1") then
    if(LuaItemCount("coin")>=100000) then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������2�ǵȣ�")
    LuaGive("coin",-100000,"petstar_up")
    LuaPetSet("petstar",2)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���10��")
    end
elseif(answer=="pet_star_no2") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ2������3�ǣ�Ҫ����@315��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes2") then
    if(LuaItemCount("coin")>=150000)then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������3�ǵȣ�")
    LuaGive("coin",-150000,"petstar_up")
    LuaPetSet("petstar",3)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���15��")
    end
elseif(answer=="pet_star_no3") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ3������4�ǣ�Ҫ����@335��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes3") then
    if(LuaItemCount("coin")>=350000)then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������4�ǵȣ�")
    LuaGive("coin",-350000,"petstar_up")
    LuaPetSet("petstar",4)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���35��")
    end
elseif(answer=="pet_star_no4") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ4������5�ǣ�Ҫ����@350��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes4") then
    if(LuaItemCount("coin")>=500000)then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������5�ǵȣ�")
    LuaGive("coin",-500000,"petstar_up")
    LuaPetSet("petstar",5)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���50��")
    end
elseif(answer=="pet_star_no5") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ5������6�ǣ�Ҫ����@3100��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes5") then
    if(LuaItemCount("coin")>=1000000) then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������6�ǵȣ�")
    LuaGive("coin",-1000000,"petstar_up")
    LuaPetSet("petstar",6)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���100��")
    end
elseif(answer=="pet_star_no6") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ6������7�ǣ�Ҫ����@3250��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes6") then
    if(LuaItemCount("coin")>=2500000)then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������7�ǵȣ�")
    LuaGive("coin",-2500000,"petstar_up")
    LuaPetSet("petstar",7)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���250��")
    end
elseif(answer=="pet_star_no7") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ7������8�ǣ�Ҫ����@3500��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes7") then
    if(LuaItemCount("coin")>=5000000)then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������8�ǵȣ�")
    LuaGive("coin",-5000000,"petstar_up")
    LuaPetSet("petstar",8)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���500��")
    end
elseif(answer=="pet_star_no8") then
	LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ�Ϊ8������9�ǣ�Ҫ����@31000��ͭ�ң�@0ÿ����3���ǵȣ���ĳ�����۾ͻ�������˸������������")
elseif(answer=="pet_star_yes8") then
    if(LuaItemCount("coin")>=10000000) then
    LuaSay("ѱ��ʦ����ĳ���Ŀǰ�ǵ������ɹ���Ŀǰ������9�ǵȣ�")
    LuaGive("coin",-10000000,"petstar_up")
    LuaPetSet("petstar",9)
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���1000��")
    end

elseif(answer=="pet_fuck") then ----------------------------------------------------------------------------���ｻ��
    if(GetDayOfWeek()==5 or GetDayOfWeek()==6  or GetDayOfWeek() ==7 )  then
    	if(LuaQueryStrTask("Tpet_fuck_Taskday")~=GetCurrentDay()) then
			LuaSetTask("Tpet_fuck",0)
			r=LuaRandom(30)-----�������
			LuaSetTask("pet_fuck_R",r)
			r2=LuaRandom(10)-----�������
			LuaSetTask("pet_fuck_R2",r2)
			LuaSetTask("Tpet_fuck_Taskday",GetCurrentDay())
		end
		--����а��档   
		--[[
		pet_fuck={}
		pet_fuck[0]={"���������������ӣ��·���˵���Ƕ������ˣ�"}
		pet_fuck[1]={"��������������ӣ��·���˵����Ӵ�ҵ���ѽ��̫ˬ�ˣ�"}
		pet_fuck[2]={"����������ǵ����ӣ��·���˵��ˬ��ͷ�ˣ��Ⱥ��ᣬ���Ҳ�����ˣ�"}
		pet_fuck[3]={"��������������ӣ��·���˵����ˬ����"}
		pet_fuck[4]={"��������������ӣ��·���˵��ˬ�����ˣ�������������ô��"}
		pet_fuck[5]={"��������������ӣ��·���˵��̫ˬ�ˣ����������Բ���"}
		pet_fuck[6]={"����������ѵ����ӣ��·���˵��ˬ��ͷ�ˣ����ҽ�����ֻ̫�����ˣ�"}
		pet_fuck[7]={"����������ѵ����ӣ��·���˵�����ҽ�����ֻ̫�����ˣ��㲻������"}
		pet_fuck[8]={"����������ѵ����ӣ��·���˵�����ˣ��´ν���ǰ����ҼӸ���ǿ������״̬��"}
		pet_fuck[9]={"�������ή�ҵ����ӣ��·���˵�����ˣ��������ˣ��ܲ��ܸ��ҵ�ҩ��������"}
		
		pet_fuck[10]={"���������������ӣ��·���˵���Ƕ���Ƥ����ĥ���ˣ�"}
		pet_fuck[11]={"��������������ӣ��·���˵�������Һ�ǿ�ģ��л��ῴ���ҵ�ս������"}
		pet_fuck[12]={"����������ǵ����ӣ��·���˵������һ�Σ���ֱ��ɱ2��boss��ˬ"}
		pet_fuck[13]={"��������������ӣ��·���˵����ˬ����ŶŶҮ��"}
		pet_fuck[14]={"��������������ӣ��·���˵��ˬ�����ˣ������Ҹ�5ֻ��ͬ�ĳ��ｻ���ˣ�"}
		pet_fuck[15]={"��������������ӣ��·���˵��̫ˬ�ˣ������Ҹ�3ֻ��ͬ�ĳ��ｻ���ˣ�"}
		pet_fuck[16]={"����������ѵ����ӣ��·���˵��ˬ��ͷ�ˣ����ҽ�����ֻ̫�����ˣ�����4ֻ����һֻ�Ȳ�������"}
		pet_fuck[17]={"����������ѵ����ӣ��·���˵�����ҽ�����ֻ̫�����ˣ��㲻������5ֻ���ﶼ���������֣�"}
		pet_fuck[18]={"����������ѵ����ӣ��·���˵�����ˣ��´ν���ǰ����ҼӸ������������ٶȡ���״̬��"}
		pet_fuck[19]={"�������ή�ҵ����ӣ��·���˵�����ˣ��������ˣ��ܲ��ܸ��Ҹ��ż��ⲹ������"}
		
		pet_fuck[20]={"��ĳ��������棬һ����ˬ�����ӣ�"}
		pet_fuck[21]={"��ĳ����ۿ������˽�ȥ��һ��һ���ǣ������������ȣ�"}
		pet_fuck[22]={"��ĳ������ܺ찡�����㺦��Ҳû��ô���..."}
		pet_fuck[23]={"��ĳ�������һ�������ˡ�ֻҪ���������ĥ���롱����̺��壡"}
		pet_fuck[24]={"��ĳ���ƨ���ϣ���Щ����������Һ�壡"}
		pet_fuck[25]={"��ĳ���ƨ���ϣ��в���Һ���ɺ�ľ��壡"}
		pet_fuck[26]={"��ĳ���ƨ���ϣ��в��ٹֵֹĶ�����ɢ������ֵ���ζ��"}
		pet_fuck[27]={"��ĳ���ƨ���ϣ���������ֵ�ҹ�䣬ɢ������ֵ���ζ��"}
		pet_fuck[28]={"��ĳ������������������ʲô����������һʱ������ˣ�"}
		pet_fuck[29]={"��ĳ�������������ڶ���ʲô����������һʱ�������ˣ�"}
		
		 ]]
		------�ߵ�������
		pet_fuck2={}
		pet_fuck2[0]={"Ц��̫����ˮ̫�̣�ɽ�˺��ĵ�����������䡣������ĳ�������һֻ������������ӣ��㲻���п���ǧ��"}
		pet_fuck2[1]={"��ҹ��������,���ϸ�¥,��������·��������ĳ�������һֻ��������ϧ���㲻���п���ǧ��"}
		pet_fuck2[2]={"�´������ղ��ڣ�Ϊ���������㲣�������ĳ���Ŀǰ�����������飡"}
		pet_fuck2[3]={"����Ѱ��ǧ�ٶȣ���Ȼ���ף�����ȴ�ڵƻ���ɺ������ĳ����ҵ����Ҹ���Ȼ��ֻ�ж��ݵ�һʱ��"}
		pet_fuck2[4]={"������࣬�˰�������������壡��ĳ������������������һֻ�����Ҳ�а��飡"}
		pet_fuck2[5]={"֪����ν�����ǣ���֪����ν�Һ���֪�����ߣ�Ψ�е�㷱�ǣ�����ֻ������ܸо�������ﵱǰ�Ĺ¶���"}
		pet_fuck2[6]={"�鵶��ˮˮ��������ƽ��������ĳ��ﲻ�������˳���������������ζ����ε���꣡"}
		pet_fuck2[7]={"������������죬���������˭������ĳ��￴�����ƺ������..."}
		pet_fuck2[8]={"�쳤�ؾ���ʱ�����˺������޾��ڣ���ĳ��￴����������"}
		pet_fuck2[9]={"��˼��ǣ��������ݣ��ݽ��Ƭ�̿�˼��������������ծ����ĳ��￴�����ƺ��ǳ�˼��ĳֻ����..."}
		
		pet_fuck2[10]={"������ԣ�Ω����ǧ�У���ĳ�������һֻ������������������õ�������"}
		pet_fuck2[11]={"�������������ӳ�˵��ִ��֮�֣���������...�����Ҳ�а��飬�᲻����һ�죬���������ʹ��ĳ��ﱳ���㣿"}
		pet_fuck2[12]={"��������Ϊ���ֱ������������...������Ҳ�а��飬�᲻����һ�죬���������ʹ��ĳ��ﱳ���㣿"}
		pet_fuck2[13]={"�����������������ޣ�ֻΪ��� ��������...����Ҳ�а��飬�᲻����һ�죬���������ʹ��ĳ��ﱳ���㣿"}
		pet_fuck2[14]={"���ʱ�ѱ����ѣ����������ٻ��У������а��飬Ҳ�����Σ�"}
		pet_fuck2[15]={"����ɴ���׷�䣬ֻ�ǵ�ʱ���Ȼ�������а��飬Ҳ���Ȼ��"}
		pet_fuck2[16]={"���¸�¥�ݶ��У�������������˼�ᣡ�����а��飬Ҳ������˼�"}
		pet_fuck2[17]={"�����м��ˣ�һ�����˳ǣ��ٹ����˹��������а��飬Ҳ�����Լ����еļ��ˣ�"}
		pet_fuck2[18]={"�������ԣ���������Ψ�����飬���ܲ��ܣ������й����飬Ҳ�������飡"}
		pet_fuck2[19]={"���޿ɾ������޿����������а��飬Ҳ�ᱻ�����˺���"}
		
		
		
		if(LuaQueryTask("Tpet_fuck") == 0 ) then
 	    LuaSay("ѱ��ʦ����ĳ��������������������Ϳ๦�ߣ��ǲ��Ǹ�����ĳ���ȥ�����£�˵����������Ѱ�ҵ����������Ҹ��أ�")
  	    LuaSay("ѱ��ʦ�����Ѿ��������õǼ��ˣ�Ŀǰ��ĳ����Ѿ�ȥ�����˵ĳ�����Ϸ�ˣ����@31Сʱ@0�������Ұɣ�")
 	    LuaSay(""..LuaQueryStr("name").."�����@#...�ܲ����ֳ����ҿ����ｻ�䰡����")
 	    LuaSay("ѱ��ʦ�����...�Ǹ�...����������������������")
        LuaSetTask("pet_fuck_begin",GetCurrentTime())
        LuaSetTask("Tpet_fuck",1)
        UpdateMenu()
        elseif(LuaQueryTask("Tpet_fuck") == 1 ) then
    		if(GetCurrentTime() - LuaQueryTask("pet_fuck_begin") >=3600    )  then
    		    LuaSay("��ʾ������Ѱ�ҡ����֡����������ˣ�")
    		    AddMenuItem("@7�����б�","")
    		    AddMenuItem("@7�ٵȻ�","Tpet_fuckjl0")
    		    AddMenuItem("@7�콱","Tpet_fuckjl2")
    --		    AddMenuItem("@7������","Tpet_fuckjl2")
	---			AddMenuItem("@7а��棨���Ƽ���","Tpet_fuckjl1")      -------�˴��ڲ�ͬ�·�ӳ������а�񣬾Ͳ������� 
    		else
    		LuaSay("ѱ��ʦ��Ŀǰ��ĳ����Ѿ������˵ĳ����ҡ����֡��У���δ��1Сʱ��������������Ұɣ�")
    		end
        elseif(LuaQueryTask("Tpet_fuck") == 99 ) then
        LuaSay("ѱ��ʦ����ĳ��������Щ�������ȣ������ú���Ϣ�ɣ�")
        end
	else
	LuaSay("ѱ��ʦ��������������塢�������������շ��飡���ڳ��﷢���ʱ���������Ұɣ�")
	end
elseif(answer=="Tpet_fuckjl0")then    -----�ٵȻ�
    LuaSay("��ʾ������Ѱ�ҡ����֡����������ˣ�������콱�ˣ�")
elseif(answer=="Tpet_fuckjl2")then    -----����
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQueryTask("Tpet_fuck")==1) then
		local lv_exp
		    pet_fuck_R2=LuaQueryTask("pet_fuck_R2")
    		LuaSay(""..pet_fuck2[pet_fuck_R2][1].."")
		    if(LuaQuery("level")<30) then
			lv_exp=30000
			elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			lv_exp=70000
			elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			lv_exp=150000
			elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			lv_exp=200000
			elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
			lv_exp=400000
			elseif(LuaQuery("level")>=70 ) then
			lv_exp=1000000
			end
			LuaAddJx("combat_exp",lv_exp+level^2*25+level*25,"Tpet_fuck")
			LuaSetTask("Tpet_fuck",99)
			UpdateMenu()
		end
elseif(answer=="Tpet_fuckjl1")then    -------а��
	if(level>80)then
		level=80
	end
	local level= LuaQuery("level")
		if(LuaQueryTask("Tpet_fuck")==1) then
		local lv_exp
		    pet_fuck_R=LuaQueryTask("pet_fuck_R")
    		LuaSay(""..pet_fuck[pet_fuck_R][1].."")
		    if(LuaQuery("level")<30) then
			lv_exp=30000
			elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			lv_exp=70000
			elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			lv_exp=150000
			elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			lv_exp=200000
			elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
			lv_exp=400000
			elseif(LuaQuery("level")>=70 ) then
			lv_exp=1000000
			end
			LuaAddJx("combat_exp",lv_exp+level^2*25+level*25,"Tpet_fuck")
			LuaSetTask("Tpet_fuck",99)
			UpdateMenu()
		end
	



elseif(answer=="baobao") then ---���鱦��
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(level<20) then
	LuaSay("�ﵽ20����,�Ϳ��Ե���������ȡ@3���鱦��@0,������@330Сʱ@0�����ʱ��.")
	else
		LuaSay("��һ���������������ȡ@330Сʱ@0�����ʱ��,�Ժ�ÿ��5�ı��������,��������ȡ@320Сʱ@0�����ʱ��,36�����û����ѵ���.")
		LuaSay("ֱ�ӵ��@3�������鱦��@0,�Ϳ��Կ�ʼ���۾�����.")
		AddMenuItem("@7���鱦��","")
		if(LuaQueryTask("T778")<35) then
		AddMenuItem("��ȡ���ʱ��","shijian","")
		end
		if(level>19 and (LuaQueryTask("Tjybb")==0))  then
		AddMenuItem("�������鱦��","open","")
		elseif(LuaQueryTask("Tjybb")==99) then
		AddMenuItem("�رվ��鱦��","close","")
		end
		AddMenuItem("����ʱ��","goumai","")
		AddMenuItem("@3��ѯʣ��ʱ��","findtime","")
		AddMenuItem("��ȡ����","jingyan","")
		end

  elseif(answer=="findtime") then
	if(LuaQueryTask("cz_time")>0) then
	LuaSay("��ʾ:��ľ��鱦��ӵ��ʣ��ʱ��@3"..LuaQueryTask("cz_time").."����.")
	else
	LuaSay("��ʾ:��ľ��鱦���Ѿ�û��ʱ����,��ȥ�����.")
	end

  elseif(answer=="shijian") then        --------��ȡ���鱦��ʱ�� 
	local level= LuaQuery("level")
	if(LuaQueryTask("T778") == 0 and level<40) then
		LuaAddTask("cz_time",1800)
		LuaSay("��ʾ:�õ���@330Сʱ@0�����ʱ��.")
		if(level<25)  then
		LuaSetTask("T778",20)
		elseif(level<30)  then
		LuaSetTask("T778",25)
		elseif(level<35) then
		LuaSetTask("T778",30)
		else
		LuaSetTask("T778",35)
		end	
	else
		if(level<25)  then
		LuaSay("��ʾ:���Ѿ���ȡ��30Сʱ�����ʱ��.")
		elseif(level<30)  then
			if(LuaQueryTask("T778")<25) then
			LuaAddTask("cz_time",1200)
			LuaSay("��ʾ:�õ���@320Сʱ@0�����ʱ��.")
			LuaSetTask("T778",25) 
			else
			LuaSay("���Ѿ���ȡ���������ε����ʱ��.")
			end 
		elseif(level<35) then
			if(LuaQueryTask("T778")<30) then
			LuaAddTask("cz_time",1200)
			LuaSay("��ʾ:�õ���@320Сʱ@0�����ʱ��.") 
			LuaSetTask("T778",30)
			else
			LuaSay("���Ѿ���ȡ���������ε����ʱ��.")
			end 
		elseif(level<40) then
			if(LuaQueryTask("T778")<35) then
			LuaAddTask("cz_time",1200)
			LuaSay("��ʾ:�õ���@320Сʱ@0�����ʱ��.")
			LuaSetTask("T778",35) 
			else
			LuaSay("���Ѿ���ȡ���������ε����ʱ��.")
			end 
		else
		LuaSay("��ʾ:40�����������ʱ����ȡ,����Թ���ʱ��.")
		end
	end
   elseif(answer=="open") then         -----------------�������鱦��
	if(LuaQueryTask("cz_time")>0) then
	LuaSetTask("Tjybb",99)
	LuaSay("��ʾ:���Ѿ��ɹ��Ŀ����˾��鱦��.")
	LuaSetTask("Tjybbtime",GetCurrentTime())
	else
	LuaSay("���Ѿ�û�г�ֵʱ����,��Ҫ����ʱ��.")
	end

	 
   elseif(answer=="close" and LuaQueryTask("Tjybb")==99) then        -----------------�رվ��鱦��
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local past_time=GetCurrentTime() - LuaQueryTask("Tjybbtime")
	if(past_time>=(LuaQueryTask("cz_time")*60)) then
		local exp=floor((35+level^2*0.125+level*17)*LuaQueryTask("cz_time"))
		LuaSay("���Ѿ�û�г�ֵʱ����,���鱦���Ѿ��ر�,�����ڿ�����ȡ"..exp.."����.")
		LuaSetTask("Tjybb",0)
		LuaSetTask("cz_time",0)
		LuaSetTask("Tjybbtime",GetCurrentTime())
		LuaAddJx("combat_exp",exp,"Tjybb")
		UpdateMenu()
	else
		local exp=floor((35+level^2*0.125+level*17)*past_time/60 )
		show_time=LuaQueryTask("cz_time")-floor(past_time/60)
		LuaSay("��ɹ��Ĺر��˾��鱦��,�����ڿ�����ȡ"..exp.."����,��ľ��鱦��ʱ�仹��@3"..show_time.."����.")
		LuaSetTask("Tjybb",0)
		LuaAddJx("combat_exp",exp,"Tjybb")
		LuaSetTask("Tjybbtime",GetCurrentTime())
		LuaAddTask("cz_time",-floor(past_time/60))
		UpdateMenu()
	end

  elseif(answer=="goumai") then
	LuaSay("��ʾ:��Ҫ�̳ǵ�@8��Ʊ@0,10��@8��Ʊ@0���Ի�ȡ@350Сʱ@0��ʱ��.")--100yb10
	LuaSay("��ʾ:20��@8��Ʊ@0���Ի�ȡ@3100Сʱ@0��ʱ��.��׼���������ʱ�䣿")--200by20
	AddMenuItem("@7����ʱ��ѡ��","")
	AddMenuItem("@350Сʱ","50h","")
	AddMenuItem("@3100Сʱ","100h","")


   elseif(answer=="jingyan") then         -----------------��ȡ���鱦���ľ���
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("Tjybb")==0) then
	LuaSay("�㻹û�п������鱦����,�������鱦����,�ŻῪʼ���۾���.")
	else
		past_time=GetCurrentTime()-LuaQueryTask("Tjybbtime")
		if(past_time>=(LuaQueryTask("cz_time")*60)) then
			local exp=floor((35+level^2*0.125+level*17)*LuaQueryTask("cz_time"))
			LuaSay("���Ѿ�û�г�ֵʱ����,�����ڿ�����ȡ"..exp.."����,Ҫ��ȡ��")
			AddMenuItem("@7�Ƿ���ȡ","")
			AddMenuItem("��ȡ","lingqu")
			AddMenuItem("����ȡ","bulingqu")
		else
			local exp=floor((35+level^2*0.125+level*17)*past_time/60 )
			LuaSay("�����ڿ�����ȡ"..exp.."����,Ҫ��ȡ��")
			AddMenuItem("@7�Ƿ���ȡ","")
			AddMenuItem("��ȡ","lingqu")
			AddMenuItem("����ȡ","bulingqu")
		end	
	end        		
  elseif(answer=="lingqu" and LuaQueryTask("Tjybb")==99) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	LuaSetTask("Tjybb",0)
	past_time=GetCurrentTime()-LuaQueryTask("Tjybbtime")
	if(past_time>=(LuaQueryTask("cz_time")*60)) then
	local exp=floor((35+level^2*0.125+level*17)*LuaQueryTask("cz_time"))
	LuaAddJx("combat_exp",exp,"Tjybb")
	LuaSetTask("cz_time",0)
	else
	LuaAddJx("combat_exp",floor((35+level^2*0.125+level*17)*past_time/60),"Tjybb")
	LuaAddTask("cz_time",-floor(past_time/60))
	end
        LuaSay("��ʾ:����Ҫ���¿������鱦��,�ſɿ�ʼ���۾���")
  elseif(answer=="bulingqu") then
	LuaSay("��������κ�ʱ������ȡ����")
  elseif(answer=="50h") then
	local a=LuaItemStatusNormalCount("o_gold2j")
	local b=LuaItemStatusNormalCount("o_gold2y")
		if(a+b>=10) then
			if(b>=10) then
			DelItem("o_gold2y",10)
			else
			DelItem("o_gold2y",b)
			DelItem("o_gold2j",10-b)
			end
			LuaLogRecord("���鱦��","o_gold2y","Ԫ��","����",100)--�ǳ�һ�ֿ�Ҳ���б�Ҫ�Ļ��ٷֿ�
			LuaAddTask("cz_time",3000)
			LuaSay("��ʾ:��ɹ���ȡ��@350Сʱ@0�ľ��鱦��ʱ��.")
			if(LuaRandom(3)==0) then
			LuaSay("��ʾ:����Ʒ����̫����,�õ�һ��@3���˱���@0,���ʹ�ð�,��ϲ������.")
			LuaGive("o_box002",1,"Tjybb")
			end
		else
		LuaSay("��ʾ:������@310��@8��Ʊ@0���ܻ�ȡ50Сʱ��ʱ��.")
		end
 elseif(answer=="100h") then
		local a=LuaItemStatusNormalCount("o_gold2j")
		local b=LuaItemStatusNormalCount("o_gold2y")
		if(a+b>=20) then        --����ɾ��Ԫ������
			if(b>=20)then
			DelItem("o_gold2y",20)
			else
			DelItem("o_gold2y",b)
			DelItem("o_gold2j",20-b)
			end
			LuaLogRecord("���鱦��","o_gold2y","Ԫ��","����",200)--�ǳ�һ�־Ϳ����ˣ��б�Ҫ�Ļ��ٷֿ�
			LuaAddTask("cz_time",6000)
			LuaSay("��ʾ:��ɹ���ȡ��@3100Сʱ@0�ľ��鱦��ʱ��.")
			if(LuaRandom(2)==0) then
			LuaSay("��ʾ:����Ʒ����̫����,�õ�һ��@3���˱���@0,���ʹ�ð�,��ϲ������.")
			LuaGive("o_box002",1,"Tjybb")
			end
		else
		LuaSay("��ʾ:������@320��@8��Ʊ@0���ܻ�ȡ100Сʱ��ʱ��.")
		end
elseif(answer=="Tcoc")then---------------------�̼���2 Tcoc===3
	if(LuaQueryTask("Tcoc")==3)then
		LuaSay("ѱ��ʦ:�Ǻ�,��˵��һ��������ҵ��,��ô�����̼�֮����,��˵�ǰ�.")
		LuaSetTask("T955",4)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		LuaSetTask("Tcoc",4)
		if(LuaQuery("level")>=25)then
			LuaGive("coin",700,"Tcoc")
		else
			LuaGive("coin",400,"Tcoc")
			LuaGive("o_drug_hp4",2,"Tcoc")
		end
	end
	UpdateMenu()


-------------------------------------------------��������------------------------------------------------------------------------
------------------------���������--------
elseif(answer=="T101")then
	if(LuaQueryStrTask("T101_Taskday")~=GetCurrentDay()) then
		LuaSetTask("T101",0)
		LuaSetTask("T101_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("T101") == 0) then
	LuaSay("ѱ��ʦ��һλ�����ɵ��������θ��ң������������������@2����ʳƷ@0��ÿ��һ�أ�������������������������ı�����ˣ�")
	LuaSay(""..LuaQueryStr("name").."����Ȼ�д��£��ɷ�...�Ǹ�...�ٺ٣���֪�����£�")
	LuaSay("ѱ��ʦ�������ˣ���һ�䣺@5�����ҳ���ʳƷ@0����ʾ��һ�£������ڹ��Ļ��߱�����Ƶ��˵��仰��������㣡��7���֣�")
	LuaSetTask("T101",1)
	AddLog("��������ÿ�ա�",101)
	UpdateMenu()
	elseif(LuaQueryTask("T101") == 1) then
	    if(LuaQueryTempStr("last_channel_msg")=="�����ҳ���ʳƷ")   then      --��ȡ�����������Ƶ�����һ�η��Ļ�
	    LuaSay("ѱ��ʦ���ڶ��䣺@5���������@0����ʾ��һ�£������ڹ��Ļ��߱�����Ƶ��˵��仰��������㣡��5���֣�")
	    LuaSetTask("T101",2)
	    UpdateMenu()
	    else
        LuaSay("ѱ��ʦ�����ٸ���һ�飺@5�����ҳ���ʳƷ@0����ʾ��һ�£������ڹ��Ļ��߱�����Ƶ��˵��仰��������㣡��7���֣�")
        end
    elseif(LuaQueryTask("T101") == 2) then
        if(LuaQueryTempStr("last_channel_msg")=="���������")   then
	    LuaSay("ѱ��ʦ�������䶼����ˣ��㿴��@2����ʳƷ@0������ˣ�")
	    	if(LuaFreeBag()>=2)then
        		AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T101jl")
		else
	    		LuaSay("��ʾ�������ٱ���2������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    	end
	    else
        LuaSay("ѱ��ʦ�����ٸ���һ�飺@5���������@0����ʾ��һ�£������ڹ��Ļ��߱�����Ƶ��˵��仰��������㣡��5���֣�")
        end
    elseif(LuaQueryTask("T101") == 99) then
    	LuaSay("ѱ��ʦ�������������Ѿ���ɡ������������Ұɣ�")
    end
elseif(answer=="T101jl")then
		if(LuaQueryTask("T101")==2) then
		LuaGive("o_food01",15)
			local r=LuaRandom(72)
   			if(r>=52 and r<72)  then
			LuaSay("ѱ��ʦ���������Ʒ����������˶��⽱����")
			LuaGive("o_food01",10,"T101")
			elseif(r>45 and r<52)  then
			LuaSay("ѱ��ʦ���������Ʒ�󱬷�������˶��⽱����")
			LuaGive("o_food02",5,"T101")
			elseif(r==0)  then
			LuaSay("ѱ��ʦ���������Ʒ���ұ���������˶��⽱����")
			LuaGive("o_food03",3,"T101")
			LuaNotice(""..LuaQueryStr("name").."������Ʒ���ұ�������ɳ�������������������ó���ʳƷ��������")
			end
		DelLog("101")
		LuaSetTask("T101",99)
		UpdateMenu()
		end
		
	 -----�����й�-------------------------------------------------------------------
	 
elseif(answer=="T102")then
local level= LuaQuery("level")
if(level>=30)then
	if(LuaQueryTask("T102") == 0) then
	LuaSay("ѱ��ʦ����ȡ������󣬲������߻������ߣ��Ҷ����԰����йܳ�������й�ʱ�������ȡ����𵤻����ʳƷ��")
	LuaSay("@1��ʾ@0���콱ʱ�������ٱ���3�����ϵİ����ռ䣬������ܻ���ɷ��ŵĽ�����ʧ��")
	AddMenuItem("@7ѡ���б�","","")                           --��ͬ��ʱ��ιһ������Ѳ�ͬ������Ҳ��ͬ������YB�ı�����ͭ�ҵ��Ը� 
    AddMenuItem("@3ͭ���й�","TB","")
	AddMenuItem("@3�����йܣ����ཱ����","DJ","")
	UpdateMenu()

    elseif(LuaQueryTask("T102") == 1) then
        if(GetCurrentTime() - LuaQueryTask("begin_time") >= 1800)     then    --����ʱ���
        LuaSay("ѱ��ʦ����ȥ�ɣ����Ǹ���ĳ���𵤣�")
        LuaGive("o_food04",1,"T102")
        LuaSetTask("T102",0)
        DelLog("102")
        UpdateMenu()
        else
        	if(floor(30-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ) >= 1)     then
      		LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(30-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ).."����@0��")      --�������ʣ�����ʱ��
       		UpdateTopSay("��ʱ�䵽���������Ұ�")
       		else
       		LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(1800-(GetCurrentTime() - LuaQueryTask("begin_time")) ).."��@0��")      --�������ʣ�����ʱ��
       		UpdateTopSay("��ʱ�䵽���������Ұ�")
       		end
        end
    elseif(LuaQueryTask("T102") == 2) then
        if(GetCurrentTime() - LuaQueryTask("begin_time") >= 3600*8)     then
        LuaSay("ѱ��ʦ����ȥ�ɣ����Ǹ���ĳ���𵤣�")
        LuaGive("o_food04",9,"T102")
        LuaSetTask("T102",0)
        DelLog("102")
        UpdateMenu()
        else
        	if(floor(8-(GetCurrentTime() - LuaQueryTask("begin_time"))/3600 ) >= 1)     then
      		LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(8-(GetCurrentTime() - LuaQueryTask("begin_time"))/3600 ).."Сʱ@0��")
        	UpdateTopSay("��ʱ�䵽���������Ұ�")
        	else
				if(floor(60*8-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ) >= 1)     then
        		LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(60*8-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ).."����@0��")
        		UpdateTopSay("��ʱ�䵽���������Ұ�")
        		else
        		LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(3600*8-(GetCurrentTime() - LuaQueryTask("begin_time")) ).."��@0��")      --�������ʣ�����ʱ��
       			UpdateTopSay("��ʱ�䵽���������Ұ�")
       			end 
        	end
        end
    elseif(LuaQueryTask("T102") == 3) then
        if(GetCurrentTime() - LuaQueryTask("begin_time") >= 1800)     then
        LuaSay("ѱ��ʦ����ȥ�ɣ����Ǹ���ĳ���𵤣�")
        LuaGive("o_food04",3,"T102")
        LuaSetTask("T102",0)
        DelLog("102")
        UpdateMenu()
        else
      		if(floor(60*8-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ) > 1)     then
        	LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(60*8-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ).."����@0��")
        	UpdateTopSay("��ʱ�䵽���������Ұ�")
        	else
        	LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(3600*8-(GetCurrentTime() - LuaQueryTask("begin_time")) ).."��@0��")      --�������ʣ�����ʱ��
       		UpdateTopSay("��ʱ�䵽���������Ұ�")
       		end
        end
    elseif(LuaQueryTask("T102") == 4) then
        if(GetCurrentTime() - LuaQueryTask("begin_time") >= 3600*8)     then
        LuaSay("ѱ��ʦ����ȥ�ɣ����Ǹ���ĳ���𵤣�")
        LuaGive("o_food04",20,"T102")
        LuaGive("o_food04",5,"T102")
        LuaSetTask("T102",0)
        DelLog("102")
        UpdateMenu()
        else
      		if(floor(8-(GetCurrentTime() - LuaQueryTask("begin_time"))/3600 ) >= 1)     then
      		LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(8-(GetCurrentTime() - LuaQueryTask("begin_time"))/3600 ).."Сʱ@0��")
        	UpdateTopSay("��ʱ�䵽���������Ұ�")
        	else
				if(floor(60-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ) >= 1)     then
        		LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(60-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ).."����@0��")
        		UpdateTopSay("��ʱ�䵽���������Ұ�")
        		else
        		LuaSay("ѱ��ʦ��ʱ�仹û��������@5"..floor(3600-(GetCurrentTime() - LuaQueryTask("begin_time")) ).."��@0��")      --�������ʣ�����ʱ��
       			UpdateTopSay("��ʱ�䵽���������Ұ�")
       			end 
        	end
        end
	end
	
else
    LuaSay("ѱ��ʦ�������й�����Ҫ��30�����ܽ�ȡ��")
end
        
elseif(answer=="TB")then                                  -------ͭ���й�
    LuaSay("ѱ��ʦ��ѡ��1��Ҫ����@51000ͭ��@0��ѡ��2��Ҫ����@55000ͭ��@0��")
    AddMenuItem("@7ͭ���й��б�","","")
    AddMenuItem("@3�й�30����","30FZ11","")
	AddMenuItem("@3�й�8Сʱ","8H11","")
	UpdateMenu()
	elseif(answer=="30FZ11")then                         ----------ͭ�Ҷ�ʱ���й�
    	AddMenuItem("@7ͭ���й�30����","","")
		AddMenuItem("@3�й�","30FZ1","")
		AddMenuItem("@3���й�","30FZ1NO","")
   	    UpdateMenu()
   	    elseif(answer=="30FZ1NO")then
   	    LuaSay("ѱ��ʦ����Ҫ�йܳ����˿��������ң�")
    elseif(answer=="8H11")then                            ----------ͭ�ҳ�ʱ���й�
    	AddMenuItem("@7�����й�8Сʱ","","")
		AddMenuItem("@3�й�","8H1","")
		AddMenuItem("@3���й�","8H1NO","")
   	    UpdateMenu()
   	    elseif(answer=="8H1NO")then
   	    LuaSay("ѱ��ʦ����Ҫ�йܳ����˿��������ң�")
elseif(answer=="DJ")then                              -------�����й�
    LuaSay("ѱ��ʦ��ѡ��1��Ҫ����@51����Ʊ@0��ѡ��2��Ҫ����@55����Ʊ@0��")
    AddMenuItem("@7�����й��б�","","")
	AddMenuItem("@3�й�30����","30FZ22","")
	AddMenuItem("@3�й�8Сʱ","8H22","")
    UpdateMenu()
	elseif(answer=="30FZ22")then                         ----------���߶�ʱ���й�
    	AddMenuItem("@7�����й�30����","","")
		AddMenuItem("@3�й�","30FZ2","")
		AddMenuItem("@3���й�","30FZ2NO","")
   	    UpdateMenu()
   	    elseif(answer=="30FZ2NO")then
   	    LuaSay("ѱ��ʦ����Ҫ�йܳ����˿��������ң�")
    elseif(answer=="8H22")then                            ----------���߳�ʱ���й�
    	AddMenuItem("@7�����й�8Сʱ","","")
		AddMenuItem("@3�й�","8H2","")
		AddMenuItem("@3���й�","8H2NO","")
   	    UpdateMenu()
   	    elseif(answer=="8H2NO")then
   	    LuaSay("ѱ��ʦ����Ҫ�йܳ����˿��������ң�")
   	    
elseif(answer=="30FZ1")then
    if(LuaItemCount("coin")>=1000) then
    LuaSay("ѱ��ʦ����Ȼ��ˣ�@530���Ӻ�@0�������Ұɣ�")
    LuaGive("coin",-1000,"T102")
    LuaSetTask("begin_time",GetCurrentTime())              --����begin_time = GetCurrentTime()һ��������ߣ��ͻ�ʧЧ��Ҫ��LuaSet����ʹ����Ҳ����ʧЧ 
  	LuaSetTask("T102",1)
  	AddLog("�����й�",102)
  	UpdateMenu()
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���1000������Я��1000ͭ���������ң�")
    end
elseif(answer=="8H1")then
    if(LuaItemCount("coin")>=5000) then
    LuaSay("ѱ��ʦ����Ȼ��ˣ�@58Сʱ���@0�������Ұɣ�")
    LuaGive("coin",-5000,"T102")
    LuaSetTask("begin_time",GetCurrentTime())
  	LuaSetTask("T102",2)
  	AddLog("�����й�",102)
  	UpdateMenu()
    else
    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���5000������Я��5000ͭ���������ң�")
    end
elseif(answer=="30FZ2")then
    if(LuaItemStatusNormalCount("o_gold2y")>=1) then
    LuaSay("ѱ��ʦ����Ȼ��ˣ�@530���Ӻ�@0�������Ұɣ�")
    DelItem("o_gold2y",1)
    LuaSetTask("begin_time",GetCurrentTime())
  	LuaSetTask("T102",3)
	AddLog("�����й�",102)
	UpdateMenu()
    else
    LuaSay("ѱ��ʦ�������ϵ�@9��Ʊ@0����1��������Я��1�������������ң�")
    end
elseif(answer=="8H2")then
    if(LuaItemStatusNormalCount("o_gold2y")>=5) then
    LuaSay("ѱ��ʦ����Ȼ��ˣ�@58Сʱ��@0�������Ұɣ�")
    DelItem("o_gold2y",5)
    LuaSetTask("begin_time",GetCurrentTime())
  	LuaSetTask("T102",4)
	AddLog("�����й�",102)
	UpdateMenu()
    else
    LuaSay("ѱ��ʦ�������ϵ�@8��Ʊ@0����5��������Я��5�������������ң�")
    end
		  
	-----------------------�����-----------------------------------        
		
elseif(answer=="T103")then
	if(LuaQueryStrTask("T103_Taskday")~=GetCurrentDay()) then
		LuaSetTask("T103",0)
		LuaSetTask("T103_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("T103") == 0) then
		LuaSay("ѱ��ʦ���������Ƴ���𵤣�������ҩ�Ĳ��У���һ������ȥ@4��Դ��@0����ɼ�3��@3��ҩ@0�����ң�")
		LuaSetTask("T103",1)
		AddLog("����𵤡�ÿ�ա�",103)
		UpdateMenu()
		UpdateTopSay("ȥ��Դ������ɼ�3����ҩ����������")
    elseif(LuaQueryTask("T103") == 1) then
        if(LuaItemCount("o_mission371")>=3) then
		    LuaSay("ѱ��ʦ���ڶ������ռ�@310����ɢ��10���ش�¶@3������ȥ@3ҩ������@0������")
		    LuaSetTask("T103",2)
		    DelItem("o_mission371",3)
			UpdateMenu()
			UpdateTopSay("�ռ�10����ɢ�ͻش�¶������ȥҩ������������")
        else
            LuaSay("ѱ��ʦ�����ǲ���͵���ˣ�ûȥ@4��Դ��@0�ɼ���3��@3��ҩ@0��")
            UpdateTopSay("ȥ��Դ������ɼ�3����ҩ����������")
        end
    elseif(LuaQueryTask("T103") == 2) then
         if(LuaItemStatusNormalCount("o_drug_hp1")>=10 and LuaItemStatusNormalCount("o_drug_mp1")>=10) then
		    LuaSay("ѱ��ʦ������������ʼ�����ˣ���Ҫ����¯���У��������У�@31000ͭ��@0�����һ�Σ�ͯ�����ۣ�")
		    LuaSay(""..LuaQueryStr("name").."���㲻��С�������ˣ���Ȼ��������������...")
		    if(LuaFreeBag()>=2)then
		    AddMenuItem("@7ѡ���б�","","")
        	AddMenuItem("@3��1000ͭ��","YES3","")
	   		AddMenuItem("@3����","NO3","")
	   		else
	    	LuaSay("��ʾ�������ٱ���2������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    	end
		else
		    LuaSay("ѱ��ʦ�������ϵ�@3��ɢ���߻ش�¶@0����10����")
            UpdateTopSay("�ռ�10����ɢ�ͻش�¶������ȥҩ������������Ȼ����������")
		end
    elseif(LuaQueryTask("T103") == 99) then
    	LuaSay("ѱ��ʦ�������������Ұɣ�")
    end 
elseif(answer=="YES3") then
	if(LuaQueryTask("T103") == 2) then
 		 if(LuaItemCount("coin")>=1000) then
 		    LuaGive("coin",-1000,"T103")
 		    LuaSay("ѱ��ʦ����ʼ����ඣ�")
 		    DelItem("o_drug_hp1",10)
 		    DelItem("o_drug_mp1",10)
		    LuaSay("���аײ�һ�������ҩ��")
		    LuaSay("�����ҩ��������¯���ѽ�ҩ�ͻش�¶Ҳ����ȥ��")
		    LuaSay("�ƽ����ӣ��������У�")
		    LuaSay("������ã���Ϩ���ˡ�")
			LuaGive("o_food04",5,"T103")
			DelLog("103")
			LuaSetTask("T103",99)
			UpdateMenu()
    	  else
       		 LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ���@31000@0��")
        	 UpdateTopSay("�ռ�1000ͭ���������Ұ�")
		 end
	 end
elseif(answer=="NO3") then
	if(LuaQueryTask("T103") == 2) then
        LuaSay("ѱ��ʦ������СǮҲ��������̫������ˣ�")
    end

	                  --------------------------�޳�֮��-----------------------------
					   
elseif(answer=="T104")then
	if(LuaQueryStrTask("T104_Taskday")~=GetCurrentDay()) then
		LuaSetTask("T104",0)
		LuaSetTask("T104_Taskday",GetCurrentDay())
		LuaSetTask("jl_beishu",1)           --------����Ľ�������
		LuaSetTask("shuaxin_TB",500)        --------�˴�ˢ�����ĵ�ͭ��
		LuaSetTask("shuaxin_YB",1)          --------�˴�ˢ�����ĵ�YB��������
		LuaSetTask("times",0)               --------������ɸ�����Ĵ���
		LuaSetTask("shuaxin_CD_begin",0)    --------�����ͭ��ˢ��CD��0 
	end    
    if(LuaQueryTask("T104") == 0) then
		LuaSay(""..LuaQueryStr("name").."��Ϊʲô�㶪�����ӵĻ����ף�����Ҫ����ƨ���Ȼ�����ó����ԣ�")
		LuaSay("ѱ��ʦ���Һ��ӵ����ݶ������ˣ�ȥ�������˸������Ӹ����ԣ���������º����Ӻ�̫�󣬳��˲��ٿ�ͷ����������")
		LuaSay("ѱ��ʦ���Ӵ�֮����ÿ�γԶ�������Ҫ�Ž�ƨ������һ�²ųԡ���ȥ@4��Դ��@0������@3Ƚ��@0ŪЩ���������ɣ�")
		LuaSay("@1��ʾ@0����������뵱����ɣ�δ�ڵ�����ɵ�����һ�ν�����ʱ�Զ����ã�")
		LuaSetTask("T104",1)
		AddLog("�޳�֮��ظ���",104)
		UpdateMenu()
		UpdateTopSay("ȥȽ������Ū����������")
    elseif(LuaQueryTask("T104") == 1) then
        if(LuaItemCount("o_mission372")>=1) then		    
		    LuaSay("ѱ��ʦ���������Ի��@5"..LuaQueryTask("jl_beishu").."��@0��������ˢ�»�����ȡ��ÿ�����10���ж��⽱����")
		    if(LuaFreeBag()>=3)then	
			AddMenuItem("@7ˢ���б�","")
			AddMenuItem("@3�鿴��������","LOOK")
			AddMenuItem("@3ͭ��ˢ��","TBYES4")
			AddMenuItem("@3����ˢ��","DJYES4")			
			AddMenuItem("@3��ˢ���ˣ��콱��","NO4")
			else
	    	LuaSay("��ʾ�������ٱ���3������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    	end
        else
        	LuaSay("ѱ��ʦ��ȥ@3Ƚ��@0����Ū���������������±ض���л��@3Ƚ��@0����@4��Դ��@0,ÿ�����10���ж��⽱����")
        	LuaSay("ѱ��ʦ���������ǰˢ�½������������콱������@5"..LuaQueryTask("jl_beishu").."��@0��ÿ�����10���ж��⽱����")
        	if(LuaFreeBag()>=3)then	
			AddMenuItem("@7ˢ���б�","")
			AddMenuItem("@3�鿴��������","LOOK")
			AddMenuItem("@3ͭ��ˢ��","TBYES4")
			AddMenuItem("@3����ˢ��","DJYES4")			
            UpdateTopSay("ȥȽ������Ū����������")
            else
	    	LuaSay("��ʾ�������ٱ���3������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    	end
		end
    elseif(LuaQueryTask("T104") == 99) then
    	LuaSay("ѱ��ʦ�������������Ұɣ�")
    end
elseif(answer=="TBYES4")then           ---------ͭ��ˢ�£���ʱ������ 
	local a = LuaQueryTask("shuaxin_TB")         ---------��ȡshuaxin_TB��ֵ��a 
	if(LuaQueryTask("jl_beishu") == 7) then                   -----------��߱����ı����������ҵ��
	LuaSay("ѱ��ʦ����߱���Ϊ@57��@0!��ͱ�ˢ�ˣ�ˢ�˳Կ���")
	elseif(LuaItemCount("coin")>= a and LuaQueryTask("jl_beishu") < 7 and (GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin") >=1800) ) then           ----���һ���ж�ͭ��ˢ��CD
		LuaGive("coin",-1*a,"T104")
    
		local r = LuaRandom(100)                        --------���ˢ�±���
		if(r >=0 and r <35)  then
		LuaSetTask("jl_beishu",1)
		elseif(r >= 35 and r< 65)  then
		LuaSetTask("jl_beishu",2)
		elseif(r >= 65 and r< 80)  then
		LuaSetTask("jl_beishu",3)
		elseif(r>=80 and r < 90)   then
		LuaSetTask("jl_beishu",4)
		elseif(r >= 90 and r < 95) then
		LuaSetTask("jl_beishu",5)
		elseif(r >= 95 and r<99) then
		LuaSetTask("jl_beishu",6)
		elseif(r == 99)  then
		LuaSetTask("jl_beishu",7)
		end

        LuaSay("ѱ��ʦ�������Ľ�����������Ϊ@5"..LuaQueryTask("jl_beishu").."��@0!��һ��ͭ��ˢ����Ҫ����@5"..(a+500).."ͭ��@0��")
        LuaSetTask("shuaxin_CD_begin",GetCurrentTime())

		if(a >= 0 and a < 5000) then
		LuaSetTask("shuaxin_TB",a+500)
		else
 		LuaSay("ѱ��ʦ���ʿɶ�ֹ�ɣ����Ѿ�ˢ�ù����ˣ�")        ----------����TB
		end
	elseif(LuaItemCount("coin")< a ) then
	    LuaSay("ѱ��ʦ�������ϵ�ͭ�Ҳ�������һ��ˢ����Ҫ����@5"..a.."ͭ��@0��")
	    UpdateTopSay("�����ϵ�ͭ�Ҳ�����")
	elseif(GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin") <1800) then
		LuaSay("ѱ��ʦ��ͭ��ˢ��ʱ����δ�����㻹���ٵ�@5"..floor(30-(GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin"))/60 ).."����@0��")
	    UpdateTopSay("����������ɣ�")
	end
elseif(answer=="DJYES4")then           --------����ˢ�£���ʱ������ 
	local b = LuaQueryTask("shuaxin_YB")         ---------��ȡshuaxin_YB��ֵ��b 
	if(LuaQueryTask("jl_beishu") == 7) then                   -----------��߱����ı����������ҵ��
	LuaSay("ѱ��ʦ����߱���Ϊ@57��@0!��ͱ�ˢ�ˣ�ˢ�˳Կ���")
	elseif(LuaItemStatusNormalCount("o_gold1y") >= b and LuaQueryTask("jl_beishu") < 7) then
		DelItem("o_gold1y",b )
    
		local r = LuaRandom(100)                        --------���ˢ�±���
		if(r >=0 and r <35)  then
		LuaSetTask("jl_beishu",1)
		elseif(r >= 35 and r< 65)  then
		LuaSetTask("jl_beishu",2)
		elseif(r >= 65 and r< 80)  then
		LuaSetTask("jl_beishu",3)
		elseif(r>=80 and r < 90)   then
		LuaSetTask("jl_beishu",4)
		elseif(r >= 90 and r < 95) then
		LuaSetTask("jl_beishu",5)
		elseif(r >= 95 and r<99) then
		LuaSetTask("jl_beishu",6)
		elseif(r == 99)  then
		LuaSetTask("jl_beishu",7)
		end

        LuaSay("ѱ��ʦ�������Ľ�����������Ϊ@5"..LuaQueryTask("jl_beishu").."��@0!��һ�ε���ˢ����Ҫ����@5"..(b+1).."@0��@9ͨ��@0��")
		if(b >= 1 and b <999999)    then
		LuaSetTask("shuaxin_YB",b+1)
		elseif(b == 999999)      then
 		LuaSay("ѱ��ʦ���ʿɶ�ֹ�ɣ����Ѿ�ˢ�ù����ˣ�")        ----------����YB
		end          
	elseif(LuaItemStatusNormalCount("o_gold1y") < b) then
	    LuaSay("ѱ��ʦ��������@9ͨ��@0��������һ��ˢ����Ҫ����@5"..b.."@0��@9ͨ��@0��")
	    UpdateTopSay("�����ϵ�ͨ��������")
	end
elseif(answer=="LOOK")then
	local a = LuaQueryTask("shuaxin_TB")
	local b = LuaQueryTask("shuaxin_YB")
	LuaSay("ѱ��ʦ���������Ի��@5"..LuaQueryTask("jl_beishu").."��@0������ÿ�����10���ж��⽱����")
	LuaSay("ѱ��ʦ����һ��ͭ��ˢ����Ҫ����@5"..a.."ͭ��@0��")
	LuaSay("ѱ��ʦ����һ�ε���ˢ����Ҫ����@5"..b.."@0��@9ͨ��@0��")
	if(GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin") >=1800) then
	LuaSay("ѱ��ʦ����Ŀǰ������ͭ��ˢ��һ�Σ�")
	else
	LuaSay("ѱ��ʦ��ͭ��ˢ��ʱ����δ�����㻹���ٵ�@5"..floor(30-(GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin"))/60 ).."����@0��")
	end 
elseif(answer=="NO4")then
	if(LuaItemCount("o_mission372")>=1) then
		LuaSay("ѱ��ʦ����л�������ҵĳ�������пڸ��ˣ�")
   	 	DelItem("o_mission372",1)
		LuaGive("o_food02",2*LuaQueryTask("jl_beishu"))
		LuaGive("o_food02",1*LuaQueryTask("jl_beishu"))
		local t= LuaQueryTask("times") +1                     --------ÿ���һ�Σ�����+1
		if(t>=10)    then
		LuaSay("ѱ��ʦ��������Ѿ������@510��@0�����������ˣ���Ȼ�ҵĺ��ӾͳԳ����ˣ����Ǹ���Ķ��⽱����")
		LuaGive("o_food03",2*LuaQueryTask("jl_beishu"))
		LuaNotice(""..LuaQueryStr("name").."�����10���޳�֮�����񣬻�ö��⽱����")
		DelLog("104")
		LuaSetTask("T104",99)
		LuaSetTask("times",t)
		UpdateMenu()
		else
 		LuaSetTask("times",t)
 		LuaSay("ѱ��ʦ��������Ѿ������@5"..t.."��@0���������@5"..(10-t).."�Σ�@0")               -----------��ʾ�Ѿ�����˼��Σ���û��ɵĴ���
 		LuaSay("ѱ��ʦ�����ӻ�û�Թ����ͷ�����ȥ@4��Դ����Ƚ��@0����Ū�������������ң����±ض���л��")
 		LuaSetTask("T104",1)
 		UpdateMenu()
 		end
 	else
 		LuaSay("ѱ��ʦ��������û�����������ߣ�")
 	end
 	
 	----------------------���ݰ���--------------------------------- 
		
		
elseif(answer=="T105")then
	if(LuaQueryStrTask("T105_Taskday")~=GetCurrentDay()) then
		LuaSetTask("T105",0)
		LuaSetTask("T105_Taskday",GetCurrentDay())
	end
    if(LuaQueryTask("T105") == 0) then
		LuaSay("ѱ��ʦ������������һֻ���ᣬ�а��͡���һ���ȥ���£�·������ǿ�����������ƴ����ȣ�ҧ����ǿ����")
		LuaSay("ѱ��ʦ�����ǿ��������ȥ����������������ʧѪ�������������һ��֮������������������������")
		LuaSay("ѱ��ʦ���ҰѰ���������@4�����Ƕ���@0��ÿ��Ҫ������������ͣ��ͷ���������ȥ@4��Դ��@0��@3�ϴ峤@0����Ū@3������@0����")
		LuaSay("@1��ʾ@0����������뵱����ɣ�δ�ڵ�����ɵ�����һ�ν�����ʱ�Զ����ã�")
		LuaSetTask("T105",1)
		AddLog("���ݰ��͡�ÿ�ա�",105)
		UpdateMenu()
		UpdateTopSay("ȥ��Դ���ϴ峤����Ū��������")
    elseif(LuaQueryTask("T105") == 1) then
        if(LuaItemCount("o_mission373")>=1) then
            LuaSay("ѱ��ʦ����л������������Ϊ���������鲻����ȥ���ݰ��ͣ������ͷ�������һ�ˣ�")
            LuaSay("ѱ��ʦ�����͵�����֮������@4�����Ƕ���@0��")
            LuaSay("@1��ʾ@0����������뵱����ɣ�δ�ڵ�����ɵ�����һ�ν�����ʱ�Զ����ã�")
            LuaSetTask("T105",2)
			UpdateMenu()
            UpdateTopSay("���͵�����֮�����ڽ����Ƕ���")
  	    else
            LuaSay("ѱ��ʦ��ȥ@3�ϴ峤@0����Ū����������������@4��Դ��@0")
            LuaSay("@1��ʾ@0����������뵱����ɣ�δ�ڵ�����ɵ�����һ�ν�����ʱ�Զ����ã�")
            UpdateTopSay("ȥѱ��ʦ����Ū��������")
		end
    elseif(LuaQueryTask("T105") == 2) then
        LuaSay("ѱ��ʦ�����͵�����֮������@4�����Ƕ���@0����������ȥ�����°ɣ�")
        LuaSay("@1��ʾ@0����������뵱����ɣ�δ�ڵ�����ɵ�����һ�ν�����ʱ�Զ����ã�")
        UpdateTopSay("���͵�����֮�����ڽ����Ƕ���")
    elseif(LuaQueryTask("T105") == 3) then
        LuaSay("ѱ��ʦ�����������ˣ�����ʱ�䣬��һ������ȥ���ݰ��ͣ�")
        if(LuaFreeBag()>=3)then	
  		AddMenuItem("@7�������","")
		AddMenuItem("@3��ȡ����","T105jl")
		AddMenuItem("@3��ȡ2������","T105jl2")
		AddMenuItem("@3��ȡ3������","T105jl3")
		AddMenuItem("@3��ȡ5������","T105jl4")
		AddMenuItem("@3��ȡ7������","T105jl5")
		else
	    LuaSay("��ʾ�������ٱ���3������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    end
    elseif(LuaQueryTask("T105") == 99) then
    	LuaSay("ѱ��ʦ�������������Ұɣ�")
    end
elseif(answer=="T105jl")then
		if(LuaQueryTask("T105")==3) then
		LuaGive("o_food03",3)
		LuaGive("o_food02",3)
		DelLog("105")
		LuaSetTask("T105",99)
		UpdateMenu()
		end
elseif(answer=="T105jl2")then
		if(LuaQueryTask("T105")==3) then
			if(LuaItemStatusNormalCount("o_gold2y")>=1) then
			DelItem("o_gold2y",1)
			LuaGive("o_food03",6)
			LuaGive("o_food02",6)
			DelLog("105")
			LuaSetTask("T105",99)
			UpdateMenu()
			else
			LuaSay("ѱ��ʦ����Ҫ1��@8��Ʊ@0")
			end
		end
elseif(answer=="T105jl3")then
		if(LuaQueryTask("T105")==3) then
			if(LuaItemStatusNormalCount("o_gold2y")>=2) then
			DelItem("o_gold2y",2)
			LuaGive("o_food03",9)
			LuaGive("o_food02",9)
			DelLog("105")
			LuaSetTask("T105",99)
			UpdateMenu()
			else
			LuaSay("ѱ��ʦ����Ҫ2��@8��Ʊ@0")
			end
		end
elseif(answer=="T105jl4")then
		if(LuaQueryTask("T105")==3) then
			if(LuaItemStatusNormalCount("o_gold2y")>=3) then
			DelItem("o_gold2y",3)
			LuaGive("o_food03",15)
			LuaGive("o_food02",15)
			DelLog("105")
			LuaSetTask("T105",99)
			UpdateMenu()
			else
			LuaSay("ѱ��ʦ����Ҫ3��@8��Ʊ@0")
			end
		end
elseif(answer=="T105jl5")then
		if(LuaQueryTask("T105")==3) then
			if(LuaItemStatusNormalCount("o_gold2y")>=4) then
			DelItem("o_gold2y",4)
			LuaGive("o_food03",21)
			LuaGive("o_food02",21)
			DelLog("105")
			LuaSetTask("T105",99)
			UpdateMenu()
			else
			LuaSay("ѱ��ʦ����Ҫ4��@8��Ʊ@0")
			end
		end 


-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>������
elseif(answer=="T362")then
	if(LuaQueryTask("T362")==1)then
		LuaSay(""..LuaQueryStr("name").."�����嶷ɽ����ʦ��ͽ���У������ʦ����̽���ѱ������")
		LuaSay("ѱ��ʦ�����ߣ�����һҲ������Ǿ���")
		LuaSay("ѱ��ʦ��������������񡢻�еõ������̳���Ҳ���򵽡�")
		LuaSay("ѱ��ʦ��װ���ϳ���֮�������������õ��ӳɣ�����ÿ����������������������ĳ̶ȡ�")
		LuaSay("ѱ��ʦ��һֻ����ĳ�����ս���в���ȱ�ٵĻ�飬������������Խ��ж�@1����������������@0��������")
		LuaSay("ѱ��ʦ���Ҿ͸�������ô���ˣ�ѱ����һ���Ҳ��һ��������")
		AddLog("�����顾���顿",362)
		LuaSetTask("T362",2)
		UpdateMenu()
		AddMenuItem("@7�������嶷ɽ��ʦ��ͽ","")
		AddMenuItem("ȷ�ϴ������嶷ɽ��ʦ��ͽ","Tcs_tsjt")
	elseif(LuaQueryTask("T362")==2)then
		LuaSay("ѱ��ʦ��ȥ�ظ�@2�嶷ɽ@0��@3��ʦ��ͽ@0")
		AddMenuItem("@7�������嶷ɽ��ʦ��ͽ","")
		AddMenuItem("ȷ�ϴ������嶷ɽ��ʦ��ͽ","Tcs_tsjt")
	end
elseif(answer=="Tcs_tsjt")then
	ChangeMap("lu_wds",422,304)


elseif(answer=="hsxg") then
	AddMenuItem("@7�������","")
	AddMenuItem("@3��������˵��","Thssm")
	AddMenuItem("@3����ʹ��˵��","Tsysm")
	AddMenuItem("@3��ʱ��������һ����ﵰ","Thzqd")
	AddMenuItem("@3�������ﵰ","Tbyzqd")
	if(LuaQueryTask("Tfhzqd")==0)  then
		AddMenuItem("@3�������ﵰ","Tfhzqd")
	end
	if(LuaQueryTask("Tfhzqd")==1)  then
		AddMenuItem("@2��ȡ��������","Tfhzqd")
	end
 	AddMenuItem("@3����ǿ��","Tzqsj")
------------------------------------����ʹ��˵��
elseif(answer=="Tsysm") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("ʹ��˵�������@2�˵����ٵ��������@0@5�򿪱���@0���ҵ���Ҫʹ�õ��������˵�@2�ٵ�װ����@0@5ʹ��@0����װ������������ˡ�")
		LuaSay("����˵�������@2������@0���ҵ�@2����ͼ��@0����������ٵ����ݼ���������һ����ݼ�С�񣬾��ܽ����ݼ����óɹ��ˣ�����ÿ�ݼ��Ϳ��Գ��������ˡ�")
		LuaSay("@3��������@0��ֻҪ����@2�����@0�е�@3��������@0���ܣ��Լ�@2���úÿ�ݼ�@0�������Ӧ��ݼ�����ʹ���������м�����Ŷ@!��")
	else
		LuaSay("ʹ��˵����@2ȷ����+3��@0@5�򿪱���@0���ҵ���Ҫʹ�õ����@2ȷ����+1��@0@5ʹ��@0����װ������������ˡ�")
		LuaSay("����˵������@29�ż�@0@4�л������@0���ҵ�@28��@0����@28����Ĭ�ϼ���ͼ��@0������@28��@0���ܳ��������ˡ�")
		LuaSay("@3��������@0��ֻҪ����@2�����@0�е�@3��������@0���ܣ��Լ�@2���úÿ�ݼ�@0������Ӧ��ݼ�����ʹ���������м�����Ŷ@!��")
	end
------------------------------------��������˵��
elseif(answer=="Thssm") then
	LuaSay("���ﹲ��@38��@0��@2�ƺ�@0��@2����@0��@2��Ӱ@0��@2����@0��@2�ϵ�@0��@2����@0��@2ѩ��@0��@2����@0.")
	LuaSay("ÿ�����ﶼ��@2��+0������+8��@0@79������@0������Խ�ߣ������������Ծ�Խ�ã��������︽�����������ǲ���ͬ�ġ�")
	LuaSay("ֵ��ע����ǣ����������У��������ﶼ��@3ʹ�ð�@0��@2��ûװ��ǰ�������͡���̯@0������װ����Ͳ������͡���̯��")

------------------------------------����ǿ��
elseif(answer=="Tzqsj") then	
	AddMenuItem("@7��������","")
	if(LuaItemCount("e_horse010")>=1 or LuaItemCount("e_horse011")>=1 or LuaItemCount("e_horse012")>=1 or  LuaItemCount("e_horse013")>=1 or  LuaItemCount("e_horse014")>=1 or LuaItemCount("e_horse015")>=1 or  LuaItemCount("e_horse016")>=1 or  LuaItemCount("e_horse017")>=1 or  LuaItemCount("e_horse018")>=1) then
		AddMenuItem("@3�ƺ�ǿ��","1")
	end
	if(LuaItemCount("e_horse020")>=1 or LuaItemCount("e_horse021")>=1 or LuaItemCount("e_horse022")>=1 or  LuaItemCount("e_horse023")>=1 or  LuaItemCount("e_horse024")>=1 or LuaItemCount("e_horse025")>=1 or  LuaItemCount("e_horse026")>=1 or  LuaItemCount("e_horse027")>=1 or  LuaItemCount("e_horse028")>=1) then
		AddMenuItem("@3����ǿ��","2")
	end
	if(LuaItemCount("e_horse030")>=1 or LuaItemCount("e_horse031")>=1 or LuaItemCount("e_horse032")>=1 or  LuaItemCount("e_horse033")>=1 or  LuaItemCount("e_horse034")>=1 or LuaItemCount("e_horse035")>=1 or  LuaItemCount("e_horse036")>=1 or  LuaItemCount("e_horse037")>=1 or  LuaItemCount("e_horse038")>=1) then
		AddMenuItem("@3��Ӱǿ��","3")
	end
	if(LuaItemCount("e_horse040")>=1 or LuaItemCount("e_horse041")>=1 or LuaItemCount("e_horse042")>=1 or  LuaItemCount("e_horse043")>=1 or  LuaItemCount("e_horse044")>=1  or LuaItemCount("e_horse045")>=1 or  LuaItemCount("e_horse046")>=1 or  LuaItemCount("e_horse047")>=1 or  LuaItemCount("e_horse048")>=1) then
		AddMenuItem("@3����ǿ��","4")
	end
	if(LuaItemCount("e_horse050")>=1 or LuaItemCount("e_horse051")>=1 or LuaItemCount("e_horse052")>=1 or  LuaItemCount("e_horse053")>=1 or  LuaItemCount("e_horse054")>=1  or LuaItemCount("e_horse055")>=1 or  LuaItemCount("e_horse056")>=1 or  LuaItemCount("e_horse057")>=1 or  LuaItemCount("e_horse058")>=1) then
		AddMenuItem("@3�ϵ�ǿ��","5")
	end
	if(LuaItemCount("e_horse060")>=1 or LuaItemCount("e_horse061")>=1 or LuaItemCount("e_horse062")>=1 or  LuaItemCount("e_horse063")>=1 or  LuaItemCount("e_horse064")>=1  or LuaItemCount("e_horse065")>=1 or  LuaItemCount("e_horse066")>=1 or  LuaItemCount("e_horse067")>=1 or  LuaItemCount("e_horse068")>=1) then
		AddMenuItem("@3����ǿ��","6")
	end
	if(LuaItemCount("e_horse070")>=1 or LuaItemCount("e_horse071")>=1 or LuaItemCount("e_horse072")>=1 or  LuaItemCount("e_horse073")>=1 or  LuaItemCount("e_horse074")>=1  or LuaItemCount("e_horse075")>=1 or  LuaItemCount("e_horse076")>=1 or  LuaItemCount("e_horse077")>=1 or  LuaItemCount("e_horse078")>=1) then
		AddMenuItem("@3ѩ��ǿ��","7")
	end
	if(LuaItemCount("e_horse080")>=1 or LuaItemCount("e_horse081")>=1 or LuaItemCount("e_horse082")>=1 or  LuaItemCount("e_horse083")>=1 or  LuaItemCount("e_horse084")>=1  or LuaItemCount("e_horse085")>=1 or  LuaItemCount("e_horse086")>=1 or  LuaItemCount("e_horse087")>=1 or  LuaItemCount("e_horse088")>=1) then
		AddMenuItem("@3����ǿ��","8")
	end
	if(LuaItemCount("e_horse010")<1 and LuaItemCount("e_horse011")<1 and LuaItemCount("e_horse012")<1 and  LuaItemCount("e_horse013")<1 and  LuaItemCount("e_horse014")<1 and LuaItemCount("e_horse015")<1 and  LuaItemCount("e_horse016")<1 and  LuaItemCount("e_horse017")<1 and  LuaItemCount("e_horse018")<1 and
		LuaItemCount("e_horse020")<1 and LuaItemCount("e_horse021")<1 and LuaItemCount("e_horse022")<1 and  LuaItemCount("e_horse023")<1 and  LuaItemCount("e_horse024")<1 and LuaItemCount("e_horse025")<1 and  LuaItemCount("e_horse026")<1 and  LuaItemCount("e_horse027")<1 and  LuaItemCount("e_horse028")<1 and
		LuaItemCount("e_horse030")<1 and LuaItemCount("e_horse031")<1 and LuaItemCount("e_horse032")<1 and  LuaItemCount("e_horse033")<1 and  LuaItemCount("e_horse034")<1 and LuaItemCount("e_horse035")<1 and  LuaItemCount("e_horse036")<1 and  LuaItemCount("e_horse037")<1 and  LuaItemCount("e_horse038")<1 and
		LuaItemCount("e_horse040")<1 and LuaItemCount("e_horse041")<1 and LuaItemCount("e_horse042")<1 and  LuaItemCount("e_horse043")<1 and  LuaItemCount("e_horse044")<1  and LuaItemCount("e_horse045")<1 and  LuaItemCount("e_horse046")<1 and  LuaItemCount("e_horse047")<1 and  LuaItemCount("e_horse048")<1 and
		LuaItemCount("e_horse050")<1 and LuaItemCount("e_horse051")<1 and LuaItemCount("e_horse052")<1 and  LuaItemCount("e_horse053")<1 and  LuaItemCount("e_horse054")<1  and LuaItemCount("e_horse055")<1 and  LuaItemCount("e_horse056")<1 and  LuaItemCount("e_horse057")<1 and  LuaItemCount("e_horse058")<1 and
		LuaItemCount("e_horse060")<1 and LuaItemCount("e_horse061")<1 and LuaItemCount("e_horse062")<1 and  LuaItemCount("e_horse063")<1 and  LuaItemCount("e_horse064")<1  and LuaItemCount("e_horse065")<1 and  LuaItemCount("e_horse066")<1 and  LuaItemCount("e_horse067")<1 and  LuaItemCount("e_horse068")<1 and
		LuaItemCount("e_horse070")<1 and LuaItemCount("e_horse071")<1 and LuaItemCount("e_horse072")<1 and  LuaItemCount("e_horse073")<1 and  LuaItemCount("e_horse074")<1  and LuaItemCount("e_horse075")<1 and  LuaItemCount("e_horse076")<1 and  LuaItemCount("e_horse077")<1 and  LuaItemCount("e_horse078")<1 and
		LuaItemCount("e_horse080")<1 and LuaItemCount("e_horse081")<1 and LuaItemCount("e_horse082")<1 and  LuaItemCount("e_horse083")<1 and  LuaItemCount("e_horse084")<1  and LuaItemCount("e_horse085")<1 and  LuaItemCount("e_horse086")<1 and  LuaItemCount("e_horse087")<1 and  LuaItemCount("e_horse088")<1 and LuaItemCount("e_horse000")<=1) then
		LuaSay("ѱ��ʦ���㻹@3û�л������@0����@3�������ﲻ������@0��")
	end
elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4" or answer=="5" or answer=="6" or answer=="7" or answer=="8") then
	n=answer+0--------��������

	AddMenuItem("@7ǿ������","")
	if(LuaItemCount("e_horse0"..n..0)>=1) then
		AddMenuItem("@3��+0��ǿ������+1��",answer..1)
	end
	if(LuaItemCount("e_horse0"..n..1)>=1) then
		AddMenuItem("@3��+1��ǿ������+2��",answer..2)
	end
	if(LuaItemCount("e_horse0"..n..2)>=1) then
		AddMenuItem("@3��+2��ǿ������+3��",answer..3)
	end
	if(LuaItemCount("e_horse0"..n..3)>=1) then
		AddMenuItem("@3��+3��ǿ������+4��",answer..4)
	end
	if(LuaItemCount("e_horse0"..n..4)>=1) then
		AddMenuItem("@3��+4��ǿ������+5��",answer..5)
	end
	if(LuaItemCount("e_horse0"..n..5)>=1) then
		AddMenuItem("@3��+5��ǿ������+6��",answer..6)
	end
	if(LuaItemCount("e_horse0"..n..6)>=1) then
		AddMenuItem("@3��+6��ǿ������+7��",answer..7)
	end
	if(LuaItemCount("e_horse0"..n..7)>=1) then
		AddMenuItem("@3��+7��ǿ������+8��",answer..8)
	end
	if(LuaItemCount("e_horse0"..n..8)>=1) then
		AddMenuItem("@3��+8��ǿ������+9��",answer..9)
	end
elseif(answer=="11" or answer=="21" or answer=="31" or answer=="41" or answer=="51" or answer=="61" or answer=="71" or answer=="81"
	    or answer=="12" or answer=="22" or answer=="32" or answer=="42" or answer=="52" or answer=="62" or answer=="72" or answer=="82"
	    or answer=="13" or answer=="23" or answer=="33" or answer=="43" or answer=="53" or answer=="63" or answer=="73" or answer=="83"
	    or answer=="14" or answer=="24" or answer=="34" or answer=="44" or answer=="54" or answer=="64" or answer=="74" or answer=="84"
	    or answer=="15" or answer=="25" or answer=="35" or answer=="45" or answer=="55" or answer=="65" or answer=="75" or answer=="85"
	    or answer=="16" or answer=="26" or answer=="36" or answer=="46" or answer=="56" or answer=="66" or answer=="76" or answer=="86"
	    or answer=="17" or answer=="27" or answer=="37" or answer=="47" or answer=="57" or answer=="67" or answer=="77" or answer=="87"
	    or answer=="18" or answer=="28" or answer=="38" or answer=="48" or answer=="58" or answer=="68" or answer=="78" or answer=="88"
	    or answer=="19" or answer=="29" or answer=="39" or answer=="49" or answer=="59" or answer=="69" or answer=="79" or answer=="89")then

	t=answer+0
	LuaSetTemp("zqzl",floor(t/10))	--��������
	LuaSetTemp("zqjj",t-LuaQueryTemp("zqzl")*10)	--ǿ����+������
	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	--LuaSay("t��ֵΪ��"..t.."")
	--LuaSay("zqjj��ֵΪ��"..zqjj.."")
	--LuaSay("zqzl��ֵΪ��"..zqzl.."")
	AddMenuItem("@7ǿ��ϸ��","")
	AddMenuItem("@3ǿ����������˵��","sjsm")
	AddMenuItem("@3��һ����������","zqsx")
	if(zqjj<=2) then
		AddMenuItem("@3ǿ��","glv10")
	elseif(zqjj>=3) then
		AddMenuItem("@3ǿ���ɹ���ѡ��","sj")
	end

elseif(answer=="zqsx") then

	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	if(zqzl<=5) then
		if(zqzl==1 or zqzl==2 or zqzl==5) then
			LuaSay("ѱ��ʦ��"..tS[zqzl][2].."��+"..zqjj.."������@0��@7�ٶ�@0:@2+"..tCost3[zqjj][1].."%@0  @7Ѫ����@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][4].."@0")
		elseif(zqzl==3 or zqzl==4) then
			if(zqjj==1) then
				LuaSay("ѱ��ʦ��"..tS[zqzl][2].."��+"..zqjj.."������@0��@7�ٶ�@0:@2+"..tCost3[zqjj][1].."%@0  @7Ѫ����@0:@2+"..tCost3[zqjj][3].."@0")
			else
				LuaSay("ѱ��ʦ��"..tS[zqzl][2].."��+"..zqjj.."������@0��@7�ٶ�@0:@2+"..tCost3[zqjj][1].."%@0  @7Ѫ����@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][5].."@0")
			end
		end
	elseif(zqzl>5) then
		if(zqjj<=3) then
			LuaSay("ѱ��ʦ��"..tS[zqzl][2].."��+"..zqjj.."������@0��@7�ٶ�@0:@2+"..tCost3[zqjj][2].."%@0  @7Ѫ����@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][4].."@0")
		elseif(zqjj>3) then
			if(zqzl==6)then
				LuaSay("ѱ��ʦ��"..tS[zqzl][2].."��+"..zqjj.."������@0��@7�ٶ�@0:@2+"..tCost3[zqjj][2].."%@0  @7Ѫ����@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][4].."@0  @7"..tS[zqzl][4].."@0:@2+"..tCost3[zqjj][7].."@0")
			elseif(zqzl==7 or zqzl==8) then
				LuaSay("ѱ��ʦ��"..tS[zqzl][2].."��+"..zqjj.."������@0��@7�ٶ�@0:@2+"..tCost3[zqjj][2].."%@0  @7Ѫ����@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][4].."@0  @7"..tS[zqzl][4].."@0:@2+"..tCost3[zqjj][6].."@0")
			end
		end
	end
	AddMenuItem("@7�Ƿ񷵻��ϼ��˵�","")
	AddMenuItem("@3����","YES")
	AddMenuItem("@3������","NO")

elseif(answer=="sjsm")then
	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	--LuaSay("t��ֵΪ��"..t.."")
	--LuaSay("zqjj��ֵΪ��"..zqjj.."")
	--LuaSay("zqzl��ֵΪ��"..zqzl.."")
	if(zqjj<=2) then
		LuaSay("ѱ��ʦ��@3��+"..(zqjj-1).."��ǿ������+"..zqjj.."��@0��Ҫ"..tCost2[zqjj][1]..""..tCost2[zqjj][5].."��@0��")
	elseif(zqjj>2) then
		LuaSay("ѱ��ʦ��@3��+"..(zqjj-1).."��ǿ������+"..zqjj.."��@0����������ѡ��һ����@3����ǿ���ɹ�@0���ɹ��ʲ��꣩��һ����@3100%ǿ���ɹ�@0��")
		if(zqjj<=5) then
			LuaSay("ѱ��ʦ��@3����ǿ��@0��Ҫ��"..tCost1[zqjj][1]..""..tCost1[zqjj][5].."����")
		else
			LuaSay("ѱ��ʦ��@3����ǿ��@0��Ҫ��"..tCost1[zqjj][1]..""..tCost1[zqjj][5].."��@0��"..tCost1[zqjj][2]..""..tCost1[zqjj][6].."��@0��")
		end
		LuaSay("ѱ��ʦ��@3100%ǿ���ɹ�@0��Ҫ��"..tCost2[zqjj][1]..""..tCost2[zqjj][5].."��@0��"..tCost2[zqjj][2]..""..tCost2[zqjj][6].."��@0��")		
	end
	AddMenuItem("@7�Ƿ񷵻��ϼ��˵�","")
	AddMenuItem("@3����","YES")
	AddMenuItem("@3������","NO")

elseif(answer=="YES")then
	DoTalk(t)

elseif(answer=="sj") then
	AddMenuItem("@7ǿ���ɹ���","")
	AddMenuItem("@3����ǿ���ɹ�","glv3")
	AddMenuItem("@3100%ǿ���ɹ�","glv10")

elseif(answer=="glv3")then
	

	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	if(EquipInfo(7)=="")then
		if( LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )<1 ) then
			LuaSay("ѱ��ʦ��ȱ��"..tS[zqzl][2].."��+"..(zqjj-1).."��һ��@0��ǿ��ʧ�ܣ�")
		elseif(zqjj<=5) then
			if(LuaItemStatusNormalCount( tCost1[zqjj][3] )<tCost1[zqjj][5]) then
				LuaSay("ѱ��ʦ��@3���ϲ���@0��ǿ��ʧ�ܣ�")
			elseif(LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )>=1 and  LuaItemStatusNormalCount( tCost1[zqjj][3] )>=tCost1[zqjj][5]) then
				local r=LuaRandom(100)
				if(r<=35) then
					LuaSay("ѱ��ʦ����ϲ�㣬ǿ���ɹ���")
					DelItem("e_horse0"..zqzl..(zqjj-1),1)
					DelItem(tCost1[zqjj][3],tCost1[zqjj][5])
					LuaGive("e_horse0"..zqzl..zqjj,1,"Tzqsj")
				else
					LuaSay("ѱ��ʦ��������Ʒ����ô�ߵĸ��ʶ���ʧ�ܣ�")
					DelItem(tCost1[zqjj][3],tCost1[zqjj][5])
				end
			end
		elseif(zqjj>=6) then
			if(LuaItemStatusNormalCount( tCost1[zqjj][3] )<tCost1[zqjj][5] or LuaItemStatusNormalCount( tCost1[zqjj][4] )<tCost1[zqjj][6] ) then
				LuaSay("ѱ��ʦ��@3���ϲ���@0��ǿ��ʧ�ܣ�")
			elseif(LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )>=1 and  LuaItemStatusNormalCount( tCost1[zqjj][3] )>=tCost1[zqjj][5] and LuaItemStatusNormalCount( tCost1[zqjj][4] )>=tCost1[zqjj][6]) then
				local r=LuaRandom(100)
				if(r<=25) then
					LuaSay("ѱ��ʦ����ϲ�㣬ǿ���ɹ���")
					DelItem("e_horse0"..zqzl..(zqjj-1),1)
					DelItem(tCost1[zqjj][3],tCost1[zqjj][5])
					DelItem(tCost1[zqjj][4],tCost1[zqjj][6])
					LuaGive("e_horse0"..zqzl..zqjj,1,"Tzqsj")
				else
					LuaSay("ѱ��ʦ��������Ʒ����ô�ߵĸ��ʶ���ʧ�ܣ�")
					DelItem(tCost1[zqjj][3],tCost1[zqjj][5])
					DelItem(tCost1[zqjj][4],tCost1[zqjj][6])
				end
			end
		end
	else
		LuaSay("ѱ��ʦ���뽫װ����������λ������ж�ز���ǿ�����")
	end
	
	
elseif(answer=="glv10")then
	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	if(EquipInfo(7)=="")then
		if( LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )<1 ) then
			LuaSay("ѱ��ʦ��ȱ��"..tS[zqzl][2].."��+"..(zqjj-1).."��һ��@0��ǿ��ʧ�ܣ�")
		elseif(zqjj<=2) then
			if(LuaItemStatusNormalCount( tCost2[zqjj][3] )<tCost2[zqjj][5]) then
				LuaSay("ѱ��ʦ��@3���ϲ���@0��ǿ��ʧ�ܣ�")
			elseif(LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )>=1 and  LuaItemStatusNormalCount( tCost2[zqjj][3] )>=tCost2[zqjj][5]) then
				LuaSay("ѱ��ʦ����ϲ�㣬ǿ���ɹ���")
				DelItem("e_horse0"..zqzl..(zqjj-1),1)
				DelItem(tCost2[zqjj][3],tCost2[zqjj][5])
				LuaGive("e_horse0"..zqzl..zqjj,1,"Tzqsj")
			end	
		elseif(zqjj>=3) then
			if(LuaItemStatusNormalCount( tCost2[zqjj][3] )<tCost2[zqjj][5] or LuaItemStatusNormalCount( tCost2[zqjj][4] )<tCost2[zqjj][6] ) then
				LuaSay("ѱ��ʦ��@3���ϲ���@0��ǿ��ʧ�ܣ�")
			elseif(LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )>=1 and  LuaItemStatusNormalCount( tCost2[zqjj][3] )>=tCost2[zqjj][5] and LuaItemStatusNormalCount( tCost2[zqjj][4] )>=tCost2[zqjj][6]) then
				LuaSay("ѱ��ʦ����ϲ�㣬ǿ���ɹ���")
				DelItem("e_horse0"..zqzl..(zqjj-1),1)
				DelItem(tCost2[zqjj][3],tCost2[zqjj][5])
				DelItem(tCost2[zqjj][4],tCost2[zqjj][6])
				LuaGive("e_horse0"..zqzl..zqjj,1,"Tzqsj")
			end	
		end
	else
		LuaSay("ѱ��ʦ���뽫װ����������λ������ж�ز���ǿ�����")
	end


elseif(answer=="Tfhzqd") then
	if(LuaQueryTask("Tfhzqd")==0) then
		if(LuaItemCount("o_mission415")>=1) then
			LuaSay("ѱ��ʦ������������Ҫ@22Сʱ@0�����@3���ﵰ@0���ң�@22Сʱ��@0������ȡ������������ɡ�")
			DelItem("o_mission415",1)
			time=GetCurrentTime()
			LuaSetTask("fhzqd_time",time)
			LuaSetTask("Tfhzqd",1)
			UpdateNPCMenu("xunshoushi")
		else
			LuaSay("ѱ��ʦ���㻹û��@3���ﵰ@0���Ƿ�@2�����ϼ��˵�@0����ѡ��")
			AddMenuItem("@7�Ƿ񷵻�","")
			AddMenuItem("@3����@0","YES_tz")
			AddMenuItem("������","NO")
			UpdateMenu()
		end
	elseif(LuaQueryTask("Tfhzqd")==1) then		
		local shijiancha=(GetCurrentTime() - LuaQueryTask("fhzqd_time"))-----�����Ƿ���Сʱ
		-----LuaSay("����ʱ�䣺"..shijiancha..",")
		if(shijiancha>=7200) then
			if(LuaFreeBag()>=1)then
				local tzqlb={
					{"�ƺ�"},
					{"����"},
					{"��Ӱ"},
					{"����"},
					{"�ϵ�"},
					}
				local sh={
					{"��ϲ���ɹ��������"},
					{"�Ҿ�˵��ҷ���������������ڲ�ͬ��"},
					{"����С�һ�̫��Ƥ�ˣ������ߣ�ǿ����һ���Ǹ�ǿ�����"},
					{"�����Ҽ�������˳�����ǿ������԰�����˳��"},
					{"��û�������ôƯ���ˣ�ǿ�����񲻸��ÿ���"},
					{"������һֻţB�������ˣ�"},
					{"��ѽѽ���Ϸ����ڱ���һ���ˣ�������������Ҿ�˵��ҳ���û����ģ�"},
					}
				local n=LuaRandom(100)------����ܼ���
				local r=LuaRandom(5)+1 ------ǰ5�ֵ�������
				--------90/100 ��������  5/100 ����  4/100 ѩ��  1/100 ����
				if(n<90) then--- ��������   50 30 10  (50/90)/5 -->+0  (30/90)/5 -->+1 (30/90)/5 -->+2
					m=LuaRandom(5)+1-------˵������ 1 2 3 4 5
					LuaSay("ѱ��ʦ��"..sh[m][1].."")
					if(n<50) then
						LuaGive("e_horse0"..r..0,1,"Tfhzqd")  -----����+0
					elseif(n<80) then
						LuaGive("e_horse0"..r..1,1,"Tfhzqd")  -----����+1
					elseif(n<90) then
						LuaGive("e_horse0"..r..2,1,"Tfhzqd")  -----����+2
						LuaNotice("��ϲ���@3"..LuaQueryStr("name").."@0��Ʒ�󱬷�����@3ѱ��ʦ@0��@3�������ﵰ@0���@3"..tzqlb[r][1].."��+2��@0���")
					end
				elseif(n<95) then ------����  
					LuaSay("ѱ��ʦ��"..sh[6][1].."")
					a=LuaRandom(100) --(5/100)*(60/100)-->+0  (5/100)*(30/100)-->+1  (5/100)*(10/100)-->+2   
					if(a<60) then
						LuaGive("e_horse060",1,"Tfhzqd")  -----����+0
					elseif(a<90) then
						LuaGive("e_horse061",1,"Tfhzqd")  -----����+1
					elseif(a<99) then
						LuaGive("e_horse062",1,"Tfhzqd")  -----����+2
						LuaNotice("��ϲ���@3"..LuaQueryStr("name").."@0��Ʒ�󱬷�����@3ѱ��ʦ@0��@3�������ﵰ@0���@3���ơ�+2��@0���")
					end
				elseif(n<99) then ------ѩ��  
					LuaSay("ѱ��ʦ��"..sh[6][1].."")
					b=LuaRandom(100) --(4/100)*(60/100)-->+0  (4/100)*(30/100)-->+1  (4/100)*(10/100)-->+2
					if(b<60) then
						LuaGive("e_horse070",1,"Tfhzqd")  -----ѩ��+0
					elseif(b<90) then
						LuaGive("e_horse071",1,"Tfhzqd")  -----ѩ��+1
					elseif(b<99) then
						LuaGive("e_horse072",1,"Tfhzqd")  -----ѩ��+2
						LuaNotice("��ϲ���@3"..LuaQueryStr("name").."@0��Ʒ�󱬷�����@3ѱ��ʦ@0��@3�������ﵰ@0���@3ѩ��+2��@0���")
					end
				elseif(n<100) then ------����  
					LuaSay("ѱ��ʦ��"..sh[7][1].."")
					c=LuaRandom(100) --(1/100)*(60/100)-->+0  (1/100)*(30/100)-->+1  (1/100)*(10/100)-->+2
					if(c<60) then
						LuaGive("e_horse080",1,"Tfhzqd")  -----����+0
						LuaNotice("��ϲ���@3"..LuaQueryStr("name").."@0��Ʒ�󱬷�����@3ѱ��ʦ@0��@3�������ﵰ@0���@3���硾+0��@0���")
					elseif(c<90) then
						LuaGive("e_horse081",1,"Tfhzqd")  -----����+1
						LuaNotice("��ϲ���@3"..LuaQueryStr("name").."@0��Ʒ�󱬷�����@3ѱ��ʦ@0��@3�������ﵰ@0���@3���硾+1��@0���")
					elseif(c<99) then
						LuaGive("e_horse082",1,"Tfhzqd")  -----����+2
						LuaNotice("��ϲ���@3"..LuaQueryStr("name").."@0��Ʒ�󱬷�����@3ѱ��ʦ@0��@3�������ﵰ@0���@3���硾+2��@0���")
					end
				end
				LuaDelTask("Tfhzqd")-------ɾ�����ݣ����������ʱ���ݣ� 
				UpdateNPCMenu("xunshoushi")
			else
				LuaSay("ѱ��ʦ����ı����Ѿ�@4����@0�������±��������ɡ�")
			end
		else
			local h=floor(shijiancha/3600)
			local q=floor((shijiancha-h*3600)/60)
			local s=shijiancha-h*3600-q*60
			LuaSay("ѱ��ʦ������������Ҫ���ĵģ�����@2�Ź���"..h.."Сʱ"..q.."����"..s.."��@0������@22Сʱ@0�����ɣ������ó���ֻ���˷���һ�ŵ���")
		end
	end

elseif(answer=="Tbyzqd") then
	local a=LuaQueryTask("by_cs")+1 ------����ڼ������ﵰ 1 2 3 4 5  
	local b=a*3000-------��Ҫͭ�� 3000 2*3000 3*3000
	local c=a+14-------------��Ҫ�ȼ�  15 16 17 18
	LuaSay("ѱ��ʦ�����ǲ��Ƕ�������ӵ�е����ﲻ���⣿")
	LuaSay("ѱ��ʦ����Ҫ���������ṩ�����ʵ�@3���ﵰ@0��ӵ��@3���ﵰ@0����������@4����@0�����п��ܻ�������������@3����@0")
	LuaSay("@3��������@0���������ǵ�@2"..a.."@0�ι������ﵰ����Ҫͭ��@2"..b.."@0������ȼ�@2"..c.."��@0��")
	if(LuaQuery("level")>=c) then
		AddMenuItem("@7�Ƿ���","")
		AddMenuItem("@3��@0","YES_by")
		AddMenuItem("����","NO_by")
	else
		LuaSay("ѱ��ʦ����Ҫ����ȼ�@2"..c.."��@0���ܹ����@2"..a.."@0�����ﵰ���Ͽ������ɣ�")
	end
elseif(answer=="YES_by") then
	local a=LuaQueryTask("by_cs")+1 ------����ڼ������ﵰ 1 2 3 4 5  
	local b=a*3000-------��Ҫͭ�� 3000 2*3000 3*3000
	if(LuaItemCount("coin")>=b) then
		if(LuaFreeBag()>=1)then
			LuaSay("ѱ��ʦ����ϲ����һ��@3���ﵰ@0.")
			LuaGive("coin",-b,"Tbyzqd")
			LuaGive("o_mission415",1)
			LuaAddTask("by_cs",1)
			if(LuaQueryTask("Tfhzqd")==0) then
				AddMenuItem("@7�Ƿ����ڷ���","")
				AddMenuItem("@3����@0","yes_fh")
				AddMenuItem("�����ں�æ���п�����","no_fh")
			else
				LuaSay("ѱ��ʦ�����Ѿ�@3����@0��һ��@3���ﵰ@0�ˣ��п�������������ɣ�")
			end
		else
			LuaSay("ѱ��ʦ����ı����Ѿ�@4����@0�������±��������ɡ�")
		end
			
	else
		LuaSay("ѱ��ʦ�����Ǯ���������Ͽ���Ǯ�ɣ�")
	end

elseif(answer=="yes_fh") then
	DoTalk("Tfhzqd")
	 UpdateNPCMenu("xunshoushi")


elseif(answer=="Thzqd") then
	if(LuaItemCount("e_horse013t")>=1 or LuaItemCount("e_horse023t")>=1 or LuaItemCount("e_horse033t")>=1 or LuaItemCount("e_horse043t")>=1 or LuaItemCount("e_horse053t")>=1 or LuaItemCount("e_horse063t")>=1 or LuaItemCount("e_horse073t")>=1 or LuaItemCount("e_horse083t")>=1) then
		LuaSay("ѱ��ʦ����Ϊ@3���鳤@0�ĺ��ѣ���ʵ�ڲ�֪��˵ʲô�ã����������ĳ�������ᱻ������ˮ������")
		LuaSay("ѱ��ʦ������Ӣ����λ��������֮�ˣ��������@3���ﵰ@0���㻻ȡ@3��ʱ��������@0")
		if(EquipInfo(7)=="")then
			if(LuaFreeBag()>=1) then
				LuaSay("ѱ��ʦ�������@3���ﵰ@0���ú�,�пյ�ʱ����������@4����@0�ɡ�")
				for i=1,8,1 do
					DelItem("e_horse0"..i.."3t",LuaItemCount("e_horse0"..i.."3t"))
				end
				LuaGive("o_mission415",1)
				if(LuaQueryTask("Tfhzqd")==0) then
					AddMenuItem("@7�Ƿ����ڷ���","")
					AddMenuItem("@3����@0","yes_fh")
					AddMenuItem("�����ں�æ���п�����","no_fh")
				else
					LuaSay("ѱ��ʦ�����Ѿ�@3����@0��һ��@3���ﵰ@0�ˣ��п�������������ɣ�")
				end
			else
				LuaSay("ѱ��ʦ����ı����Ѿ�@4����@0�������±��������ɡ�")
			end
		else
			LuaSay("ѱ��ʦ���뽫װ����������λ������ж�ز��ܶһ����ﵰ��")
		end
	else 
		LuaSay("ѱ��ʦ����û��@3��ʱ��������@0�����ܶһ����Ƿ�@2�����ϼ��˵�@0����ѡ��")
		AddMenuItem("@7�Ƿ񷵻�","")
		AddMenuItem("@3����@0","YES_tz")
		AddMenuItem("������","NO")
		UpdateMenu()
	end

elseif(answer=="YES_tz") then
	DoTalk("hsxg")
	 UpdateNPCMenu("xunshoushi")



--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_11")==1)then
					LuaSay("ѱ��ʦ���ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_11",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_11")==2)then
					LuaSay("ѱ��ʦ���ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_11",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("ѱ��ʦ����Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("ѱ��ʦ�����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end


elseif(answer=="Tsnpc_16")then
	if(LuaQueryTask("Tsnpc_16")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ���һ�����д�ļӼ��ż�����ʦ����Ŀһ��")
		LuaSay("ѱ��ʦ�������Ǻþ�û�������Ǵ�����˰������������ʺá�")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_16",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_16")==2)then
		LuaSay("ѱ��ʦ�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_16")then
	if(LuaQueryTask("Tenpc_16")==1)then
		LuaSay(""..LuaQueryStr("name").."������Ӣ�����ż����׶�ʧ�����Ҵ�������˵�������һ������")
		LuaSay("ѱ��ʦ�������͸����͹�������������")
		LuaSetTask("Tenpc_16",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_16")==2)then
		LuaSay("ѱ��ʦ����ȥ������������Ͱ�")
	end




end
LuaSendMenu()
return 1
end
-------------------------------------SelfDefineFunctions--------------------------------
function SelfDefLevel2Exp(level)--ÿ������--��鲻����,���������˰�
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(level<=1)then	return 0
	else	return 18*level^3+9*level^2+25*level+SelfDefLevel2Exp(level-1)-100
	end
end
------------------------------------------------------
