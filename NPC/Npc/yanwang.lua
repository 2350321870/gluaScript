NPCINFO = { 
serial="121" ,
base_name="yanwang",
icon=2504,
NpcMove=2504,
name="����" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="�����������޴�Ȩ...һ���ܰ���",
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
	local T690=LuaQueryTask("T690")
	local T691=LuaQueryTask("T691")
	AddTopSayMenuItem("@7�����б�","")
	if(level>=50)then
		AddTopSayMenuItem("@2[��]@0@3С������","T110")
	elseif(level>=55)then
		AddTopSayMenuItem("@3С������","T110")
	end
	if((LuaQueryTask("Tsnpc_65")==1 or LuaQueryTask("Tsnpc_65")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_65")
		if(LuaQueryTask("Tsnpc_65")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_65")==1 or LuaQueryTask("Tenpc_65")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_65")
		if(LuaQueryTask("Tenpc_65")==1)then
			havetask2=1
		end
	end
	if(T691==1)then
		AddTopSayMenuItem("@2��ȶ�����顿","T691")
	end
	if(LuaQueryTask("T692")==1) then
		AddTopSayMenuItem("@2�������ߡ����顿","T692")
	end
	if(LuaQueryTask("T712")==1 or LuaQueryTask("T712")==2)then
		AddTopSayMenuItem("@2սǰ���顾���顿","T712")
		if(LuaQueryTask("T712")==1 )then
			havetask2=1
		end
	end
	if(T690==3 or T690==1)then
		AddTopSayMenuItem("@2Ľ�ݴ�֮��ŵ�����顿","T690")
		if(T690==1)then
		havetask2=1
		end
	end
	if(LuaQueryTask("Tbprw003")==7 or LuaQueryTask("Tbprw003")==8)then
		AddTopSayMenuItem("@2̽�����ơ�ÿ�ա�@0","Tbprw003")
		havetask2=1
	end


	if(T690==0 and level>=54)then
		AddTopSayMenuItem("Ľ�ݴ�֮��ŵ�����顿","T690")
		havetask1=1
	end
	if(T691==0 and level>=54)then
		AddTopSayMenuItem("��ȶ�����顿","T691")
		havetask1=1
	end
	if(LuaQueryTask("T692")==0 and level>=53) then
		AddTopSayMenuItem("�������ߡ����顿","T692")
		havetask1=1
	end

	if(LuaQueryTask("T662")==1 or LuaQueryTask("T662")==2)then
		AddTopSayMenuItem("@2��Ѫ��ĸ�����顿","T662")
		havetask=1
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
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	
	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1

-----------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("������ĸ��Ϊ����˴���!") 
	   --LuaGive("e_xysj2",1,5)
	   --LuaGive("e_pet400",1)

-----------------------------------------------
------------------------------------------------ ��Ѫ��ĸ�����顿
elseif(answer=="T662")then
	if(LuaQueryTask("T662")==1)then
	    LuaSay(""..LuaQueryStr("name").."����̫��ּ����ȡ������Ѫ��������������")
	    LuaSay("������ɫ�԰ף����˸�������õ������֣����˰���Ѫ��")
	    LuaGive("o_mission360",1)
	    LuaSetTask("T662",2)
	    AddLog("��Ѫ��ĸ�����顿",662)
	    UpdateMenu()
	elseif(LuaQueryTask("T662")==2)then
		LuaSay("���������ҵ�Ѫ��ĸ�״�ȥ�ɣ�")
		
	end
elseif(answer=="T660") then
	if(LuaQueryTask("T660")==1) then
     		LuaSay("����������ɽ�ǵ��ӻ����˴���Ҫһ���˲θ���")
	elseif(LuaQueryTask("T660")==3) then
		LuaSay(""..LuaQueryStr("name").."����̫���������һ��@3�˲�@0���㲹Ѫ����")
        if(LuaItemCount("o_mission355")>=1) then
			LuaSay("����������лл��̫��")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T660jl")
    	elseif(LuaItemCount("o_mission355")<1) then
    		LuaSay(""..LuaQueryStr("name").."���ţ���ô�����@3�˲�@0�����ˣ��ҵ�1000��ͭ�Ұ�������ȥ����@3�˲�@0��")
		LuaSay("������...")
		LuaSetTask("T660",1)
		AddLog("�������֪�����顿",660)-------��־�����
		UpdateMenu()
		end
	end
elseif(answer=="T660jl") then
	if(LuaQueryTask("T660")==3) then
	    LuaSetTask("T660",99)
	    DelLog("660")                 
	    LuaAddJx("combat_exp",972000,"T660")
		LuaAddAchievementSchedule("Task_num",1)	
	    LuaGive("coin",2000,"T660")
	    UpdateMenu()
	end
-----------------------------------   ��������
elseif(answer=="T692") then
	if(LuaQueryTask("T692")==0) then
		LuaSay(""..LuaQueryStr("name").."����֪������Ϊ�μ����һ���˾��֣�")
		LuaSay("������¶��ɫ��˵������ȥ��@3����@0�ɣ����������һ�е�")
		LuaSetTask("T692",1)      -------��־�����
		AddLog("�������ߡ����顿",692)
		UpdateMenu()
		UpdateNPCMenu("shizhe")
	elseif(LuaQueryTask("T692")==1) then
		LuaSay("����������ɽ��������")
	end
-------------------------------------  սǰ���顾���顿
elseif(answer=="T712")then
	if(LuaQueryTask("T712")==1)then
		LuaSay(""..LuaQueryStr("name").."��������Ĺ�û�̫�����˽�ֹ����֪������ʲô��ߡ�")
		LuaSay("���������ֳ���ʬ�Ǿ�����Ĺ�У��ɽ����֮������ĸ��ϲ�����㣬��ɴ�һ����������ȥ��")
		LuaSetTask("T712",2)
		AddLog("սǰ���顾���顿",712)
		UpdateMenu()
		UpdateNPCMenu("huntaihou")
	elseif(LuaQueryTask("T712")==2)then
		LuaSay("������Ϊ�����ǵ�ʤ���������Ȼ�¸��ĸ�ף����һ��@2��������@0ȥ����ĸ�ף�������@4�κ���@0")
	end

elseif(answer=="T690")then                   ---------------------------------Ľ�ݴ��ĳ�ŵ�����顿
	if(LuaQueryTask("T690")==0)then
	LuaSay("��������֪���ҵ�ĸ�׽���ʧ�ܣ���Ȼ���ܶ������ǻ����������ת��@4̫�йž�@0��@3Ľ�ݴ�@0����������һ�棬����ĸ��һ��")
	LuaSay(LuaQueryStr("name").."����Ҳ��ͬ�����ĸ�ף�����ģ��һ�ȥ��@3Ľ�ݴ�@0˵�ģ�")
	LuaSetTask("T690",1)
	AddLog("Ľ�ݴ��ĳ�ŵ�����顿",690)
	UpdateTopSay("��ȥת��̫�йž���Ľ�ݴ�")
	UpdateMenu()

	elseif(LuaQueryTask("T690")==1)then
	LuaSay("��������ȥת��@4̫�йž�@0��@3Ľ�ݴ�@0��")

	elseif(LuaQueryTask("T690")==3)then
	LuaSay("��������ô����@3Ľ�ݴ�@0��ô˵����")
	LuaSay(LuaQueryStr("name").."�����İɣ�����ŵ���ˣ���������һ��ģ�")
	LuaSay("��������л���£�Ҳ��лĽ�ݴ��Ŀ��ݣ�")
	AddMenuItem("�������","")
	AddMenuItem("��ȡ����","T690jl")
	end

	elseif(answer=="T690jl")then          --------------------------------690����
	if(LuaQueryTask("T690")==3)then
		LuaSetTask("T690",99)
		DelLog("690")
		LuaAddJx("combat_exp",1211000,"T690")
		LuaAddAchievementSchedule("Task_num",1)	
		UpdateMenu()
	end


elseif(answer=="T691")then                   ----------------------------------��ȶ�����顿
	if(LuaQueryTask("T691")==0)then
	LuaSay("���������ս������΢ƽϢ����Ȼ����Ȩ���ƣ���Ҷ�˵���Ǹ����ܣ����ǱϾ�������ĸ�ף��������˳���������ʱ���ˣ�")
	LuaSay("����������ȥ��@3Ľ�ݴ�@0����ͳһ֮�°ɣ�")
	LuaSetTask("T691",1)
	AddLog("��ȶ�����顿",691)
	UpdateTopSay("��Ľ�ݴ�����ͳһ֮��")
	UpdateMenu()

	elseif(LuaQueryTask("T691")==1)then
	LuaSay("�������Ͻ�ȥĽ�ݴ����")
	end
	
	
---------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("��������̫������ĸ�ף�����Ϊ����˴���!")
       elseif(answer=="jkc") then
       ChangeMap("lu_jkc")
       elseif(answer=="lyc") then
       ChangeMap("lu_lyc")
       elseif(answer=="yzc") then
       ChangeMap("lu_yzc")

elseif(answer=="Tbprw003")then                -------------------------̽������
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw003")==7)then
			LuaSay(LuaQueryStr("name").."������Զ������������˵��û����ʵȨ���������Ĵ���գ��Ǹ��þ�����������������̼������⣬��֪�ɷ񰡣�")
				LuaSay("�������ѵ����������ˣ���ʲô���⾡��˵�ɣ�")
			LuaSay(LuaQueryStr("name").."��������ǰ�����������������������֣�")
			LuaSay("��������Ȼ��ûʵȨ������������������Ҹ���Ľ�����ǲ���ΪӪ��")
			LuaSetTask("Tbprw003",8)
			UpdateMenu()

		elseif(LuaQueryTask("Tbprw003")==8)then
			LuaSay("��������ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
		end
	else
		LuaSay("�����������������@2̽�����ơ�ÿ�ա�δ��ɣ������Զ����ã���@4����@0�����½�����ɣ�")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaDelTask("Tbprw003")
		UpdateMenu()
	end

elseif(answer=="Tsnpc_65")then
	if(LuaQueryTask("Tsnpc_65")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("���������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_65",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_65")==2)then
		LuaSay("���������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_65")then
	if(LuaQueryTask("Tenpc_65")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�������ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_65",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_65")==2)then
		LuaSay("���������Ѿ������ˣ����ȥ��ȡ������")
	end


--------------------------------------------------------------------------  �Ĳ���ʼ������ÿ�նĲ�������ѹ1000ͭ�ҵ�ʱ�򣬴Ӹ����ϱ�֤����ܹ�ӮǮ
elseif(answer=="T110") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tduboday")) then
		LuaSetTask("Tdubomoney",0)
	end
        LuaSay("������С�����飬��ķ��ң���Ͼ֮��β���������@!��˵���������������������ء�")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("ѹ@3100ͭ��","100T","")
		AddMenuItem("ѹ@31000ͭ��","1T","")
		AddMenuItem("ѹ@35000ͭ��","5T","")
		AddMenuItem("ѹ@310000ͭ��","10T","")

elseif(answer=="100T") then
	if(LuaItemCount("coin")>=1000) then
		LuaSetTask("Tduboday",GetCurrentDay())
		LuaSetTask("money",100)
		LuaSay("������ѹ@3����@0��")
		AddMenuItem("ѡ���б�","","")       
		AddMenuItem("A   1��","one1","")
		AddMenuItem("B   2��","two2","")
		AddMenuItem("C   3��","three3","")
		AddMenuItem("D   4��","four4","")
		AddMenuItem("E   5��","five5","")
		AddMenuItem("F   6��","six6","")
	else
		LuaSay("��ܰ��ʾ����������1000ͭ�Ҷ�û�У�����̫����˼���ˣ������ǲ�Ҫѹ�ˣ��ú���Ϸ�ɡ�")
	end
elseif(answer=="1T") then
	if(LuaItemCount("coin")>=10000) then
		LuaSetTask("Tduboday",GetCurrentDay())
		LuaSetTask("money",1000)
		LuaSay("������ѹ@3����@0��")
		AddMenuItem("ѡ���б�","","")       
		AddMenuItem("A   1��","one1","")
		AddMenuItem("B   2��","two2","")
		AddMenuItem("C   3��","three3","")
		AddMenuItem("D   4��","four4","")
		AddMenuItem("E   5��","five5","")
		AddMenuItem("F   6��","six6","")
	else
		LuaSay("��ܰ��ʾ������ͭ�Ҳ���10000��ӵ��1�����ϲ���ѹ1ǧ��������ѹС��ɣ�")
	end

elseif(answer=="5T") then
	if(LuaItemCount("coin")>=50000) then
		LuaSetTask("Tduboday",GetCurrentDay())
		LuaSetTask("money",5000)                          
		LuaSay("������ѹ@3����@0��")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("A   1��","one","")
		AddMenuItem("B   2��","two","")
		AddMenuItem("C   3��","three","")
		AddMenuItem("D   4��","four","")
		AddMenuItem("E   5��","five","")
		AddMenuItem("F   6��","six","")
	else
		LuaSay("��ܰ��ʾ������ͭ�Ҳ���50000��ӵ��5�����ϲ���ѹ5ǧ��������ѹС��ɣ�")
	end

elseif(answer=="10T") then
	if(LuaItemCount("coin")>=100000) then
		LuaSetTask("Tduboday",GetCurrentDay())
		LuaSetTask("money",10000)                          
		LuaSay("������ѹ@3����@0��")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("@31��","one")
		AddMenuItem("@32��","two")
		AddMenuItem("@33��","three")
		AddMenuItem("@34��","four")
		AddMenuItem("@35��","five")
		AddMenuItem("@36��","six")
	else
		LuaSay("��ܰ��ʾ������ͭ�Ҳ���100000��ӵ��10�����ϲ���ѹ1��������ѹС��ɣ�")
	end
-------------------------------------------------------------ѹ1000����� 

elseif(answer=="one1" and LuaQueryTask("money")>0) then                --------------------ѹ1��
	local r1 = LuaRandom(10)
	local money=LuaQueryTask("money")--ѹ�˶���Ǯ
	LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
	if(r1==0 or r1==6)  then
		if(LuaQueryTask("Tdubomoney")<100000) then
			LuaSay("��ϲ���£������@31��@0Ү���������Ǻð�@!")
			LuaGive("coin",5*money,"T110")
			LuaAddTask("Tdubomoney",5*money)
			LuaDelTask("money")
			if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
			LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
			LuaSetTask("Thx2B",99)
			end
			end
		else
			if(LuaRandom(5)>1) then
				LuaSay("��ϲ���£������@31��@0Ү���������Ǻð�@!")
				LuaGive("coin",5*money,"T110")
				LuaAddTask("Tdubomoney",5*money)
				LuaDelTask("money")
				if(LuaQueryTask("Thx2")==2) then
					if(LuaQueryTask("Thx2B")==0) then
						LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
						LuaSetTask("Thx2B",99)
					end
				end
			else
				LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
				LuaGive("coin",-money,"T110")
				LuaAddTask("Tdubomoney",-money)
				LuaDelTask("money")
				if(LuaQueryTask("Thx2")==2) then
					if(LuaQueryTask("Thx2B")==0) then
						LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
						LuaSetTask("Thx2B",99)
					end
				end
			end
		end
	elseif(r1==1 or r1==2)  then
		LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
				LuaSetTask("Thx2B",99)
			end
		end
	elseif(r1==3 or r1==4)  then
		LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
				LuaSetTask("Thx2B",99)
			end
		end
	elseif(r1==5 or r1==7)  then
		LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
				LuaSetTask("Thx2B",99)
			end
		end
	elseif(r1==8)  then
		LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
				LuaSetTask("Thx2B",99)
			end
		end
	elseif(r1==9)  then
		LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
				LuaSetTask("Thx2B",99)
			end
		end
	  end
elseif(answer=="two2" and LuaQueryTask("money")>0) then              --------------------ѹ2��
	local r2 = LuaRandom(10)
	local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r2==0 or r2==2)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==1 or r2==6)  then
      if(LuaQueryTask("Tdubomoney")<100000) then
         LuaSay("��ϲ���£������@32��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
       else
         if(LuaRandom(5)>1) then
          LuaSay("��ϲ���£������@32��@0Ү���������Ǻð�@!")
          LuaGive("coin",5*money,"T110")
          LuaAddTask("Tdubomoney",5*money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
          LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
          LuaGive("coin",-money,"T110")
          LuaAddTask("Tdubomoney",-money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
       end
      elseif(r2==3 or r2==4)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==5 or r2==7)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
		if(LuaQueryTask("Thx2B")==0) then
		LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
		LuaSetTask("Thx2B",99)
		end
		end
      elseif(r2==8)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==9)  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
	  end
elseif(answer=="three3" and LuaQueryTask("money")>0) then              --------------------ѹ3��
     local  r3 = LuaRandom(10)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r3==0 or r3==1)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==2 or r3==3)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==4 or r3==5)  then
      if(LuaQueryTask("Tdubomoney")<100000) then
         LuaSay("��ϲ���£������@33��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
       else
         if(LuaRandom(5)>1) then
          LuaSay("��ϲ���£������@33��@0Ү���������Ǻð�@!")
          LuaGive("coin",5*money,"T110")
          LuaAddTask("Tdubomoney",5*money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
          LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
          LuaGive("coin",-money,"T110")
          LuaAddTask("Tdubomoney",-money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
       end
      elseif(r3==6 or r3==7)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==8)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==9)  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end

      elseif(answer=="four4" and LuaQueryTask("money")>0) then              --------------------ѹ4��
      local r4 = LuaRandom(10)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r4==0 or r4==7)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==1 or r4==8)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==2)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==3 or r4==6)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
            LuaSay("��ϲ���£������@34��@0Ү���������Ǻð�@!")
            LuaGive("coin",5*money,"T110")
            LuaAddTask("Tdubomoney",5*money)
            LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
           if(LuaRandom(5)>1) then
             LuaSay("��ϲ���£������@34��@0Ү���������Ǻð�@!")
             LuaGive("coin",5*money,"T110")
             LuaAddTask("Tdubomoney",5*money)
             LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
           else
             LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
             LuaGive("coin",-money,"T110")
             LuaAddTask("Tdubomoney",-money)
             LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
           end
        end
        
      elseif(r4==4 or r4==9)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==5)  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end


      elseif(answer=="five5" and LuaQueryTask("money")>0) then              --------------------ѹ5��
      local r5 = LuaRandom(10)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r5==0 or r5==1)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==2 or r5==3)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==4 or r5==5)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==6)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==7 or r5==8)  then
      if(LuaQueryTask("Tdubomoney")<100000) then
         LuaSay("��ϲ���£������@35��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
       else
         if(LuaRandom(5)>1) then
          LuaSay("��ϲ���£������@35��@0Ү���������Ǻð�@!")
          LuaGive("coin",5*money,"T110")
          LuaAddTask("Tdubomoney",5*money)
          LuaDelTask("money")
           if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
          LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
          LuaGive("coin",-money,"T110")
          LuaAddTask("Tdubomoney",-money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
       end
      elseif(r5==9 )  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end

      elseif(answer=="six6" and LuaQueryTask("money")>0) then              --------------------ѹ6��
     local r6 = LuaRandom(10)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r6==1)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==2 or r6==3)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==4 or r6==5)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==6 or r6==7)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==8)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==0 or r6==9)  then
      if(LuaQueryTask("Tdubomoney")<100000) then
         LuaSay("��ϲ���£������@36��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
       else
         if(LuaRandom(5)>1) then
          LuaSay("��ϲ���£������@36��@0Ү���������Ǻð�@!")
          LuaGive("coin",5*money,"T110")
          LuaAddTask("Tdubomoney",5*money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
          LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
          LuaGive("coin",-money,"T110")
          LuaAddTask("Tdubomoney",-money)
          LuaAddTask("Tdubomoney",-money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
       end
      end
      
      
  ----------------------------              ѹ5000��1W����� 
  elseif(answer=="one" and LuaQueryTask("money")>0) then                --------------------ѹ1��
      local r1 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r1==0)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("��ϲ���£������@31��@0Ү���������Ǻð�@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("��ϲ���£������@31��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r1==1)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r1==2)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r1==3)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r1==4)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r1==5)  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
	  end
    elseif(answer=="two" and LuaQueryTask("money")>0) then              --------------------ѹ2��
      local r2 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r2==0)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==1)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("��ϲ���£������@32��@0Ү���������Ǻð�@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("��ϲ���£������@32��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
           if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r2==2)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==3)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==4)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==5)  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
	  end
    elseif(answer=="three" and LuaQueryTask("money")>0) then              --------------------ѹ3��
      local r3 = LuaRandom(6)
      money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r3==0)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==1)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==2)  then
       if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("��ϲ���£������@33��@0Ү���������Ǻð�@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
           if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("��ϲ���£������@33��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r3==3)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==4)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==5)  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end

      elseif(answer=="four" and LuaQueryTask("money")>0) then              --------------------ѹ4��
      local r4 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r4==0)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==1)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==2)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==3)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("��ϲ���£������@34��@0Ү���������Ǻð�@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("��ϲ���£������@34��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r4==4)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==5)  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end


elseif(answer=="five" and LuaQueryTask("money")>0) then              --------------------ѹ5��
      local r5 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r5==0)  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==1)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
     money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==2)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
     money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==3)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==4)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("��ϲ���£������@35��@0Ү���������Ǻð�@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("��ϲ���£������@35��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r5==5)  then
      LuaSay("���˰����ۣ���ϧ��@36��@0�����²�Ҫ���ģ��´�������@!")
      money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end

elseif(answer=="six" and LuaQueryTask("money")>0) then              --------------------ѹ6��
      local r6 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("��ҡ��ҡ����֪������������ΰ�@!")
      if(r6==0  )  then
      LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==1)  then
      LuaSay("���˰����ۣ���ϧ��@32��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==2)  then
      LuaSay("���˰����ۣ���ϧ��@33��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==3)  then
      LuaSay("���˰����ۣ���ϧ��@34��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==4)  then
      LuaSay("���˰����ۣ���ϧ��@35��@0�����²�Ҫ���ģ��´�������@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==5)  then
       if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("��ϲ���£������@36��@0Ү���������Ǻð�@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("��ϲ���£������@36��@0Ү���������Ǻð�@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("���˰����ۣ���ϧ��@31��@0�����²�Ҫ���ģ��´�������@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ�������ڶ�������ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      end    



end
LuaSendMenu()
return 1
end 

