NPCINFO = { 
serial="128" ,
base_name="tuobagui",
icon=2574,
NpcMove=2574 ,
name="�ذϹ�" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="������Ӣ��",
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
	local T735=LuaQueryTask("T735")
	local T750=LuaQueryTask("T750")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_69")==1 or LuaQueryTask("Tsnpc_69")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_69")
		if(LuaQueryTask("Tsnpc_69")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_69")==1 or LuaQueryTask("Tenpc_69")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_69")
		if(LuaQueryTask("Tenpc_69")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T302")==19 and LuaQueryTask("T302S")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302S")
		havetask2 =1
	end 
	if(T735==1 or T735==2) then
 		AddTopSayMenuItem("@2������񡾾��顿","T735")
 		if(LuaQueryTask("T735")==1)	then
 		havetask2 =1
 		end
 	end
	if(T750==4)then
		AddTopSayMenuItem("@2������ս�����顿@0","T750")
		havetask2=1
	end
	if(level>=55)then	
		if(LuaQueryStrTask("Txhxday")~=GetCurrentDay())then
			AddTopSayMenuItem("@7��������ÿ�ա�","Txhuanxing")
			havetask1=1
		else
			AddTopSayMenuItem("@7��������ÿ�ա�","Txhuanxing")
			havetask2=1
		end
	elseif(level>=50)  then
		if(LuaQueryStrTask("Txhxday")~=GetCurrentDay())then
			AddTopSayMenuItem("@2[��]@0@7��������ÿ�ա�","Txhuanxing")
			havetask1=1
		else
			AddTopSayMenuItem("@2[��]@0@7��������ÿ�ա�","Txhuanxing")
			havetask2=1
		end
	
	end
	--[[if(level>=55)then
		if(GetCurrentDay()~=LuaQueryStrTask("Thx2day"))then
			AddTopSayMenuItem("@7����������ʷʫ��@0","Thx2")
			havetask1=1
		else
			AddTopSayMenuItem("@7����������ʷʫ��@0","Thx2")
			havetask2=1
		end
	elseif(level>=50)  then
		if(GetCurrentDay()~=LuaQueryStrTask("Thx2day"))then
			AddTopSayMenuItem("@2[��]@0@7����������ʷʫ��@0","Thx2")
			havetask1=1
		else
			AddTopSayMenuItem("@2[��]@0@7����������ʷʫ��@0","Thx2")
			havetask2=1
		end
	
	end]]
		
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3�������᡾���","T1004" )
	end
	AddTopSayMenuItem("@9ǰ��Ӣɽ��","Cm3")
	AddTopSayMenuItem("@9ǰ���򻨹�","Cf3")
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
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	
	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("�ذϹ磺�ҿ��������ѣ������ϼ룬��Ϊ���֣���֪���ɷ����ҹ�����ҵ��") 
	
elseif(answer=="T302S") then
	   if(LuaQueryTask("T302S")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("�ذϫ��������������ţ�")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302S",99)
	   UpdateMenu()
	   end
       
elseif(answer=="Cf3") then 
local level= LuaQuery("level")
	if(level>=60)then
		if(LuaQuery("till")>=5000)then
		ChangeMap("lu_farm03")
		else
		LuaSay("�ɼ������Ȳ���,��Ĳɼ������ﵽ5000���ϲ��ܽ���.")
		end
	else
	LuaSay("�߼��ɼ���60�����ܽ���")
	end       
elseif(answer=="Cm3") then 
local level= LuaQuery("level")
	if(level>=60)then
		if(LuaQuery("till")>=5000)then
		ChangeMap("lu_mine03")
		else
		LuaSay("�ɼ������Ȳ���,��Ĳɼ������ﵽ5000���ϲ��ܽ���.")
		end
	else
	LuaSay("�߼��ɼ���60�����ܽ���")
	end
       

elseif(answer=="T735") then
	if(LuaQueryTask("T735")==1)	then
		LuaSay(""..LuaQueryStr("name").."����ԭ���ձ��ܴݲУ�����ˮ�����֮�У������ذ������Ҹ����㿪�ֽ��������ˮ���Ե����ģ����ɵ����£�")
		LuaSay("�ذϹ磺������֪���ˣ�����ȥ�������֣��������ɱ������������") 
		LuaSetTask("T735",2)
		AddLog("������񡾾��顿",735)
		UpdateMenu()
	elseif(LuaQueryTask("T735")==2)then
		LuaSay("�ذϿ�������ô��û�е�@2����ؿ�@0����@3�ذ���@0����ȥ����")
		DelLog("735")
		UpdateMenu()
	end 	       

elseif(answer=="T750")then               --------------------------------������ս�����顿
		if(LuaQueryTask("T750")==4)then
		LuaSay("�ذϹ磺���µ��˺θɰ�����")
		LuaSay(LuaQueryStr("name").."����˵�������ƺܲ��ȶ�����������ĥ��ĥ����")
		LuaSay("�ذϹ磺�г�Ϣ���Ǿͺúøɰɣ�")
		AddMenuItem("�������","")
		AddMenuItem("��ȡ����","T750jl")
		end

		elseif(answer=="T750jl")then           -----------------750����
		if(LuaQueryTask("T750")==4)then
		LuaSetTask("T750",99)
		DelLog("750")
		LuaAddJx("combat_exp",1707000 ,"T750")
		LuaAddAchievementSchedule("Task_num",1)	
		UpdateMenu()
		end             
elseif(answer=="Tsnpc_69")then
	if(LuaQueryTask("Tsnpc_69")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�ذϹ磺���ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_69",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_69")==2)then
		LuaSay("�ذϹ磺���ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_69")then
	if(LuaQueryTask("Tenpc_69")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�ذϹ磺�ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_69",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_69")==2)then
		LuaSay("�ذϹ磺���Ѿ������ˣ����ȥ��ȡ������")
	end	
	


elseif(answer=="T1004")  then
	local title = QueryTitle("title")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	local level= LuaQuery("level") 
	local T1004= LuaQueryTask("T1004")
	if(GetCurrentDay()~=LuaQueryStrTask("T1004day")) then
	LuaSetTask("T1004",0)
	DelItem("o_mission374",LuaItemStatusNormalCount("o_mission374"))
	DelItem("o_mission375",LuaItemStatusNormalCount("o_mission375"))
	LuaDelTask("T1004line")
	end 
	AddMenuItem("@7���","")
	if(T1004==0 and hour==16 and min<=30 and level>=55)then  
	AddMenuItem("��ռ��ر���","lingdi")
	end
	if((hour==16 and T1004==1) or (hour==17 and min<30 and T1004==1))then    
	AddMenuItem("�ύ����","tijiao")
	end
	if((hour==17 and min>=30 and T1004>=1) or (hour >17 and T1004>=1))then    
	AddMenuItem("������ά��","lingzhu")
	end
	if(IsMapHost("lu_yzc")=="true" and T1004 == 0)then
	AddMenuItem("��������","lingjiang")
	end
	if(IsMapHost("lu_yzc")=="true" and title ~= 11)then
	AddMenuItem("���������ƺ�","chenghao")
	end
	AddMenuItem("�����Ϣ","mapinfo")
	

elseif(answer == "lingdi")then	
		local T1004= LuaQueryTask("T1004")
			if(IsMapHostNoParameter()~="true") then
			LuaSay("���Ϊ���ص������𣬽���@310000ͭ��@0�����ѣ�����Ϊ������������������࣬�����Ӿ������������г�һ�ԡ�")
			AddMenuItem("@7��ر���","")
			AddMenuItem("����","baoming")
			AddMenuItem("������","bubaoming")
			else
			LuaSay("�����������ɲμӡ�")
			end

elseif(answer=="baoming")then  --���� ����  -- ��ԭ�� ��ʦ�˱�
	local T1004=LuaQuery("T1004")
	local level= LuaQuery("level") 
	if(LuaItemCount("coin")>=10000)then
		LuaSetTask("T1004",1)      
		LuaGive("coin",-10000,"T1004")    
		LuaSay("�ذϹ磺����@160����@0��ʱ��ȥ�ռ�����@3а��ҩ��@0��@3ս��ҩˮ@0.@3а��ҩ��@0���Դ�@2����@0����ȡ��@3ս��ҩˮ@0��@2��ԭ��@0����ȡ��")
		LuaSetTask("T1004collecttime",GetCurrentTime())		
		day=GetCurrentDay()
		LuaSetTask("T1004day",day)
		LuaSet("T1004line",LuaQueryTempStr("online"))
		LuaSetTask("T1004",1)
	else
		LuaSay("�ذϹ磺����Ǯ����ռ���̣�������ô���˵��£���@310000ͭ��@0���ܱ���")
		UpdateTopSay("�뱨���͵ý�Ǯ")
	end
elseif(answer=="bubaoming")then
		LuaSay("������û����ģ��õ�������λ���кཱܶ��Ӵ@!")
elseif(answer=="tijiao")then
		local level= LuaQuery("level") 
		local T1004=LuaQuery("T1004")
		local c1=LuaItemStatusNormalCount("o_mission374")
		local c2=LuaItemStatusNormalCount("o_mission375")
		DelItem("o_mission374",c1)
		DelItem("o_mission375",c2)
		if(GetCurrentDay()==LuaQueryStrTask("T1004day"))then
			local T1004line=LuaQueryStr("T1004line")
			if(LuaQueryTempStr("online")==T1004line)then
				local score=c1+c2+LuaQueryTask("T1004score")		
				LuaSetTask("T1004score",score)
				SaveMaxValueInRoom(score)
				LuaSay("���ռ���@3"..c1.."��а��ҩ��@0��@3"..c2.."��ս��ҩˮ@0�������ۻ�@3"..score.."@0�ֵĹ��ͣ����������������������Ǳ��������ˡ�")
			else
			--[[if(T1004line=="bw11")then
				szonline="1��1��"
			elseif(T1004line=="bw12")then
					szonline="1��2��"
			elseif(T1004line=="bw13")then
				szonline="1��3��"
			elseif(T1004line=="bw14")then
				szonline="1��4��"
			elseif(T1004line=="bw21")then
				szonline="2��1��"
			elseif(T1004line=="bw22")then
				szonline="2��2��"
			elseif(T1004line=="bw23")then--����
				szonline="2��3��"
			elseif(T1004line=="bw24")then--����
				szonline="2��4��"
			elseif(T1004line=="107")then--�ڲ�������
				szonline="������2"
			elseif(T1004line=="121")then--�ڲ�������
				szonline="־�շ�"
			elseif(T1004line=="117")then--�ڲ�������
				szonline="zdm��"
			else
				szonline="������"
			end
		LuaSay("����"..szonline.."�����μӵĻ���뵽@7"..szonline.."@0�ύ")]]
		LuaSay("�㲻���ڱ���������Ŷ����Ҫ���㱨���Ĺ���ȥ�ύ������Ʒ@!")
	end
	else
		LuaSetTask("T1004",99)
		--LuaDelTask("T1004day")
		LuaDelTask("T1004score")
		LuaSay("���ź�����û���ڻʱ���ڻ������ҽ�ս������������λ���")
	end
	UpdateMenu()
elseif(answer=="lingzhu")then
	local level= LuaQuery("level") 
    if(level>80)then
        level=80
    end
	local T1004=LuaQuery("T1004")
	local name=LuaQueryStr("name")
	local grade=GetGradePos(name)
	local T1004score=LuaQueryTask("T1004score")
	local title = QueryTitle("title")
   if(LuaQueryTask("T1004")>=1) then
	LuaDelTask("T1004")
	LuaDelTask("T1004day")
	LuaDelTask("T1004score")
	if(IsMapHost("lu_yzc")=="true")then
		SetTitleMeg(11)
		LuaSetTask("mapowntime",GetCurrentTime())   			
		LuaSay("��ϲ���ڱ��ε���ռ����ж����ͷ�꣬��Ϊ���ص����������õ���@3"..LuaQueryStr("title").."@0�ĳƺš�")
		LuaSay("ÿ4��Сʱ����һ�ν���")
        LuaGive("o_present116",4,"Tbossta")--��ɫ����
		LuaAddJx("combat_exp",80*level*level+T1004score*10*level,"T1004")
		local r =LuaRandom(10)
		if(r==0)then
			LuaGive("e_knife011",1,2,"T1004")
		elseif(r==1)then 
			LuaGive("e_falchion017",1,2,"T1004")
		elseif(r==2)then 
			LuaGive("e_falchion018",1,2,"T1004")
		elseif(r==3)then 
			LuaGive("e_falchion019",1,2,"T1004")
		elseif(r==4)then 
			LuaGive("e_falchion020",1,2,"T1004")
		elseif(r==5)then 
			LuaGive("e_falchion021",1,2,"T1004")
		elseif(r==6)then 
			LuaGive("e_fan009",1,2,"T1004")
		elseif(r==7)then 
			LuaGive("e_fan010",1,2,"T1004")
		elseif(r==8)then 
			LuaGive("e_fan011",1,2,"T1004")
		elseif(r==9)then 
			LuaGive("e_pen010",1,2,"T1004")
		elseif(r==10)then 
			LuaGive("e_pen011",1,2,"T1004")
		elseif(r==11)then 
			LuaGive("e_knife009",1,2,"T1004")
		elseif(r==12)then 
			LuaGive("e_knife010",1,2,"T1004")
		end
		LuaGive("coin",20000,"T1004")
		LuaGive("o_mission035",1)--��˰��
		--LuaGive("e_mission091",1)--ʩ����
		LuaNotice("@2���г�����"..LuaQueryStr("name").."@0��ȡ��@2"..(20000+T1004score*12).."@0ͭ����װһ���ʹ�������,ÿ4Сʱ��������һ�ν���")
	elseif(grade==2)then                    
		LuaSay("��Ȼû���õ����ص�������λ���õ���2��Ҳ�ǿ�ϲ�ɺصġ�����Ŭ������ȡ�´ζ��")
        LuaGive("o_present116",3,"Tbossta")--��ɫ����
		LuaAddJx("combat_exp",60*level*level+T1004score*10*level,"T1004")
		LuaGive("coin",15000,"T1004")
		LuaNotice("@2���г����������2��"..LuaQueryStr("name").."@0��ȡ��@2"..(15000+T1004score*12).."@0ͭ�Һʹ�������")
	elseif(grade==3)then    
        LuaGive("o_present116",2,"Tbossta")--��ɫ����    
		LuaSay("��Ȼû���õ����ص�������λ���õ���3��Ҳ�ǿ�ϲ�ɺصġ�����Ŭ������ȡ�´ζ��")
		LuaAddJx("combat_exp",40*level*level+T1004score*10*level,"T1004")
		LuaGive("coin",10000,"T1004")
		LuaNotice("@2���г����������3��"..LuaQueryStr("name").."@0��ȡ��@2"..(10000+T1004score*12).."@0ͭ�Һʹ�������")
	else
		if(T1004score>0)then
        LuaGive("o_present116",1,"Tbossta")--��ɫ����
		LuaSay("��û�ж�ñ�������,������Ҳ���Եõ�һ���Ľ���")
		LuaAddJx("combat_exp",T1004score*10*level,"T1004")
		else
		LuaSay("ȥȥȥ�������Ҿ�����һ����Ķ�����û�����ҵ����������᲻���¾����콱������") 
		end
	end
	UpdateMenu()
   end
elseif(answer=="chenghao")then
	LuaSay("��Ҫ����������ƺ���")
	AddMenuItem("@7�����ƺ�","")
	AddMenuItem("����ƺ�","jihuo")
	AddMenuItem("������","bujihuo")
		LuaSendMenu()
		elseif(answer=="jihuo")then
			local title = QueryTitle("title")
			SetTitleMeg(11)
			LuaSay("������@3"..LuaQueryStr("title").."@0�ĳƺ�")
			UpdateMenu()
		elseif(answer=="bujihuo")then
			LuaSay("ӵ�ж���ƺ�ʱ�����漤��ĻḲ��ǰ��ĳƺţ�ϲ���ĸ��ƺž�����ص�NPC����")
elseif(answer=="lingjiang")then
		local level= LuaQuery("level") 
		local mapowntime = LuaQueryTask("mapowntime")
		if(GetCurrentTime()>=mapowntime+14400)then
			LuaSay("��������ÿ4Сʱ������һ�ν���")
			LuaSetTask("mapowntime",GetCurrentTime())   
			LuaGive("o_drug_mp2",10)
			LuaAddJx("combat_exp",20*level*level,"T1004")
			LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"T1004")
			LuaGive("coin",10000,"T1004")
            LuaGive("o_present116",1,"Tbossta")--��ɫ����
			LuaNotice("@2���г�����"..LuaQueryStr("name").."@0��ȡ��@210000@0ͭ��4������ҩƷ�ʹ�������")
		else
			LuaSay("���ϴ��콱��������4Сʱ��ÿ4Сʱֻ����һ�ν���")
		end
elseif(answer=="mapinfo")then
		local level= LuaQuery("level") 
		local T1004=LuaQuery("T1004")
		local hour=GetCurrentHour()
		local min=GetCurrentMinute()
		LuaSay("����ʱ����:"..hour..":"..min..".55�����Ͻ�ɫÿ��16:00~16:30���Ա����μӱ����������ᣬ17��30����������")
		if(hour==16 or (hour==17 and min<30) and T1004>=1)then
			LuaSay("��ǰ��߳ɼ���:"..GetBestGradeNum()..".")
		else
		local c1=LuaItemCount("o_mission374")
		local c2=LuaItemCount("o_mission375")
		DelItem("o_mission374",c1)
		DelItem("o_mission375",c2)
		end
		LuaSay("��������������ȡ80000ͭ��,��װһ��,����7��,ҩƷ7�鼰�������顣")
		LuaSay("����ͼռ�췽ʽΪ�ύ������Ʒ��ÿ����ʱ60���ӣ���������ǰ�Ͻ���Ч��")
		LuaSay("������ָ������ɵ�������������Ʒ���Խ��ɵ�����������Ʒ֣��ۻ�����߻�ʤ��")


-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>....��������

elseif(answer=="Txhuanxing")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("Txhuanxing")~=0)then
		if(LuaQueryStrTask("Txhxday")~=GetCurrentDay())then
			LuaDelTask("Txhuanxing")
			LuaDelTask("T953")
			LuaDelTask("h_last")
		end
	end
	if(LuaQueryTask("Txhuanxing")==0)then
		coldata1={AutoSearchTask_Monster(LuaQuery("level"),1)}--�ݴ���,1��ֹϵͳ��ʼ�����0����
		LuaSetTask("Txhxcol",coldata1[1])
		LuaSetTask("Txhxday",GetCurrentDay())
		LuaSetTask("Txhuanxing",1)
		LuaSetTask("T953",1)
		AddLog("��������ÿ�ա�",953)
		LuaSay("�ذϹ磺�����Ļ�������Ļ���Խ��,��õ��ľ���Ҳ��Խ��@!")
		LuaSay("��һ����@3��������@0")
		LuaSay("�ذϹ磺ȥ������"..coldata1[2].."��ɱ"..coldata1[4].."ֻ"..coldata1[3].."��,�����Ѿ����������Һܾ���")
		LuaSetTask(coldata1[5],1)
		UpdateMenu()
	elseif(LuaQueryTask("Txhuanxing")==1)then
		coldata1={AutoSearchTask_Monster(0,LuaQueryTask("Txhxcol"))}
		LuaSetTask("sum",coldata1[4])
		if(LuaQueryTask(coldata1[5])>LuaQueryTask("sum"))then
			LuaSay("�ذϹ磺��ɹ�������˵�һ��")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			LuaSay("�ڶ�����@3�ռ�����@0")
			coldata2={AutoSearchTask_Goods(1,1)}--�ռ�������Ҫ���ǵ��ȼ�,0���񲻻ᱻ����,���Ϊ1,����1��ֹϵͳ��ʼ�����0����
			LuaSetTask("Txhxcol",coldata2[1])
			LuaSay("�ذϹ磺����ȥ�ռ�"..coldata2[4].."��"..coldata2[3].."����")
			LuaSetTask("Txhuanxing",2)
			LuaSetTask("T953",2)
			AddLog("��������ÿ�ա�",953)
			UpdateMenu()
		else
			LuaSay("��ǰ������Ϊ@2"..LuaQueryTask("Txhuanxing").."@0�����������ɱ��"..coldata1[2].."��"..coldata1[4].."ֻ"..coldata1[3]..",�����Ѿ�ɱ��"..(LuaQueryTask(coldata1[5])-1).."ֻ")
		end
	elseif(LuaQueryTask("Txhuanxing")==2)then
		coldata2={AutoSearchTask_Goods(0,LuaQueryTask("Txhxcol"))}
		LuaSetTask("sum",coldata2[4])
		if(LuaItemStatusNormalCount(coldata2[2])>=LuaQueryTask("sum"))then
			LuaSay("�ذϹ磺��ɹ�����˵ڶ���")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			DelItem(coldata2[2],LuaQueryTask("sum"))
			LuaSay("��������@3����@0")
			--[[rclass=LuaRandom(3)
			if(rclass==0)then
				strclass="սʿ"
				class="shen"
			elseif(rclass==1)then
				strclass="����"
				class="wu"
			else
				strclass="ıʿ"
				class="xian"
			end
			LuaSay("�ذϹ磺ȥѰ��һ������ȼ������6���ڵ�"..strclass.."���,��2�����ǰ�����ҡ�@!")]]
			LuaSay("�ذϹ磺ȥѰ��һ������ȼ������6���ڵ����,��2�����ǰ�����ҡ�@!")
			LuaSetTask("Txhuanxing",3)
			LuaSetTask("T953",3)
			AddLog("��������ÿ�ա�",953)
			UpdateMenu()
		else
			LuaSay("��ǰ�ڶ���������������ռ�"..coldata2[4].."��"..coldata2[3].."������")
		end
	elseif(LuaQueryTask("Txhuanxing")==3)then
		if(TeamCount()== 2)then
			LVcha=TeamQuery("level")-level
			if(LVcha*LVcha<=36) then
				--if(LuaQueryStr("class")==class)then
					LuaSay("�ذϹ磺��ɹ�������˵�����")
					local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
					LuaAddJx("combat_exp",jingyan,"Txhuanxing")
					coldata4={AutoSearchTask_Material(1,1)}
					LuaSetTask("Txhxcol",coldata4[1])
					LuaSay("���Ļ���@3�ռ�����@0")
					LuaSay("�ذϹ磺�������������ʽ�ȱ����ȥ�����ռ�"..coldata4[4].."��"..coldata4[3].."�������������ͣ�")
					LuaSetTask("Txhuanxing",4)
					LuaSetTask("T953",4)
					AddLog("��������ÿ�ա�",953)
					UpdateMenu()
				
				--else
					--LuaSay("�ذϹ磺�������ҵ���"..strclass.."�أ�����ô�Ҹ���̥��")
				--end
				
			else
				LuaSay("�ذϹ磺���ҵ����˲�����Ҫ��,ȥѰ��һ������ȼ������6���ڵ����,��2�����ǰ������")
			end
		else
			LuaSay("��ǰ��3�������������Ѱ��һ������ȼ������6���ڵ����,��2�����ǰ�����ң�������û�ж���")
		end
	elseif(LuaQueryTask("Txhuanxing")==4)then
		coldata4={AutoSearchTask_Material(0,LuaQueryTask("Txhxcol"))}
		LuaSetTask("sum",coldata4[4])
		if(LuaItemStatusNormalCount(coldata4[2])>=LuaQueryTask("sum"))then
			LuaSay("�ذϹ磺���Ļ����")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			coldata5={AutoSearchTask_Planting(1,1)}
			LuaSetTask("Txhxcol",coldata5[1])
			LuaSay("���廷��@3�ɼ�@0")
			LuaSay("�ذϹ磺����ҷ����������ˣ��������һ��"..coldata5[4].."���ӣ��㵽"..coldata5[3].."ȥ��ֲ���ɼ�һ��"..coldata5[4].."�������ң�ֻ��һ�βɼ�����Ŷ���ɲ�Ҫ����ѿ�Ͳ�ժ��Ŷ@!")
			LuaSetTask("Txhuanxing",5)
			LuaSetTask("T953",5)
			AddLog("��������ÿ�ա�",953)
			LuaGive(coldata5[2],1)
			DelItem(coldata4[2],LuaQueryTask("sum"))
			UpdateMenu()
			
		else
			LuaSay("��ǰ���Ļ�������������ռ�"..coldata4[4].."��"..coldata4[3].."")
		end
	elseif(LuaQueryTask("Txhuanxing")==5)then
		coldata5={AutoSearchTask_Planting(0,LuaQueryTask("Txhxcol"))}
			if(LuaItemStatusNormalCount(coldata5[5])>=1)then
				LuaSay("���廷��ɣ����Ѿ�����˻��������һ�룬���ȫ������õ���������")
				local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
				LuaAddJx("combat_exp",jingyan,"Txhuanxing")
				DelItem(coldata5[5],LuaItemStatusNormalCount(coldata5[5]))
				if(LuaItemStatusNormalCount(coldata5[2])>0)then
					DelItem(coldata5[2],LuaItemStatusNormalCount(coldata5[2]))
				end
				coldata6={AutoSearchTask_Boss(LuaQuery("level"),1)}
				LuaSetTask("Txhxcol",coldata6[1])
				LuaSay("��������@3BOSS@0")
				LuaSay("ȥ����"..coldata6[2].."��"..coldata6[3].."�ɣ������������Һܾ���")
				LuaSetTask(coldata6[4],1)
				LuaSetTask("Txhuanxing",6)
				LuaSetTask("T953",6)
				AddLog("��������ÿ�ա�",953)
				UpdateMenu()
			else
				LuaSay("��ǰ������廷����������ǵ�"..coldata5[3].."ȥ��ֲ"..coldata5[4].."���ɼ�һ��"..coldata5[4].."�������ң��㻹δ��ɣ�")
				LuaSay("��ܰ��ʾ�������Ļ���С�ı�͵�˶�����������ɲ��ˣ���@2����@0��˵һ��[@3GM�һ���͵��@0]��������������������ջ�Ŷ@!")
				if(LuaQueryTempStr("last_world_msg")=="GM�һ���͵��")then
					AddMenuItem("@7��������͵���ҵĻ�","")
					AddMenuItem("@5�ǵģ��һ���Ҫһ������","Y_seed")
					AddMenuItem("@4����Ҫ�ˣ��Ѿ�ץס͵������","N_seed")
				end
			end
	elseif(LuaQueryTask("Txhuanxing")==6)then
			coldata6={AutoSearchTask_Boss(0,LuaQueryTask("Txhxcol"))}
			if(LuaQueryTask(coldata6[4])==2)then
				LuaSay("�����������")
				local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
				LuaAddJx("combat_exp",jingyan,"Txhuanxing")
				LuaDelTask(coldata6[4])
				LuaSay("���߻���@3ǧ������@0")
				LuaSay("�ذϹ磺׬Ǯ�����������裬��@4������@0@3��������@0�������һ��ǧ����������ɣ�")
				LuaSetTask("huan7",1)
				LuaSetTask("Txhuanxing",7)
				LuaSetTask("T953",7)
				AddLog("��������ÿ�ա�",953)
				UpdateMenu()
			else
				
				LuaSay("��ǰ�����������������ȥ����"..coldata6[2].."��"..coldata6[3].."")
			end
	elseif(LuaQueryTask("Txhuanxing")==7)then
		if(LuaQueryTask("huan7")==2)then
			LuaSay("���߻����")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			LuaDelTask("huan7")
			coldata8={AutoSearchTask_Country(LuaQuery("level"),1)}
			LuaSetTask("Txhxcol",coldata8[1])
			LuaSay("�ڰ˻���@3�������@0")
			LuaSay(""..coldata8[2].."")
			LuaSet("line",LuaQueryTempStr("online"))
			LuaSetTask(coldata8[4],1)
			LuaSetTask("Txhuanxing",8)
			LuaSetTask("T953",8)
			AddLog("��������ÿ�ա�",953)
			UpdateMenu()
		else
			LuaSay("��ǰ���߻�����������ǵ�4������@0@3��������@0����ǧ������һ��")
		end
	elseif(LuaQueryTask("Txhuanxing")==8)then
		coldata8={AutoSearchTask_Country(0,LuaQueryTask("Txhxcol"))}
		if(LuaQueryTask(coldata8[4])==2)then
			LuaSay("�ڰ˻����")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			coldata9={AutoSearchTask_Faction(LuaQuery("level"),1)}
			LuaSetTask("Txhxcol",coldata9[1])
			LuaSetTask("Txhuanxing",9)
			LuaSetTask("T953",9)
			AddLog("��������ÿ�ա�",953)
			LuaSay("�ھŻ���@3��������@0")
			LuaSay("�ذϹ磺�������Ͻ���@3�س�����@0����ȥ��һ�°������˵�����ɡ�")
			LuaSetTask("h_last",1)
			UpdateMenu()
		else
			LuaSay("��ǰ��8�������������"..coldata8[2].." ")
		end
	elseif(LuaQueryTask("Txhuanxing")==9)then
		if(LuaQueryTask("h_last")==2)then
			LuaSay("��ϲ�㣬�����ȫ���Ļ�������")	
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			LuaGive("coin",25000,"Txhuanxing")
			LuaSetTask("h_last",99)
			LuaSetTask("Txhuanxing",99)
			LuaSetTask("T953",99)
			UpdateMenu()
		else
			LuaSay("��ǰ��9����Ҳ�����һ��������������ڽ����Ͻ����س������������һ��@3��������@0����")
			LuaSay("�ذϹ磺����ȫ���Ż�����������벻�����ջ�")
		end
	elseif(LuaQueryTask("Txhuanxing")==99)then
		LuaSay("�ذϹ磺���Ѿ�����˽���Ļ�����������������@!")
	else
		LuaSay(""..LuaQueryTask("Txhuanxing").."  "..LuaQueryTask("h_last").."")

	
	end

--����͵���Ӹ���
elseif(answer=="Y_seed")then
	local coldata5={AutoSearchTask_Planting(0,LuaQueryTask("Txhxcol"))}
	if(LuaItemStatusNormalCount(coldata5[2])>=1)then
		LuaSay("�ذϹ磺��˵���ǲ�����ƭ���أ�������û���أ�����ı�����Ŷ")
	else
		LuaSay("�ذϹ磺������͵����Ļ����Һ����⻹��Ԥ����һ�ţ��ٸ���һ��Ŷ���´οɲ���������ɶ͵�����ǵ�����Ŷ@!")
		LuaSay("�ذϹ磺������һ��������͵����@D")
		LuaGive(coldata5[2],1)
	end
elseif(answer=="N_seed")then
	LuaSay("�ذϹ磺����͵���������ǹ�ͬ�����񣬿�ȥ��������@/")





elseif(answer=="Thx2") then         ------------��������
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Thx2")==99) then
       if(GetCurrentDay()~=LuaQueryStrTask("Thx2day"))then
       LuaSetTask("Thx2",0)
       LuaSetTask("T954",0)
       end
      end

     if(LuaQueryTask("Thx2")==0) then
	    LuaSetTask("Thx2day",GetCurrentDay())
	    LuaSay("�ذϹ磺������@2�ܹ��Ż�@0����������Ļ���Խ�ߣ��õ��ľ���Խ�ߣ�����ȫ�����㽫���ٻ��50W�ľ��飬��������ĵȼ�������ɵĻ����кܴ��ϵŶ��ȫ����ɻ����ж���Ľ����ӳ�@!")
	    LuaSay("@3��1����̽��ר��")
	    LuaSay("�ذϹ磺ȥ��@4������@0��@3�����@0����ȡ����@2Ѱ������@0���Եõ��ر�ͼ���ɹ�ʹ��һ��@3�ر�ͼ@0Ѱ�ҵ�����ͨ������@!")
	    LuaSetTask("Thx2",1)
	    LuaSetTask("T954",1)
	    AddLog("��������",954)
      elseif(LuaQueryTask("Thx2")==1) then                          
	   if(LuaQueryTask("Thx2A")==99) then
		LuaSay("�ذϹ磺��ϲ����������@3��1��@0��")
		local exp
		if(LuaQueryTask("Mu1")==1)then
			exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
			exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu1",1)
		LuaAddJx("combat_exp",exp,"Thx2")
		LuaGive("coin",200,"Thx2")
		LuaSetTask("Thx2A",0)
   	    LuaSay("@3��2����С������")
	    LuaSay("�ذϹ磺ȥ@3����@0������һ��@2С������@0��˳��ͨ���������Ϸ���ṩ��1000ͭ�ҵ��ʱ�Ŷ��@!")
	    LuaSetTask("Thx2",2)
	    LuaSetTask("T954",2)
	    AddLog("��������",954)
	    else
	    LuaSay("�ذϹ磺����ɹ�ͨ��һ�Ųر�ͼ�ҵ����أ�����˳��ͨ������Ŷ���㻹û������ء�@!")
	    LuaSay("�ذϹ磺��@4������@0ȥ��@3�����@0����ȡ����@2Ѱ������@0���Եõ��ر�ͼ���ɹ�ʹ��һ��@3�ر�ͼ@0Ѱ�ҵ�����ͨ������@!")
	    end

      elseif(LuaQueryTask("Thx2")==2) then                           ---------�ڶ���С������
	   if(LuaQueryTask("Thx2B")==99) then
	    LuaSay("�ذϹ磺��ϲ����������@3��2��@0��")
	    local exp
	    if(LuaQueryTask("Mu2")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu2",1)
	    LuaAddJx("combat_exp",exp,"Thx2")
		LuaGive("coin",400,"Thx2")
		LuaSetTask("Thx2B",0)
	    LuaSay("@3��3�������˵ľ��")
	    LuaSay("�ذϹ磺ȥ@4��������@0��@3����@0������һ��@2���˵ľ��@0��˳��ͨ���������Ѿ���ɵ���ȥ��@2���˵ľ�˲˵�@0����ֱ��ͨ��Ŷ��@!")
	    LuaSetTask("Thx2",3)
	    LuaSetTask("T954",3)
	    AddLog("��������",954)
	    LuaGive("coin",1000,"Thx2")
	   else
	    LuaSay("��ʾ������ȥ@3����@0������һ��@2С������@0����˳��ͨ������Ŷ������������ɽ��Ŷ@!")
	   end

      elseif(LuaQueryTask("Thx2")==3) then                           -------���������˵ľ��
	   if(LuaQueryTask("Thx2C")==99) then
	    LuaSay("�ذϹ磺��ϲ����������@3��3��@0��")
	    LuaGive("coin",500,"Thuanxing")
	    local exp
	    if(LuaQueryTask("Mu3")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
	    else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
            end
	    LuaSetTask("Mu3",1)
	    LuaAddJx("combat_exp",exp,"Thx2")
        LuaSetTask("Thx2C",0)
	    LuaSay("@3��4����������")
	    LuaSay("�ذϹ磺��@4��������@0@3��Ʒ����@0�������κ�һ��@2Կ��@0��ȥ@4�����Ƕ���@0����@3����@0�����Կ�һ�ξ���ͨ��������@!")
	    LuaSetTask("Thx2",4)
	    LuaSetTask("T954",4)
	    AddLog("��������",954)
	   else
	    LuaSay("��ʾ������ȥ@4��������@0��@3����@0������һ��@2���˵ľ��@0����ͨ������Ŷ��������Ѿ�����ˣ���ô��ȥ��@2���˵ľ�˲˵�@0����ֱ��ͨ��@!")
	   end

      elseif(LuaQueryTask("Thx2")==4) then                          -----------���Ļ�������
	   if(LuaQueryTask("Thx2D")==99) then
	    LuaSay("�ذϹ磺��ϲ����������@3��4��@0��")
		LuaGive("coin",600,"Thx2")
		local exp
		if(LuaQueryTask("Mu4")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu4",1)
		LuaAddJx("combat_exp",exp,"Thx2")
		LuaSetTask("Thx2D",0)
	    LuaSay("@3��5��������")
	    LuaSay("�ذϹ磺��@4������@0��@3����@0������@4����̨@0@2����@0����@3����@0���ɹ���ȡ���㽱����˳��ͨ��������@!")
	    LuaSetTask("Thx2",5)
	    LuaSetTask("T954",5)
	    AddLog("��������",954)
	   else
	    LuaSay("��ʾ��������@4��������@0@3��Ʒ����@0������@2Կ��@0��ȥ@4����@0��һ��@3����@0����ͨ������Ŷ��@!")
	   end

      elseif(LuaQueryTask("Thx2")==5) then                             --------------���廷����
	   if(LuaQueryTask("Thx2E")==99) then
	    LuaSay("�ذϹ磺��ϲ����������@3��5��@0��")
		LuaGive("coin",700,"Thx2")
		local exp
		if(LuaQueryTask("Mu5")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu5",1)
		LuaAddJx("combat_exp",exp,"Thx2")
        LuaSetTask("Thx2E",0)
	    LuaSay("@3��6������սȺ��")
	    LuaSay("�ذϹ磺��@4������Ӫ@0��@3����ʹ��@0������@4��̨@0����@1��սȺ��@0��������˳��ͨ��������@!")
	    LuaSetTask("Thx2",6)
	    LuaSetTask("T954",6)
	    AddLog("��������",954)
	   else
	    LuaSay("��ʾ��������@4������@0��@3����@0������@4����̨@0@2����@0����@3����@0���ɹ���ȡ���㽱�������ͨ������Ŷ��@!")
	   end

      elseif(LuaQueryTask("Thx2")==6) then                             --------------��������սȺ��
	   if(LuaQueryTask("Thx2G")==99) then
	    LuaSay("�ذϹ磺��ϲ����������@3��6��@0��")
		LuaGive("coin",800,"Thx2")
		local exp
		if(LuaQueryTask("Mu6")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu6",1)
		LuaAddJx("combat_exp",exp,"Thx2")
        LuaSetTask("Thx2G",0)
	    LuaSay("@3��7��������������")
	    LuaSay("�ذϹ磺ɱ��һ����һ��߾Ȼ�һ����ɱ������ң��Ϳ���˳��ͨ��������@!")
	    LuaSay("�ذϹ磺Ϊ�˱������۸����֣�ɱ���Լ��ȼ��͵Ŀ��ǲ�������Ŷ@!")
	    LuaSetTask("Thx2",7)
	    LuaSetTask("T954",7)
	    AddLog("��������",954)
	    LuaSetTask("Thx2pks",LuaQuery("pks"))
	    LuaSetTask("Thx2jrs",LuaQuery("rescue_number"))
	   else
	    LuaSay("��ʾ��������@4������Ӫ@0��@3����ʹ��@0������@4��̨@0����@1��սȺ��@0��������˳��ͨ������Ŷ��@!")
	   end
      elseif(LuaQueryTask("Thx2")==7) then   --------------���߻�����������
	   pks=LuaQuery("pks")-LuaQueryTask("Thx2pks")
	   jrs=LuaQuery("rescue_number")-LuaQueryTask("Thx2jrs")
	   if(pks >=1 or jrs>=1) then
	    LuaSay("�ذϹ磺��ϲ����������@3��7��@0��")
		LuaGive("coin",800,"Thx2")
		local exp
		if(LuaQueryTask("Mu7")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu7",1)
		LuaAddJx("combat_exp",exp,"Thx2")
	    LuaSay("@3��8������������")
	    LuaSay("�ذϹ磺ȥ@4�����Ͻ�@0��@3�س�����@0����һ���������@2��������@0����������@3���ڶ���@0����Ҫ����Ŷ��@!")
	    LuaSetTask("Thx2",8)
	    LuaSetTask("T954",8)
	    AddLog("��������",954)
	   else
	    LuaSay("�ذϹ磺ɱ��һ����һ��߾Ȼ�һ����ɱ������ң��ſ���˳��ͨ��������@!")
	    LuaSay("�ذϹ磺Ϊ�˱������۸����֣�ɱ���Լ��ȼ��͵Ŀ��ǲ�������Ŷ@!")
	   end
      elseif(LuaQueryTask("Thx2")==8) then                             --------------��������
	   if(LuaQueryTask("Thx2I")==99) then
	    LuaSay("�ذϹ磺��ϲ����������@3��8��@0��")
		LuaGive("coin",800,"Thx2")
		local exp
		if(LuaQueryTask("Mu8")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu8",1)
		LuaAddJx("combat_exp",exp,"Thx2")
	    LuaSay("@3��9��������")
	    LuaSay("�ذϹ磺ȥ@4������@0��@3Ǯׯ�ϰ�@0������@2������߻���@0��˳��ͨ��������@!")
	    LuaSetTask("Thx2",9)
	    LuaSetTask("T954",9)
	    AddLog("��������",954)
	   else
	    LuaSay("��ʾ������ȥ@4�����Ͻ�@0��@3�س�����@0����һ���������@2��������@0���������˳��ͨ����@3�ڰ˻�@0Ŷ�����¶�࣬�������@!")
	   end

      elseif(LuaQueryTask("Thx2")==9) then                             --------------�ھŻ�����
	   if(LuaQueryTask("Thx2J")==99) then
		LuaSay("�ذϹ磺��ϲ�㣬����˾������������һ����")
		LuaGive("coin",900,"Thx2")
		local exp
		if(LuaQueryTask("Mu9")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=(200000+(level^2*120+level*100)*LuaQueryTask("Thx2")*0.1)
		end
		LuaSetTask("Mu9",1)
		LuaDelTask("Thx2I")
		LuaAddJx("combat_exp",exp,"Thx2")
		LuaGive("coin",10000,"Thx2")
		LuaSetTask("Thx2",99)
		LuaSetTask("T954",99)
		DelLog("954")
		LuaSetTask("Thx2sscode",99)
		LuaSetTask("Thx2J",0)
		if(LuaRandom(10)<5)then
			LuaGive("o_seed105",2,"Thx2")
		end
		 UpdateMenu()
	   else
			LuaSay("��ʾ������ȥ@4������@0��@3Ǯׯ�ϰ�@0������@2������߻���@0����˳��ͨ��������")
			LuaSay("��ʾ��ͨ�����һ���������г������黹�ж���Ľ���Ŷ@!")
	   end

      elseif(LuaQueryTask("Thx2")==99) then 
          LuaSay("�ذϹ磺����ľ��������������Ѿ���ɣ����������ɣ�@!")
    end



end
LuaSendMenu()
return 1
end 

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>�Զ������ȼ���������(AutoSearchTask)
function AutoSearchTask_Monster(level,collection)
tasknum="xhuanxing"
task={} --task[���]={ID,"��ͼ��","����",ɱ����,������,Lv}
task[21]={21,"����֮��","����",8,"task_kill/mon_003/T"..tasknum.."",0}
task[22]={22,"����֮��","���׳�",8,"task_kill/mon_004/T"..tasknum.."",0}
task[23]={23,"����֮��","���׳�",8,"task_kill/mon_004/T"..tasknum.."",0}
--����       0~10
task[24]={24,"��������","���",10,"task_kill/mon_007/T"..tasknum.."",1}
task[25]={25,"�嶷ɽ","����",10,"task_kill/mon_010/T"..tasknum.."",1}
task[26]={26,"�嶷ɽ","��ʦ�˱�",10,"task_kill/mon_011/T"..tasknum.."",1}
task[27]={27,"ɽկ","��ʦ��ͽ",10,"task_kill/mon_012/T"..tasknum.."",1}
task[28]={28,"ɽկ","����",10,"task_kill/mon_013/T"..tasknum.."",1}
task[29]={29,"ɽկ","����",10,"task_kill/mon_013/T"..tasknum.."",1}
task[30]={30,"ɽկ����","����",10,"task_kill/mon_014/T"..tasknum.."",1}
task[31]={31,"ɽկ����","��ʦ����",10,"task_kill/mon_015/T"..tasknum.."",1}
--����       10~20
task[32]={32,"������Ӫ","��������",12,"task_kill/mon_016/T"..tasknum.."",2}
task[33]={33,"��Ӫǰ��","��������",12,"task_kill/mon_019/T"..tasknum.."",2}
task[34]={34,"��Ӫǰ��","����",12,"task_kill/mon_020/T"..tasknum.."",2}
task[35]={35,"��ˮ֮��","��ˮ��",13,"task_kill/mon_021/T"..tasknum.."",2}
task[36]={36,"��ˮ֮��","Ѩ����",13,"task_kill/mon_022/T"..tasknum.."",2}
task[37]={37,"��ˮ�԰�","��ˮ��",13,"task_kill/mon_023/T"..tasknum.."",2}
task[38]={38,"��ˮ�԰�","��ˮ��",13,"task_kill/mon_024/T"..tasknum.."",2}
--����       20~30
task[39]={39,"��������","ص���ڱ�",15,"task_kill/mon_025/T"..tasknum.."",3}
task[40]={40,"��������","��ë��",15,"task_kill/mon_026/T"..tasknum.."",3}
task[41]={41,"μˮ֮��","ص��սʿ",15,"task_kill/mon_027/T"..tasknum.."",3}
task[42]={42,"μˮ֮��","����",15,"task_kill/mon_028/T"..tasknum.."",3}
task[43]={43,"��������","��ڹ�",15,"task_kill/mon_029/T"..tasknum.."",3}
task[44]={44,"��������","��Ҷ��",15,"task_kill/mon_030/T"..tasknum.."",3}
task[45]={45,"ʳ�˹�","����",15,"task_kill/mon_031/T"..tasknum.."",3}
task[46]={46,"ʳ�˹�","����",15,"task_kill/mon_032/T"..tasknum.."",3}
task[47]={47,"�׹Ƕ�","ʬ��",16,"task_kill/mon_033/T"..tasknum.."",3}
task[48]={48,"�׹Ƕ�","���ޱ�",16,"task_kill/mon_034/T"..tasknum.."",3}
--����       30~40
task[49]={49,"̫�йž�","����",20,"task_kill/mon_035/T"..tasknum.."",4}
task[50]={50,"̫�йž�","���ƾ���",20,"task_kill/mon_036/T"..tasknum.."",4}
task[51]={51,"̫��ɽ��","��ʯ��",20,"task_kill/mon_037/T"..tasknum.."",4}
task[52]={52,"̫��ɽ��","̫�й�Գ",20,"task_kill/mon_038/T"..tasknum.."",4}
task[53]={53,"����ؿ�","�Ի�",20,"task_kill/mon_046/T"..tasknum.."",4}
task[54]={54,"����ؿ�","ҹ��",20,"task_kill/mon_047/T"..tasknum.."",4}
--����       40~50
task[55]={55,"�κ���","����",25,"task_kill/mon_039/T"..tasknum.."",5}
task[56]={56,"�κ���","���",25,"task_kill/mon_040/T"..tasknum.."",5}
task[57]={57,"�κ���","��˧",25,"task_kill/mon_041/T"..tasknum.."",5}
task[58]={58,"������","���",25,"task_kill/mon_042/T"..tasknum.."",5}
task[59]={59,"������","����",25,"task_kill/mon_043/T"..tasknum.."",5}
task[60]={60,"������Ĺ","����ʬ",25,"task_kill/mon_044/T"..tasknum.."",5}
task[61]={61,"������Ĺ","Ѫ��ʬ",25,"task_kill/mon_045/T"..tasknum.."",5}
task[62]={62,"����","����",28,"task_kill/mon_048/T"..tasknum.."",5}
task[63]={63,"����","��ԭ��",28,"task_kill/mon_049/T"..tasknum.."",5}
--����       50~60
task[64]={64,"���н���","�ʱ�����",30,"task_kill/mon_050/T"..tasknum.."",6}
task[65]={65,"���н���","��Ы",30,"task_kill/mon_051/T"..tasknum.."",6}
task[66]={66,"��ս��","�ʱ�����",33,"task_kill/mon_052/T"..tasknum.."",6}
task[67]={67,"��ս��","ս��",33,"task_kill/mon_053/T"..tasknum.."",6}
task[68]={68,"��ս��","����",33,"task_kill/mon_054/T"..tasknum.."",6}
task[69]={69,"��������","��ħ��",35,"task_kill/mon_055/T"..tasknum.."",6}
task[70]={70,"��������","ս����",35,"task_kill/mon_056/T"..tasknum.."",6}
task[71]={71,"ɳĮ����","ԴϬ",35,"task_kill/mon_063/T"..tasknum.."",6}
task[72]={72,"ɳĮ����","ɰ��",35,"task_kill/mon_064/T"..tasknum.."",6}
--����       60~70
task[73]={73,"ɳĮ�Թ�","ɳ��",35,"task_kill/mon_057/T"..tasknum.."",7}
task[74]={74,"ɳĮ�Թ�","ɳ��",35,"task_kill/mon_058/T"..tasknum.."",7}
task[75]={75,"Į�����","��ԭ��",35,"task_kill/mon_059/T"..tasknum.."",7}
task[76]={76,"Į�����","����",35,"task_kill/mon_060/T"..tasknum.."",7}
task[77]={77,"��Ȼ���","��Ȼȭ��",35,"task_kill/mon_061/T"..tasknum.."",7}
task[78]={78,"��Ȼ���","��ʦа��",35,"task_kill/mon_062/T"..tasknum.."",7}
task[79]={79,"��������","���",35,"task_kill/mon_065/T"..tasknum.."",7}
task[80]={80,"��������","����",35,"task_kill/mon_066/T"..tasknum.."",7}
task[81]={81,"��ū��ͥ","��ū��ʿ",35,"task_kill/mon_067/T"..tasknum.."",7}
task[82]={82,"��ū��ͥ","��ū����",35,"task_kill/mon_068/T"..tasknum.."",7}
--����       70~80
task[83]={83,"�׻�ɽ","�׻�",40,"task_kill/mon_069/T"..tasknum.."",8}
task[84]={84,"�׻�ɽ","��ɽ����",40,"task_kill/mon_070/T"..tasknum.."",8}
task[85]={85,"������һ��","����",40,"task_kill/mon_071/T"..tasknum.."",8}
task[86]={86,"������һ��","ѪϬ",40,"task_kill/mon_072/T"..tasknum.."",8}
--����       80~90
task[87]={87,"����������","����",45,"task_kill/mon_073/T"..tasknum.."",9}
task[88]={88,"����������","�ɺ���ħ",45,"task_kill/mon_074/T"..tasknum.."",9}
task[89]={89,"ħ����","ħ�˸��",48,"task_kill/mon_075/T"..tasknum.."",8}
task[90]={90,"ħ����","˫ͷħ��",48,"task_kill/mon_076/T"..tasknum.."",8}
--����      90~ 





if(level~=0)then

		if(level<=20)then
			collection=(LuaRandom(3)+21)
		elseif(level<=30)then
			collection=(LuaRandom(11)+21)
		elseif(level<=40)then
			collection=(LuaRandom(18)+21)
		elseif(level<=50)then
			collection=(LuaRandom(34)+21)
		elseif(level<=60)then
			collection=(LuaRandom(23)+32)
		elseif(level<=70)then
			collection=(LuaRandom(32)+32)
		elseif(level<=80)then
			collection=(LuaRandom(41)+32)
		elseif(level<=90)then
			collection=(LuaRandom(51)+32)
		elseif(level<=100)then
			collection=(LuaRandom(55)+32)
		else
			collection=(LuaRandom(36)+55)
		end
end

	str1=task[collection][2]
	str2=task[collection][3]
	str3=task[collection][4]
	str4=task[collection][5]
	return collection,str1,str2,str3,str4
end

--***********************************************
function AutoSearchTask_Goods(level,collection)

goods={}
goods[111]={111,"o_mission020","��������",1,1}
goods[112]={112,"o_mission039","��������",1,2}
goods[113]={113,"o_mission040","��Ʒ����",1,3}
goods[114]={114,"o_mission168","����",1,3}
goods[115]={115,"o_mission153","��֦",1,3}
goods[116]={116,"o_mission145","��",1,3}
goods[117]={117,"o_mission018","�ƾɹŶ�",1,3}
goods[118]={118,"o_drug_hp3","����ɢ(���󶨵�)",3,1}
goods[119]={119,"o_drug_mp3","����¶(���󶨵�)",3,1}
goods[120]={120,"o_drug_hp2","��Ҷɢ",3,1}
goods[121]={121,"o_drug_mp2","����¶",3,1}
if(level~=0)then
	r=LuaRandom(18)
	if(r==0 or r==1)then
		collection=111
	elseif(r==2 or r==3)then
		collection=112
	elseif(r==4 or r==5)then
		collection=113
	elseif(r==6)then
		collection=114
	elseif(r==7)then
		collection=115
	elseif(r==8)then
		collection=116
	elseif(r==9)then
		collection=117
	elseif(r==10 or r==11)then
		collection=118
	elseif(r==12 or r==13)then
		collection=119
	elseif(r==14 or r==15)then
		collection=120
	else
		collection=121
	end
end

	str1=goods[collection][2]
	str2=goods[collection][3]
	str3=goods[collection][4]

	return collection,str1,str2,str3
end
--********************************
function AutoSearchTask_Material(level,collection)

material={}
material[311]={311,"o_material_11","1��ë",2,1}
material[312]={312,"o_material_20","1��Ƥ",2,1}
material[313]={313,"o_material_29","1����",2,1}
material[314]={314,"o_material_38","1��ľ",2,1}
material[315]={315,"o_material_47","1����",2,1}
material[316]={316,"o_material_56","1����",2,1}
material[317]={317,"o_material_12","2��ë",2,2}
material[318]={318,"o_material_21","2��Ƥ",2,2}
material[319]={319,"o_material_30","2����",2,2}
material[320]={320,"o_material_39","2��ľ",2,2}
material[321]={321,"o_material_48","2����",2,2}
material[322]={322,"o_material_57","2����",2,2}
material[323]={323,"o_material_13","3��ë",2,3}
material[324]={324,"o_material_22","3��Ƥ",2,3}
material[325]={325,"o_material_31","3����",2,3}
material[326]={326,"o_material_40","3��ľ",2,3}
material[327]={327,"o_material_49","3����",2,3}
material[328]={328,"o_material_58","3����",2,3}
material[329]={329,"o_material_14","4��ë",2,4}
material[330]={330,"o_material_23","4��Ƥ",2,4}
material[331]={331,"o_material_32","4����",2,4}
material[332]={332,"o_material_41","4��ľ",2,4}
material[333]={333,"o_material_50","4����",2,4}
material[334]={334,"o_material_59","4����",2,4}
if(level~=0)then
	if(level<30)then
		collection=(LuaRandom(6)+311)
	elseif(level<50)then
		collection=(LuaRandom(12)+311)
	elseif(level<70)then
		collection=(LuaRandom(18)+311)
	else
		collection=(LuaRandom(18)+317)
	end
end

	str1=material[collection][2]
	str2=material[collection][3]
	str3=material[collection][4]
	str4=material[collection][5]

return collection,str1,str2,str3,str4
end
		
--*************************Collection�ɼ�
function AutoSearchTask_Planting(level,collection)

planting={}
planting[511]={511,"o_seed006","������ֲ��","���ӻ�","o_mission094",2}
planting[512]={512,"o_seed010","������ֲ��","��β�ͻ�","o_mission095",2}
planting[513]={513,"o_seed025","������ֲ��","����","o_mission093",2}
planting[514]={514,"o_seed027","������ֲ��","�ɻ�","o_mission097",2}
planting[515]={515,"o_seed026","������ֲ��","������","o_mission098",2}

planting[516]={516,"o_seed104","�м���ֲ��","������","o_mission099",4}
planting[517]={517,"o_seed009","�м���ֲ��","޹�²�","o_mission100",4}
planting[518]={518,"o_seed017","�м���ֲ��","ĵ����","o_mission101",4}
planting[519]={519,"o_seed018","�м���ֲ��","ҹ����","o_mission102",4}
planting[520]={520,"o_seed019","�м���ֲ��","����ܰ","o_mission103",4}

planting[521]={521,"o_seed020","�߼���ֲ��","������","o_mission104",6}
planting[522]={522,"o_seed021","�߼���ֲ��","������","o_mission105",6}
planting[523]={523,"o_seed022","�߼���ֲ��","���㻨","o_mission106",6}
planting[524]={524,"o_seed023","�߼���ֲ��","������","o_mission107",6}
planting[525]={525,"o_seed024","�߼���ֲ��","���Ļ�","o_mission108",6}



if(level~=0)then
	if(level<30)then
		collection=LuaRandom(5)+511
	elseif(level<60)then
		collection=LuaRandom(5)+516
	else
		collection=LuaRandom(5)+521
	end
end

	str1=planting[collection][2]
	str2=planting[collection][3]
	str3=planting[collection][4]
	str4=planting[collection][5]
	return collection,str1,str2,str3,str4
end

--*********************************************
function AutoSearchTask_Boss(level,collection)
--[[if(level<20)then
	tasknum="xhuanxing001"
elseif(level<30)then
	tasknum="xhuanxing002"
elseif(level<40)then
	tasknum="xhuanxing003"
elseif(level<50)then
	tasknum="xhuanxing004"
elseif(level<60)then
	tasknum="xhuanxing005"
else
	tasknum="xhuanxing006"
end]]
boss={}
boss[611]={611,"��ʯ��","������ʿ","Txhuanxing001",4}
boss[612]={612,"�����","���а��","Txhuanxing002",5}
boss[613]={613,"��ˮ�ӵ�","����","Txhuanxing003",6}
boss[614]={614,"�׹Ƕ��","����ħ��","Txhuanxing004",7}
boss[615]={615,"̫�йȵ�","������","Txhuanxing005",8}
boss[616]={616,"������Ѩ","���꽫��","Txhuanxing006",9}
if(level~=0)then
	if(level<20)then
		collection=611
	elseif(level<30)then
		collection=612
	elseif(level<40)then
		collection=613
	elseif(level<50)then
		collection=614
	elseif(level<60)then
		collection=615
	else
		collection=616
	end	
end
	str1=boss[collection][2]
	str2=boss[collection][3]
	str3=boss[collection][4]

return collection,str1,str2,str3
end

--***********************************************************
function AutoSearchTask_Country(level,collection)

country={}
country[811]={811,"�Թź�ƽΪ����ȥ���ڹ��Ľ����ʺã��Դ���������ǵĳ���","ȥ���ڹ��Ľ����ʺ�","cuontry811"}
country[812]={812,"ȥ���ڹ���̨�ϲμ�һ������ȡ��ʤ��������ȡ����","ȥ�ڹ���̨��Ӯ��һ������","cuontry812"}


if(level~=0)then
	if(level<25)then
		collection=811
	else
		collection=LuaRandom(2)+811
	end
end
	str1=country[collection][2]
	str2=country[collection][3]
	str3=country[collection][4]
	return collection,str1,str2,str3
end


--****************************************************888
function AutoSearchTask_Faction(level,collection)
faction={}
faction[911]={911,"�����漱��ѭ����","faction911","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",2}
faction[912]={912,"�������ʡ�ѭ����","faction912","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",2}
faction[913]={913,"ְ�����ڡ�ѭ����","faction913","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",3}
faction[914]={914,"�������ʡ�ѭ����","faction914","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",3}
faction[915]={915,"�ռ�צ�ӡ�ѭ����","faction915","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",4}
faction[916]={916,"������ʳ��ѭ����","faction916","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",4}
faction[917]={917,"��ħ������ѭ����","faction917","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",5}
faction[918]={918,"[���а��][Ѱ�Ҹ�Դ][���ΰ취]","faction919","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",6}
faction[919]={919,"��ҡֱ�ϡ�ѭ����","faction918","���������ڹ�����۴���ȡ������㲻֪��������������Ҵ�����",6}
if(level~=0)then
	if(LuaQueryRank()<2)then
		if(level<30)then
			collection=LuaRandom(2)+911
		elseif(level<40)then
			collection=LuaRandom(2)+913
		elseif(level<50)then
			collection=LuaRandom(2)+915
		elseif(level<60)then
			collection=917
		elseif(level>=60)then
			collection=919
		end
	elseif(LuaQueryRank()>=2)then
		if(level<30)then
			collection=LuaRandom(2)+911
		elseif(level<40)then
			collection=LuaRandom(2)+913
		elseif(level<50)then
			collection=LuaRandom(2)+915
		elseif(level<60)then
			collection=LuaRandom(2)+917
		elseif(level>=60)then
			collection=919
		else
			
		end
	end
	str1=faction[collection][2]
	str2=faction[collection][3]
	str3=faction[collection][4]
end
		
	return collection,str1,str2,str3
end