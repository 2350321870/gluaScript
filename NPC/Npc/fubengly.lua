NPCINFO = {
serial="24" ,
base_name="fubengly" ,
icon=2563,
NpcMove=2563,
name="����ʹ��" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="��ǿװ�����ڸ���" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
    havetask =0
	level= LuaQuery("level")	
	if(level>80)then
			level=80
	end
	AddTopSayMenuItem("@7����ϵͳ","")
	AddTopSayMenuItem("@3�´��Թ������","Txmigong")	
	AddTopSayMenuItem("@3�Թ��þ������","Tmigong")
	AddTopSayMenuItem("@3�򱦸���","dabaofb") 
	AddTopSayMenuItem("@3��˫ս��","wszc")


--	AddTopSayMenuItem("@3��ս����","tiaozhanfb")
--	AddTopSayMenuItem("@3��������","shengjinfb")
--	AddTopSayMenuItem("@3ǧ������","Tqlxs")
	AddTopSayMenuItem("@3������Դ��������","taoyuan")
	if((LuaQueryTask("Tsnpc_10")==1 or LuaQueryTask("Tsnpc_10")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_10")
		if(LuaQueryTask("Tsnpc_10")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_10")==1 or LuaQueryTask("Tenpc_10")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_10")
		if(LuaQueryTask("Tenpc_10")==1)then
			havetask2=1
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

elseif(answer=="liaotian") then
	 LuaSay("����ʹ�ߣ����븱������ǰ��δ�е���ս�ɣ�")


elseif(answer=="dabaofb") then
    LuaSay("@1��ʾ@0�����һ������boss���˲����ǻ�ɱboss���ˡ����ϴ������ɫװ����һ�����ʻ����ɫװ������С���ʻ�ûƽ�װ����")
    LuaSay("@1��ʾ@0���������ϵĶ���@3һ��ɱ��boss@0�����Խ����ڱ���ͼ�������ڵ��������飡װ����������С���ʵ�Ԫ�����ߣ�")
    LuaSay("@1��ʾ@0��������Чʱ���Ǵӵ�һ�����븱���Ķ��ѿ�ʼ��ʱŶ@!")
	AddMenuItem("@7�����б�","")
	if(LuaQuery("level")>=20 ) then
	AddMenuItem("@7��������ÿ�ա�","fbrw")  -------�������� 
	end

	if(LuaQuery("level")>=20 ) then
	AddMenuItem("@7������ֵ����","fbtimes")  -------������ֵ����
	end
	AddMenuItem("@3��������(20~29)","20")
	AddMenuItem("@3а��֮��(30~39)","30")
    AddMenuItem("@3�嶷ɽƽ��(40~49)","40")
    AddMenuItem("@3���³�Ѩ(50~59)","50")
	AddMenuItem("@3��ڤ��Ѩ(60~)","60")
	AddMenuItem("@3�ž���(70~)","70")


--------------                      -------�������� 
elseif(answer=="fbrw") then
	if(LuaQueryStrTask("Tfbrw_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Tfbrw",0)
		LuaSetTask("Tfbrw_Taskday",GetCurrentDay())
		UpdateMenu()
	end
	if(LuaQueryTask("Tfbrw")==0) then
		if(LuaQuery("level")>=20 and LuaQuery("level")<30) then    
		LuaSay("����ʹ�ߣ�ֻҪ�����@3��������(20~29)@0�����ĵ����ŵ�ͼ������������񣬿��Իظ����콱�ˣ�")
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		LuaSay("����ʹ�ߣ�ֻҪ�����@3а��֮��(30~39)@0�����ĵ����ŵ�ͼ������������񣬿��Իظ����콱�ˣ�")
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		LuaSay("����ʹ�ߣ�ֻҪ�����@3�嶷ɽƽ��(40~49)@0�����ĵ����ŵ�ͼ������������񣬿��Իظ����콱�ˣ�")
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		LuaSay("����ʹ�ߣ�ֻҪ�����@3���³�Ѩ(50~59)@0�����ĵڶ��ŵ�ͼ������������񣬿��Իظ����콱�ˣ�")
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<80) then
		LuaSay("����ʹ�ߣ�ֻҪ�����@3��ڤ��Ѩ(60~)@0�����ĵ����ŵ�ͼ������������񣬿��Իظ����콱�ˣ�")
		end
		UpdateMenu()
	elseif(LuaQueryTask("Tfbrw")==1) then
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
  		Tfbrw_exp=lv_exp+(LuaRandom(20)+20)*level^2
  		LuaAddJx("combat_exp",Tfbrw_exp,"Tfbrw")
  		
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
  		LuaGive("o_douyu",num,"Tfbrw") 
  		LuaSetTask("Tfbrw",99)
	elseif(LuaQueryTask("Tfbrw")==99) then
		LuaSay("����ʹ�ߣ����Ѿ�����˸����������������Ұɡ�")
	end
--------------                      -------���ӽ��븱������
elseif(answer=="fbtimes") then
	local lv_flag		                                                    
    pay={}
	pay[1]={20,30,1,1,"o_gold1y","@9ͨ��@0",0,0,"o_gold2y","@8��Ʊ@0","@3��������(20~29)@0","jjbf_1time",3}
	--������1   2 3 4  5          6         7 8  9          10          11                   12          13
	----1�����븱������͵ȼ�,2����ߵȼ�,3�������������ѵ��ǲ��֣� ,4����ȡYB����1��ʼ��,5��������Ŀ,6��YB����1��id,7��YB����1��id
	----8����ȡYB����2��ʼ��,9��������Ŀ,10��YB����2��id,11��YB����2��id  ,12����Ӧ��ͼ ,13����Ӧ��ͼ�������
	pay[2]={30,40,2,2,"o_gold1y","@9ͨ��@0",0,0,"o_gold2y","@8��Ʊ@0","@3а��֮��(30~39)@0","fbxezdintime",3}
	pay[3]={40,50,5,0,"o_gold1y","@9ͨ��@0",0,1,"o_gold2y","@8��Ʊ@0","@3�嶷ɽƽ��(40~49)@0","wdspltime",2}
	pay[4]={50,60,0,0,"o_gold1y","@9ͨ��@0",1,2,"o_gold2y","@8��Ʊ@0","@3���³�Ѩ(50~59)@0","dxcxintime",2}
	pay[5]={60,70,0,0,"o_gold1y","@9ͨ��@0",2,3,"o_gold2y","@8��Ʊ@0","@3��ڤ��Ѩ(60~)@0","ymdxintime",2}
	---------------
	if(LuaQuery("level")<30) then    ------�����
		lv_flag=1
	elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		lv_flag=2
	elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		lv_flag=3
	elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		lv_flag=4
	elseif(LuaQuery("level")>=60 ) then
		lv_flag=5
    end                                                       
    if(LuaQueryStrTask("Tfbtimes_Taskday")~=GetCurrentDay()) then

		LuaSetTask("NUM_TB",pay[lv_flag][3])
		LuaSetTask("NUM_YP",pay[lv_flag][7])       ------- �շ����ñ��������,�������ɿ�ֵ-----------
		LuaSetTask("Tfbtimes_Taskday",GetCurrentDay())
	end    
	local a=LuaQueryTask("NUM_TB")
	local b=LuaQueryTask("NUM_YP")                                       
    if(LuaQuery("level")>=20 ) then
    		if(LuaQueryTask(pay[lv_flag][12])<pay[lv_flag][13]) then
			LuaSay("����ʹ�ߣ������"..(pay[lv_flag][11]).."�����ĵ�����Ѵ�����û����,����Ҫ������ֵ����,������������Ұɣ�")
			else
			LuaSay("����ʹ�ߣ��㻹�����"..(pay[lv_flag][11]).."����,������@3"..a.."@0��"..(pay[lv_flag][6]).."��@3"..b.."@0��"..(pay[lv_flag][10]).."��")
			LuaSay("@1����˵��@0�����磬������Ѿ����˸���3�Σ���ֵ����ɹ���������Ѿ��������Ĵ�����Ϊ2�Σ�����@3����һ�λ���@0�������ˣ�")
			AddMenuItem("@7��ѡ��","")
        	AddMenuItem("@3��","fbtimes_no")
        	AddMenuItem("@3��","fbtimes_yes")
        	end
    else
    LuaSay("����ʹ�ߣ��ǳ���Ǹ,Ŀǰֻ�����˶�@320~70�����@0��ֵ����")
    end                
elseif(answer=="fbtimes_no") then
    LuaSay("����ʹ�ߣ������������븱��,������������Ŷ��")
elseif(answer=="fbtimes_yes") then
	local lv_flag
	---------------
	if(LuaQuery("level")<30) then    ------�����
		lv_flag=1
	elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		lv_flag=2
	elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		lv_flag=3
	elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		lv_flag=4
	elseif(LuaQuery("level")>=60 ) then
		lv_flag=5
	end   
	local a=LuaQueryTask("NUM_TB")
	local b=LuaQueryTask("NUM_YP")
	if(LuaItemStatusNormalCount(pay[lv_flag][5])>=a and LuaItemStatusNormalCount(pay[lv_flag][9])>=b) then
	DelItem(pay[lv_flag][5],a)
	DelItem(pay[lv_flag][9],b)
	local add_tb=(pay[lv_flag][4])
	local add_yp=(pay[lv_flag][8])
	LuaAddJx("combat_exp",a*100+b*1000,"FB_payYB")
	LuaAddTask("NUM_TB",add_tb)
	LuaAddTask("NUM_YP",add_yp)
	LuaAddTask(pay[lv_flag][12],-1)
	LuaSay("����ʹ�ߣ������ڿ��Խ���"..(pay[lv_flag][11]).."�����ˣ�Ҫ��@3��������ͻ�����˷ѵ�@0��")
	else
	LuaSay("����ʹ�ߣ���Ҫ����@3"..a.."@0��"..(pay[lv_flag][6]).."��@3"..b.."@0��"..(pay[lv_flag][10]).."����������ص��߲�����")
	end
	                     
				   
--------------------
elseif(answer=="tiaozhanfb") then
	if(level>=60) then
	AddMenuItem("@7�����б�","")
	LuaSay("����ʹ�ߣ���ս������Ĺ�������@3��Ʒװ��@0�����Ǹ��µ��������У�����Ĺ���ɶ����쳣�׺��ġ�")
	AddMenuItem("@3����","Tdzhuangling")
	AddMenuItem("@3����֮��","Tyongzhezs")
--	AddMenuItem("@3�����","Tfbctg")
	else
	 LuaSay("����ʹ�ߣ������Ϊ̫�ͣ�����60���Ժ������ɡ�")
	end
 --[[ 
	elseif(answer=="xezd") then
	ChangeMap("lu_fbxezdyi")    ]]

elseif(answer=="20") then     ------------20~29������
    AddMenuItem("@7�����б�","")
	AddMenuItem("@7�����빥��","20SHOW")
	AddMenuItem("@3��������(20~29)","20ENTER")
elseif(answer=="20SHOW") then
    LuaSay("����ʹ�ߣ��������������Ƽ���20~29������������Ҧ���VS�������¾�����ң�")
    LuaSay("����ʹ�ߣ����������꣬Ҧ�壨Ҧ�ɵ��ֳ����ѱ䣬���ܽ����ǣ����������������һ�������۰ݻ��£������ĸ��ף�Ϊ�ַ��󶼶����ӽ��귢������ʦ����Ҧ�塣")
    LuaSay("����ʹ�ߣ�1����40�����ڣ����ݾ�ʦԬ���ָʾ����ɱ50ֻ���ƹ���50ֻ����Ϊ����ɨ���·�����ܽ�����ˮ������")
    LuaSay("����ʹ�ߣ�2��������ˮ���������ݴ󶼶����µ�ָʾ����40�����ڣ���ɱ80��Ҧ��ʿ�����ű�����ǰ�С�3������������ɽ��40�����ڻ�ɱҦ�塣")
elseif(answer=="20ENTER") then
    ChangeMap("lu_jjbf_1",433,226)
        
        
elseif(answer=="30") then   ---------а��֮�� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@7�����빥��","30SHOW")
	AddMenuItem("@3а��֮��(30~39)","30ENTER")
elseif(answer=="30SHOW") then
    LuaSay("����ʹ�ߣ�δ֪������ħ��Ű��ɱ��һ��Ѫ·���ɣ�")
elseif(answer=="30ENTER") then
    ChangeMap("lu_fbxezdyi")
        
elseif(answer=="40") then     ------------40~49������
    AddMenuItem("@7�����б�","")
	AddMenuItem("@7�����빥��","40SHOW")
	AddMenuItem("@3�嶷ɽƽ��(40~49)","40ENTER")
elseif(answer=="40SHOW") then
    LuaSay("����ʹ�ߣ��嶷ɽƽ�ң����Ƽ���40~49����������������Ѿ�VS����Ԯ������ң�")
    LuaSay("����ʹ�ߣ�����Ѿ�ռɽΪ��������ǧ�л�������ַ����ù����¡���������گ��ϣ����·Ӣ�۽��Ǳ���嶷ɽ����ɱ�����")
    LuaSay("����ʹ�ߣ�1�����嶷ɽ����ҵ�������Ӧ�˽�@1���@0��40�����ڻ�ɱ100���Ѿ�ʿ��(֤�����ǵ�ʵ��)��������Ӧ�����Ҵ��ͽ����嶷ɽ��")
    LuaSay("����ʹ�ߣ�2�������嶷ɽ��40�����ڣ���ɱ20���Ѿ����񣬲ű�����ǰ�С� 3������ɽկ��40�����ڻ�ɱ�����")
    LuaSay("@1֣������@0���ڶ��ص�@2�Ѿ�����@0�����õģ������ش�bossʱ��@1��ʱ��������ǿ�����ף�@0��Ȼ��ô������֪����")
elseif(answer=="40ENTER") then
    ChangeMap("lu_wdspl_1")

elseif(answer=="50") then   ---------���³�Ѩ
	AddMenuItem("@7�����б�","")
	AddMenuItem("@7�����빥��","50SHOW")
	AddMenuItem("@3���³�Ѩ(50~59)","50ENTER")
elseif(answer=="50SHOW") then
    LuaSay("����ʹ�ߣ�δ֪������ħ��Ű��ɱ��һ��Ѫ·���ɣ�")
    LuaSay("@1֣������@0����bossʱ��@1��ʱ���boss��ǿ�����ף�@0��Ȼ��ô������֪����")
elseif(answer=="50ENTER") then
    ChangeMap("lu_dxcxyi")

        
elseif(answer=="60") then   ---------��ڤ��Ѩ
	AddMenuItem("@7�����б�","")
	AddMenuItem("@7�����빥��","60SHOW")
	AddMenuItem("@3��ڤ��Ѩ(60~)","60ENTER")
elseif(answer=="70") then   ---------�ž���
	AddMenuItem("@7�����б�","")
	--AddMenuItem("@7�����빥��","70SHOW")
	AddMenuItem("@3�ž���(70~)","70ENTER")
elseif(answer=="60SHOW") then
    LuaSay("����ʹ�ߣ��˸���ֻ���60�����ϵ���ҿ��ţ�60�༶����ҽ���˸���һ��ҪС�ģ���Ϊ������70�༶�Ĺ����70�༶��boss��")
    LuaSay("@1֣������@0����bossʱ��@1��ʱ���boss��ǿ�����ף�@0��Ȼ��ô������֪����")
elseif(answer=="60ENTER") then
	ChangeMap("lu_ymdxyi")
elseif(answer=="70ENTER") then
	if(LuaQuery("level")>=70 ) then
		if(GetCurrentDay()~=LuaQueryStrTask("70ENTERday") and LuaQueryTask("jjlcount")<10)then
			ChangeMap("lu_jijingl")	
			LuaSetTask("jjlcount",LuaQueryTask("jjlcount")+1)
		else
			LuaSay("޶��ë����,��ߣͺ��Ƥ,ÿ��10��,�����ٶ���!")
			if(GetCurrentDay()~=LuaQueryStrTask("70ENTERday"))then
				local jb=LuaRandom(300)
				LuaAddYB(2,jb)
                if(jb>=150)then
                    LuaGive("o_present116",1,"Tbossta")--��ɫ����
                end
				LuaSay("�������10�μž���,������@6"..jb.."���@0����")
			end
			LuaSetTask("70ENTERday",GetCurrentDay())
			LuaSetTask("jjlcount",0)
		end
	else
		LuaSay("ɧ����ȼ�����70��,Ŭ��������!")
	end
elseif(answer=="wszc") then   ---------��˫ս��
    ChangeMap("lu_wszc")

elseif(answer=="Tyongzhezs") then
      if(GetCurrentDay()~=LuaQueryStrTask("Tyzzsday")) then
	 LuaSetTask("Tyongzhezs",0)
	 LuaSetTask("Tyongzhezsa",0)
      end
      if(TeamCount()<2) then
	if(LuaQueryTask("Tyongzhezs")==0) then
	LuaSay("����ʹ�ߣ��������ڽ���������ʱ�������Ѿ�������ߣ��β������㾿���ж�����ͣ�")
	LuaSay("����ʹ�ߣ���ɱ������ͼ��boss�л�����@3��Ʒ����@0�����سɹ��󣬻�����ȡ���齱����")
	AddMenuItem("@7����֮��","")
	AddMenuItem("@3����","yzzsin")
	AddMenuItem("@3����","yzzsfq")
	elseif(LuaQueryTask("Tyongzhezs")==1) then
	 a=LuaQueryTask("Tyongzhezsa")
	 if(a>0 and a<99) then
  	  LuaSay("����ʹ�ߣ����������л�ɱ��@3"..a.."ֻ����@0��û�д��سɹ���ֻ�ܵõ����ֽ�����")
	 end
	 if(a>0 and a<5) then
	  jingyan=10000+level^2*20+level*1500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<9) then
	  jingyan=10000+level^2*20+level*2500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<14) then
	  jingyan=20000+level^2*30+level*2500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")	
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<19) then
	  jingyan=20000+level^2*30+level*3500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<25) then
	  jingyan=20000+level^2*40+level*3500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<99) then
	  jingyan=30000+level^2*40+level*4500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a==99) then--ͨ��
	  LuaSay("����ʹ�ߣ�����������ܣ���Ȼ���ɴ��سɹ���")
	  jingyan=30000+level^2*60+level*6500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 else
	 LuaSay("����ʹ�ߣ�����ʧ�ܣ���û�л�ɱ1���֣���������һ�Ρ�")
	 LuaSetTask("Tyongzhezs",0)
	 end


	elseif(LuaQueryTask("Tyongzhezs")==99) then
	LuaSay("����ʹ�ߣ�������Ѿ���ս���ˣ����������ɡ�")
	end

      else
	LuaSay("����ʹ�ߣ��ø���������ӽ��롣")
      end

	   elseif(answer=="yzzsin") then
		 if(LuaQueryTask("Tyongzhezs")==0) then
	     LuaSetTask("Tyongzhezs",1)
	     LuaSetTask("Tyongzhezsa",0)
	     LuaSetTask("Tyzzsday",GetCurrentDay())
	     ChangeMap("lu_yongzhezsa")
	     end

	   elseif(answer=="yzzsfq") then
	   LuaSay("����ʹ�ߣ���ʱ��չʾ���ʵ���ˣ�")

elseif(answer=="Tdzhuangling") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tdzhlday")) then
	LuaSetTask("Tdzhuangling",0)
	LuaSetTask("Tdzhuanglinga",0)
	end
	if(LuaQueryTask("Tdzhuangling")==0) then
	LuaSay("����ʹ�ߣ�������������֮��@4����@0����һ��������������ܹ�ʩ��Ԯ�֣���ֹ��Щ�����ƻ����ꡣ")
	LuaSay("����ʹ�ߣ������е�@3boss������伫Ʒװ��@0����������ɹ��������Ի�ô���������")
	AddMenuItem("@7����","")
	AddMenuItem("����","jinruhl")
	AddMenuItem("����","fangqihl")
	elseif(LuaQueryTask("Tdzhuangling")==1) then
	  if(LuaQueryTask("Tdzhuanglinga")==99) then
	  LuaSetTask("Tdzhuangling",99)
	  LuaSay("����ʹ�ߣ����������ƻ������¹�����û��")
	  jingyan=20000+level^2*70+level*8000
	  LuaAddJx("combat_exp",jingyan,"Tdzhuangling")
	  else
	  LuaSay("��ʾ������������Ҫ�ֵ�7�ֹ�����ַ�������")
	  end
	  elseif(LuaQueryTask("Tdzhuangling")==99) then
	  LuaSay("��ʾ����л���µİ�æ������������������ƻ���")
	end
  elseif(answer=="jinruhl") then
    if(LuaQueryTask("Tdzhuangling")==0) then
	 if(level<71) then
	 LuaSetTask("Tdzhuangling",1)
	 LuaSetTask("Tdzhlday",GetCurrentDay())
	 ChangeMap("lu_dzhuanglinga")
 	 end
 	end
  elseif(answer=="fangqihl") then
	LuaSay("����ʹ�ߣ�û�뵽���¾�Ȼ�����Թۣ��ѵ��������ô���ˡ�")

elseif(answer=="Tqlxs") then                     -----------ǧ������
            if(GetCurrentDay()~=LuaQueryStrTask("qlxsTaskday")) then
            LuaSetTask("Tqlxs",0)
            LuaSetTask("Tqlxsdotime",0)
	      a=LuaItemCount("o_mission037")
	      if(a>0) then
	      DelItem("o_mission037",a)
              end   
	    end
     if(LuaQueryTask("Tqlxs")==0) then  
	      if(LuaQueryTask("Tqlxsdotime")<3) then   
		    LuaSay("����ʹ�ߣ���˵@4���ĺ���@0��һλ@3��������@0���������кܶ������챦��ȴԸ�⻻ȡ���ǵ���ͨ��Ʒ��")
		    LuaSay("����ʹ�ߣ���@4���ĺ���@0ʵ����̫��ңԶ����ֻҪ���һ���@2ҹ����@0�Ϳ��Եõ��߶����")
		    AddMenuItem("@7�Ƿ�ֱ�Ӵ���","")
		    AddMenuItem("�Լ���","myself")
		    AddMenuItem("ֱ�Ӵ���","chuansong")
	      else
		LuaSay("����ʹ�ߣ����˿ɲ���̫̰���ˣ��������Ѿ����������˽�����3����Ʒ���������������Ұɡ�")
		LuaSay("����ʹ�ߣ������㻹����ȥ���ĺ�������Ҫȥ���ĺ�����@!")
		AddMenuItem("@7�Ƿ�ȥ","")
		AddMenuItem("ȥ","goto")
	      end
     
    elseif(LuaQueryTask("Tqlxs")==1) then 	
	       LuaSay("����ʹ�ߣ���˵@3��������@0����@4���ĺ���@0�����ұߣ�������������ʱ�̵��ˡ�") 
		AddMenuItem("@7�Ƿ�ȥ","")
		AddMenuItem("ȥ","goto")
	        AddMenuItem("ֱ�Ӵ���","chuansong")
		     
     elseif(LuaQueryTask("Tqlxs")==2) then
	
	   if(LuaItemCount("o_mission034")>=5) then
	       LuaSay("����ʹ�ߣ����ڵó�������ʲôʱ���������ۼ��������˼Ҿͺ��ˡ�")
	       if(LuaRandom(20)==19) then
		   LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
		   LuaGive("o_box002",1,"Tdiaoyutg")
		   end
	       DelItem("o_mission034",LuaItemCount("o_mission034"))
	        if(LuaQueryTask("huan7")==1)then
			LuaSetTask("huan7",2)
			UpdateMenu()
		end
	       jingyan=20000+level^2*24+level*2500
	       if(level<20) then 
	       LuaGive("coin",1500,"Tqlxs")
	       else
	       LuaGive("coin",2500,"Tqlxs")
	       end
	        if(LuaQueryTask("bprszj") == 1 and TeamCount()>= 2) then
		LuaSay("����ʹ�ߣ�ԭ�������ѵ����������ϲ��Ϊ���������һ�����")
		LuaAddMembers(1)
		else
		LuaSetTask("bprszj",0)
		end
	        LuaAddJx("combat_exp",jingyan,"Tqlxs")
		LuaSetTask("Tqlxs",0)
		end
	 end   
elseif(answer=="chuansong") then		
	if(LuaItemCount("o_state005j")>0) then
		DelItem("o_state005j",1)
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

	elseif(answer=="myself") then
		LuaSetTask("Tqlxs",1)             
		    LuaAddTask("Tqlxsdotime",1)     
		    LuaGive("o_mission037",20)
		    LuaSetTask("qlxsTaskday",GetCurrentDay())
		    ChangeMap("lu_tyhj")

	elseif(answer=="goto") then
	 ChangeMap("lu_tyhj")




elseif(answer=="taoyuan") then
	ChangeMap("lu_taohuadao")


elseif(answer=="Tmigong") then
     if(GetCurrentDay()~=LuaQueryStrTask("TmgTaskday")) then
       LuaSetTask("Tmigong",0)
       LuaDelTask("Tmg01")
	   LuaDelTask("Tmg02")
	   LuaDelTask("Tmg03")
	   LuaDelTask("Tmg04")
	   LuaDelTask("Tmg05")
	   LuaDelTask("Tmg06")
	   LuaDelTask("Tmg07")
	   LuaDelTask("Tmg08")
	   LuaDelTask("Tmg09")
	   LuaDelTask("Tmg010")
	   LuaDelTask("Tmg011")
	   LuaDelTask("Tmg012")
	   LuaDelTask("Tmg013")
	   LuaDelTask("Tmg014")
     end
     if(LuaQueryTask("Tmigong")==0) then   
     if(GetCurrentHour()==13 or true)then
	  if(level>=18) then
       if(TeamCount()<2) then
       LuaSay("����ʹ�ߣ����Թ���ÿһ�����@33���Թ�����Ա@0��ѡ��@3��ȷ�Ĺ���Ա@0�󣬽������Թ�@3��һ��@0��")
       LuaSay("����ʹ�ߣ����ѡ�񵽴���Ĺ���Ա����������Թ��ĸ��Ͳ㣬�����Թ���@315��@0����ս�Թ��ɹ���")
       LuaSay("����ʹ�ߣ����Թ���@35�㣬10�㣬15��@0��������ȡ�������ɲ�Ҫ����ˡ�@!")
       LuaSay("@1��ʾ���ûʱ������Ϊһ��Сʱ�������ͳ��Թ���ͼ�������ٴβ��룬һ��ֻ��һ�λ��ᣬ���Թ�����һ��Сʱ����ҽ��ᱻ���ͳ��Թ���ͼ������պ�ʱ�䡣")
       LuaSay("��ȷ��Ҫ��ս�Թ���")
       AddMenuItem("@7�Ƿ���ս�Թ�","")
       AddMenuItem("��ս�Թ�","yesmigong")
       AddMenuItem("����","nomigong")
	   else
	   LuaSay("����ʹ�ߣ��Թ�������ӽ��롣")
	   end
	  else
	  LuaSay("����ʹ�ߣ�20���Ժ������ս�Թ���")
	  end
	  else
		LuaSay("����ʹ�ߣ��û�ѽ�����δ��ʼ��ÿ��@113��00~14:00@0���ɲ��룡")
	  end
	 else
	 LuaSay("����ʹ�ߣ�������Ѿ���ս���Թ��ˣ������ٽ���")
	 end 
       elseif(answer=="yesmigong") then
         if(TeamCount()<2) then
         LuaSetTask("TmgTaskday",GetCurrentDay())
         LuaSetTask("Tmigong",1)
         r=LuaRandom(3)+1	
         LuaSetTask("Tmg03",r)	--������3�����ȷ�߷�
		if(LuaQueryTask("T375A") == 0) then
		LuaSetTask("T375A",99)
		end
	     ChangeMap("lu_migong03")   
	     else
	     LuaSay("����ʹ�ߣ����״̬�²��ɽ����Թ���")
	     end
       elseif(answer=="nomigong") then
         LuaSay("����ʹ�ߣ���ս�Թ����Ի�ø߶�ر���Ŷ��")
      

   
  elseif(answer=="shengjifb") then
   LuaSay("����ʹ�ߣ������������У�ɱ�ֽ���ø��ߵľ��齱����")
   LuaSay("����ʹ�ߣ����������������ʹ�þ����飬�����ٶȽ��������Ŷ��@!")
   AddMenuItem("@7��������","")
   AddMenuItem("@3����","in")
   elseif(answer=="in") then 
     if(level<30) then
     ChangeMap("lu_tongyougu01")
     elseif(level<40) then
     ChangeMap("lu_tongyougu02")
     elseif(level<50) then
     ChangeMap("lu_tongyougu03")
     elseif(level<60) then
     ChangeMap("lu_tongyougu04")
     elseif(level<70) then
     ChangeMap("lu_tongyougu05")
     elseif(level<80) then
     ChangeMap("lu_tongyougu06")
     end


-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..�´��Թ�

elseif(answer=="Txmigong")then
	if(LuaPublicQueryStr("xmg1publicday")~=GetCurrentDay())then
		LuaPublicSetStr("xmg1publicday",GetCurrentDay())
		LuaPublicDel("publicSum")
		LuaPublicDel("number1")
		LuaPublicDel("number2")
		LuaPublicDel("number3")
		LuaPublicDel("number4")
		LuaPublicDel("number5")
		LuaDelTask("Txmigong")
		UpdateMenu()
	end
	AddMenuItem("@3�´��Թ������","")
	AddMenuItem("@3�����Թ�","xmgjinru")
	--AddMenuItem("@3�Թ����а�","xmgphb")
	AddMenuItem("@3�Թ�˵��","xmgshuoming")
	AddMenuItem("@3�Թ�����","xmgtiyan")
	elseif(answer=="xmgjinru")then
	level = LuaQuery("level")
	if(GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5)then
		if(level>=20)then
			if(TeamCount()<2)then
				LuaDelTask("award") --ÿ��5��Ľ����Ƿ���ȡ��ǣ���ֹˢ
				LuaDelTask("fail")  --5-10��ش��������ı��
				LuaDelTask("xiuxi") --��13��
				LuaDelTask("alopen")--ÿ�㱦��򿪱��
				LuaDelTask("albuy") --ÿ��Կ�׹�����
				if(level>=20 and level<30)then      --�жϵȼ���Ϊ�˹�������ʱ����������Ʒ�ĵ�����
					LuaSetTask("xmglv",2)
				elseif(level>=30 and level<40)then
					LuaSetTask("xmglv",3)
				elseif(level>=40 and level<50)then
					LuaSetTask("xmglv",4)
				elseif(level>=50 and level<60)then
					LuaSetTask("xmglv",5)
				elseif(level>=60 and level<70)then
					LuaSetTask("xmglv",6)
				elseif(level>=70)then
					LuaSetTask("xmglv",7)
				end
				DelItem("o_mission218",LuaItemCount("o_mission218"))--ɾ����һ�λ��Ʒ
				DelItem("o_mission219",LuaItemCount("o_mission219"))
				if(LuaQueryStrTask("xmg1day")~=GetCurrentDay())then  --ͬһ��ֻ�ܽ���һ�ε�����
					hour=GetCurrentHour()
					if(hour>=13 and hour<23)then --ÿ��̶�ʱ����������
					--if(LuaItemCount("e_horse000")>=1 or LuaItemCount("e_horse010")>=1 or LuaItemCount("e_horse011")>=1 or LuaItemCount("e_horse012")>=1 or LuaItemCount("e_horse013")>=1 or LuaItemCount("e_horse014")>=1 or LuaItemCount("e_horse015")>=1 or LuaItemCount("e_horse016")>=1 or LuaItemCount("e_horse017")>=1 or LuaItemCount("e_horse018")>=1 or LuaItemCount("e_horse019")>=1
					 --or LuaItemCount("e_horse020")>=1 or LuaItemCount("e_horse021")>=1 or LuaItemCount("e_horse022")>=1 or LuaItemCount("e_horse023")>=1 or LuaItemCount("e_horse024")>=1 or LuaItemCount("e_horse025")>=1 or LuaItemCount("e_horse026")>=1 or LuaItemCount("e_horse027")>=1 or LuaItemCount("e_horse028")>=1 or LuaItemCount("e_horse029")>=1
					 --or LuaItemCount("e_horse030")>=1 or LuaItemCount("e_horse031")>=1 or LuaItemCount("e_horse032")>=1 or LuaItemCount("e_horse033")>=1 or LuaItemCount("e_horse034")>=1 or LuaItemCount("e_horse035")>=1 or LuaItemCount("e_horse036")>=1 or LuaItemCount("e_horse037")>=1 or LuaItemCount("e_horse038")>=1 or LuaItemCount("e_horse039")>=1 
					-- or LuaItemCount("e_horse040")>=1 or LuaItemCount("e_horse041")>=1 or LuaItemCount("e_horse042")>=1 or LuaItemCount("e_horse043")>=1 or LuaItemCount("e_horse044")>=1 or LuaItemCount("e_horse045")>=1 or LuaItemCount("e_horse046")>=1 or LuaItemCount("e_horse047")>=1 or LuaItemCount("e_horse048")>=1 or LuaItemCount("e_horse049")>=1 
					-- or LuaItemCount("e_horse050")>=1 or LuaItemCount("e_horse051")>=1 or LuaItemCount("e_horse052")>=1 or LuaItemCount("e_horse053")>=1 or LuaItemCount("e_horse054")>=1 or LuaItemCount("e_horse055")>=1 or LuaItemCount("e_horse056")>=1 or LuaItemCount("e_horse057")>=1 or LuaItemCount("e_horse058")>=1 or LuaItemCount("e_horse059")>=1 
					 --or LuaItemCount("e_horse060")>=1 or LuaItemCount("e_horse061")>=1 or LuaItemCount("e_horse062")>=1 or LuaItemCount("e_horse063")>=1 or LuaItemCount("e_horse064")>=1 or LuaItemCount("e_horse065")>=1 or LuaItemCount("e_horse066")>=1 or LuaItemCount("e_horse067")>=1 or LuaItemCount("e_horse068")>=1 or LuaItemCount("e_horse069")>=1 
					-- or LuaItemCount("e_horse070")>=1 or LuaItemCount("e_horse071")>=1 or LuaItemCount("e_horse072")>=1 or LuaItemCount("e_horse073")>=1 or LuaItemCount("e_horse074")>=1 or LuaItemCount("e_horse075")>=1 or LuaItemCount("e_horse076")>=1 or LuaItemCount("e_horse077")>=1 or LuaItemCount("e_horse078")>=1 or LuaItemCount("e_horse079")>=1 
					 --or LuaItemCount("e_horse080")>=1 or LuaItemCount("e_horse081")>=1 or LuaItemCount("e_horse082")>=1 or LuaItemCount("e_horse083")>=1 or LuaItemCount("e_horse084")>=1 or LuaItemCount("e_horse085")>=1 or LuaItemCount("e_horse086")>=1 or LuaItemCount("e_horse087")>=1 or LuaItemCount("e_horse088")>=1 or LuaItemCount("e_horse089")>=1 
					--  or EquipInfo(7)~="")then
					      --LuaSay("����ʹ�ߣ�Ϊά�ֻ��ƽ�ԣ��´��Թ������������Я���κ�����뽫�����ķŵ��ֿ⣬Ǯׯ�ϰ���ڽ�����@!")
					 --else
						LuaSetTask("xmg1day",GetCurrentDay())
						LuaShowNotify("�����д��ˣ����Թ���������ȥ��һ�ж���δ֪,����ı����ڵȴ�����ȥѰ�ҡ�")
 						r=LuaRandom(12)
						LuaSetTask("Txmg1",1)
						if    (r==0)then   ChangeMap("lu_xmigong1")
						elseif(r==1)then   ChangeMap("lu_xmigong2")
						elseif(r==2)then   ChangeMap("lu_xmigong3")
						elseif(r==3)then   ChangeMap("lu_xmigong4")
						elseif(r==4)then   ChangeMap("lu_xmigong5")
						elseif(r==5)then   ChangeMap("lu_xmigong6")
						elseif(r==6)then   ChangeMap("lu_xmigong7")
						elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("��ϲ�����������˲㣬����������Թ�ʹ�����ϵı��佫���˫�������棡")
						elseif(r==8)then   ChangeMap("lu_xmigong9")
						elseif(r==9)then   ChangeMap("lu_xmigong10")
						elseif(r==10)then  ChangeMap("lu_xmigong11")
						elseif(r==11)then  ChangeMap("lu_xmigong12")
						end
					--end
					else --�����һ�λ���е�����
						LuaSay("����ʹ�ߣ��ʱ��Ϊÿ������һ���������13��- 23��00�����ڻ��û��ʼ��")
					end
				else
					LuaSay("����ʹ�ߣ��������Ѿ����й����Թ�̽�ա�")
				end
			else
				LuaSay("����ʹ�ߣ��´��Թ������ֻ���ɵ��˽��롣")
			end
		else
			LuaSay("����ʹ�ߣ��������Ƕ�����20��֮�������ɣ�")
		end
	else
		LuaSay("����ʹ�ߣ��ʱ��Ϊÿ������һ���������13:00- 23:00�����ڻ��û��ʼ")
	end

	elseif(answer=="xmgshuoming")then
		LuaSay("����ʹ�ߣ��´��Թ������һ����Ϊʮ��㣬ǰ5���ҵ�NPC������һ�㣬6-10���ҵ�NPC�һش�������ȷ������һ�㣬����������һ���Ӳ��ܼ�������")
		LuaSay("����ʹ�ߣ�11����ʱ10�����ҵ�NPC������һ�㣬12���ռ�5���Թ���������NPC������һ�㣬�Թ��������Թ�ĳ�������@3�Թ��Ļ�@0����")
		LuaSay("����ʹ�ߣ�13����һ�����ʵ�һ���ӻ���ֱ�ӽ�����һ�㣬14���ռ�10���Թ��𶧽���NPC������һ�㣬һ����@3�Թ��Ļ�@0���䣬��Ҫע�����ÿ�λ��ʼ��һ�ε��Թ����Ʒ���ᱻ���Ŷ@!")
		LuaSay("����ʹ�ߣ�5��,10��,15�㶼����ȡ����������15��֮���Ե��@3��ȡ����@0ѡ��ʱ��Ϊ׼��ǰ��������÷����")
		LuaSay("����ʹ�ߣ���ÿ�����б��䣬����Կ��ֻ�����´��Թ������NPC�����򣬿������Լ�ͨ��ÿ5��Ҳ�ܻ�ò��������")
		LuaSay("����ʹ�ߣ�һ���ǵ���ÿ5,10,15���п�����ȡ������Ŷ��ף����ˣ�")
	elseif(answer=="xmgtiyan")then
		LuaShowNotify("�����ͼ���ҵ����ھͿ��Գ���")
		ChangeMap("lu_xmigongty")
	--[[elseif(answer=="xmgphb")then   --���а��ѯδ�ܴﵽԤ��Ч�����ݲ�����
		LuaSay("����ʹ�ߣ������Բ�ѯʱ��Ϊ10:00-23:00")
		if(GetCurrentHour()>10 and GetCurrentHour()<23)then
			if(LuaPublicQueryStr("number1")==0)then
				no1=n_ull
			else
				no1=LuaPublicQueryStr("number1")
			end
			if(LuaPublicQueryStr("number2")==0)then
				no2=n_ull
			else
				no2=LuaPublicQueryStr("number2")
			end
			if(LuaPublicQueryStr("number3")==0)then
				no3=n_ull
			else
				no3=LuaPublicQueryStr("number3")
			end
			if(LuaPublicQueryStr("number4")==0)then
				no4=n_ull
			else
				no4=LuaPublicQueryStr("number4")
			end
			if(LuaPublicQueryStr("number5")==0)then
				no5=n_ull
			else
				no5=LuaPublicQueryStr("number5")
			end-
				

			LuaSay("����ʹ�ߣ���һ����@3"..LuaPublicQueryStr("number1").."@0���ڶ�����@3"..LuaPublicQueryStr("number2").."@0����������@3"..LuaPublicQueryStr("number3").."@0����������@3"..LuaPublicQueryStr("number4").."@0����������@3"..LuaPublicQueryStr("number5").."@0")
		else
			LuaSay("����ʹ�ߣ����ڲ��ܲ�ѯ���а�")
		end--]]

elseif(answer=="Tsnpc_10")then
	if(LuaQueryTask("Tsnpc_10")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸���������ż�����˵�㿴����Ȼ�����׵�")
		LuaSay("����ʹ�ߣ��ţ��õġ�")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_10",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_10")==2)then
		LuaSay("����ʹ�ߣ����ҿ����ˣ����ȥ������")
	end
elseif(answer=="Tenpc_10")then
	if(LuaQueryTask("Tenpc_10")==1)then
		LuaSay(""..LuaQueryStr("name").."��������������Ҵ������㣬˵Ҫ����õĸ�����Ҫ��������ˬ��")
		LuaSay("����ʹ�ߣ�һֱ��Ŭ������δ����Խ")
		LuaSetTask("Tenpc_10",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_10")==2)then
		LuaSay("����ʹ�ߣ���ȥ�������Ǵ��ˣ��Ҷ���")
	end




end
LuaSendMenu()
return 1
end