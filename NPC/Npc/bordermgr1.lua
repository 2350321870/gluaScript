NPCINFO = {
serial="190" ,
base_name="bordermgr1",
icon= 2569,
NpcMove=2569,
name= "�߾�����Ա������" , 
iconaddr=1,
butt="10|10|64",
lastsay="����˽��뱾����ͼ�����ұ�һֱ�ߣ�������",
LuaType=1,
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	local Tghc=LuaQueryTask("Tghc")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTempStr("online")=="100" or LuaQueryTempStr("online")=="400")then
	AddTopSayMenuItem("@1[����]@0@3���70��","Ac41")
	end
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3�����˻س�","huiguo")
	end
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3�ع�ָ��","milu")
	end
	if(LuaQueryTask("Tghc")==0) then
		AddTopSayMenuItem("@3�ϻ�","Tghc")
		havetask=1
	end
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2�ϻ�","Tghc")
		havetask=2
	end
	--if(LuaQueryTask("Tbjxh1")==0) then
		--AddTopSayMenuItem("��Ƥ���¡�ѭ����","Tbjxh1")
		--havetask=1
	--end
	--if(LuaQueryTask("Tbjxh1")==1) then
		--AddTopSayMenuItem("@2��Ƥ���¡�ѭ����","Tbjxh1")
		--havetask=2
	--end
	AddTopSayMenuItem("����˵��","countrysm")
    return 1
elseif(answer=="Ac41") then
	local a = LuaPublicQuery("Max70_Number")
	local level=LuaQuery("level")
		if(LuaQueryTask("Maxcountry")==0)then
			if(level>=70)then
				if(LuaPublicQuery("Max70_Number")<10)then
					if(LuaFreeBag()>=8)then
						local b= LuaPublicQuery("Max70_Number") + 1
						LuaSay("���󣺹�ϲ���ñ����ĵ�"..b.."��70������ң��ش�ϵͳ������Ľ���")
						LuaNotice("��ϲ���@2"..LuaQueryStr("name").."@0Ϊ������"..b.."λ����@390��@0����ң�ϵͳ�����������")
						LuaNotice("������ǰʮ������70������Ҷ�����ô�����ѽ������ȵ��ȵ�Ŷ@!")
						LuaPublicAdd("Max70_Number",1)
						LuaGive("o_present021",1,"Maxcountry")		--1���ۺϲ��ϰ�
						LuaGive("o_present023",1,"Maxcountry")		--2���ۺϲ��ϰ�
						LuaGive("o_present025",1,"Maxcountry")		--3���ۺϲ��ϰ�
						LuaGive("o_present027",1,"Maxcountry")		--4���ۺϲ��ϰ�
						LuaGive("o_present029",1,"Maxcountry")		--5���ۺϲ��ϰ�
						
						LuaGive("o_douyu",300,"Maxcountry")		--����	
						LuaGive("o_longyu",150,"Maxcountry")		--����
						LuaGive("o_lv70taozhuang",1,"Maxcountry")	--70����װ�ϳ���
						LuaGive("coin",500000,"Maxcountry")
						LuaSetTask("Maxcountry",99)
					else
						LuaSay("��ʾ�����뱣��8��ı����ռ������ȫ��ǰ10�Ľ���Ŷ@!")
					end
				else
					LuaSay("ǰ10������70������Ҳ��н�����Ŷ")
				end
			else
				local a = LuaPublicQuery("Max70_Number")
				if(a==0)then
					LuaSay("���󣺱�����δ��70�������")
					LuaSay("���󣺸Ͽ����Ŷ��ÿ����ǰʮ������70������ҽ���õ������")
					LuaSay("���������а���@270����װ�ϳ���@01����@2300������@0��@2150������@0��@21-5���ۺϲ��ϰ�@0��һ����@250Wͭ��@0��")
					LuaSay("���󣺸Ͽ����������@!")
				elseif(a<10)then	
					LuaSay("���󣺱�������ֻ��"..a.."λ70������ң��Ͽ��������ʤ��������")
					LuaSay("���󣺸Ͽ����Ŷ��ÿ����ǰʮ������70������ҽ���õ������")
					LuaSay("���������а���@270����װ�ϳ���@01����@2300������@0��@2150������@0��@21-5���ۺϲ��ϰ�@0��һ����@250Wͭ��@0��")
					LuaSay("���󣺸Ͽ����������@!")
				else
					LuaSay("���󣺱�����ǰ10��Ѿ�������лл���ԡ�ͳһOL����֧��")
				end
			end
		else
			LuaSay("�������Ѿ��μ����˴˻����ȡ�˽�����Ŷ��ף����Ϸ��죡")
		end
--70������
--70����װ�ϳ���1����300������150������1-5���ۺϲ��ϰ���50Wͭ�ң�
--
--70��ϵͳ������
--ȫ�����죡XXX��Ŀǰ�Ѿ���Ϊ��ͳһOL��1����X��70��ս��ǰ10��ս�������ý����Լ�ϵͳ��Ϣף����

--------------------------------------------------------------------------------------------------------------------	
--------��Ƥ����
elseif(answer=="Tbjxh1") then
	if(LuaQueryTask("Tbjxh1")==0) then
		LuaSay("���󣺴��������@29-15�����@0��")
		LuaSay("��������߾���֪����ð����ôЩ����ܲ�������")
		LuaSay("�����϶������书���⣬�������Ů��һ��֯�·�����������͵�ȡ�Ľ��϶�����֯��Ƥ�����������ۡ�")
		LuaSay("���������ұ�@2��ɱ����@0@3�ռ�ʮ����Ƥ@0�͸�@4����@0���������֯��Ƥ���µ�.")
		LuaSetTask("Tbjxh1",1)
		UpdateMenu()
		UpdateNPCMenu("bordermgr1")
		UpdateNPCMenu("bordermgr2")
	elseif(LuaQueryTask("Tbjxh1")==1) then
		if(LuaItemCount("o_mission419")>=10) then
			LuaSay("���󣺿�ȥ����Ƥ�͸���@2�ұ߲�Զ���İ���@0��.")
		else
			LuaSay("���������ұ�@2��ɱ����@0@3�ռ�ʮ����Ƥ@0�͸�@4����@0.")
		end
	end

--------- �ϻ�
elseif(answer=="Tghc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==0) then
		if(LuaItemCount("coin")>=500) then
			local shijiancha=(GetCurrentTime() - LuaQueryTask("ghctime"))
			if(shijiancha>=1800 or shijiancha==GetCurrentTime()) then-------30�����ܽ�һ��������ߵ�һ�ν�����
				LuaSay("�����������ֵ��Դ�15����������Ÿ����ı߽�������ƽʱ�ѹθ�����ʹ���˲��ٺô���������Ǯû��������")
				LuaSay("�����������ֵ����˸����ӣ�@2�������˻᲻������֮�䴫��һ��Ҵ�����@0��ֻҪӢ������@2�ҵ��������˭����@0�����ǻ�����Ƿǳ��ḻ�Ļ����һ�����㡣")
				LuaSay("���󣺵��������ֲ����г�û������������һ��㴦���ֶΣ�@2����Ҵ����˻��д���@0������Ѱ��Ŷ@!")
				LuaSay("����@1��@0@2Ϸ@0@3��@0@4ʼ@0����ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
				local m=LuaRandom(5)+1 -----�����ȷ��NPC   ---1->��1  2->��2```
				LuaSetTask("Tghc_sj",m) ----��������npc����mֵ
				--LuaSay("m��ֵ��:"..m.."")
				LuaSetTask("Tghc",1)
				LuaSetTask("Tghc_dccs",0)-------���NPC����
				UpdateMenu()
				UpdateNPCMenu("bordermgr")
				UpdateNPCMenu("bordermgr1")
				UpdateNPCMenu("bordermgr2")
				UpdateNPCMenu("bordermgr3")
				UpdateNPCMenu("bordermgr4")
			else
				LuaSay("����@2��������30���Ӳ��ܽ�ȡһ��@0.")
				local q=floor(shijiancha/60)-----����
				local s=shijiancha-q*60
				LuaSay("�������ڲŹ���@2"..q.."����"..s.."��@0������@230����@0�������������ɣ�")
			end
		else
			LuaSay("��������Ҫ@3500@0ͭ����ͷ��")
		end
	elseif(LuaQueryTask("Tghc")==1) then
		if(LuaQueryTask("Tghc_dccs")==0) then-----��δ�������NPC
			LuaSay("������Ϸ��ʼ�ˣ���ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0��!")
		elseif(LuaQueryTask("Tghc_dccs")>0) then-----��������NPC
			LuaDelTask("Tghc_fs2")-----ʹ����ܵ�����NPC
			LuaDelTask("Tghc_fs3")-----ʹ����ܵ�����NPC
			LuaDelTask("Tghc_fs4")-----ʹ����ܵ�����NPC
			LuaDelTask("Tghc_fs5")-----ʹ����ܵ�����NPC
			if(LuaQueryTask("Tghc_fs1")==0) then ------��ֹ������ͬһ��NPCˢ
				local sh={
				-------��һ�仰
				{"Ӣ����ô���ű���������⣿"},
				{"��лӢ����ô�����ң��ж���..."},
				{"��˵��᲻�������⣿..."},
				------���NPC
				{"������Ͳ������������Ұ��������ȥ��..."},
				{"�����ű�����˺ܾö�����Ӣ��ǰ����ֻ���ڼ��ȱ���֮�а��񴫸�����һ����"},
				{"��ܾö�û���������ˣ����Ų��þͻ��ֵ����ˣ��˷���..."},
				{"������̫���ˣ���û�����⣬���ܴ����ɣ���������Ǯ���ˡ�"},
				{"����ò���⻹����Ʒ���⣬����ô����Ϊ��������⡣"},
				------���NPC
				{"�����ڿ���Ҫ��Ҫ�����ѣ�˵��û�����⣬���˰ɣ�����������..."},
				{"��Ʒ̫���ˣ����Ǵ���ô�춼���Ҷ��ˡ�"},
				{"����̫���ˣ��Ҹ�˵���񴫳�ȥ��û�ͷ��ˣ��д����ź�..."},
				{"��ϲ���������⣬�ý����ɣ�"},
				}
				local a=LuaRandom(3)+1 -----�����һ�仰
				--LuaSay("a��ֵ��:"..a.."")
				LuaSay("����"..sh[a][1].."")
				if(LuaQueryTask("Tghc_sj")==1 or LuaQueryTask("Tghc_dccs")>=5) then ---���NPC���ߵ��NPC>=5��
					local b=LuaRandom(4)+9
					LuaSay("����"..sh[b][1].."")
					AddMenuItem("@7�������","")
					AddMenuItem("��ȡ����","Tghcjl")
				else    -------���NPC
					LuaAddTask("Tghc_dccs",1)----������+1
					LuaSetTask("Tghc_fs1",1)-----���һ�δ�NPC
					local m=LuaRandom(3)+1 -----�����ȷ��NPC   ---1->��1  2->��2����4  3->��3����5
					LuaSetTask("Tghc_sj",m) ----��������npc����mֵ
					local c=LuaRandom(5)+4
					LuaSay("����"..sh[c][1].."")
					LuaSay("���󣺽��ܴ����ɣ���������")
					local n=LuaRandom(3)---�۶���ͭ
					if(n==0) then
						LuaGive("coin",-180,"Tghc")
					elseif(n==1) then
						LuaGive("coin",-230,"Tghc")
					elseif(n==2) then
						LuaGive("coin",-280,"Tghc")
					end
					local jinyan
					if(LuaQuery("level")<=10) then  --С��10��
						jinyan=level*20+level*level*4
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*100+level*level*4
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*250+level*level*4
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*400+level*level*4
					else
						jinyan=level*350+level*level*4
					end
					LuaAddJx("combat_exp",jinyan,"Tghc")
					LuaSay("���󣺿�ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
				end
			elseif(LuaQueryTask("Tghc_fs2")==1) then ------��ֹ������ͬһ��NPCˢ
				LuaSay("���󣺿�ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
			end
		end   
	end
elseif(answer=="Tghcjl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc")
		local time=GetCurrentTime()
		LuaSetTask("ghctime",time)
					local jinyan
					if(LuaQuery("level")<=10) then  --С��10��
						jinyan=level*30+level*level*4
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*110+level*level*4
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*270+level*level*4
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*400+level*level*4
					else
						jinyan=level*350+level*level*4
					end
		LuaAddJx("combat_exp",jinyan,"Tghc")
		if(LuaQueryTask("Tghc_dccs")==0) then-----��һ�ξ͵��NPC
			local cion=1500
		else
			local cion=LuaQueryTask("Tghc_dccs")*200----��ͭ��->�͵��NPC��ͭ���ҹ�
		end
		LuaGive("coin",cion,"Tghc")
		local x=LuaRandom(20)---�������Ʒ
		if(x==0) then
			LuaGive("o_cangbaotu",1,"Tghc")------���ر�ͼ
		elseif(x==1) then
			LuaGive("coin",572,"Tghc")
		elseif(x==2) then
			LuaGive("o_drug_hp4",5,"Tghc")
		elseif(x==3) then
			LuaGive("o_drug_mp4",5,"Tghc")
		end
		LuaDelTask("Tghc_dccs")
		UpdateMenu()
		UpdateNPCMenu("bordermgr")
		UpdateNPCMenu("bordermgr1")
		UpdateNPCMenu("bordermgr2")
		UpdateNPCMenu("bordermgr3")
		UpdateNPCMenu("bordermgr4")
	end
elseif(answer=="countrysm") then
	AddMenuItem("@7����˵��","")
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then------�����
		AddMenuItem("@3�ع�ָ��","milu")
	end
	AddMenuItem("@3����ϵͳ����","1")
	AddMenuItem("@3�����������","2")
	AddMenuItem("@3��ս����","3")
	AddMenuItem("@3ͨ����","5")

elseif(answer=="1") then
	LuaSay("@2ͷ����ʾ���־��ǹ�������@0�������������Ĺ�����@3"..LuaQueryStr("country").."@0.")
	LuaSay("����@2�ȼ���20����@0�������Ĺ��ҽ���ӱ߾����룬@2������ɸù��ҵ��˱��뵽�������������ѹ�@0��@2�����ͼ���ֶ����и���������@0����ע�����Լ��Ƿ����������")
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then------�����
		LuaSay("�����ͨ��@2��ͼ���ұߵ�С��@0����@2������Ӧ�ȼ��ĵ�ͼ@0,�����@430������@0�Ļ���������@2ֱ�Ӵ����ұ���ͼ����������@0��")
		LuaSay("@2��ͼ���ұߵ�С��@0���ṩ������˵�һ�в���������@3����ù���ͼ@0��@3���߳���@0��@3����ù�����@0��@3���ָù�@0(21:00-22:00).")
		LuaSay("@2����������PK���ˣ��㽫�����ܵ��ͷ�@0���������������һ�ȡ�����潫���Լ����Ҹ�һ��Ŷ@!")
	else
		LuaSay("�����˻سǿ�����@4�߾�@0��@2����ĸ�NPC����@0���@3�����˻س�@0���ܽ����Լ����ҵĵ�ͼ��.")
		LuaSay("�����@430������@0�Ļ���������@2ֱ�Ӵ����ұ���ͼ����������@0��")
		AddMenuItem("ѡ���б�","")
		AddMenuItem("@3�����˻س�","huiguo")
	end
elseif(answer=="2") then
	LuaSay("��@2�����ɱ�˵ȼ����20�ڿɲ����ܵ�PK�ͷ�@0��@1�����������ʹ�÷�������ͼ@0��@5�޷������Լ�����Ԫ��@0��@2���Լ�������Ϣ@0��@2���ܼ����������@0")
elseif(answer=="3") then
	LuaSay("@2ÿ��20��-21��@0���Ե�@4�߾���ͼ�ұߵ�С�崦@0����@3���ָù���@0��������@2ֱ��ȥ����͵�ù�ש�ع�@0��ͭ�ҽ�������ש���Ի�ȡ����ͭ�ң���ͷ���Ļ�����ȥ���ԣ�")
	LuaSay("��@2��ս@0�л�õ�@3����@0���Ի�ȥ@4����ս��ʹ��@0����ȡ@2����ĳƺźͽ�Ǯ@0��������@2����Ҫ�ﵽ50����@0��")
elseif(answer=="5") then
	LuaSay("��������ͨ��������˹���ɱ��")	

elseif(answer=="huiguo") then
  LuaSay("�߾�����Ա���͹٣����ǻ�����㵱ǰ�ĵȼ����ǽ������㵽������ͼȥ��")
   AddMenuItem("ѡ�����ĵ�ͼ","")
   local level= LuaQuery("level")
      if(0<level and level<=10 )then
          AddMenuItem("��Դ","changqmk")
      elseif(10<level and level <=25)then
         AddMenuItem("�嶷ɽ","wds")
      elseif(25<level and level<=40  )then
          AddMenuItem("��ˮ�԰�","fsda")
     elseif(40<level  )then
          AddMenuItem("��Ƿ���","jgd") 	  
      end
   elseif(answer=="changqmk") then
    ChangeMap("lu_changqmk")
   elseif(answer=="wds") then
    ChangeMap("lu_wds")
   elseif(answer=="fsda") then
    ChangeMap("lu_fsda")
     elseif(answer=="jgd") then
    ChangeMap("lu_jgd")

elseif(answer=="milu")then
	LuaSay("�߾�����Ա���ף�����·�����ҽ���������")
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3����ع�","back")
	AddMenuItem("@3�һ���תת","goon")
	
elseif(answer=="back")then
		LuaSay("����������@4ѡ����˹����б�@0�����ǹ��������𣬲�Ҫ��������@7����ѡ��ʽ��@0")		
		LuaSay("һ��@3���߻���@0��@2�����ߵ���ͼ���ұ�@0���ҵ�@4NPC�߾�����Ա(С��)@0��ѡ��@3���߻���@0-->@2"..LuaQueryStr("country").."@0�������Լ��������ң����ͻص��������߾�@0�ˡ�")
		LuaSay("����@3����������@0��ѡ��@2�˳���Ϸ@0(@7��ȡ�����ٰ��Ǻż�@0)-->@2������½@0-->ѡ��@3"..LuaQueryStr("country").."@0����������Ϸ�ͻ�@2�������߾�@0�ˡ�")
		LuaSay("�ص������߾�����@4�߾�@0��@2����ĸ�NPC����@0���@3�����˻س�@0���ܽ����Լ����ҵĵ�ͼ�ˣ�@2�����ǿ��Է������Ŷ@0��")
		LuaSay("���@2�㲻֪�����Լ��������ĸ����ҵĻ�����������Ϸ�е�ʱ��@2��ͷ������������������Ĺ���@0������������������@2"..LuaQueryStr("country").."@0����")
elseif(answer=="goon")then
		LuaSay("����ר���������ǹ��������������Ҵ������ǵĹ���ӭ�㡣")
		LuaSay("�����ͨ��@2�߾����ұߵ�С��@0����@2������Ӧ�ȼ��ĵ�ͼ@0,�����@430������@0�Ļ���������@2ֱ�Ӵ����ұ���ͼ����������@0��")
		LuaSay("@2��ͼ���ұߵ�С��@0���ṩ������˵�һ�в���������@3����ù���ͼ@0��@3���߳���@0��@3����ù�����@0��@3���ָù�@0(21:00-22:00).")
		LuaSay("@2����������PK���ˣ��㽫�����ܵ��ͷ�@0���������������һ�ȡ�����潫���Լ����Ҹ�һ��Ŷ@!")
end 

LuaSendMenu()
return 1
end
