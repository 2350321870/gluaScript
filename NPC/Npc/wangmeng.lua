NPCINFO = {
serial="310" ,
base_name="wangmeng" ,
icon=2568,
NpcMove=2568,
name="���͡�װ��ʹ�ߡ�" ,
iconaddr=1 ,
butt="10|10|60" ,
lastsay="�ߺ߹��٣�" ,
LuaType=1,
have_sell_item=1,
}
addBuyitem={
count=14,
{"o_drug_hp3" , 0  , 8 },
{"o_drug_mp3" , 0  , 8 },
{"o_falchionHC" , 0  , 8 },
{"o_shieldHC" , 0  , 8 },
{"o_swordHC" , 0  , 8 },
{"o_knifeHC" , 0  , 8 },
{"o_penfanHC" , 0  , 8 },
{"o_bookHC" , 0  , 8 },
{"o_clothesHC" , 0  , 8 },
{"o_pantsHC" , 0  , 8 },
{"o_headHC" , 0  , 8 },
{"o_shoesHC" , 0  , 8 },
{"o_earringHC" , 0  , 8 },
{"o_necklaceHC" , 0  , 8 },
}
function do_talk(answer)            
if (answer=="ask") then 
	havetask =0		
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7�˵��б�","")
	AddTopSayMenuItem("@1����˵���뾯��","jieshao")
	AddTopSayMenuItem("@3�ϳ�������","buy1")
	AddTopSayMenuItem("@7��˫���ÿ�ա�","Twsyl")
	AddTopSayMenuItem("@7�������ÿ�ա�","Ttzyl")
	AddTopSayMenuItem("@7�콵����ÿ�ա�","Ttjly")
	AddTopSayMenuItem("@3�һ��߼�����","dy_SP")
	AddTopSayMenuItem("@3�һ��߼�����","ly_SP")
	AddTopSayMenuItem("@3�뿪����","likai")
	AddTopSayMenuItem("����","liaotian")

return 1

elseif(answer=="liaotian") then
    LuaSay("���ͣ���ϧû˫�ع���ֻ��ˣ���ˣ���,��,����")
elseif(answer=="likai") then
	ChangeMap("lu_jkc")
elseif(answer=="jieshao") then
    LuaSay("���ͣ�С���м��͵ĸ��ʵ���40~100������װ�ϳ��飨���󶨣���С�ֹ������ܵͣ������кܸߵ�Ѫ����")
    LuaSay("���ͣ�boss��˫�ͽ��ĵȼ�Ϊ79��ɱ��boss��100%���Ի��һ���������񣨲��󶨣������񣨰󶨣���������һ�����ʵ�����װ�ϳ��飨���󶨣���")
    LuaSay("���ͣ�boss�Ĺ�������һ�㣡ӵ��300��ĳ���Ѫ����bossˢ��ʱ��Ϊ8Сʱ���ڴ��ڼ䣬boss��Ѫ������ָ��ģ�")
    LuaSay("���ͣ�@1����ͼΪ��PK��ͼ�����Ǵ򱦵�ͼ���ְ�ȫ��������ܻ����ܱ���������˵Ķ��⹥��������@0��ɱ�˲����PKֵ��")
    LuaSay("���ͣ�@1�����ɱ���˱��Լ��ͺܶ༶�������޷���ý��������ܱ���װ�������󶨣�����Ʒ�����󶨣��ģ�@0��")
    LuaSay("���ͣ�@1û����ǿ�������ˡ�����������ܴ򵽺ö�����ֻ���Ž���ŶӲ�����ǿ��@0��")
elseif(answer=="buy1") then
	local level=LuaQuery("level")
   if(LuaQuery("level")<10) then
		DoBuy()
   else
	  	if(LuaQueryTask("lendmoney")~=0 and floor(GetCurrentTime()/86400)-LuaQueryTask("lend_day")-floor(LuaQueryTask("credit")/10)*7-7>0)then
		LuaSay("���ͣ�@1������Ĵ����ѹ�����δ�����̽��������������˲�������ʱ��ֹ�������������")
		LuaSay("���ͣ�@1����ȥ����Ǯׯ�Ĵ������������ɣ�����ʱ�������ֹ���๦�ܵġ�")
		else
		DoBuy()
		end
  end
elseif(answer=="Twsyl")then    -------------��˫����
local level=LuaQuery("level")
    if(LuaQueryStrTask("Twsyl_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Twsyl",0)
		LuaSetTask("Twsyl_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("Twsyl") == 0)then
	LuaSay("���ͣ�ɱ��@310����˫ʿ��@0���һ����һ�������С���⣡����Ҫ������ɣ�����ڶ���ᱻ���õ�Ŷ��")
	LuaSetTask("Twsyl",1)
	LuaSetTask("task_kill/mon_145/Twsyl",1)
	UpdateMenu()
	elseif(LuaQueryTask("Twsyl") == 1)then
        if(LuaQueryTask("task_kill/mon_145/Twsyl")>=11) then
        AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","Twsyljl")
		else
		LuaSay("���ͣ���Ŀǰɱ��@3��˫ʿ��@0������Ϊ@3"..(LuaQueryTask("task_kill/mon_145/Twsyl")-1).."��@0��ɱ��@310@0�����ܽ�����")
		end
    elseif(LuaQueryTask("Twsyl") == 99)then
    LuaSay("���ͣ����Ѿ�����˽�����������������ɣ�")
    end
elseif(answer=="Twsyljl")then
	local level=LuaQuery("level")
	if(LuaQueryTask("Twsyl")==1) then
  		if(LuaQueryTask("task_kill/mon_145/Twsyl")>=11) then
  			local r=LuaRandom(2)
  			if(r==0)then
  			LuaGive("e_swordT1",1,3,"Twsyl")
			else
			LuaGive("e_swordT2",1,3,"Twsyl")
			end                                        
		LuaDelTask("task_kill/mon_145/Twsyl")
		LuaSetTask("Twsyl",99)
		UpdateMenu()
		end
	end
elseif(answer=="Ttzyl")then                       -----------------��������
	local level=LuaQuery("level")
    if(LuaQueryStrTask("Ttzyl_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Ttzyl",0)
		LuaSetTask("Ttzyl_Taskday",GetCurrentDay())
	end
	 if(LuaQueryTask("Ttzyl") == 0)then
	 LuaSay("���ͣ�ɱ����˫ʿ���ռ�@330����������@0���һ����һ��������@7����@0��������Ʒ����û�Ͻ����ڶ�����Ȼ����ڵģ�")
	 LuaSetTask("Ttzyl",1)
	 UpdateMenu()
	elseif(LuaQueryTask("Ttzyl") == 1)then
        if (LuaItemCount("o_mission419")>=30)then
        AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","Ttzyljl")
		else
		LuaSay("���ͣ���Ŀǰ���@7��������@0������Ϊ@3"..(LuaItemCount("o_mission419")).."��@0����Ҫ@330@0�����ܽ�����")
		end
    elseif(LuaQueryTask("Ttzyl") == 99)then
    LuaSay("���ͣ����Ѿ�����˽�����������������ɣ�")
    end
elseif(answer=="Ttzyljl")then
	local level=LuaQuery("level")
	if(LuaQueryTask("Ttzyl")==1) then
  		if (LuaItemCount("o_mission419")>=30)then
  		DelItem("o_mission419",30)
		local num
  		if(LuaQuery("level")<30) then    ------��
		num=1
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		num=2
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		num=4
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		num=10
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
		num=17
		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
		num=25
		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
		num=35
		elseif(LuaQuery("level")>=90) then
		num=45
		end
  		LuaGive("o_douyu",num,"Ttzyl")                                        
		LuaSetTask("Ttzyl",99)
		UpdateMenu()
		end
	end
elseif(answer=="Ttjly")then
	local level=LuaQuery("level")
    if(LuaQueryStrTask("Ttjly_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Ttjly",0)
		LuaSetTask("Ttjly_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("Ttjly") == 0)then
		if(LuaFreeBag()>=2)then	
	   		if(LuaQuery("onlinetime")>7200)then
			LuaSay("���ͣ����Ѿ���������@32Сʱ@0�������֮�������ɹ��Ļ��������")
			local num
			if(LuaQuery("level")<30) then    ------��
			num=1
			elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			num=2
			elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			num=5
			elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			num=10
			elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
			num=15
			elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
			num=20
			elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
			num=25
			elseif(LuaQuery("level")>=90) then
			num=30
			end
  			LuaGive("o_longyu",num,"Ttjly")
			LuaSetTask("Ttjly",99)
			UpdateMenu()
			else
		    LuaSay("���ͣ���Ŀǰ����ʱ�䲻��@32Сʱ@0���޷���ȡ������")
			end
		else
		LuaSay("��ʾ�������ٱ���2������ռ䣬����������ʧ��")
		end
    elseif(LuaQueryTask("Ttjly") == 99)then
    LuaSay("���ͣ����Ѿ�����˽�����������������ɣ�")
    end
elseif(answer=="dy_SP")then
	if(LuaFreeBag()>=2)then	
		if(LuaItemStatusNormalCount("o_douyu")>=100)    then
	    	LuaSay("���ͣ���ȷ��Ҫ��@3100@0��@7����@0�һ�@31@0��@7�߼�����@0��")
	   		AddMenuItem("@7�Ƿ񻻣�","")
			AddMenuItem("@7��","dy_SP_yes","")
		else
	   		 LuaSay("���ͣ������ϵĶ�����@3100@0�����޷��һ���")
		end
	else
	LuaSay("��ʾ�������ٱ���2������ռ䣬����������ʧ��")
	end
elseif(answer=="dy_SP_yes") then
    if(LuaItemStatusNormalCount("o_douyu")>=100)  then
    LuaGive("o_douyuSP",1,"douyu_SP")
    DelItem("o_douyu",100)
    end
elseif(answer=="ly_SP")then
	if(LuaFreeBag()>=2)then	
		if(LuaItemStatusNormalCount("o_longyu")>=50)    then
	   	 	LuaSay("���ͣ���ȷ��Ҫ��@350@0��@3����@0�һ�@31@0��@3�߼�����@0��")
	    	AddMenuItem("@7�Ƿ񻻣�","")
			AddMenuItem("@7��","ly_SP_yes","")
		else
	    	LuaSay("���ͣ������ϵ�������@350@0�����޷��һ���")
		end
	else
	LuaSay("��ʾ�������ٱ���2������ռ䣬����������ʧ��")
	end
elseif(answer=="ly_SP_yes") then
    if(LuaItemStatusNormalCount("o_longyu")>=50)  then
    LuaGive("o_longyuSP",1,"longyu_SP")
    DelItem("o_longyu",50)
    end
    
end
LuaSendMenu()
return 1
end
