NPCINFO = {
serial= "108" ,
base_name="huanshoushi",
icon= 2530,
NpcMove=2530,
name= "����ʹ��" , 
iconaddr=1,
butt="10|10|63",
name_color = "CEFFCE" , 
lastsay="�����֮������ȡ���֮����",
LuaType=1,                            
}
local pet={	
		{"e_pet01","@7Ԫ����","1","@7������","e_pet13","��","e_pet01y","o_material_22",1,"3��Ƥ",200000},--4Ƥ
		{"e_pet02","@7������","1","@7ף������","e_pet14","��","e_pet02y","o_material_58",1,"3����",200000},--4��
		{"e_pet03","@7������","1","@7��ԯ��Ȯ","e_pet15","��","e_pet03y","o_material_31",1,"3����",200000},--4��
		{"e_pet04","@7�¾���","1","@7Ů���è","e_pet16","��","e_pet04y","o_material_13",1,"3��ë",200000},--4ë
		{"e_pet05","@5Ԫ����","2","@5������","e_pet17","��","e_pet05y","o_material_24",1,"5��Ƥ",400000},
		{"e_pet06","@5������","2","@5ף������","e_pet18","��","e_pet06y","o_material_60",1,"5����",400000},
		{"e_pet07","@5������","2","@5��ԯ��Ȯ","e_pet19","��","e_pet07y","o_material_33",1,"5����",400000},
		{"e_pet08","@5�¾���","2","@5Ů���è","e_pet20","��","e_pet08y","o_material_15",1,"5��ë",400000},
		{"e_pet09","@3Ԫ����","3","@3������","e_pet21","��","e_pet09y","o_material_26",1,"7��Ƥ",800000},
		{"e_pet10","@3������","3","@3ף������","e_pet22","��","e_pet10y","o_material_62",1,"7����",800000},
		{"e_pet11","@3������","3","@3��ԯ��Ȯ","e_pet23","��","e_pet11y","o_material_35",1,"7����",800000},
		{"e_pet12","@3�¾���","3","@3Ů���è","e_pet24","��","e_pet12y","o_material_17",1,"7��ë",800000},
	}
function do_talk(answer)
if(answer=="ask") then
	havetask =0
	AddTopSayMenuItem("@7�����б�","")   
	--[[AddTopSayMenuItem("@5����û�","T970")
	AddTopSayMenuItem("@5����һ�","T972")
	AddTopSayMenuItem("@9����˵��","T971")]]
	AddTopSayMenuItem("@5�ϸ߼�������","Magic")
	AddTopSayMenuItem("@5��������","pet")   
	AddTopSayMenuItem("@9����˵��","pet_")   

	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end 
	return 1 
	    
elseif(answer=="liaotian") then
	LuaSay("����ʦ�������֮������ȡ���֮�������û����������Ļ���")
elseif(answer=="T970")then
	local hpnum=LuaPetQuery("pet_hptime")
	local atnum=LuaPetQuery("pet_atttime")
	local denum=LuaPetQuery("pet_deftime")
	if(hpnum~=0)then
		hpnum=hpnum-1
	end
	if(atnum~=0)then
		atnum=atnum-1
	end
	if(denum~=0)then
		denum=denum-1
	end
	local Total=hpnum + atnum + denum
	local whatpet = LuaQueryTask("whatpet")
	if(GetCurrentDay()~=LuaQueryStrTask("T970day"))then
		if(LuaQueryTask("T970")~=0)then
			LuaSay("������ǰһ�ο�ʼ�����ľ��������Ѿ��ܾ��ˣ��������¿�ʼ����")
		end
		LuaDelTask("T970")
		LuaDelTask("whatpet")
		LuaDelTask("Total")
		UpdateMenu()
	end
	if(LuaQueryTask("T970")==0)then
		if(EquipInfo(10)~="")then
			for i=1,12,1 do
				if(LuaItemCountNoEquipped(pet[i][1])>0 or LuaItemCountNoEquipped(pet[i][7])>0)then
					LuaSay("��ʾ���㱳���ﻹ����"..pet[i][2].."@0�����Ƚ�����Ҫ�û��ĳ���Ĵ浽����")
					LuaSetTemp("allfind",1)
					break
				end
			end
			if(LuaQueryTemp("allfind")==1)then
				LuaSetTemp("allfind",2)
				DoTalk("ask")
			else
				for i=1,12,1 do
					if(EquipInfo(10)==pet[i][2])then
						LuaSay("��ĳ�����"..pet[i][2].."")
						LuaSetTask("whatpet",i)
						break
					end
				end
				if(LuaQueryTask("whatpet")==0)then
					LuaSay("��ʾ����ĳ����Ѿ��û�����@!")
				else
					local food01
					local food02
					if(Total<=3)then
						food01=Total
						food02=0
					else
						food02=Total-3
						food01=3
					end
					LuaSay("�Ѿ����й���*"..hpnum.."��HP����*"..atnum.."�ι�������*"..denum.."�η�������")
					LuaSay("�û��󽫻�õ�"..pet[LuaQueryTask("whatpet")][4].."@0*"..food01.."��@5����ʳƷ[��]@0*"..food02.."��@5����ʳƷ[��]@0")
					LuaSay("������*@3"..pet[LuaQueryTask("whatpet")][10]..""..pet[LuaQueryTask("whatpet")][9].."��*ͭ��"..pet[LuaQueryTask("whatpet")][11].."")
					LuaSay("ȷ�ϲ�����ȡ���˲˵��������װ��λ�Ϸŵ��������ٴε���˲˵���ʼ����")
					LuaSetTask("Total",Total)
					LuaSetTask("T970",1)
					LuaSetTask("T970day",GetCurrentDay())
					UpdateMenu()
				end
			end
			
			
		else
			LuaSay("��ʾ���뽫����Ҫ�û��ĳ���װ��������")
		end
	elseif(LuaQueryTask("T970")==1)then
			LuaSay("��ʾ�����ٴ�ȷ������Ҫ�����ľ���Ϊ"..pet[whatpet][2].."@0������֤������Ҫ�����ĳ����Ѿ���װ��λ�ŵ�������û�һ����ʼ�޷����أ�")
			AddMenuItem("@5�û�ȷ��","")
			AddMenuItem("@3��ʼ�û�","star_Illusion")
			AddMenuItem("@3ȡ���û�","end_Illusion")
		
	end

elseif(answer=="end_Illusion")then
	LuaSay("����ʦ���ջ��������������ȡ���û�")
	LuaDelTask("T970")
	LuaDelTask("whatpet")
	LuaDelTask("Total")
	UpdateMenu()
elseif(answer=="star_Illusion")then
	local Total = LuaQueryTask("Total")
	local whatpet = LuaQueryTask("whatpet")
	local food01
	local food02
	local petnum=LuaItemCountNoEquipped(pet[whatpet][1]) + LuaItemCountNoEquipped(pet[whatpet][7])
	if(Total<=3)then
		food01=Total
		food02=0
	else
		food02=Total-3
		food01=3
	end
	if(EquipInfo(10)=="")then 
		if(petnum>0)then
			if(LuaItemStatusNormalCount(pet[whatpet][8])>=pet[whatpet][9] and LuaItemCount("coin")>=pet[whatpet][11])then 
				LuaSay("����ʦ�������֮������ȡ����֮����")
				if(LuaItemCountNoEquipped(pet[whatpet][1])>0)then
					DelItem(pet[whatpet][1],1)
				else
					DelItem(pet[whatpet][7],1)
				end
				DelItem(pet[whatpet][8],pet[whatpet][9])
				LuaGive("coin",-pet[whatpet][11],T970)
				LuaGive(pet[whatpet][5],1)
				if(Total<=2)then
					LuaGive("o_food01j",food01)
				else 
					LuaGive("o_food02j",food02)
					LuaGive("o_food01j",food01)
				end
				LuaSetTask("T970",0)
				LuaDelTask("whatpet")
				LuaDelTask("Total")
			else
				LuaSay("@5���ϲ��㣬��ǰ����û���Ҫ:@0*@1���ϣ�@0@3"..pet[whatpet][10].."@0"..pet[whatpet][9].."��*@1ͭ�ң�@0"..pet[whatpet][11].."")
			end
		else
			LuaSay("@1��ʾ���㱳����δ�ҵ���Ӧ�ĳ����������²���")
		end
		
	else
		LuaSay("��ʾ��������Ҫ�û��ĳ����װ��λ��ȡ�������ڱ�����")
	end
elseif(answer=="T971")then
	LuaSay("���Ƴ�����û����ܣ������ܸ������ˣ������а�����������ͣ���Ȼ����@1��������@0Ҳ�������ܶ�")
	LuaSay("�������ĳ��ﵱǰΪ���ټ����Ѿ����й����ٴ�ѱ�����û��ɹ��������õ�����һֻȫ�����@10��@0���»��ޣ���������������Ҳ����ʧ�����������������")
	LuaSay("���ǻ������ѱ���Ĵ������ʵ��ĸ���һЩ����������������ٴ���������ȼ������⣬�û�֮��@5��ɫ@0�ĳ����ǿ��Խ��׵ģ�@3��ɫ@0���ǲ��ܽ��׵�Ŷ")
	LuaSay("�������Ҫһֱ���˧������ӵ�г����������ĳ���Ǿ͸Ͽ�������û��׶ΰɣ��û���Ҫһ���Ĳ������û��������ǻû��������ϣ�")
	LuaSay("���⣬�»�����Ҫ44�汾���ϣ���������ʹ�ã������û�֮�󿴲�������ͼƬ���������Ŀͻ�����044�汾���ϡ�")
	LuaSay("����ͭ�����ͷ��ҲҪ���ѵĲ��ǣ���ƣ���¥�����㶮��@!")
	LuaSay("ͳһ����ʿ�ǣ���ӭ��������ʱ��")

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
					LuaSetTemp("whatfb",1)
					break
				end

			end

 	AddMenuItem("@7��������","")
	AddMenuItem("@3��������","pet_hpts")
	AddMenuItem("@3��������","pet_attts")
	AddMenuItem("@3��������","pet_defts")
	--------------------------------****����hp������ʼ****-----------------------------------



elseif(answer=="pet_hpts") then
	if(EquipInfo(10)=="")then
		LuaSay("�����ķ���װ����@!")
	else		
	
		if(LuaQueryTemp("whatfb")==1)then
			LuaSay("��δ�����ķ���װ��������Ŷ")
		else

			local pet_hptime=LuaPetQuery("pet_hptime")
			if(pet_hptime==0) then
				LuaPetSet("pet_hptime",1) --��ʼ��������Ϊ1
				pet_hptime=LuaPetQuery("pet_hptime")
			end
			local a=pet_hptime   -------�����Ĵ���
			LuaSetTemp("a",a)
			pet_hp={}
			pet_hp[1]={50,80,120,150,200,1000,"","",0,0}              ---5  ÿ���������������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
			pet_hp[2]={100,160,240,300,400,5000,"","",0,0}
			pet_hp[3]={150,240,360,450,600,20000,"o_material_20","1��Ƥ",1,0}
			pet_hp[4]={200,320,480,600,800,50000,"o_material_21","2��Ƥ",1,10}
			pet_hp[5]={250,400,600,750,1000,200000,"o_material_22","3��Ƥ",1,50}
			pet_hp[6]={300,480,720,900,1200,500000,"o_material_23","4��Ƥ",1,100}
			pet_hp[7]={350,560,840,1050,1400,1000000,"o_material_24","5��Ƥ",1,150}
			pet_hp[8]={400,640,960,1200,1600,2000000,"o_material_25","6��Ƥ",1,200}
			pet_hp[9]={450,720,1080,1350,1800,3000000,"o_material_25","5��Ƥ",1,250}
			pet_hp[10]={500,800,1200,1500,2000,4000000,"o_material_25","6��Ƥ",1,300}
			pet_hp[11]={550,880,1320,1650,2200,5000000,"o_material_25","6��Ƥ",1,350}
			pet_hp[12]={600,960,1440,1800,2400,6000000,"o_material_25","6��Ƥ",1,400}
			pet_hp[13]={650,1040,1560,1950,2600,7000000,"o_material_26","7��Ƥ",1,450}
			pet_hp[14]={700,1120,1680,2100,2800,8000000,"o_material_26","7��Ƥ",1,500}
			pet_hp[15]={750,1200,1800,2250,3000,9000000,"o_material_27","8��Ƥ",1,400}

				
				
			local pet_pz=LuaPetQuery("type")   --����Ʒ��
			LuaSay("��ʾ����ķ�����ǰ�ȼ�Ϊ@3"..LuaPetQuery("lv").."����@0�����Ѿ�Ϊ�÷���������@3"..(LuaPetQuery("pet_hptime")-1).."��������@0")
			LuaSay("@7���ο�����������@0��@3"..pet_hp[a][pet_pz].."��")
			LuaSay("@7�´ο�����������@0��@3"..pet_hp[a+1][pet_pz].."��")

			if(a<=2) then
				LuaSay("@7������ķ�@0��@3"..(pet_hp[a][6]).."ͭ��")
			else
				--LuaSay("@7������ķ�@0��@3"..(pet_hp[a][6]).."ͭ��")
				LuaSay("@7������ķ�@0@3"..(pet_hp[a][6]).."ͭ��*"..pet_hp[a][9].."��"..pet_hp[a][8].."*Ԫ��"..pet_hp[a][10].."��")
				
			end
			if(LuaPetQuery("pet_hptime")<=15)then
				AddMenuItem("@7������������","")
				AddMenuItem("@3ȷ������","pet_hpyes")
				AddMenuItem("@3������","pet_hpno")
			else
				LuaSay("ѱ��ʦ��Ŀǰ���������Ѿ��ﵽ���ޣ��޷��������������ˣ������ڴ������������ݣ�")
			end
		end
	end

elseif(answer=="pet_hpyes") then
    		pet_hp={}
		pet_hp[1]={50,80,120,150,200,1000,"","",0,0}              ---5  ÿ���������������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_hp[2]={100,160,240,300,400,5000,"","",0,0}
		pet_hp[3]={150,240,360,450,600,20000,"o_material_20","1��Ƥ",1,0}
		pet_hp[4]={200,320,480,600,800,50000,"o_material_21","2��Ƥ",1,10}
		pet_hp[5]={250,400,600,750,1000,200000,"o_material_22","3��Ƥ",1,50}
		pet_hp[6]={300,480,720,900,1200,500000,"o_material_23","4��Ƥ",1,100}
		pet_hp[7]={350,560,840,1050,1400,1000000,"o_material_24","5��Ƥ",1,150}
		pet_hp[8]={400,640,960,1200,1600,2000000,"o_material_25","6��Ƥ",1,200}
		pet_hp[9]={450,720,1080,1350,1800,3000000,"o_material_25","5��Ƥ",1,250}
		pet_hp[10]={500,800,1200,1500,2000,4000000,"o_material_25","6��Ƥ",1,300}
		pet_hp[11]={550,880,1320,1650,2200,5000000,"o_material_25","6��Ƥ",1,350}
		pet_hp[12]={600,960,1440,1800,2400,6000000,"o_material_25","6��Ƥ",1,400}
		pet_hp[13]={650,1040,1560,1950,2600,7000000,"o_material_26","7��Ƥ",1,450}
		pet_hp[14]={700,1120,1680,2100,2800,8000000,"o_material_26","7��Ƥ",1,500}
		pet_hp[15]={750,1200,1800,2250,3000,9000000,"o_material_27","8��Ƥ",1,400}
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��,
	if(LuaPetQuery("pet_hptime")<=LuaPetQuery("lv")/5 )  then
        	        if(a<=2) then
				if(LuaItemCount("coin")>=pet_hp[a][6]) then
					LuaGive("coin",-pet_hp[a][6],"Tpet_hp")   --Tpet_hp��������������
					LuaPetSet("max_hp",pet_hp[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_hptime",LuaPetQuery("pet_hptime")+1)
					LuaSay("@7�����ɹ�@0������������@3"..pet_hp[a][pet_pz].."��")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_hp[a][6]).."ͭ��")
				end
			else
				if(LuaItemCount("coin")>=pet_hp[a][6]) then
					if (LuaItemStatusNormalCount(pet_hp[a][7])<pet_hp[a][9]) then
						LuaSay("@7�������ϲ���@0��Ҫ"..pet_hp[a][9].."��"..pet_hp[a][8].."")
					else
						if (LuaQueryMoney()<pet_hp[a][10])then
	
							LuaSay("@7�������ϲ���@0��ҪԪ��"..pet_hp[a][10].."��")
						else
							LuaGive("coin",-pet_hp[a][6],"Tpet_hp")   --Tpet_hp��������������
							LuaAddYB(1,-pet_hp[a][10],"Tpet_hpyb")
							DelItem(pet_hp[a][7],pet_hp[a][9])
							LuaPetSet("max_hp",pet_hp[a][pet_pz])
							LuaPetSet("pet_hptime",LuaPetQuery("pet_hptime")+1)
							FlushMyInfo("1")
							LuaSay("@7�����ɹ�@0������������@3"..pet_hp[a][pet_pz].."��")
						end
					end
				else
					LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_hp[a][6]).."ͭ��*"..pet_hp[a][9].."��*"..pet_hp[a][8].."Ԫ��"..pet_hp[a][10].."��")
				end
			end
	else
	LuaSay("ѱ��ʦ������ÿ����5�����ܶ�����1�����Եȼ������ȥ������ιʳ�����������ȼ��ɣ�")
	end

elseif(answer=="pet_hpno") then
    		pet_hp={}
		pet_hp[1]={50,80,120,150,200,1000,"","",0,0}              ---5  ÿ���������������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣���������������YB���ߣ����֣�����
		pet_hp[2]={100,160,240,300,400,5000,"","",0,0}
		pet_hp[3]={150,240,360,450,600,20000,"o_material_20","1��Ƥ",1,0}
		pet_hp[4]={200,320,480,600,800,50000,"o_material_21","2��Ƥ",1,10}
		pet_hp[5]={250,400,600,750,1000,200000,"o_material_22","3��Ƥ",1,50}
		pet_hp[6]={300,480,720,900,1200,500000,"o_material_23","4��Ƥ",1,100}
		pet_hp[7]={350,560,840,1050,1400,1000000,"o_material_24","5��Ƥ",1,150}
		pet_hp[8]={400,640,960,1200,1600,2000000,"o_material_25","6��Ƥ",1,200}
		pet_hp[9]={450,720,1080,1350,1800,3000000,"o_material_25","5��Ƥ",1,250}
		pet_hp[10]={500,800,1200,1500,2000,4000000,"o_material_25","6��Ƥ",1,300}
		pet_hp[11]={550,880,1320,1650,2200,5000000,"o_material_25","6��Ƥ",1,350}
		pet_hp[12]={600,960,1440,1800,2400,6000000,"o_material_25","6��Ƥ",1,400}
		pet_hp[13]={650,1040,1560,1950,2600,7000000,"o_material_26","7��Ƥ",1,450}
		pet_hp[14]={700,1120,1680,2100,2800,8000000,"o_material_26","7��Ƥ",1,500}
		pet_hp[15]={750,1200,1800,2250,3000,9000000,"o_material_27","8��Ƥ",1,400}
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
    LuaSay("ѱ��ʦ�������������㷨��������Ŷ��@7����������@0��@3"..pet_hp[a][pet_pz].."�㣡")

        --------------------------------****����hp��������****-----------------------------------



--------------------------------****����att������ʼ****-----------------------------------



elseif(answer=="pet_attts") then
	if(EquipInfo(10)=="")then
		LuaSay("�����ķ���װ����@!")
	else		
	
		if(LuaQueryTemp("whatfb")==1)then
			LuaSay("��Я����ķ���@!")
		else
			local pet_atttime=LuaPetQuery("pet_atttime")
			if(pet_atttime==0) then
			LuaPetSet("pet_atttime",1) --��ʼ��������Ϊ1
			pet_atttime=LuaPetQuery("pet_atttime")
			end
			local a=pet_atttime   -------�����Ĵ���
			LuaSetTemp("a",a)

				pet_att={}                                                          
				pet_att[1]={10,15,20,25,30,1000,"","",0,0}              ---5  ÿ�������Ĺ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣�����������Ԫ��
				pet_att[2]={20,30,40,50,55,5000,"","",0,0}              ---10
				pet_att[3]={30,45,60,75,80,20000,"o_material_47","1����",1,0} 
				pet_att[4]={40,60,80,100,120,50000,"o_material_48","2����",1,10}              ---15
				pet_att[5]={50,75,100,125,150,200000,"o_material_49","3����",1,50}              ---20
				pet_att[6]={60,90,120,150,180,500000,"o_material_50","4����",1,100}              ---30
				pet_att[7]={70,105,140,175,210,1000000,"o_material_51","5����",1,150}              ---35
				pet_att[8]={80,120,160,200,240,2000000,"o_material_52","6����",1,200}              ---40
				pet_att[9]={90,135,180,225,270,3000000,"o_material_52","6����",1,250}              ---45
				pet_att[10]={100,150,200,250,300,4000000,"o_material_52","6����",1,300}              ---50
				pet_att[11]={110,165,220,275,330,5000000,"o_material_52","6����",1,350}              ---55
				pet_att[12]={120,180,240,300,360,6000000,"o_material_52","6����",1,400}             ---60
				pet_att[13]={130,195,260,325,390,7000000,"o_material_53","7����",1,450}               ---65
				pet_att[14]={140,210,280,350,420,8000000,"o_material_53","7����",1,500}              ---70
				pet_att[15]={150,225,300,375,450,9000000,"o_material_54","8����",1,550}
				
				
				pet_pz=LuaPetQuery("type")   --����Ʒ��
				LuaSay("��ʾ����ķ�����ǰ�ȼ�Ϊ@3"..LuaPetQuery("lv").."����@0�����Ѿ�Ϊ�÷���������@3"..(LuaPetQuery("pet_atttime")-1).."�ι�������@0")
				LuaSay("@7���ο�������������@0��@3"..pet_att[a][pet_pz].."��")
				LuaSay("@7�´ο�������������@0��@3"..pet_att[a+1][pet_pz].."��")
			if(a<=2) then
			LuaSay("@7������ķ�@0��@3"..(pet_att[a][6]).."ͭ��")
			else
			LuaSay("@7������ķ�@0��@3"..(pet_att[a][6]).."ͭ��*"..pet_att[a][9].."��*"..pet_att[a][8].."Ԫ��"..pet_att[a][10].."��")
			end
			if(LuaPetQuery("pet_atttime")<=15)then
			AddMenuItem("@7��������������","")
			AddMenuItem("@3ȷ������","pet_attyes")
			AddMenuItem("@3������","pet_attno")
			else
			LuaSay("ѱ��ʦ��Ŀǰ�����������Ѿ��ﵽ���ޣ��޷��������������ˣ������ڴ������������ݣ�")
			end
		end
	end		
		
elseif(answer=="pet_attyes") then
		pet_att={}                                                          
		pet_att[1]={10,15,20,25,30,1000,"","",0,0}              ---5  ÿ�������Ĺ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣�����������Ԫ��
		pet_att[2]={20,30,40,50,55,5000,"","",0,0}              ---10
		pet_att[3]={30,45,60,75,80,20000,"o_material_47","1����",1,0} 
		pet_att[4]={40,60,80,100,120,50000,"o_material_48","2����",1,10}              ---15
		pet_att[5]={50,75,100,125,150,200000,"o_material_49","3����",1,50}              ---20
		pet_att[6]={60,90,120,150,180,500000,"o_material_50","4����",1,100}              ---30
		pet_att[7]={70,105,140,175,210,1000000,"o_material_51","5����",1,150}              ---35
		pet_att[8]={80,120,160,200,240,2000000,"o_material_52","6����",1,200}              ---40
		pet_att[9]={90,135,180,225,270,3000000,"o_material_52","6����",1,250}              ---45
		pet_att[10]={100,150,200,250,300,4000000,"o_material_52","6����",1,300}              ---50
		pet_att[11]={110,165,220,275,330,5000000,"o_material_52","6����",1,350}              ---55
		pet_att[12]={120,180,240,300,360,6000000,"o_material_52","6����",1,400}             ---60
		pet_att[13]={130,195,260,325,390,7000000,"o_material_53","7����",1,450}               ---65
		pet_att[14]={140,210,280,350,420,8000000,"o_material_53","7����",1,500}              ---70
		pet_att[15]={150,225,300,375,450,9000000,"o_material_54","8����",1,550}

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
	if(LuaPetQuery("pet_atttime")<=LuaPetQuery("lv")/5 )  then
        	        if(a<=2) then
				if(LuaItemCount("coin")>=pet_att[a][6]) then
					LuaGive("coin",-pet_att[a][6],"Tpet_att")   --Tpet_att����������������
					LuaPetSet("att",pet_att[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_atttime",LuaPetQuery("pet_atttime")+1)
					LuaSay("@7�����ɹ�@0��������������@3"..pet_att[a][pet_pz].."��")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_att[a][6]).."ͭ��")
				end
			else
				if(LuaItemCount("coin")>=pet_att[a][6] and LuaItemStatusNormalCount(pet_att[a][7])>=pet_att[a][9] and LuaQueryMoney()>=pet_att[a][10]) then
					LuaGive("coin",-pet_att[a][6],"Tpet_att")   --Tpet_att����������������
					LuaAddYB(1,-pet_att[a][10],"Tpet_attyb")
					DelItem(pet_att[a][7],pet_att[a][9])
					LuaPetSet("att",pet_att[a][pet_pz])
					LuaPetSet("pet_atttime",LuaPetQuery("pet_atttime")+1)
					FlushMyInfo("1")
					LuaSay("@7�����ɹ�@0��������������@3"..pet_att[a][pet_pz].."��")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_att[a][6]).."ͭ��*"..pet_att[a][9].."��*"..pet_att[a][8].."Ԫ��"..pet_att[a][10].."��")
				end
			end
	else
	LuaSay("ѱ��ʦ������ÿ����5�����ܶ�����1�����Եȼ������ȥ������ιʳ�����������ȼ��ɣ�")
	end

elseif(answer=="pet_attno") then
		pet_att={}                                                          
		pet_att[1]={10,15,20,25,30,1000,"","",0,0}              ---5  ÿ�������Ĺ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣�����������Ԫ��
		pet_att[2]={20,30,40,50,55,5000,"","",0,0}              ---10
		pet_att[3]={30,45,60,75,80,20000,"o_material_47","1����",1,0} 
		pet_att[4]={40,60,80,100,120,50000,"o_material_48","2����",1,10}              ---15
		pet_att[5]={50,75,100,125,150,200000,"o_material_49","3����",1,50}              ---20
		pet_att[6]={60,90,120,150,180,500000,"o_material_50","4����",1,100}              ---30
		pet_att[7]={70,105,140,175,210,1000000,"o_material_51","5����",1,150}              ---35
		pet_att[8]={80,120,160,200,240,2000000,"o_material_52","6����",1,200}              ---40
		pet_att[9]={90,135,180,225,270,3000000,"o_material_52","6����",1,250}              ---45
		pet_att[10]={100,150,200,250,300,4000000,"o_material_52","6����",1,300}              ---50
		pet_att[11]={110,165,220,275,330,5000000,"o_material_52","6����",1,350}              ---55
		pet_att[12]={120,180,240,300,360,6000000,"o_material_52","6����",1,400}             ---60
		pet_att[13]={130,195,260,325,390,7000000,"o_material_53","7����",1,450}               ---65
		pet_att[14]={140,210,280,350,420,8000000,"o_material_53","7����",1,500}              ---70
		pet_att[15]={150,225,300,375,450,9000000,"o_material_54","8����",1,550}
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
    LuaSay("ѱ��ʦ�������������㷨���Ĺ�����Ŷ��@7��������������@0��@3"..pet_att[a][pet_pz].."�㣡")

        --------------------------------****����att��������****-----------------------------------



--------------------------------****����def������ʼ****-----------------------------------



elseif(answer=="pet_defts") then
	if(EquipInfo(10)=="")then
		LuaSay("�����ķ���װ����@!")
	else		
	
		if(LuaQueryTemp("whatfb")==1)then
			LuaSay("��Я����ķ���@!")
		else

				local pet_deftime=LuaPetQuery("pet_deftime")
			if(pet_deftime==0) then
				LuaPetSet("pet_deftime",1) --��ʼ��������Ϊ1
				pet_deftime=LuaPetQuery("pet_deftime")
			end
			local a=pet_deftime   -------�����Ĵ���
			LuaSetTemp("a",a)
				pet_def={}
				pet_def[1]={4,5,6,7,8,1000,"","",0,0}                --ÿ�������ķ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣�����������Ԫ��
				pet_def[2]={8,10,12,14,16,5000,"","",0,0}
				pet_def[3]={12,15,18,21,24,20000,"o_material_38","1��ľ",1,0}  
				pet_def[4]={16,20,24,28,32,50000,"o_material_39","2��ľ",1,10} 
				pet_def[5]={20,25,30,35,40,200000,"o_material_40","3��ľ",1,50}  
				pet_def[6]={24,30,36,42,48,500000,"o_material_41","4��ľ",1,100}
				pet_def[7]={28,35,42,49,56,1000000,"o_material_42","5��ľ",1,150}  
				pet_def[8]={32,40,48,56,64,2000000,"o_material_43","6��ľ",1,200}
				pet_def[9]={36,45,54,63,72,3000000,"o_material_43","6��ľ",1,250}
				pet_def[10]={40,50,60,70,80,4000000,"o_material_43","6��ľ",1,300}
				pet_def[11]={44,55,66,77,88,5000000,"o_material_43","6��ľ",1,350}
				pet_def[12]={48,60,72,84,96,6000000,"o_material_43","6��ľ",1,400}
				pet_def[13]={52,65,78,91,104,7000000,"o_material_44","7��ľ",1,450}
				pet_def[14]={56,70,84,98,112,8000000,"o_material_44","7��ľ",1,500}
				pet_def[15]={60,75,90,105,120,9000000,"o_material_45","8��ľ",1,550}

				pet_pz=LuaPetQuery("type")   --����Ʒ��
				LuaSay("��ʾ����ķ�����ǰ�ȼ�Ϊ@3"..LuaPetQuery("lv").."����@0�����Ѿ�Ϊ�÷���������@3"..(LuaPetQuery("pet_deftime")-1).."�η�������@0")
				LuaSay("@7���ο�������������@0��@3"..pet_def[a][pet_pz].."��")
				LuaSay("@7�´ο�������������@0��@3"..pet_def[a+1][pet_pz].."��")

			if(a<=2) then
			LuaSay("@7������ķ�@0��@3"..(pet_def[a][6]).."ͭ��")
			else
			LuaSay("@7������ķ�@0��@3"..(pet_def[a][6]).."ͭ��*"..pet_def[a][9].."��*"..pet_def[a][8].."Ԫ��"..pet_def[a][10].."��")
			end
			if(LuaPetQuery("pet_deftime")<=15)then
			AddMenuItem("@7��������������","")
			AddMenuItem("@3ȷ������","pet_defyes")
			AddMenuItem("@3������","pet_defno")
			else
			LuaSay("ѱ��ʦ��Ŀǰ�����������Ѿ��ﵽ���ޣ��޷��������������ˣ������ڴ������������ݣ�")
			end

		end
	end

elseif(answer=="pet_defyes") then
		pet_def={}
		pet_def[1]={4,5,6,7,8,1000,"","",0,0}                --ÿ�������ķ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣�����������Ԫ��
		pet_def[2]={8,10,12,14,16,5000,"","",0,0}
		pet_def[3]={12,15,18,21,24,20000,"o_material_38","1��ľ",1,0}  
		pet_def[4]={16,20,24,28,32,50000,"o_material_39","2��ľ",1,10} 
		pet_def[5]={20,25,30,35,40,200000,"o_material_40","3��ľ",1,50}  
		pet_def[6]={24,30,36,42,48,500000,"o_material_41","4��ľ",1,100}
		pet_def[7]={28,35,42,49,56,1000000,"o_material_42","5��ľ",1,150}  
		pet_def[8]={32,40,48,56,64,2000000,"o_material_43","6��ľ",1,200}
		pet_def[9]={36,45,54,63,72,3000000,"o_material_43","6��ľ",1,250}
		pet_def[10]={40,50,60,70,80,4000000,"o_material_43","6��ľ",1,300}
		pet_def[11]={44,55,66,77,88,5000000,"o_material_43","6��ľ",1,350}
		pet_def[12]={48,60,72,84,96,6000000,"o_material_43","6��ľ",1,400}
		pet_def[13]={52,65,78,91,104,7000000,"o_material_44","7��ľ",1,450}
		pet_def[14]={56,70,84,98,112,8000000,"o_material_44","7��ľ",1,500}
		pet_def[15]={60,75,90,105,120,9000000,"o_material_45","8��ľ",1,550}

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
	if(LuaPetQuery("pet_deftime")<=LuaPetQuery("lv")/5 )  then
        	        if(a<=2) then
				if(LuaItemCount("coin")>=pet_def[a][6]) then
					LuaGive("coin",-pet_def[a][6],"Tpet_def")   --Tpet_def����������������
					LuaPetSet("def",pet_def[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_deftime",LuaPetQuery("pet_deftime")+1)
					LuaSay("@7�����ɹ�@0��������������@3"..pet_def[a][pet_pz].."��")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_def[a][6]).."ͭ��")
				end
			else
				if(LuaItemCount("coin")>=pet_def[a][6] and LuaItemStatusNormalCount(pet_def[a][7])>=pet_def[a][9] and LuaQueryMoney()>=pet_def[a][10]) then
					LuaGive("coin",-pet_def[a][6],"Tpet_def")   --Tpet_def����������������
					LuaAddYB(1,-pet_def[a][10],"Tpet_defyb")
					DelItem(pet_def[a][7],pet_def[a][9])
					LuaPetSet("def",pet_def[a][pet_pz])
					LuaPetSet("pet_deftime",LuaPetQuery("pet_deftime")+1)
					FlushMyInfo("1")
					LuaSay("@7�����ɹ�@0����������������@3"..pet_def[a][pet_pz].."��")
				else
				LuaSay("@7�������ϲ���@0����Ҫ@3"..(pet_def[a][6]).."ͭ��*"..pet_def[a][9].."��*"..pet_def[a][8].."Ԫ��"..pet_def[a][10].."��")
				end
			end
	else
	LuaSay("ѱ��ʦ������ÿ����5�����ܶ�����1�����Եȼ������ȥ������ιʳ�����������ȼ��ɣ�")
	end

elseif(answer=="pet_defno") then
		pet_def={}
		pet_def[1]={4,5,6,7,8,1000,"","",0,0}                --ÿ�������ķ��������̣������ƣ��ϣ�������ͭ�ң����Ѳ��ϣ����֣�����������Ԫ��
		pet_def[2]={8,10,12,14,16,5000,"","",0,0}
		pet_def[3]={12,15,18,21,24,20000,"o_material_38","1��ľ",1,0}  
		pet_def[4]={16,20,24,28,32,50000,"o_material_39","2��ľ",1,10} 
		pet_def[5]={20,25,30,35,40,200000,"o_material_40","3��ľ",1,50}  
		pet_def[6]={24,30,36,42,48,500000,"o_material_41","4��ľ",1,100}
		pet_def[7]={28,35,42,49,56,1000000,"o_material_42","5��ľ",1,150}  
		pet_def[8]={32,40,48,56,64,2000000,"o_material_43","6��ľ",1,200}
		pet_def[9]={36,45,54,63,72,3000000,"o_material_43","6��ľ",1,250}
		pet_def[10]={40,50,60,70,80,4000000,"o_material_43","6��ľ",1,300}
		pet_def[11]={44,55,66,77,88,5000000,"o_material_43","6��ľ",1,350}
		pet_def[12]={48,60,72,84,96,6000000,"o_material_43","6��ľ",1,400}
		pet_def[13]={52,65,78,91,104,7000000,"o_material_44","7��ľ",1,450}
		pet_def[14]={56,70,84,98,112,8000000,"o_material_44","7��ľ",1,500}
		pet_def[15]={60,75,90,105,120,9000000,"o_material_45","8��ľ",1,550}

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --����Ʒ��
	LuaSay("ѱ��ʦ�������������㷨���ķ�����Ŷ��@7��������������@0��@3"..pet_def[a][pet_pz].."�㣡")

        --------------------------------****����def��������****-----------------------------------






elseif(answer=="Magic")then      --Magic weapon
        LuaSay("��ư�����,��Ϊ������ô,�Ǿͺϳ�һ���������Լ��ķ���")
	LuaSay("��ѡ����Ҫ�ϳɵķ�������")
	AddMenuItem("�����ϳ�ѡ��","")
	AddMenuItem("��Ѫ��","FB_dj1")
	AddMenuItem("���ǽ�","FB_dj2")
	AddMenuItem("������","FB_dj3")
		elseif(answer=="FB_dj1")then
			AddMenuItem("�����ϳɵȼ�ѡ��","")
			AddMenuItem("5��һƷ�ϳ�һ��@7[��Ʒ]@0","FB_dj1_1")
			AddMenuItem("5����Ʒ�ϳ�һ��@5[��Ʒ]@0","FB_dj1_2")
			AddMenuItem("5����Ʒ�ϳ�һ��@3[��Ʒ]@0","FB_dj1_3")
			AddMenuItem("5����Ʒ�ϳ�һ��@2[��Ʒ]@0","FB_dj1_4")
			AddMenuItem("5����Ʒ�ϳ�һ��@2[��Ʒ]@0","FB_dj1_5")
				elseif(answer=="FB_dj1_1")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab1")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab1")then
							if(LuaItemCount("e_pet100") >=5)then
								DelItem("e_pet100",1)
								DelItem("e_pet100",1)
								DelItem("e_pet100",1)
								DelItem("e_pet100",1)
								DelItem("e_pet100",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ��Ѫ��")
								LuaGive("e_pet101",1,"fab1")
							else
								LuaSay("�����ٴ���5�����ϵ�һƷ��Ѫ��")
							end
				elseif(answer=="FB_dj1_2")then
				        AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab2")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab2")then
							if(LuaItemCount("e_pet101") >=5)then
								DelItem("e_pet101",1)
								DelItem("e_pet101",1)
								DelItem("e_pet101",1)
								DelItem("e_pet101",1)
								DelItem("e_pet101",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ��Ѫ��")
								LuaGive("e_pet102",1,"fab2")
							else
								LuaSay("�����ٴ���5�����ϵĶ�Ʒ��Ѫ��")
							end
				elseif(answer=="FB_dj1_3")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab3")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab3")then
							if(LuaItemCount("e_pet102") >=5)then
								DelItem("e_pet102",1)
								DelItem("e_pet102",1)
								DelItem("e_pet102",1)
								DelItem("e_pet102",1)
								DelItem("e_pet102",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ��Ѫ��")
								LuaGive("e_pet103",1,"fab3")
							else
								LuaSay("�����ٴ���5�����ϵ���Ʒ��Ѫ��")
							end
				elseif(answer=="FB_dj1_4")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab4")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab4")then
							if(LuaItemCount("e_pet103") >=5)then
								DelItem("e_pet103",1)
								DelItem("e_pet103",1)
								DelItem("e_pet103",1)
								DelItem("e_pet103",1)
								DelItem("e_pet103",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ��Ѫ��")
								LuaGive("e_pet104",1,"fab4")
							else
								LuaSay("�����ٴ���5�����ϵ���Ʒ��Ѫ��")
							end
				elseif(answer=="FB_dj1_5")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab5")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab5")then
							if(LuaItemCount("e_pet104") >=5)then
								DelItem("e_pet104",1)
								DelItem("e_pet104",1)
								DelItem("e_pet104",1)
								DelItem("e_pet104",1)
								DelItem("e_pet104",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ��Ѫ��")
								LuaGive("e_pet105",1,"fab5")
							else
								LuaSay("�����ٴ���5�����ϵ���Ʒ��Ѫ��")
							end
		elseif(answer=="FB_dj2")then
			AddMenuItem("�����ϳɵȼ�ѡ��","")
			AddMenuItem("5��һƷ�ϳ�һ��@7[��Ʒ]@0","FB_dj2_1")
			AddMenuItem("5����Ʒ�ϳ�һ��@5[��Ʒ]@0","FB_dj2_2")
			AddMenuItem("5����Ʒ�ϳ�һ��@3[��Ʒ]@0","FB_dj2_3")
			AddMenuItem("5����Ʒ�ϳ�һ��@2[��Ʒ]@0","FB_dj2_4")
				elseif(answer=="FB_dj2_1")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab1_1")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab1_1")then
							if(LuaItemCount("e_pet200") >=5)then
								DelItem("e_pet200",1)
								DelItem("e_pet200",1)
								DelItem("e_pet200",1)
								DelItem("e_pet200",1)
								DelItem("e_pet200",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ���ǽ�")
								LuaGive("e_pet201",1,"fab1_1")
							else
								LuaSay("�����ٴ���5�����ϵ�һƷ���ǽ�")
							end
				elseif(answer=="FB_dj2_2")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab2_1")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab2_1")then
							if(LuaItemCount("e_pet201") >=5)then
								DelItem("e_pet201",1)
								DelItem("e_pet201",1)
								DelItem("e_pet201",1)
								DelItem("e_pet201",1)
								DelItem("e_pet201",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ���ǽ�")
								LuaGive("e_pet202",1,"fab2_1")
							else
								LuaSay("�����ٴ���5�����ϵĶ�Ʒ���ǽ�")
							end
				elseif(answer=="FB_dj2_3")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab3_1")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab3_1")then
							if(LuaItemCount("e_pet202") >=5)then
								DelItem("e_pet202",1)
								DelItem("e_pet202",1)
								DelItem("e_pet202",1)
								DelItem("e_pet202",1)
								DelItem("e_pet202",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ���ǽ�")
								LuaGive("e_pet203",1,"fab3_1")
							else
								LuaSay("�����ٴ���5�����ϵ���Ʒ���ǽ�")
							end
				elseif(answer=="FB_dj2_4")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab4_1")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab4_1")then
							if(LuaItemCount("e_pet203") >=5)then
								DelItem("e_pet203",1)
								DelItem("e_pet203",1)
								DelItem("e_pet203",1)
								DelItem("e_pet203",1)
								DelItem("e_pet203",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ���ǽ�")
								LuaGive("e_pet204",1,"fab4_1")
							else
								LuaSay("�����ٴ���5�����ϵ���Ʒ���ǽ�")
							end
		elseif(answer=="FB_dj3")then
			AddMenuItem("�����ϳɵȼ�ѡ��","")
			AddMenuItem("5��һƷ�ϳ�һ��@7[��Ʒ]@0","FB_dj3_1")
			AddMenuItem("5����Ʒ�ϳ�һ��@5[��Ʒ]@0","FB_dj3_2")
			AddMenuItem("5����Ʒ�ϳ�һ��@5[��Ʒ]@0","FB_dj3_3")
			AddMenuItem("5����Ʒ�ϳ�һ��@5[��Ʒ]@0","FB_dj3_4")
				elseif(answer=="FB_dj3_1")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab1_2")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab1_2")then
							if(LuaItemCount("e_pet300") >=5)then
								DelItem("e_pet300",1)
								DelItem("e_pet300",1)
								DelItem("e_pet300",1)
								DelItem("e_pet300",1)
								DelItem("e_pet300",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ������")
								LuaGive("e_pet301",1,"fab1_2")
							else
								LuaSay("�����ٴ���5�����ϵ�һƷ������")
							end
				elseif(answer=="FB_dj3_2")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab2_2")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab2_2")then
							if(LuaItemCount("e_pet301") >=5)then
								DelItem("e_pet301",1)
								DelItem("e_pet301",1)
								DelItem("e_pet301",1)
								DelItem("e_pet301",1)
								DelItem("e_pet301",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ������")
								LuaGive("e_pet302",1,"fab2_2")
							else
								LuaSay("�����ٴ���5�����ϵĶ�Ʒ������")
							end
				elseif(answer=="FB_dj3_3")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab3_2")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab3_2")then
							if(LuaItemCount("e_pet302") >=5)then
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ������")
								LuaGive("e_pet303",1,"fab3_2")
							else
								LuaSay("�����ٴ���5�����ϵ���Ʒ������")
							end
				elseif(answer=="FB_dj3_4")then
					AddMenuItem("@5�ϳ�ѡ��","")
					AddMenuItem("@1[�Ƽ�]@0@5ȷ���ϳ�","fab4_2")
					AddMenuItem("ȡ��","")
						elseif(answer=="fab4_2")then
							if(LuaItemCount("e_pet303") >=5)then
								DelItem("e_pet303",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								LuaSay("��ϲ��ϳɳɹ����һ����Ʒ������")
								LuaGive("e_pet304",1,"fab4_2")
							else
								LuaSay("�����ٴ���5�����ϵ���Ʒ������")
							end

elseif(answer=="pet_")then
	LuaSay("ȫ��@2����ϵͳ@0��������������һ����Ϊ���࣬@2��Ѫ��@0Ϊ��@3����@0��@2���ǽ�@0Ϊ��@3Ѫ����@0��@2������@0Ϊ��@3����@0")
	LuaSay("ÿ�ַ���һ����Ϊ5��Ʒ�ʣ�Ʒ�����5Ʒ���ֱ��Ӧ@2��ɫ@0��@3��ɫ@0��@5��ɫ@0��@7��ɫ@0�Ͱ�ɫ��Ʒ��Խ�ߣ���������Խ�ߡ�")
	LuaSay("��Ʒ@2��Ѫ��@0���������������ܴﵽ250�Ĺ��������Է�������Σ����Ʒ���������������������˲�������")
	LuaSay("�������Ժϳɣ�ͨ����Ʒ�ʵĺϳɸ�Ʒ�ʵķ��������һƷ�ĺϳ�һ����Ʒ������")
	LuaSay("ͬʱ������һ���ܺõķ�����ʱ������Զ����İ��ķ��������������������ڷ����Ļ������������Ӷ�������ԣ���������ܵ�15��")
	LuaSay("��ͬƷ�ʵķ������������ӵ������������죬��Ʒ����������࣬������15��@2��ɫ����@0������ܶ�������@3450����@0��@33000Ѫ����@0��@3120����@0")
	LuaSay("������ͨ��������ʳ��������ĵȼ���Ŀǰ�ͳ���װ����ͬһ��װ��λ��ͬʱҲ���и������任��ɫ�Ĺ��ܣ�")
	LuaSay("���ȵĿ��ģ��Ͽ�Ѱ�������Լ��ķ����ɣ������������α仯�������ڴ���ͳһ����������@!")



--��Ѫ��	--����
--���ǽ�	--Ѫ��
--������	--����
elseif(answer=="T972")then
	local Discount=100  --�����趨���۸��Լ���������=Discount/100
	LuaSetTemp("Discount",Discount)
	--LuaSay("@7ȫ�³���һ�ֻ��Ҫһ��Ĳ��Ͼ��ܶһ���һֻ�����Ŀ������ĳ�������������û����������³��������Ŷ���������������")
	--LuaSay("@5Ϊ��л�����Ҷԡ�ͳһOL��һֱ������֧�֣�����Ϧ���ڼ俪��ȫ�¶�������һ�����˧�������ͣ�׿Խ�����ԣ������ã�")
	--LuaSay("@5��������Ϧ�ڼ����жһ���Ҫ�Ĳ��ϼ��룬�Ķ������ж�������ʲô�أ��Ͽ���ѡ��һֻ�������Լ��ĳ����")
	LuaSay("@5ȫ�³���һ�Ϊ�㿪��������Ҫ�չ��㹻�Ĳ��ϱ������������һ��������ǵĳ��������ɫ��Ŷ���Ķ��Ĳ����ж����Ͽ��������@!")
	LuaSay("@9��Ҫ˵��һ�µ����������û����������³��������Ŷ���������������")
	AddMenuItem("@7ѡ�������ɫ","")
	AddMenuItem("@5��ɫ","blue")
	AddMenuItem("@3��ɫ","gold")
	elseif(answer=="blue")then
		LuaSetTemp("color",1)
		AddMenuItem("@7ѡ���������","")
		AddMenuItem("@5�Ϲ��Ա�","1")
		AddMenuItem("@5�丸��ʦ","2")
		AddMenuItem("@5�̹����","3")
		AddMenuItem("@5������ţ","4")
	elseif(answer=="gold")then
		LuaSetTemp("color",2)
		AddMenuItem("@7ѡ���������","")
		AddMenuItem("@3�Ϲ��Ա�","1")
		AddMenuItem("@3�丸��ʦ","2")
		AddMenuItem("@3�̹����","3")
		AddMenuItem("@3������ţ","4")
	elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4")then
		local type=answer+0
		LuaSetTemp("type",type)
		AddMenuItem("@7ѡ��������","")
		AddMenuItem("ȷ�϶һ�","11")
		AddMenuItem("@9�鿴����","12")
	elseif(answer=="11")then
		local type=LuaQueryTemp("type")
		local color=LuaQueryTemp("color")
		local Discount=LuaQueryTemp("Discount")
		local date={ExchangePet(type)}
		local num1=date[7]+0
		local num2=date[8]+0
		if(color==1)then
			--LuaSay("����Ҫ�һ�����"..date[3].."�������㵱ǰ5�۶һ�����ֻ��Ҫ���Ѳ���"..date[13]..""..(num1/2).."����"..date[11].."1��")
			LuaSay("����Ҫ�һ�����"..date[3].."����Ҫ���Ѳ���"..date[13]..""..num1.."����"..date[11].."1��")
		elseif(color==2)then
			--LuaSay("����Ҫ�һ�����"..date[4].."�������㵱ǰ5�۶һ�����ֻ��Ҫ���Ѳ���"..date[13]..""..(num2/2).."����"..date[12].."1��")
			LuaSay("����Ҫ�һ�����"..date[4].."����Ҫ���Ѳ���"..date[13]..""..num2.."����"..date[12].."1��")
		end
		AddMenuItem("@7ȷ�϶һ�","")
		AddMenuItem("@3ȷ�϶һ�","yes")
		AddMenuItem("@9�����һ�","no")
		
		elseif(answer=="yes")then
			local type=LuaQueryTemp("type")
			local color=LuaQueryTemp("color")
			local Discount=LuaQueryTemp("Discount")
			local date={ExchangePet(type)}
			local num1=date[7]+0
			local num2=date[8]+0
			if(color==1)then
				if(LuaItemStatusNormalCount(date[5])>=num1 and LuaItemStatusNormalCount(date[9])>=1)then
					LuaSay("@5��ʾ���һ��ɹ�")
					DelItem(date[5],num1)
					DelItem(date[9],1)
					LuaGive(date[1],1,"changepet")
				else
					LuaSay("��ʾ�����ϲ���")
					--LuaSay("��ǰ������5�ۣ���ֻ��Ҫ��Ҫ����"..date[13]..""..(num1/2).."����"..date[11].."1��")
					LuaSay("��Ҫ���Ѳ���"..date[13]..""..num1.."����"..date[11].."1��")
				end
			elseif(color==2)then
				if(LuaItemStatusNormalCount(date[5])>=num2 and LuaItemStatusNormalCount(date[10])>=1)then
					LuaSay("@3��ʾ���һ��ɹ�")
					DelItem(date[5],num2)
					DelItem(date[10],1)
					LuaGive(date[2],1,"changepet")
				else
					LuaSay("��ʾ�����ϲ���")
					--LuaSay("��ǰ������5�ۣ���ֻ��Ҫ��Ҫ����"..date[13]..""..(num2/2).."����"..date[12].."1��")
					LuaSay("��Ҫ���Ѳ���"..date[13]..""..num2.."����"..date[12].."1��")
				end
			end

	elseif(answer=="12")then
		local type=LuaQueryTemp("type")
		local color=LuaQueryTemp("color")
		local Discount=LuaQueryTemp("Discount")
		local date={ExchangePet(type)}
		local num1=date[7]+0
		local num2=date[8]+0
		if(color==1)then
			LuaSay("����Ҫ�һ�����"..date[3].."")
			LuaSay("��Ҫ����"..date[13]..""..num1.."����"..date[11].."1��")
			--LuaSay("��ǰ������5�ۣ���ֻ��Ҫ��Ҫ����"..date[13]..""..(num1/2).."����"..date[11].."1��")
			--LuaSay("ԭ��Ҫ���Ѳ���"..date[13]..""..num1.."����"..date[11].."1��")
		elseif(color==2)then
			LuaSay("����Ҫ�һ�����"..date[4].."")
			LuaSay("��Ҫ����"..date[13]..""..num2.."����"..date[12].."1��")
			--LuaSay("��ǰ������5�ۣ���ֻ��Ҫ��Ҫ����"..date[13]..""..(num2/2).."����"..date[12].."1��")
			--LuaSay("ԭ��Ҫ���Ѳ���"..date[13]..""..num2.."����"..date[12].."1��")
		end
end
LuaSendMenu()
return 1
end
function ExchangePet(type)
--type,		�������͡�
--color,	������ɫ 1 �� 2 ��	
--Discount,	����	ʵ�ʼ۸�=��Discount/100��*���ü۸�
--Operating	�������� 1 �һ� 2�鿴����

table1={}
table1[1]={"e_pet29","e_pet33","@5�Ϲ��ͻ�@0","@3�Ϲ��ͻ�@0","o_zhaiquan1y","o_zhaiquan1y",6,8,"o_mission018","o_mission168","�ƾɹŶ�","����","@7��ɴȯ@0"}
table1[2]={"e_pet30","e_pet34","@5�丸��ʦ@0","@3�丸��ʦ@0","o_zhaiquan1y","o_zhaiquan1y",6,8,"o_mission018","o_mission168","�ƾɹŶ�","����","@7��ɴȯ@0"}
table1[3]={"e_pet31","e_pet35","@5�̹����@0","@3�̹����@0","o_zhaiquan1y","o_zhaiquan1y",6,8,"o_mission018","o_mission168","�ƾɹŶ�","����","@7��ɴȯ@0"}
table1[4]={"e_pet32","e_pet36","@5������ţ@0","@3������ţ@0","o_zhaiquan1y","o_zhaiquan1y",6,8,"o_mission018","o_mission168","�ƾɹŶ�","����","@7��ɴȯ@0"}

str1=table1[type][1]
str2=table1[type][2]
str3=table1[type][3]
str4=table1[type][4]
str5=table1[type][5]
str6=table1[type][6]
str7=table1[type][7]
str8=table1[type][8]
str9=table1[type][9]
str10=table1[type][10]
str11=table1[type][11]
str12=table1[type][12]
str13=table1[type][13]

return 	str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13
	
end