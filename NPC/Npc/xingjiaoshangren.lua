NPCINFO = { 
serial="31" ,
base_name="xingjiaoshangren" ,
icon=2583,
NpcMove=2583,
name="�н�����" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE" ,
lastsay="����������������",
LuaType=1,
} 

function do_talk(answer) 
if (answer=="ask") then 
	havetask =0
	local level= LuaQuery("level")
	local T180 = LuaQueryTask("T180")
	local T181 = LuaQueryTask("T181")
	AddTopSayMenuItem("@7�����б�","")
	if(level>=22)then
		AddTopSayMenuItem("@7���̡�ÿ�ա�","TPaoShang")
	end
--	AddTopSayMenuItem("@7�޸�֮�Ρ�ÿ�ա�@0","T180")
	if(level<30 and level>=20)then
		AddTopSayMenuItem("@7����Ѱ����ÿ�ա�@0","T181")
	end
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(GetCurrentHour()==9 or GetCurrentHour()==16)then
		AddTopSayMenuItem("@7�����챦�����䡿","Tqzyb")
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_10")==1 or LuaQueryTask("TfindNPC_10")==2)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_10")==98)then
		AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
	end
	if((LuaQueryTask("Tsnpc_17")==1 or LuaQueryTask("Tsnpc_17")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_17")
		if(LuaQueryTask("Tsnpc_17")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_17")==1 or LuaQueryTask("Tenpc_17")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_17")
		if(LuaQueryTask("Tenpc_17")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tcoc")==11)then
		AddTopSayMenuItem("@2�̼��򱳡�ÿ�ա�","Tcoc")
		havetask =2
	end
	AddTopSayMenuItem("@3��ȡͬ������@0","M2M")
	AddTopSayMenuItem("@3��ȡ�ͼ�����@0","M2m")
--	AddTopSayMenuItem("@3�һ���ʯ","Tm2stone")
	if(level>=30)then
		AddTopSayMenuItem("@9����Ѱ����ÿ�ա�@0","T181")
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
	LuaSay("�н����ˣ���Ҫ��Ϊ���������̼֡�@!")

	
	

	----------------------------------------����-------------------------- 
elseif(answer=="TPaoShang") then
local level= LuaQuery("level")
if(level>=24)then
    if(LuaPublicQueryStr("Tpublic_data")~=GetCurrentDay() )then
   		LuaPublicSet("TZGZF",0)                           ---------ǧ�����̴�������
		LuaPublicSet("DMCZF",0)
		LuaPublicSet("PSshuaxin_CD",GetCurrentTime())     --------��Ʒ�۸�ˢ��CD����
		LuaPublicSet("PS_MN_price1",100*(LuaRandom(20)+90)/100)     -------��Ʒ�۸񲨶���Χ��-10%~25%   ���ݶ�
		LuaPublicSet("PS_FCS_price1",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price1",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price1",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price1",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price2",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price2",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price2",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price2",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price2",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price3",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price3",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price3",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price3",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price3",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price4",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price4",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price4",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price4",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price4",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price5",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price5",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price5",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price5",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price5",1000*(LuaRandom(20)+90)/100)
    	LuaPublicSetStr("Tpublic_data",GetCurrentDay())
	end
		-------------------������������ǧ�����̵Ĵ���---------------
		
		
		
	if(LuaQueryStrTask("TPaoShang_Taskday")~=GetCurrentDay()) then
		DelItem("o_mission376",LuaItemCount("o_mission376"))  ----------ɾ������δ������Ʒ
		DelItem("o_mission377",LuaItemCount("o_mission377"))
		DelItem("o_mission378",LuaItemCount("o_mission378"))
		DelItem("o_mission379",LuaItemCount("o_mission379"))
		DelItem("o_mission380",LuaItemCount("o_mission380"))
		LuaSetTask("TPaoShang",0)
		LuaSetTask("flag_PSFF",0)       ------- ǧ�����̸��˴���-----------
		LuaSetTask("TPaoShang_Taskday",GetCurrentDay())
	end

	if(LuaQueryTask("TPaoShang")==0) then
		if(LuaItemCount("coin")>=200) 	then--------���������ʼ�ʽ�
			if(level>=20 and level<=29)then
			PSmoney_begin=5000    --��ʼ
			PSmoney_end=10000      --����׬��
			PSmoney_get=5000      --������ 
			elseif(level>=30 and level<=39)then 
			PSmoney_begin=10000
			PSmoney_end=20000
			PSmoney_get=10000
			elseif(level>=40 and level<=49)then 
			PSmoney_begin=20000
			PSmoney_end=40000
			PSmoney_get=20000
			elseif(level>=50 and level<=59)then 
			PSmoney_begin=20000
			PSmoney_end=50000
			PSmoney_get=30000
			elseif(level>=60)then 
			PSmoney_begin=30000
			PSmoney_end=70000
			PSmoney_get=40000
			end
			if(LuaItemCount("coin")>=PSmoney_begin) then  
				LuaSetTask("PSmoney",PSmoney_begin)  --------�ƶ���������̽��
				LuaSetTask("PSmoney_begin",PSmoney_begin)  --------�ƶ���������̽��
				LuaSetTask("PSmoney_limit",PSmoney_end)  --------�ƶ���������̽��
			else
				LuaSetTask("PSmoney",LuaItemCount("coin"))
				LuaSetTask("PSmoney_limit",LuaItemCount("coin")+PSmoney_get)
			end 
			LuaSetTask("PSmoney_get",PSmoney_get)  --------�ƶ���������̽��
			LuaSay("�н����ˣ����̽����ȼ��йأ��ȼ�Խ�ߣ�׬��Խ�࣡@0�������ʼ@3���̽��Ϊ@3"..LuaQueryTask("PSmoney").."ͭ��@0.����Ϊ@3"..(LuaQueryTask("PSmoney_limit")).."ͭ��@0��") 
   			LuaSay("�н����ˣ�20����ʱ������������µ�NPC��������@4��Դ��@0��@3������@0��@4��������@0��@3��Ʒ����@0��@4������Ӫ@0��@3��վС��@0��")
			LuaSay("�н����ˣ��ȼ������Ժ������������NPC��������@4������@0��@3��Ʒ����@0��@4��ɽ��@0��@3�ӻ���@0��")
			LuaSay("�н����ˣ�ÿ������ЩNPC�������̶Ի����㽫��ó��ߵķ�������PK״̬,����5���ӣ�ͬʱ�޷��߷�����Ƚݾ���")
			LuaSay("�н����ˣ�������ʱ1Сʱ���������׬@3"..floor( LuaQueryTask("PSmoney_get")*0.8 ).."ͭ��@0���ϣ�˵������ʲô@3����@0�أ�")
			LuaSay("@1�ر�����@0���������̾����õͼ������Ʒ���������NPC�߼����������л�����")
			LuaSetTask("PSbegin_time",GetCurrentTime())   ----------��Ҽ�ʱ��ʼ
			LuaGiveBuff("518",1)
  			LuaSay("���5�������̱���״̬")               ------------��һ�����̱���
  			LuaGive("o_mission414",1)                      ------��һ�����̽�����
   			FlushMyInfo("1")
			LuaSetTask("TPaoShang",1)
			LuaSetTask("T183",1)
			AddLog("����[ÿ��]",183)
			UpdateTopSay("ʱ�����ޣ��Ͽ����̰�")
			UpdateMenu()
		else
		LuaSay("�н����ˣ������ϵ�ͭ�Ҳ���200��������˵�������ƷҲ����")
		end   
	elseif(LuaQueryTask("TPaoShang")==1) then
	    LuaSay("�н����ˣ�20����ʱ������������µ�NPC��������@4��Դ��@0��@3������@0��@4��������@0��@3��Ʒ����@0��@4������Ӫ@0��@3��վС��@0��")
		LuaSay("�н����ˣ��ȼ������Ժ������������NPC��������@4������@0��@3��Ʒ����@0��@4��ɽ��@0��@3�ӻ���@0��")
		LuaSay("�н����ˣ�ÿ������ЩNPC�������̶Ի����㽫��ó��ߵķ�������PK״̬,����5���ӣ�ͬʱ�޷��߷�����Ƚݾ��������߾����������״̬��ʧ��������ʧ�ܣ�")
		LuaSay("�н����ˣ�������ʱ1Сʱ���������׬@3"..floor( LuaQueryTask("PSmoney_get")*0.8 ).."ͭ��@0���ϣ�˵������ʲô@3����@0�أ���ô��������Ҫ��������ô��")
		LuaSay("@1�ر�����@0���������̾����õͼ������Ʒ���������NPC�߼����������л�����")
		AddMenuItem("@7�����б�","")
		AddMenuItem("@3�ٵȻ�","PS_go")
		AddMenuItem("@3��������","PS_over")
    elseif(LuaQueryTask("TPaoShang")==99) then
        LuaSay("�н����ˣ�������Ѿ��ܹ��ˣ������������Ұɣ�")
	end
else
    LuaSay("�н����ˣ���������Ҫ24�����ܽ�ȡ��")
end
elseif(answer=="PS_go")then 
	LuaSay("�н����ˣ���Ŀǰ�����̽��Ϊ@3"..LuaQueryTask("PSmoney").."ͭ��!@0")
	if(LuaQueryTask("PSmoney")==LuaQueryTask("PSmoney_limit"))  then
	LuaSay("�н����ˣ�������Ѿ�׬�����̽���ˣ�����һ����Ӫ�˲ţ�")
	elseif(LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney")<floor(LuaQueryTask("PSmoney_get")*0.2) )  then
	LuaSay("�н����ˣ�������Ѿ�׬��@3"..floor( LuaQueryTask("PSmoney_get")*0.8 ).."����ͭ�ң������о���ͷ�ԣ�")
	end
elseif(answer=="PS_over")then
    LuaSay("@1�ر�����@0������㻹�ܼ����������̣����׬���������̽��ٽ�������")
    AddMenuItem("@7�Ƿ�ȷ��","")
	AddMenuItem("@3�ٵȻ�","PS_NO")
	AddMenuItem("@3ȷ������","PS_YES")
elseif(answer=="PS_NO")then
	LuaSay("�н����ˣ���Ŀǰ�����̽��Ϊ@3"..LuaQueryTask("PSmoney").."ͭ��!@0")
	if(LuaQueryTask("PSmoney")==LuaQueryTask("PSmoney_limit"))  then
	LuaSay("�н����ˣ�������Ѿ�׬�����̽���ˣ�����һ����Ӫ�˲ţ�")
	elseif(LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney")<floor(LuaQueryTask("PSmoney_get")*0.2) )  then
	LuaSay("�н����ˣ�������Ѿ�׬��@3"..floor( LuaQueryTask("PSmoney_get")*0.8 ).."����ͭ�ң������о���ͷ�ԣ�")
	end
elseif(answer=="PS_YES")then
	local aa=(LuaQueryTask("PSmoney")-LuaQueryTask("PSmoney_begin"))
	if(aa>0)then
	local jingshang=LuaGetSkillLevel("182")
	LuaSay("�н����ˣ��㾭�̵ȼ�Ϊ"..jingshang.."����")
	LuaSay("�н����ˣ������׬�����̽��Ϊ@3"..aa.."ͭ��!@0����@5���̵ȼ�@0���������Ľ�����")
	LuaAddJx("combat_exp",30000+aa*jingshang*3,"TPaoShang_over")             --------���̵ȼ�������⽱��
	else
	LuaSay("�н����ˣ�ò����������̿��ˣ�����������̳ȥ���ʻ��߿������˵ľ����ĵðɣ�")
	end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 		if(LuaQueryTask("PSmoney_limit")==LuaQueryTask("PSmoney") and LuaRandom(20)==0 and LuaPublicQuery("TZGZF")<2 and LuaQueryTask("flag_PSFF")==0 )  then       --------����ǧ������
		LuaSay("�н����ˣ��㾭��֮���������칫���ķ緶�����2����ң�")
		LuaNotice(""..LuaQueryStr("name").."����֮���������칫���ķ緶��������2����ң�")
		LuaSay("�н����ˣ������С�����������鿴����õĽ�ң�")
 		LuaAddYB(2,2)
 		LuaPublicSet("TZGZF",1+LuaPublicQuery("TZGZF"))
 		LuaSay("�н����ˣ�"..LuaPublicQuery("TZGZF").."")
		LuaSetTask("flag_PSFF",99)
		UpdateTopSay("��ϲ����2����ң������С�����������鿴����õĽ�ң�")
		UpdateMenu()
		elseif(LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney")<floor(LuaQueryTask("PSmoney_get")*0.2) and LuaQueryTask("PSmoney_limit")~=LuaQueryTask("PSmoney") and LuaRandom(20)==0 and LuaPublicQuery("DMCZF")<2 and LuaQueryTask("flag_PSFF")==0 )  then
		LuaSay("�н����ˣ��㾭��֮�����ж�ľ�͵ķ緶�����3��ͭ�ң�")
		LuaNotice(""..LuaQueryStr("name").."����֮�����ж�ľ�͵ķ緶��������3��ͭ�ң�")
		LuaGive("coin",30000,"TPaoShang")
		LuaPublicSet("DMCZF",1+LuaPublicQuery("DMCZF"))
		LuaSetTask("flag_PSFF",99)
		UpdateTopSay("��ϲ����3��ͭ�ҵĶ��⽱��")
		UpdateMenu()
		end
	LuaDeleteBuff("518")
--  	LuaSay("ɾ�����̱���")
  	if(LuaItemCount("o_mission414")~=0) then         ----ɾ�����̽�����
  	DelItem("o_mission414",LuaItemCount("o_mission414"))
  	end
  	FlushMyInfo("1")
	LuaSetTask("TPaoShang",99)
	DelLog("183")
	LuaDelTask("183")
	UpdateMenu()

elseif(answer=="T181")then--����Ѱ��,�ر�ͼ
local level= LuaQuery("level")
if(level>=20 and level<30)then
   if(GetCurrentDay()~=LuaQueryStrTask("181Taskday")) then
      LuaSetTask("T181",0)
      LuaSetTask("181etime",0)
      LuaSetTask("181Taskday",GetCurrentDay())
   end
	if(LuaQueryTask("T181")<1) then
		if(LuaItemCount("o_cangbaotu")==0)then
		LuaSay("�н����ˣ����ϴ�����Щ�����˲��ٺö��������������ھ����ϣ��յ���һЩ@2�ر�ͼ@0ȴ�޷��һ���ʵʵ���ڵĶ�����")
		LuaSay("�н����ˣ��������ս�ң���Ϊ������ģ�Ϊ����������ʱ���ˣ�������Щ@2�ر�ͼ@0���ҵ����ŵı��أ������Ǿ�����ˮ��ɣ�")
		LuaSay("�н����ˣ���Ϊ����Ҳ���ܲ�׬���ǣ�1000ͭ��һ�ţ�Ϊ����İ�ȫ����ÿ��ֻ��һ�Ÿ���Ŷ��")
		LuaSay("�н����ˣ���Ȼ������Ǹ��ǳ����͵��ˣ��������ߣ��һ�����ٸ���һ����ѵĲر�ͼŶ��")
		LuaSay("�н����ˣ������ﵽ30����ʱ�򣬾������������Լ��ˣ�����ȥ��@4������@0��@3�����@0��ÿ�����@2����Ĳر�ͼ@0�ء�@!")
		AddMenuItem("ѡ���б�","")
		AddMenuItem("����һ��","T181ok")
		AddMenuItem("��û������","T181no")
		else
		LuaSay("�н����ˣ��㻹ûȥѰ���أ�Ѱ��һ������Ѱ��һ��")
		end
	else
		if(LuaQuery("onlinetime")-LuaQueryTask("181etime")>10800 and LuaQueryTask("T181")<2)then
		LuaSay("�н����ˣ����Ǹ����͵��ˣ����ű�ͼ��������ġ�")
		LuaSetTask("181etime",LuaQueryTask("181etime")+10800)
		LuaAddTask("T181",1)
		LuaGive("o_cangbaotu",1,"T181")
		else
		LuaSay("�н����ˣ��������Ѿ�����ر�ͼ�ˣ�ÿ����ʱ�䳬��3Сʱ�һ������1��,ÿ������ͳ�����1�š�")
		LuaSay("�н����ˣ�������ø���ĵĲر�ͼ������30��֮�������������������Ϊ����۸���Ĳر�ͼŶ������������@!")
		end
	end
elseif(level<20)then
LuaSay("�н����ˣ�Ѱ��Ҫ���㹻�ߵ����������У������ڻ�����20������ͼָʾ�ĵط��㶼��һ��ȥ���ˣ�����20���������ɡ�")
 UpdateTopSay("20����ÿ�����ȥѰ��")
elseif(level>=30)then
	LuaSay("�н����ˣ�������ֻ�ṩ30��֮ǰ�Ĳر�ͼ���ۣ�30��֮���뵽���������������ȥ����Ŷ!")
end
elseif(answer=="T181ok" and LuaQueryTask("T181")  < 3 ) then
	LuaSay("�ڵ��ö������������ң�Ҳ���Ҹ��˸��ˡ�")
	if(LuaItemCount("coin")>=1000)then
		if(LuaGive("o_cangbaotu",1))then
		LuaGive("coin",-1000,"Tcangbaotu")
		LuaAddTask("T181",1)
		LuaDelTask("Tbaotu")
		else
		LuaSay("�����ռ䲻�㣡")
		end
	else
		LuaSay("���������Ȿ����Ҳ���ջص㱾ѽ���ⱦͼ�ɲ��ܰ׸���1000ͭ��1�ţ�")
	end	
	
	
elseif(answer=="T180") then  ------���������ÿ��������ռ����ϣ����ռ�ʲô����ÿ���������õģ���Ҫ�ռ��Ĳ��ϵȼ��ĸߵ͸�����ҵȼ����趨
   local level= LuaQuery("level")
   if(GetCurrentDay()~=LuaQueryStrTask("180Taskday")) then
      LuaSetTask("T180",0)
   end

   if(LuaQueryTask("T180") == 0 ) then
	local r = LuaRandom(6)		----------------------ÿ������չ���ͬ��ԭ���ϣ��� ľ �� �� Ƥ ë
	local day=GetCurrentDay()
    LuaSetTask("180Taskday",day)
    LuaSay("�н����ˣ�������Ӣ�ۣ�����ս�ҵ����������ʵ�ּ�ֵ�ĺ�ʱ������Ҫ��Ϊ���������̼֡�@!")
    LuaSay("�н����ˣ�ÿ���Ҷ������@4����������@0�������ռ���ͬ��@3ԭ����@0��������ռ����ϣ��Ҹ����ؽ������Ǹ�ȡ���衣@!")
    LuaSay("�н����ˣ���������@2�ϳ�@0Ҳ�á�@2�ֽ�@0��@2�ɼ���ֲ@0��@2����@0��@2�Ӷ�@0Ҳ��ֻҪ�ܹ��ռ��������Ҿͻά���㡣@!")
    ----------
    if(level<20) then  ----------------------- 20��������5��1������
      if(r==0) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��1����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",11)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��1����")     
      elseif(r==1) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��1��ľ@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",12)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��1��ľ")
      elseif(r==2) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��1����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",13)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��1����")
      elseif(r==3) then
	LuaSay("�н����ˣ�������ȥ�����ռ�@23��1��Ƥ@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
	LuaSetTask("T180",14)
	AddLog("�޸�֮��",180)
	UpdateTopSay("ȥ�ռ�3��1��Ƥ")
      
	 elseif(r==4) then

	LuaSay("�н����ˣ�������ȥ�����ռ�@23��1��ë@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
	LuaSetTask("T180",15)
	AddLog("�޸�֮��",180)
	UpdateTopSay("ȥ�ռ�3��1��ë")
      elseif(r==5) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��1����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",16)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��1����")
      end
 ------------
     elseif(level<30) then    -- 20����30������5��2������
      if(r==0) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��2����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      UpdateTopSay("ȥ�ռ�3��2����")
      AddLog("�޸�֮��",180)
      LuaSetTask("T180",21)
      elseif(r==1) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��2��ľ@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      UpdateTopSay("ȥ�ռ�3��2��ľ")
	 LuaSetTask("T180",22)
      AddLog("�޸�֮��",180)
      elseif(r==2) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��2����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      UpdateTopSay("ȥ�ռ�3��2����")
	 LuaSetTask("T180",23)
      AddLog("�޸�֮��",180)
      elseif(r==3) then										
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��2��Ƥ@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      UpdateTopSay("ȥ�ռ�3��2��Ƥ")
	 LuaSetTask("T180",24)
      AddLog("�޸�֮��",180)
      elseif(r==4) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��2��ë@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      UpdateTopSay("ȥ�ռ�3��2��ë")
	 LuaSetTask("T180",25)
      AddLog("�޸�֮��",180)
      elseif(r==5) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��2����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      UpdateTopSay("ȥ�ռ�3��2����")
	 LuaSetTask("T180",26)
      AddLog("�޸�֮��",180)
      end
 --------------

    elseif(level<100) then      -- 20����30������10��3������
      if(r==0) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��3����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",31)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��3����")
      elseif(r==1) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��3��ľ@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",32)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��3��ľ")
      elseif(r==2) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��3����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",33)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��3����")
      elseif(r==3) then
	LuaSay("�н����ˣ�������ȥ�����ռ�@23��3��Ƥ@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",34)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��3��Ƥ")
      elseif(r==4) then											
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��3��ë@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",35)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��3��ë")
      elseif(r==5) then
      LuaSay("�н����ˣ�������ȥ�����ռ�@23��3����@0�ͺ��ˣ��ҳ�Ϊ��������ֵ̼�Ը������Խ��Խ���ˡ�@!")
      LuaSetTask("T180",36)
      AddLog("�޸�֮��",180)
      UpdateTopSay("ȥ�ռ�3��3����")   
      end
    elseif(level>=40) then  
     LuaSay("��ʾ����ʱδ����") 

   end
   LuaSendMenu()
   return 1
  end
-------------
  if(LuaQueryTask("T180") >= 11 and LuaQueryTask("T180")<=16 ) then    --------���������ж����䣬���ж�һ����������ֵ
	local level= LuaQuery("level")
	local T180=LuaQueryTask("T180")
	if(T180==11) then
		      if(LuaItemStatusNormalCount("o_material_47") >=3) then     --------1����
		      LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
		      DelItem("o_material_47",3)
		      LuaSetTask("T180",99)
		      local jingyan=(15000+(level-8)*10000)
		      LuaAddJx("combat_exp",jingyan)
		      LuaGive("coin",1000,"T180")
		      DelLog("180")
		      else
		      LuaSay("�н����ˣ��㻹û���ռ���@23��1����@0�ء�")
		      end
	elseif(T180==12) then
		 if(LuaItemStatusNormalCount("o_material_38") >=3) then     --------1��ľ
			LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
			DelItem("o_material_38",3)
			LuaSetTask("T180",99)
			local jingyan=(15000+(level-8)*10000)
			LuaAddJx("combat_exp",jingyan,"T180")
			LuaGive("coin",1000,"T180")
			DelLog("180")
		else
		LuaSay("�н����ˣ��㻹û���ռ���@23��1��ľ@0�ء�")
		 end
	

	elseif(T180==13) then
		 if(LuaItemStatusNormalCount("o_material_56") >=3) then     --------1����
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_56",3)
	      LuaSetTask("T180",99)
	      local jingyan=(15000+(level-8)*10000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",1000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��1����@0�ء�")
		 end
	
	elseif(T180==14) then
		 if(LuaItemStatusNormalCount("o_material_20") >=3) then     --------1��Ƥ
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_20",3)
	      LuaSetTask("T180",99)
	      local jingyan=(15000+(level-8)*10000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",1000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��1��Ƥ@0�ء�")
		 end
	
	elseif(T180==15) then
		 if(LuaItemStatusNormalCount("o_material_11") >=3) then     --------1��ë
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_11",3)
	      LuaSetTask("T180",99)
	      local jingyan=(15000+(level-8)*10000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",1000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��1��ë@0�ء�")
		 end
	
	elseif(T180==16) then
		 if(LuaItemStatusNormalCount("o_material_29") >=3) then     --------1����
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_29",3)
	      LuaSetTask("T180",99)
	      local jingyan=(15000+(level-8)*10000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",1000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��1����@0�ء�")
		 end
    end
----------------
   elseif(LuaQueryTask("T180") >= 21 and LuaQueryTask("T180")<=26 ) then
	local level= LuaQuery("level")
	local T180=LuaQueryTask("T180")
	if(T180==21) then
	      if(LuaItemStatusNormalCount("o_material_48") >=3) then     --------2����
	      LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_48",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��2����@0�ء�")
	      end
	elseif(T180==22) then
		 if(LuaItemStatusNormalCount("o_material_39") >=3) then     --------2��ľ
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_39",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��2��ľ@0�ء�")
		 end


	elseif(T180==23) then
		 if(LuaItemStatusNormalCount("o_material_57") >=3) then     --------2����
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_57",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��2����@0�ء�")
		 end

	elseif(T180==24) then
		 if(LuaItemStatusNormalCount("o_material_21") >=3) then     --------2��Ƥ
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_21",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��2��Ƥ@0�ء�")
		 end

	elseif(T180==25) then
		 if(LuaItemStatusNormalCount("o_material_12") >=3) then     --------2��ë
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_12",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��2��ë@0�ء�")
		 end

	elseif(T180==26) then
		 if(LuaItemStatusNormalCount("o_material_30") >=3) then     --------2����
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_30",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
		 DelLog("180")
		 else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��2����@0�ء�")
		 end
	end
   ---------------
   elseif(LuaQueryTask("T180") >= 31 and LuaQueryTask("T180")<=36 ) then
	local level= LuaQuery("level")
	local T180=LuaQueryTask("T180")
		if(T180==31) then
	      if(LuaItemStatusNormalCount("o_material_49") >=3) then     --------3����
	      LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_49",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
		 else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��3����@0�ء�")
	      end
	elseif(T180==32) then
		 if(LuaItemStatusNormalCount("o_material_40") >=3) then     --------3��ľ
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_40",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
		 else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��3��ľ@0�ء�")
		 end


	elseif(T180==33) then
		 if(LuaItemStatusNormalCount("o_material_58") >=3) then     --------3����
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_58",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
		 else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��3����@0�ء�")
		 end

	elseif(T180==34) then
		 if(LuaItemStatusNormalCount("o_material_22") >=3) then     --------3��Ƥ
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_22",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
		 else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��3��Ƥ@0�ء�")
		 end

	elseif(T180==35) then
		 if(LuaItemStatusNormalCount("o_material_13") >=3) then     --------3��ë
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_13",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��3��ë@0�ء�")
		 end

	elseif(T180==36) then
		 if(LuaItemStatusNormalCount("o_material_31") >=3) then     --------3����
		 LuaSay("�н����ˣ�������Ϊ���������ֵ̼����룬��Խ��Խ���˰���@!")
	      DelItem("o_material_31",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
	      else
	      LuaSay("�н����ˣ��㻹û���ռ���@23��3����@0�ء�")
		 end
    end
  end
  
   
    
  if(LuaQueryTask("T180") ==99) then
   LuaSay("�н����ˣ��ҽ����Ѿ������չ��κ�ԭ�����ˣ������������ɡ�@!")
   end
elseif(answer=="Tcoc")then---------------------�̼���6 Tcoc===11
	if(LuaQueryTask("Tcoc")==11)then
	LuaSay("�н�����:��Ҫ��Ϊ���������̼�,�齨�̻ᵱȻ��Ҫռһϯ֮���.")
	LuaSetTask("Tcoc",14)
	LuaSetTask("T955",14)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		end
	end
	UpdateMenu()

-------------------------------�һ��һ��һ��һ��һ��һ���������������������
--[[elseif(answer=="Tm2stone")then--�һ���ʯ
	LuaSay("��ʯ��ѱ������,���������ı������,Ŀǰ��ʯ��û�ҵ���������,�����Ҫ���ٶһ�����,�߼���ʯ��ʱû��")
	AddMenuItem("��ѡ��Ҫ�һ�����ʯ","") 
	AddMenuItem("�һ�@2һԪʯ","m2s1")--������ͼ���Ȼ���ˣ����ǲ����ٱ���ҲҪ�Ĵ����޻�����ҵģ�һ������ҵ���Ϸʱ�䣬�����г�ȥ���ڼ�ֵ
	AddMenuItem("�һ�@2����ʯ","m2s2")
	AddMenuItem("�һ�@2����ʯ","m2s3")
	AddMenuItem("�һ�@2����ʯ","m2s4")
	AddMenuItem("�һ�@2����ʯ","m2s5")
	AddMenuItem("�һ�@2����ʯ","m2s6")
	AddMenuItem("�һ�@2����ʯ","m2s7")
	AddMenuItem("�һ�@2����ʯ","m2s8")
	AddMenuItem("�һ�@2�Ź�ʯ","m2s9")
	elseif(answer=="m2s1")then	SelfDefM2Stone(1,1)--����1Ϊ���𣬲���2Ϊ�һ���������ʱһ��ֻ��һ������������������չһ�ζһ����
	elseif(answer=="m2s2")then	SelfDefM2Stone(2,1)
	elseif(answer=="m2s3")then	SelfDefM2Stone(3,1)
	elseif(answer=="m2s4")then	SelfDefM2Stone(4,1)
	elseif(answer=="m2s5")then	SelfDefM2Stone(5,1)
	elseif(answer=="m2s6")then	SelfDefM2Stone(6,1)
	elseif(answer=="m2s7")then	SelfDefM2Stone(7,1)
	elseif(answer=="m2s8")then	SelfDefM2Stone(8,1)
	elseif(answer=="m2s9")then	SelfDefM2Stone(9,1)
	LuaSendMenu()
	return 1]]
elseif(answer=="M2m")then-----��ȡ��һ�������
	LuaSay("�н�����:��������,@3��һ���Ĳ���1��@0���Ի�ȡ@3��1����ͬ�����3��")	
	LuaSay("�н�����:��ֻ�ṩ@24�����µ��������6��18��@0�Ķһ�")
	AddMenuItem("����Ҫʲô�һ�ʲô?","")
	AddMenuItem("����ë","c1")
	AddMenuItem("����Ƥ","c2")
	AddMenuItem("������","c3")
	AddMenuItem("����ľ","c4")
	AddMenuItem("���Ͽ�","c5")
	AddMenuItem("���Ͼ�","c6")
	LuaSendMenu()
	return 1
elseif(answer=="c1" or answer=="c2" or answer=="c3" or answer=="c4" or answer=="c5" or answer=="c6")then
	AddMenuItem("��Ҫ��ô��?","")
	AddMenuItem("2����1��",answer.."1")
	AddMenuItem("3����2��",answer.."2")
	AddMenuItem("4����3��",answer.."3")
	AddMenuItem("5����4��",answer.."4")
	LuaSendMenu()
	return 1
elseif(answer=="c11" or answer=="c12" or answer=="c13" or answer=="c14" or answer=="c21" or answer=="c22" or answer=="c23" or answer=="c24" or answer=="c31" or answer=="c32" or answer=="c33" or answer=="c34" or answer=="c41" or answer=="c42" or answer=="c43" or answer=="c44" or answer=="c51" or answer=="c52" or answer=="c53" or answer=="c54" or answer=="c61" or answer=="c62" or answer=="c63" or answer=="c64")then
	AddMenuItem("��Ҫ������?","")
	AddMenuItem("1����3��",answer.."1")
	AddMenuItem("6����18��",answer.."2")
	elseif(answer=="c111")then	SelfDefM2m(1,2,1)
	elseif(answer=="c112")then	SelfDefM2m(1,2,6)
	elseif(answer=="c121")then	SelfDefM2m(1,3,1)
	elseif(answer=="c122")then	SelfDefM2m(1,3,6)
	elseif(answer=="c131")then	SelfDefM2m(1,4,1)
	elseif(answer=="c132")then	SelfDefM2m(1,4,6)
	elseif(answer=="c141")then	SelfDefM2m(1,5,1)
	elseif(answer=="c142")then	SelfDefM2m(1,5,6)
	elseif(answer=="c211")then	SelfDefM2m(2,2,1)
	elseif(answer=="c212")then	SelfDefM2m(2,2,6)
	elseif(answer=="c221")then	SelfDefM2m(2,3,1)
	elseif(answer=="c222")then	SelfDefM2m(2,3,6)
	elseif(answer=="c231")then	SelfDefM2m(2,4,1)
	elseif(answer=="c232")then	SelfDefM2m(2,4,6)
	elseif(answer=="c241")then	SelfDefM2m(2,5,1)
	elseif(answer=="c242")then	SelfDefM2m(2,5,6)
	elseif(answer=="c311")then	SelfDefM2m(3,2,1)
	elseif(answer=="c312")then	SelfDefM2m(3,2,6)
	elseif(answer=="c321")then	SelfDefM2m(3,3,1)
	elseif(answer=="c322")then	SelfDefM2m(3,3,6)
	elseif(answer=="c331")then	SelfDefM2m(3,4,1)
	elseif(answer=="c332")then	SelfDefM2m(3,4,6)
	elseif(answer=="c341")then	SelfDefM2m(3,5,1)
	elseif(answer=="c342")then	SelfDefM2m(3,5,6)
	elseif(answer=="c411")then	SelfDefM2m(4,2,1)
	elseif(answer=="c412")then	SelfDefM2m(4,2,6)
	elseif(answer=="c421")then	SelfDefM2m(4,3,1)
	elseif(answer=="c422")then	SelfDefM2m(4,3,6)
	elseif(answer=="c431")then	SelfDefM2m(4,4,1)
	elseif(answer=="c432")then	SelfDefM2m(4,4,6)
	elseif(answer=="c441")then	SelfDefM2m(4,5,1)
	elseif(answer=="c442")then	SelfDefM2m(4,5,6)
	elseif(answer=="c511")then	SelfDefM2m(5,2,1)
	elseif(answer=="c512")then	SelfDefM2m(5,2,6)
	elseif(answer=="c521")then	SelfDefM2m(5,3,1)
	elseif(answer=="c522")then	SelfDefM2m(5,3,6)
	elseif(answer=="c531")then	SelfDefM2m(5,4,1)
	elseif(answer=="c532")then	SelfDefM2m(5,4,6)
	elseif(answer=="c541")then	SelfDefM2m(5,5,1)
	elseif(answer=="c542")then	SelfDefM2m(5,5,6)
	elseif(answer=="c611")then	SelfDefM2m(6,2,1)
	elseif(answer=="c612")then	SelfDefM2m(6,2,6)
	elseif(answer=="c621")then	SelfDefM2m(6,3,1)
	elseif(answer=="c622")then	SelfDefM2m(6,3,6)
	elseif(answer=="c631")then	SelfDefM2m(6,4,1)
	elseif(answer=="c632")then	SelfDefM2m(6,4,6)
	elseif(answer=="c641")then	SelfDefM2m(6,5,1)
	elseif(answer=="c642")then	SelfDefM2m(6,5,6)
	LuaSendMenu()
	return 1
elseif(answer=="M2M")then--��ȡͬ������
	LuaSay("�н�����:@22�����Ͽ��Ի�ȡ1��ͬ������������@0.@!")
	--LuaSay("�н�����:��ֻ�ṩ@25������@0���ϵ�@2������һ�����20��@0�Ķһ�")
	LuaSay("�н�����:@5���ڿ�����7�����°���7�����϶��ܶһ���Ŷ@!")
	AddMenuItem("����Ҫ��ʲô","")
	AddMenuItem("����ë","1")
	AddMenuItem("����Ƥ","2")
	AddMenuItem("������","3")
	AddMenuItem("����ľ","4")
	AddMenuItem("���Ͽ�","5")
	AddMenuItem("���Ͼ�","6")
	LuaSendMenu()
	return 1
elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4" or answer=="5" or answer=="6")then
	ians=answer+0--�Ѵ����ֵ��ַ���ת��Ϊ���ֵ�Ч��if(answer=="1")then ians=1 end
	show={}
	show={"ë","Ƥ","��","ľ","��","��"}
	gms=show[ians]
	AddMenuItem("����Ҫ����"..gms.."?","")
	AddMenuItem("1��",answer.."1")
	AddMenuItem("2��",answer.."2")
	AddMenuItem("3��",answer.."3")
	AddMenuItem("4��",answer.."4")
	AddMenuItem("5��",answer.."5")
	AddMenuItem("6��",answer.."6")
	AddMenuItem("7��",answer.."7")
	LuaSendMenu()
	return 1
elseif(    answer=="11" or answer=="12" or answer=="13" or answer=="14" or answer=="15" or answer=="16" or answer=="17"
	or answer=="21" or answer=="22" or answer=="23" or answer=="24" or answer=="25" or answer=="26" or answer=="27"
	or answer=="31" or answer=="32" or answer=="33" or answer=="34" or answer=="35" or answer=="36" or answer=="37"
	or answer=="41" or answer=="42" or answer=="43" or answer=="44" or answer=="45" or answer=="46" or answer=="47"
	or answer=="51" or answer=="52" or answer=="53" or answer=="54" or answer=="55" or answer=="56" or answer=="57"
	or answer=="61" or answer=="62" or answer=="63" or answer=="64" or answer=="65" or answer=="66" or answer=="67")then
	ians=answer+0
	show={}
	show={"ë","Ƥ","��","ľ","��","��"}
	gms=show[floor(ians/10)]
	lvs=ians-floor(ians/10)*10
	AddMenuItem("����Ҫ�һ�����"..lvs.."��"..gms.."?","")--���ṩ���������20���Ķһ�
	AddMenuItem("��2���������ϻ�1��",answer.."1")
	AddMenuItem("��40���������ϻ�20��",answer.."2")
	LuaSendMenu()
	return 1
elseif(    answer=="111" or answer=="121" or answer=="131" or answer=="141" or answer=="151" or answer=="161" or answer=="162"
	or answer=="211" or answer=="221" or answer=="231" or answer=="241" or answer=="251" or answer=="261" or answer=="262"
	or answer=="311" or answer=="321" or answer=="331" or answer=="341" or answer=="351" or answer=="361" or answer=="362"
	or answer=="112" or answer=="122" or answer=="132" or answer=="142" or answer=="152" or answer=="461" or answer=="462"	
	or answer=="212" or answer=="222" or answer=="232" or answer=="242" or answer=="252" or answer=="561" or answer=="562"
	or answer=="312" or answer=="322" or answer=="332" or answer=="342" or answer=="352" or answer=="661" or answer=="662"
	or answer=="411" or answer=="421" or answer=="431" or answer=="441" or answer=="451" or answer=="171" or answer=="172"
	or answer=="511" or answer=="521" or answer=="531" or answer=="541" or answer=="551" or answer=="271" or answer=="272"
	or answer=="611" or answer=="621" or answer=="631" or answer=="641" or answer=="651" or answer=="371" or answer=="372"
	or answer=="412" or answer=="422" or answer=="432" or answer=="442" or answer=="452" or answer=="471" or answer=="472" 
	or answer=="512" or answer=="522" or answer=="532" or answer=="542" or answer=="552" or answer=="571" or answer=="572" 
	or answer=="612" or answer=="622" or answer=="632" or answer=="642" or answer=="652" or answer=="671" or answer=="672")then	
	ians=answer+0
	igm=floor(ians/100)
	show={}
	show={"ë","Ƥ","��","ľ","��","��"}
	gms=show[igm]
	lvs=floor((ians-floor(ians/100)*100)/10)
	if(ians-floor(ians/10)*10==1)then
	mms=1
	else
	mms=20
	end
	AddMenuItem("��Ҫ��"..(mms*2).."��ʲô���ϻ�ȡ"..mms.."��"..lvs.."��"..gms.."?","")
	if(igm~=1)then	AddMenuItem("��ë��",answer.."1")	end
	if(igm~=2)then	AddMenuItem("��Ƥ��",answer.."2")	end
	if(igm~=3)then	AddMenuItem("���⻻",answer.."3")	end
	if(igm~=4)then	AddMenuItem("��ľ��",answer.."4")	end
	if(igm~=5)then	AddMenuItem("�ÿ�",answer.."5")	end
	if(igm~=6)then	AddMenuItem("�þ���",answer.."6")	end
	elseif(answer=="1112")then	SelfDefM2M(1,2,1,1)
	elseif(answer=="1113")then	SelfDefM2M(1,3,1,1)
	elseif(answer=="1114")then	SelfDefM2M(1,4,1,1)
	elseif(answer=="1115")then	SelfDefM2M(1,5,1,1)
	elseif(answer=="1116")then	SelfDefM2M(1,6,1,1)
	elseif(answer=="1122")then	SelfDefM2M(1,2,1,20)
	elseif(answer=="1123")then	SelfDefM2M(1,3,1,20)
	elseif(answer=="1124")then	SelfDefM2M(1,4,1,20)
	elseif(answer=="1125")then	SelfDefM2M(1,5,1,20)
	elseif(answer=="1126")then	SelfDefM2M(1,6,1,20)
	elseif(answer=="1212")then	SelfDefM2M(1,2,2,1)
	elseif(answer=="1213")then	SelfDefM2M(1,3,2,1)
	elseif(answer=="1214")then	SelfDefM2M(1,4,2,1)
	elseif(answer=="1215")then	SelfDefM2M(1,5,2,1)
	elseif(answer=="1216")then	SelfDefM2M(1,6,2,1)
	elseif(answer=="1222")then	SelfDefM2M(1,2,2,20)
	elseif(answer=="1223")then	SelfDefM2M(1,3,2,20)
	elseif(answer=="1224")then	SelfDefM2M(1,4,2,20)
	elseif(answer=="1225")then	SelfDefM2M(1,5,2,20)
	elseif(answer=="1226")then	SelfDefM2M(1,6,2,20)
	elseif(answer=="1312")then	SelfDefM2M(1,2,3,1)
	elseif(answer=="1313")then	SelfDefM2M(1,3,3,1)
	elseif(answer=="1314")then	SelfDefM2M(1,4,3,1)
	elseif(answer=="1315")then	SelfDefM2M(1,5,3,1)
	elseif(answer=="1316")then	SelfDefM2M(1,6,3,1)
	elseif(answer=="1322")then	SelfDefM2M(1,2,3,20)
	elseif(answer=="1323")then	SelfDefM2M(1,3,3,20)
	elseif(answer=="1324")then	SelfDefM2M(1,4,3,20)
	elseif(answer=="1325")then	SelfDefM2M(1,5,3,20)
	elseif(answer=="1326")then	SelfDefM2M(1,6,3,20)
	elseif(answer=="1412")then	SelfDefM2M(1,2,4,1)
	elseif(answer=="1413")then	SelfDefM2M(1,3,4,1)
	elseif(answer=="1414")then	SelfDefM2M(1,4,4,1)
	elseif(answer=="1415")then	SelfDefM2M(1,5,4,1)
	elseif(answer=="1416")then	SelfDefM2M(1,6,4,1)
	elseif(answer=="1422")then	SelfDefM2M(1,2,4,20)
	elseif(answer=="1423")then	SelfDefM2M(1,3,4,20)
	elseif(answer=="1424")then	SelfDefM2M(1,4,4,20)
	elseif(answer=="1425")then	SelfDefM2M(1,5,4,20)
	elseif(answer=="1426")then	SelfDefM2M(1,6,4,20)
	elseif(answer=="1512")then	SelfDefM2M(1,2,5,1)
	elseif(answer=="1513")then	SelfDefM2M(1,3,5,1)
	elseif(answer=="1514")then	SelfDefM2M(1,4,5,1)
	elseif(answer=="1515")then	SelfDefM2M(1,5,5,1)
	elseif(answer=="1516")then	SelfDefM2M(1,6,5,1)
	elseif(answer=="1522")then	SelfDefM2M(1,2,5,20)
	elseif(answer=="1523")then	SelfDefM2M(1,3,5,20)
	elseif(answer=="1524")then	SelfDefM2M(1,4,5,20)
	elseif(answer=="1525")then	SelfDefM2M(1,5,5,20)
	elseif(answer=="1526")then	SelfDefM2M(1,6,5,20)
	elseif(answer=="1612")then	SelfDefM2M(1,2,6,1)
	elseif(answer=="1613")then	SelfDefM2M(1,3,6,1)
	elseif(answer=="1614")then	SelfDefM2M(1,4,6,1)
	elseif(answer=="1615")then	SelfDefM2M(1,5,6,1)
	elseif(answer=="1616")then	SelfDefM2M(1,6,6,1)
	elseif(answer=="1622")then	SelfDefM2M(1,2,6,20)
	elseif(answer=="1623")then	SelfDefM2M(1,3,6,20)
	elseif(answer=="1624")then	SelfDefM2M(1,4,6,20)
	elseif(answer=="1625")then	SelfDefM2M(1,5,6,20)
	elseif(answer=="1626")then	SelfDefM2M(1,6,6,20)
	elseif(answer=="1712")then	SelfDefM2M(1,2,7,1)
	elseif(answer=="1713")then	SelfDefM2M(1,3,7,1)
	elseif(answer=="1714")then	SelfDefM2M(1,4,7,1)
	elseif(answer=="1715")then	SelfDefM2M(1,5,7,1)
	elseif(answer=="1716")then	SelfDefM2M(1,6,7,1)
	elseif(answer=="1722")then	SelfDefM2M(1,2,7,20)
	elseif(answer=="1723")then	SelfDefM2M(1,3,7,20)
	elseif(answer=="1724")then	SelfDefM2M(1,4,7,20)
	elseif(answer=="1725")then	SelfDefM2M(1,5,7,20)
	elseif(answer=="1726")then	SelfDefM2M(1,6,7,20)

	elseif(answer=="2111")then	SelfDefM2M(2,1,1,1)
	elseif(answer=="2113")then	SelfDefM2M(2,3,1,1)
	elseif(answer=="2114")then	SelfDefM2M(2,4,1,1)
	elseif(answer=="2115")then	SelfDefM2M(2,5,1,1)
	elseif(answer=="2116")then	SelfDefM2M(2,6,1,1)
	elseif(answer=="2121")then	SelfDefM2M(2,1,1,20)
	elseif(answer=="2123")then	SelfDefM2M(2,3,1,20)
	elseif(answer=="2124")then	SelfDefM2M(2,4,1,20)
	elseif(answer=="2125")then	SelfDefM2M(2,5,1,20)
	elseif(answer=="2126")then	SelfDefM2M(2,6,1,20)
	elseif(answer=="2211")then	SelfDefM2M(2,1,2,1)
	elseif(answer=="2213")then	SelfDefM2M(2,3,2,1)
	elseif(answer=="2214")then	SelfDefM2M(2,4,2,1)
	elseif(answer=="2215")then	SelfDefM2M(2,5,2,1)
	elseif(answer=="2216")then	SelfDefM2M(2,6,2,1)
	elseif(answer=="2221")then	SelfDefM2M(2,1,2,20)
	elseif(answer=="2223")then	SelfDefM2M(2,3,2,20)
	elseif(answer=="2224")then	SelfDefM2M(2,4,2,20)
	elseif(answer=="2225")then	SelfDefM2M(2,5,2,20)
	elseif(answer=="2226")then	SelfDefM2M(2,6,2,20)
	elseif(answer=="2311")then	SelfDefM2M(2,1,3,1)
	elseif(answer=="2313")then	SelfDefM2M(2,3,3,1)
	elseif(answer=="2314")then	SelfDefM2M(2,4,3,1)
	elseif(answer=="2315")then	SelfDefM2M(2,5,3,1)
	elseif(answer=="2316")then	SelfDefM2M(2,6,3,1)
	elseif(answer=="2321")then	SelfDefM2M(2,1,3,20)
	elseif(answer=="2323")then	SelfDefM2M(2,3,3,20)
	elseif(answer=="2324")then	SelfDefM2M(2,4,3,20)
	elseif(answer=="2325")then	SelfDefM2M(2,5,3,20)
	elseif(answer=="2326")then	SelfDefM2M(2,6,3,20)
	elseif(answer=="2411")then	SelfDefM2M(2,1,4,1)
	elseif(answer=="2413")then	SelfDefM2M(2,3,4,1)
	elseif(answer=="2414")then	SelfDefM2M(2,4,4,1)
	elseif(answer=="2415")then	SelfDefM2M(2,5,4,1)
	elseif(answer=="2416")then	SelfDefM2M(2,6,4,1)
	elseif(answer=="2421")then	SelfDefM2M(2,1,4,20)
	elseif(answer=="2423")then	SelfDefM2M(2,3,4,20)
	elseif(answer=="2424")then	SelfDefM2M(2,4,4,20)
	elseif(answer=="2425")then	SelfDefM2M(2,5,4,20)
	elseif(answer=="2426")then	SelfDefM2M(2,6,4,20)
	elseif(answer=="2511")then	SelfDefM2M(2,1,5,1)
	elseif(answer=="2513")then	SelfDefM2M(2,3,5,1)
	elseif(answer=="2514")then	SelfDefM2M(2,4,5,1)
	elseif(answer=="2515")then	SelfDefM2M(2,5,5,1)
	elseif(answer=="2516")then	SelfDefM2M(2,6,5,1)
	elseif(answer=="2521")then	SelfDefM2M(2,1,5,20)
	elseif(answer=="2523")then	SelfDefM2M(2,3,5,20)
	elseif(answer=="2524")then	SelfDefM2M(2,4,5,20)
	elseif(answer=="2525")then	SelfDefM2M(2,5,5,20)
	elseif(answer=="2526")then	SelfDefM2M(2,6,5,20)
	elseif(answer=="2611")then	SelfDefM2M(2,1,6,1)
	elseif(answer=="2613")then	SelfDefM2M(2,3,6,1)
	elseif(answer=="2614")then	SelfDefM2M(2,4,6,1)
	elseif(answer=="2615")then	SelfDefM2M(2,5,6,1)
	elseif(answer=="2616")then	SelfDefM2M(2,6,6,1)
	elseif(answer=="2621")then	SelfDefM2M(2,1,6,20)
	elseif(answer=="2623")then	SelfDefM2M(2,3,6,20)
	elseif(answer=="2624")then	SelfDefM2M(2,4,6,20)
	elseif(answer=="2625")then	SelfDefM2M(2,5,6,20)
	elseif(answer=="2626")then	SelfDefM2M(2,6,6,20)
	elseif(answer=="2711")then	SelfDefM2M(2,1,7,1)
	elseif(answer=="2713")then	SelfDefM2M(2,3,7,1)
	elseif(answer=="2714")then	SelfDefM2M(2,4,7,1)
	elseif(answer=="2715")then	SelfDefM2M(2,5,7,1)
	elseif(answer=="2716")then	SelfDefM2M(2,6,7,1)
	elseif(answer=="2721")then	SelfDefM2M(2,1,7,20)
	elseif(answer=="2723")then	SelfDefM2M(2,3,7,20)
	elseif(answer=="2724")then	SelfDefM2M(2,4,7,20)
	elseif(answer=="2725")then	SelfDefM2M(2,5,7,20)
	elseif(answer=="2726")then	SelfDefM2M(2,6,7,20)

	elseif(answer=="3111")then	SelfDefM2M(3,1,1,1)
	elseif(answer=="3112")then	SelfDefM2M(3,2,1,1)
	elseif(answer=="3114")then	SelfDefM2M(3,4,1,1)
	elseif(answer=="3115")then	SelfDefM2M(3,5,1,1)
	elseif(answer=="3116")then	SelfDefM2M(3,6,1,1)
	elseif(answer=="3121")then	SelfDefM2M(3,1,1,20)
	elseif(answer=="3122")then	SelfDefM2M(3,2,1,20)
	elseif(answer=="3124")then	SelfDefM2M(3,4,1,20)
	elseif(answer=="3125")then	SelfDefM2M(3,5,1,20)
	elseif(answer=="3126")then	SelfDefM2M(3,6,1,20)
	elseif(answer=="3211")then	SelfDefM2M(3,1,2,1)
	elseif(answer=="3212")then	SelfDefM2M(3,2,2,1)
	elseif(answer=="3214")then	SelfDefM2M(3,4,2,1)
	elseif(answer=="3215")then	SelfDefM2M(3,5,2,1)
	elseif(answer=="3216")then	SelfDefM2M(3,6,2,1)
	elseif(answer=="3221")then	SelfDefM2M(3,1,2,20)
	elseif(answer=="3222")then	SelfDefM2M(3,2,2,20)
	elseif(answer=="3224")then	SelfDefM2M(3,4,2,20)
	elseif(answer=="3225")then	SelfDefM2M(3,5,2,20)
	elseif(answer=="3226")then	SelfDefM2M(3,6,2,20)
	elseif(answer=="3311")then	SelfDefM2M(3,1,3,1)
	elseif(answer=="3312")then	SelfDefM2M(3,2,3,1)
	elseif(answer=="3314")then	SelfDefM2M(3,4,3,1)
	elseif(answer=="3315")then	SelfDefM2M(3,5,3,1)
	elseif(answer=="3316")then	SelfDefM2M(3,6,3,1)
	elseif(answer=="3321")then	SelfDefM2M(3,1,3,20)
	elseif(answer=="3322")then	SelfDefM2M(3,2,3,20)
	elseif(answer=="3324")then	SelfDefM2M(3,4,3,20)
	elseif(answer=="3325")then	SelfDefM2M(3,5,3,20)
	elseif(answer=="3326")then	SelfDefM2M(3,6,3,20)
	elseif(answer=="3411")then	SelfDefM2M(3,1,4,1)
	elseif(answer=="3412")then	SelfDefM2M(3,2,4,1)
	elseif(answer=="3414")then	SelfDefM2M(3,4,4,1)
	elseif(answer=="3415")then	SelfDefM2M(3,5,4,1)
	elseif(answer=="3416")then	SelfDefM2M(3,6,4,1)
	elseif(answer=="3421")then	SelfDefM2M(3,1,4,20)
	elseif(answer=="3422")then	SelfDefM2M(3,2,4,20)
	elseif(answer=="3424")then	SelfDefM2M(3,4,4,20)
	elseif(answer=="3425")then	SelfDefM2M(3,5,4,20)
	elseif(answer=="3426")then	SelfDefM2M(3,6,4,20)
	elseif(answer=="3511")then	SelfDefM2M(3,1,5,1)
	elseif(answer=="3512")then	SelfDefM2M(3,2,5,1)
	elseif(answer=="3514")then	SelfDefM2M(3,4,5,1)
	elseif(answer=="3515")then	SelfDefM2M(3,5,5,1)
	elseif(answer=="3516")then	SelfDefM2M(3,6,5,1)
	elseif(answer=="3521")then	SelfDefM2M(3,1,5,20)
	elseif(answer=="3522")then	SelfDefM2M(3,2,5,20)
	elseif(answer=="3524")then	SelfDefM2M(3,4,5,20)
	elseif(answer=="3525")then	SelfDefM2M(3,5,5,20)
	elseif(answer=="3526")then	SelfDefM2M(3,6,5,20)
	elseif(answer=="3611")then	SelfDefM2M(3,1,6,1)
	elseif(answer=="3612")then	SelfDefM2M(3,2,6,1)
	elseif(answer=="3614")then	SelfDefM2M(3,4,6,1)
	elseif(answer=="3615")then	SelfDefM2M(3,5,6,1)
	elseif(answer=="3616")then	SelfDefM2M(3,6,6,1)
	elseif(answer=="3621")then	SelfDefM2M(3,1,6,20)
	elseif(answer=="3622")then	SelfDefM2M(3,2,6,20)
	elseif(answer=="3624")then	SelfDefM2M(3,4,6,20)
	elseif(answer=="3625")then	SelfDefM2M(3,5,6,20)
	elseif(answer=="3626")then	SelfDefM2M(3,6,6,20)
	elseif(answer=="3711")then	SelfDefM2M(3,1,7,1)
	elseif(answer=="3712")then	SelfDefM2M(3,2,7,1)
	elseif(answer=="3714")then	SelfDefM2M(3,4,7,1)
	elseif(answer=="3715")then	SelfDefM2M(3,5,7,1)
	elseif(answer=="3716")then	SelfDefM2M(3,6,7,1)
	elseif(answer=="3721")then	SelfDefM2M(3,1,7,20)
	elseif(answer=="3722")then	SelfDefM2M(3,2,7,20)
	elseif(answer=="3724")then	SelfDefM2M(3,4,7,20)
	elseif(answer=="3725")then	SelfDefM2M(3,5,7,20)
	elseif(answer=="3726")then	SelfDefM2M(3,6,7,20)

	elseif(answer=="4111")then	SelfDefM2M(4,1,1,1)
	elseif(answer=="4112")then	SelfDefM2M(4,2,1,1)
	elseif(answer=="4113")then	SelfDefM2M(4,3,1,1)
	elseif(answer=="4115")then	SelfDefM2M(4,5,1,1)
	elseif(answer=="4116")then	SelfDefM2M(4,6,1,1)
	elseif(answer=="4121")then	SelfDefM2M(4,1,1,20)
	elseif(answer=="4122")then	SelfDefM2M(4,2,1,20)
	elseif(answer=="4123")then	SelfDefM2M(4,3,1,20)
	elseif(answer=="4125")then	SelfDefM2M(4,5,1,20)
	elseif(answer=="4126")then	SelfDefM2M(4,6,1,20)
	elseif(answer=="4211")then	SelfDefM2M(4,1,2,1)
	elseif(answer=="4212")then	SelfDefM2M(4,2,2,1)
	elseif(answer=="4213")then	SelfDefM2M(4,3,2,1)
	elseif(answer=="4215")then	SelfDefM2M(4,5,2,1)
	elseif(answer=="4216")then	SelfDefM2M(4,6,2,1)
	elseif(answer=="4221")then	SelfDefM2M(4,1,2,20)
	elseif(answer=="4222")then	SelfDefM2M(4,2,2,20)
	elseif(answer=="4223")then	SelfDefM2M(4,3,2,20)
	elseif(answer=="4225")then	SelfDefM2M(4,5,2,20)
	elseif(answer=="4226")then	SelfDefM2M(4,6,2,20)
	elseif(answer=="4311")then	SelfDefM2M(4,1,3,1)
	elseif(answer=="4312")then	SelfDefM2M(4,2,3,1)
	elseif(answer=="4313")then	SelfDefM2M(4,3,3,1)
	elseif(answer=="4315")then	SelfDefM2M(4,5,3,1)
	elseif(answer=="4316")then	SelfDefM2M(4,6,3,1)
	elseif(answer=="4321")then	SelfDefM2M(4,1,3,20)
	elseif(answer=="4322")then	SelfDefM2M(4,2,3,20)
	elseif(answer=="4323")then	SelfDefM2M(4,3,3,20)
	elseif(answer=="4325")then	SelfDefM2M(4,5,3,20)
	elseif(answer=="4326")then	SelfDefM2M(4,6,3,20)
	elseif(answer=="4411")then	SelfDefM2M(4,1,4,1)
	elseif(answer=="4412")then	SelfDefM2M(4,2,4,1)
	elseif(answer=="4413")then	SelfDefM2M(4,3,4,1)
	elseif(answer=="4415")then	SelfDefM2M(4,5,4,1)
	elseif(answer=="4416")then	SelfDefM2M(4,6,4,1)
	elseif(answer=="4421")then	SelfDefM2M(4,1,4,20)
	elseif(answer=="4422")then	SelfDefM2M(4,2,4,20)
	elseif(answer=="4423")then	SelfDefM2M(4,3,4,20)
	elseif(answer=="4425")then	SelfDefM2M(4,5,4,20)
	elseif(answer=="4426")then	SelfDefM2M(4,6,4,20)
	elseif(answer=="4511")then	SelfDefM2M(4,1,5,1)
	elseif(answer=="4512")then	SelfDefM2M(4,2,5,1)
	elseif(answer=="4513")then	SelfDefM2M(4,3,5,1)
	elseif(answer=="4515")then	SelfDefM2M(4,5,5,1)
	elseif(answer=="4516")then	SelfDefM2M(4,6,5,1)
	elseif(answer=="4521")then	SelfDefM2M(4,1,5,20)
	elseif(answer=="4522")then	SelfDefM2M(4,2,5,20)
	elseif(answer=="4523")then	SelfDefM2M(4,3,5,20)
	elseif(answer=="4525")then	SelfDefM2M(4,5,5,20)
	elseif(answer=="4526")then	SelfDefM2M(4,6,5,20)
	elseif(answer=="4611")then	SelfDefM2M(4,1,6,1)
	elseif(answer=="4612")then	SelfDefM2M(4,2,6,1)
	elseif(answer=="4613")then	SelfDefM2M(4,3,6,1)
	elseif(answer=="4615")then	SelfDefM2M(4,5,6,1)
	elseif(answer=="4616")then	SelfDefM2M(4,6,6,1)
	elseif(answer=="4621")then	SelfDefM2M(4,1,6,20)
	elseif(answer=="4622")then	SelfDefM2M(4,2,6,20)
	elseif(answer=="4623")then	SelfDefM2M(4,3,6,20)
	elseif(answer=="4625")then	SelfDefM2M(4,5,6,20)
	elseif(answer=="4626")then	SelfDefM2M(4,6,6,20)
	elseif(answer=="4711")then	SelfDefM2M(4,1,7,1)
	elseif(answer=="4712")then	SelfDefM2M(4,2,7,1)
	elseif(answer=="4713")then	SelfDefM2M(4,3,7,1)
	elseif(answer=="4715")then	SelfDefM2M(4,5,7,1)
	elseif(answer=="4716")then	SelfDefM2M(4,6,7,1)
	elseif(answer=="4721")then	SelfDefM2M(4,1,7,20)
	elseif(answer=="4722")then	SelfDefM2M(4,2,7,20)
	elseif(answer=="4723")then	SelfDefM2M(4,3,7,20)
	elseif(answer=="4725")then	SelfDefM2M(4,5,7,20)
	elseif(answer=="4726")then	SelfDefM2M(4,6,7,20)

	elseif(answer=="5111")then	SelfDefM2M(5,1,1,1)
	elseif(answer=="5112")then	SelfDefM2M(5,2,1,1)
	elseif(answer=="5113")then	SelfDefM2M(5,3,1,1)
	elseif(answer=="5114")then	SelfDefM2M(5,4,1,1)
	elseif(answer=="5116")then	SelfDefM2M(5,6,1,1)
	elseif(answer=="5121")then	SelfDefM2M(5,1,1,20)
	elseif(answer=="5122")then	SelfDefM2M(5,2,1,20)
	elseif(answer=="5123")then	SelfDefM2M(5,3,1,20)
	elseif(answer=="5124")then	SelfDefM2M(5,4,1,20)
	elseif(answer=="5126")then	SelfDefM2M(5,6,1,20)
	elseif(answer=="5211")then	SelfDefM2M(5,1,2,1)
	elseif(answer=="5212")then	SelfDefM2M(5,2,2,1)
	elseif(answer=="5213")then	SelfDefM2M(5,3,2,1)
	elseif(answer=="5214")then	SelfDefM2M(5,4,2,1)
	elseif(answer=="5216")then	SelfDefM2M(5,6,2,1)
	elseif(answer=="5221")then	SelfDefM2M(5,1,2,20)
	elseif(answer=="5222")then	SelfDefM2M(5,2,2,20)
	elseif(answer=="5223")then	SelfDefM2M(5,3,2,20)
	elseif(answer=="5224")then	SelfDefM2M(5,4,2,20)
	elseif(answer=="5226")then	SelfDefM2M(5,6,2,20)
	elseif(answer=="5311")then	SelfDefM2M(5,1,3,1)
	elseif(answer=="5312")then	SelfDefM2M(5,2,3,1)
	elseif(answer=="5313")then	SelfDefM2M(5,3,3,1)
	elseif(answer=="5314")then	SelfDefM2M(5,4,3,1)
	elseif(answer=="5316")then	SelfDefM2M(5,6,3,1)
	elseif(answer=="5321")then	SelfDefM2M(5,1,3,20)
	elseif(answer=="5322")then	SelfDefM2M(5,2,3,20)
	elseif(answer=="5323")then	SelfDefM2M(5,3,3,20)
	elseif(answer=="5324")then	SelfDefM2M(5,4,3,20)
	elseif(answer=="5326")then	SelfDefM2M(5,6,3,20)
	elseif(answer=="5411")then	SelfDefM2M(5,1,4,1)
	elseif(answer=="5412")then	SelfDefM2M(5,2,4,1)
	elseif(answer=="5413")then	SelfDefM2M(5,3,4,1)
	elseif(answer=="5414")then	SelfDefM2M(5,4,4,1)
	elseif(answer=="5416")then	SelfDefM2M(5,6,4,1)
	elseif(answer=="5421")then	SelfDefM2M(5,1,4,20)
	elseif(answer=="5422")then	SelfDefM2M(5,2,4,20)
	elseif(answer=="5423")then	SelfDefM2M(5,3,4,20)
	elseif(answer=="5424")then	SelfDefM2M(5,4,4,20)
	elseif(answer=="5426")then	SelfDefM2M(5,6,4,20)
	elseif(answer=="5511")then	SelfDefM2M(5,1,5,1)
	elseif(answer=="5512")then	SelfDefM2M(5,2,5,1)
	elseif(answer=="5513")then	SelfDefM2M(5,3,5,1)
	elseif(answer=="5514")then	SelfDefM2M(5,4,5,1)
	elseif(answer=="5516")then	SelfDefM2M(5,6,5,1)
	elseif(answer=="5521")then	SelfDefM2M(5,1,5,20)
	elseif(answer=="5522")then	SelfDefM2M(5,2,5,20)
	elseif(answer=="5523")then	SelfDefM2M(5,3,5,20)
	elseif(answer=="5524")then	SelfDefM2M(5,4,5,20)
	elseif(answer=="5526")then	SelfDefM2M(5,6,5,20)
	elseif(answer=="5611")then	SelfDefM2M(5,1,6,1)
	elseif(answer=="5612")then	SelfDefM2M(5,2,6,1)
	elseif(answer=="5613")then	SelfDefM2M(5,3,6,1)
	elseif(answer=="5614")then	SelfDefM2M(5,4,6,1)
	elseif(answer=="5616")then	SelfDefM2M(5,6,6,1)
	elseif(answer=="5621")then	SelfDefM2M(5,1,6,20)
	elseif(answer=="5622")then	SelfDefM2M(5,2,6,20)
	elseif(answer=="5623")then	SelfDefM2M(5,3,6,20)
	elseif(answer=="5624")then	SelfDefM2M(5,4,6,20)
	elseif(answer=="5626")then	SelfDefM2M(5,6,6,20)
	elseif(answer=="5711")then	SelfDefM2M(5,1,7,1)
	elseif(answer=="5712")then	SelfDefM2M(5,2,7,1)
	elseif(answer=="5713")then	SelfDefM2M(5,3,7,1)
	elseif(answer=="5714")then	SelfDefM2M(5,4,7,1)
	elseif(answer=="5716")then	SelfDefM2M(5,6,7,1)
	elseif(answer=="5721")then	SelfDefM2M(5,1,7,20)
	elseif(answer=="5722")then	SelfDefM2M(5,2,7,20)
	elseif(answer=="5723")then	SelfDefM2M(5,3,7,20)
	elseif(answer=="5724")then	SelfDefM2M(5,4,7,20)
	elseif(answer=="5726")then	SelfDefM2M(5,6,7,20)

	elseif(answer=="6111")then	SelfDefM2M(6,1,1,1)
	elseif(answer=="6112")then	SelfDefM2M(6,2,1,1)
	elseif(answer=="6113")then	SelfDefM2M(6,3,1,1)
	elseif(answer=="6114")then	SelfDefM2M(6,4,1,1)
	elseif(answer=="6115")then	SelfDefM2M(6,5,1,1)
	elseif(answer=="6121")then	SelfDefM2M(6,1,1,20)
	elseif(answer=="6122")then	SelfDefM2M(6,2,1,20)
	elseif(answer=="6123")then	SelfDefM2M(6,3,1,20)
	elseif(answer=="6124")then	SelfDefM2M(6,4,1,20)
	elseif(answer=="6125")then	SelfDefM2M(6,5,1,20)
	elseif(answer=="6211")then	SelfDefM2M(6,1,2,1)
	elseif(answer=="6212")then	SelfDefM2M(6,2,2,1)
	elseif(answer=="6213")then	SelfDefM2M(6,3,2,1)
	elseif(answer=="6214")then	SelfDefM2M(6,4,2,1)
	elseif(answer=="6215")then	SelfDefM2M(6,5,2,1)
	elseif(answer=="6221")then	SelfDefM2M(6,1,2,20)
	elseif(answer=="6222")then	SelfDefM2M(6,2,2,20)
	elseif(answer=="6223")then	SelfDefM2M(6,3,2,20)
	elseif(answer=="6224")then	SelfDefM2M(6,4,2,20)
	elseif(answer=="6225")then	SelfDefM2M(6,5,2,20)
	elseif(answer=="6311")then	SelfDefM2M(6,1,3,1)
	elseif(answer=="6312")then	SelfDefM2M(6,2,3,1)
	elseif(answer=="6313")then	SelfDefM2M(6,3,3,1)
	elseif(answer=="6314")then	SelfDefM2M(6,4,3,1)
	elseif(answer=="6315")then	SelfDefM2M(6,5,3,1)
	elseif(answer=="6321")then	SelfDefM2M(6,1,3,20)
	elseif(answer=="6322")then	SelfDefM2M(6,2,3,20)
	elseif(answer=="6323")then	SelfDefM2M(6,3,3,20)
	elseif(answer=="6324")then	SelfDefM2M(6,4,3,20)
	elseif(answer=="6325")then	SelfDefM2M(6,5,3,20)
	elseif(answer=="6411")then	SelfDefM2M(6,1,4,1)
	elseif(answer=="6412")then	SelfDefM2M(6,2,4,1)
	elseif(answer=="6413")then	SelfDefM2M(6,3,4,1)
	elseif(answer=="6414")then	SelfDefM2M(6,4,4,1)
	elseif(answer=="6415")then	SelfDefM2M(6,5,4,1)
	elseif(answer=="6421")then	SelfDefM2M(6,1,4,20)
	elseif(answer=="6422")then	SelfDefM2M(6,2,4,20)
	elseif(answer=="6423")then	SelfDefM2M(6,3,4,20)
	elseif(answer=="6424")then	SelfDefM2M(6,4,4,20)
	elseif(answer=="6425")then	SelfDefM2M(6,5,4,20)
	elseif(answer=="6511")then	SelfDefM2M(6,1,5,1)
	elseif(answer=="6512")then	SelfDefM2M(6,2,5,1)
	elseif(answer=="6513")then	SelfDefM2M(6,3,5,1)
	elseif(answer=="6514")then	SelfDefM2M(6,4,5,1)
	elseif(answer=="6515")then	SelfDefM2M(6,5,5,1)
	elseif(answer=="6521")then	SelfDefM2M(6,1,5,20)
	elseif(answer=="6522")then	SelfDefM2M(6,2,5,20)
	elseif(answer=="6523")then	SelfDefM2M(6,3,5,20)
	elseif(answer=="6524")then	SelfDefM2M(6,4,5,20)
	elseif(answer=="6525")then	SelfDefM2M(6,5,5,20)
	elseif(answer=="6611")then	SelfDefM2M(6,1,6,1)
	elseif(answer=="6612")then	SelfDefM2M(6,2,6,1)
	elseif(answer=="6613")then	SelfDefM2M(6,3,6,1)
	elseif(answer=="6614")then	SelfDefM2M(6,4,6,1)
	elseif(answer=="6615")then	SelfDefM2M(6,5,6,1)
	elseif(answer=="6621")then	SelfDefM2M(6,1,6,20)
	elseif(answer=="6622")then	SelfDefM2M(6,2,6,20)
	elseif(answer=="6623")then	SelfDefM2M(6,3,6,20)
	elseif(answer=="6624")then	SelfDefM2M(6,4,6,20)
	elseif(answer=="6625")then	SelfDefM2M(6,5,6,20)
	elseif(answer=="6711")then	SelfDefM2M(6,1,7,1)
	elseif(answer=="6712")then	SelfDefM2M(6,2,7,1)
	elseif(answer=="6713")then	SelfDefM2M(6,3,7,1)
	elseif(answer=="6714")then	SelfDefM2M(6,4,7,1)
	elseif(answer=="6715")then	SelfDefM2M(6,5,7,1)
	elseif(answer=="6721")then	SelfDefM2M(6,1,7,20)
	elseif(answer=="6722")then	SelfDefM2M(6,2,7,20)
	elseif(answer=="6723")then	SelfDefM2M(6,3,7,20)
	elseif(answer=="6724")then	SelfDefM2M(6,4,7,20)
	elseif(answer=="6725")then	SelfDefM2M(6,5,7,20)



	

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..�����챦
elseif(answer=="Tqzyb")then
	--���� o_mission168 A
	--��֦ o_mission153 B
	--�� o_mission145 C
	--�Ŷ� o_mission018 D
	LuaSay("�н����ˣ����������Ϊ����ṩ���������챦�������������ɱ����������Ŷ@!")
	a=LuaItemStatusNormalCount("o_mission168")
	b=LuaItemStatusNormalCount("o_mission153")
	c=LuaItemStatusNormalCount("o_mission145")
	d=LuaItemStatusNormalCount("o_mission018")
	AddMenuItem("@7�����챦","")
	if(LuaQueryTask("bao_A")~=0)then
		AddMenuItem("@2����","bao_A")
	else
		AddMenuItem("@7����","bao_A")
	end
	if(LuaQueryTask("bao_B")~=0)then
		AddMenuItem("@2��֦","bao_B")
	else
		AddMenuItem("@7��֦","bao_B")
	end
	if(LuaQueryTask("bao_C")~=0)then
		AddMenuItem("@2��","bao_C")
	else
		AddMenuItem("@7��","bao_C")
	end
	if(LuaQueryTask("bao_D")~=0)then
		AddMenuItem("@2�Ŷ�","bao_D")
	else
		AddMenuItem("@7�Ŷ�","bao_D")
	end
	
	elseif(answer=="bao_A")then
	local a=LuaItemStatusNormalCount("o_mission168")
		if(a>0)then
			if(LuaQueryTask("bao_A")==0)then
				LuaSay("�н����ˣ���˵@4������@0��@3����@0�������������Ȥ����ȥ����������")
				LuaSetTask("bao_A",1)
				UpdateNPCMenu("yuweng")
				UpdateMenu()
			elseif(LuaQueryTask("bao_A")==1)then
				LuaSay("�н����ˣ�ȥ��@4������@0��@3����@0�������������Ȥ��")
			end
		else
			LuaSay("�н����ˣ�������û��Я��@2����@0���������ͨ��������Ŷ��@!")
		end
	elseif(answer=="bao_B")then
		local b=LuaItemStatusNormalCount("o_mission153")
		if(b>0)then
			if(LuaQueryTask("bao_B")==0)then
				LuaSay("�н����ˣ���˵�����ǵ�@3���幫��@0��@2��֦@0����ϲ������ȥ����������")
				LuaSetTask("bao_B",1)
				UpdateNPCMenu("jinqing")
				UpdateMenu()
			elseif(LuaQueryTask("bao_B")==1)then
				LuaSay("�н����ˣ�ȥ��@4������@0��@3���幫��@0��")
			end
		else
			LuaSay("�н����ˣ�������û��Я��@2��֦@0��@2��֦@0����ͨ���ɼ����ɼ����Ŷ��@!")
		end
	elseif(answer=="bao_C")then
		local c=LuaItemStatusNormalCount("o_mission145")
		if(c>0)then
			if(LuaQueryTask("bao_C")==0)then
				LuaSay("�н����ˣ�@2��@0�Ǵ����������ϵȲ��ϣ�@4��������@0��@3��������@0����һ����@2��@0����������")
				LuaSetTask("bao_C",1)
				UpdateMenu()
			elseif(LuaQueryTask("bao_C")==1)then
				LuaSay("�н����ˣ�ȥ��@4��������@0��@3��������@0��")
			end
		else
			LuaSay("�н����ˣ�������û��Я��@2��@0��@2��@0����ͨ���󳡲ɼ����Ŷ��@!")
		end
	elseif(answer=="bao_D")then
		local d=LuaItemStatusNormalCount("o_mission018")
		if(d>0)then
			if(LuaQueryTask("bao_D")==0)then
				LuaSay("�н����ˣ�@4��������@0��@3��������@0�ԹŶ���һ�����о�����ȥ����һ���о��°���@!")
				LuaSetTask("bao_D",1)
				UpdateMenu()
			elseif(LuaQueryTask("bao_D")==1)then
				LuaSay("�н����ˣ�ȥ��@4��������@0��@3��������@0��")
			end
		else
			LuaSay("�н����ˣ�������û��Я��@2�ƾɹŶ�@0��@2�ƾɹŶ�@0����ͨ���ر�ͼ��̽�������Ŷ��@!")
		end



--��ڽ�ɽ
elseif(answer=="T385")then
if(TeamCount()>=2)then
	if(LuaQueryTask("T385")==1)then
		if(TeamQueryTask("T385")>=1)then
			if(LuaQueryTask("TfindNPC_10")==1)then
				LuaSay("�н����ˣ��ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
				LuaSetTask("T385",98)
				LuaSetTask("TfindNPC_10",98)
				DelItem("o_mission417",1)
				UpdateMenu()
			elseif(LuaQueryTask("TfindNPC_10")==2)then
				LuaSay("�н����ˣ��ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
				LuaSetTask("T385",98)
				LuaSetTask("TfindNPC_10",98)
				DelItem("o_mission418",1)
				UpdateMenu()
			end
		else
			LuaSay("�н����ˣ���Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
		end
	elseif(LuaQueryTask("T385")==98)then
		LuaSay("�н����ˣ����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

	end
else
	LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
end



elseif(answer=="Tsnpc_17")then
	if(LuaQueryTask("Tsnpc_17")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ���һ�����д�ļӼ��ż������滹һ���ÿ��Ļ�����")
		LuaSay("�н����ˣ�����е��̬")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_17",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_17")==2)then
		LuaSay("�н����ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_17")then
	if(LuaQueryTask("Tenpc_17")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ�������˵����ʲôʱ��ȥ��������һ��")
		LuaSay("�н����ˣ���æ�����ϵĻ�͹���")
		LuaSetTask("Tenpc_17",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_17")==2)then
		LuaSay("�н����ˣ���ȥ������������Ͱ�")
	end



---------
end
LuaSendMenu()
return 1
end 
--------------==================
function SelfDefM2Stone(mlv,mm)--���ϻ���ʯmlv���ϼ���am��ȡ����
a=LuaItemStatusNormalCount("o_material_"..(10+mlv).."")--Ƥ
b=LuaItemStatusNormalCount("o_material_"..(19+mlv).."")--ë
c=LuaItemStatusNormalCount("o_material_"..(28+mlv).."")--��
d=LuaItemStatusNormalCount("o_material_"..(37+mlv).."")--ľ
e=LuaItemStatusNormalCount("o_material_"..(46+mlv).."")--��
f=LuaItemStatusNormalCount("o_material_"..(55+mlv).."")--��
shows={}
shows={"һԪʯ","����ʯ","����ʯ","����ʯ","����ʯ","����ʯ","����ʯ","����ʯ","�Ź�ʯ"}
if(a>=mm and b>=mm and c>=mm and d>=mm and e>=mm and f>=mm)then
DelItem("o_material_"..(10+mlv).."",mm)
DelItem("o_material_"..(19+mlv).."",mm)
DelItem("o_material_"..(28+mlv).."",mm)
DelItem("o_material_"..(37+mlv).."",mm)
DelItem("o_material_"..(46+mlv).."",mm)
DelItem("o_material_"..(55+mlv).."",mm)
LuaGive("o_material_"..(80+mlv).."",mm)
LuaSay("��ʾ:��ķ���@2"..mlv.."��Ƥë��ľ��@0��@1"..mm.."@0����ȡ��@2"..mm.."��"..shows[mlv])
else
LuaSay("���ϲ���!�ϳ�@2"..mm.."��"..shows[mlv].."@0��Ҫ@2"..mlv.."��Ƥë��ľ��@0��@1"..mm.."@0��")
end

LuaSendMenu()
return
end
-------------===================
function SelfDefM2M(gm,nm,mlv,mm)--ͬ�����ϻ���2->1Ŀ��gm,��Ҫnm,����mlv,����mm
show={}
show={"ë","Ƥ","��","ľ","��","��"}
if(gm~=nm)then
	if(LuaItemStatusNormalCount("o_material_"..(nm*9+1+mlv).."")>=mm*2)then
		if(LuaFreeBag()>=mm)then
			DelItem("o_material_"..(nm*9+1+mlv).."",mm*2)
			LuaGive("o_material_"..(gm*9+1+mlv).."",mm,"Tchangesame")
			LuaSay("��ʾ:�ķ�@2"..mlv.."��"..show[nm]..(mm*2).."��@0��ȡ@2"..mlv.."��"..show[gm]..mm.."��")
		else
			LuaSay("@5��ܰ��ʾ���뱣����ı���������"..mm.."����λ����ֹ������Ʒ��ʧ�����@!")
		end
	else
	LuaSay("���ϲ���!�һ�@2"..mm.."��"..mlv.."��"..show[gm].."@0��@2"..mlv.."��"..show[nm]..(mm*2).."��")
	end
else
LuaSay("���ڿ���Ц��,����"..show[nm].."��"..show[gm].."?,������ͬ�����ֲ��ϵĶһ�ר��")
end
LuaSendMenu()
return
end
------------==================
function SelfDefM2m(nm,mlv,mm)--�ϼ����ϻ��¼�����1->3
show={}
show={"ë","Ƥ","��","ľ","��","��"}
if(LuaItemStatusNormalCount("o_material_"..(nm*9+1+mlv).."")>=mm)then
DelItem("o_material_"..(nm*9+1+mlv).."",mm)
LuaGive("o_material_"..(nm*9+mlv).."",mm*3,"Tchangelow")
LuaSay("��ʾ:�ķ�@2"..mlv.."��"..show[nm]..mm.."��@0��ȡ@2"..(mlv-1).."��"..show[nm]..(mm*3).."��")
else
LuaSay("���ϲ���@2"..mm.."��"..mlv.."��"..show[nm].."@0,����ٶһ�����")
end
LuaSendMenu()
return
end
