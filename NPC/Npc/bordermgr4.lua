NPCINFO = {
serial="193" ,
base_name="bordermgr4",
icon= 2569,
NpcMove=2569,
name= "�߾�����Ա�����ģ�" , 
iconaddr=1,
butt="10|10|64",
lastsay="����˲�����С�壡������",
LuaType=1,
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3�����˻س�","huiguo")
	end
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3�ع�ָ��","milu")
	end
	if(LuaQueryTask("Tdst")==0) then
		AddTopSayMenuItem("@3����ͷ","Tdst")
		havetask=1
	end
	if(LuaQueryTask("Tdst")==1) then
		AddTopSayMenuItem("@2����ͷ","Tdst")
		havetask=2
	end
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2�ϻ�","Tghc")
		havetask=2
	end
	AddTopSayMenuItem("����˵��","countrysm")
    return 1
elseif(answer=="test") then
LuaGive("o_mix_book029",1,"test")



--------------------------------------------------------------------------------------------------------------------
elseif(answer=="Tdst") then-------�ο��ʹ��   ���Ļ���ð��
	local level= LuaQuery("level")
	local shijiancha=(GetCurrentTime() - LuaQueryTask("dsttime"))
	if(shijiancha>=1800 or shijiancha==GetCurrentTime()) then-------30�����ܽ�һ��������ߵ�һ�ν�����		
		Tdst=LuaQueryTask("Tdst") 
		DSTsh={
		------˵���Ա�ȡ��(0--�� 1--Ů 2--��Ůͨ��) ��������
		{0,"�ҾͰ���Ů"},
		{1,"�ҾͰ�˧��"},
		{0,"����˧��"},
		{1,"������Ů"},
		{0,"��˵���ǻ����˸���Ů"},
		{2,"�����Ҹ��˽����"},
		{2,"�񰡴͸����˰�"},
		{2,"�߾���������PK���������"},
		{2,"�ҽ���Ҫ�ڱ߾�ɱ100����"},
		{2,"�߾����������һ���"},
		{2,"��רɱ�ڱ߾��һ���"},
		{2,"��˵�߾��Ĺ��ﱬ�ʸ�"},
		{2,"����ͳһ"},
		{2,"�߾�����������"},
		{2,"�߾��������"},
		{2,"����˻ع��ұ߾�С��"},
		{2,"˭�Ҳ����ع�˭��ɵ��"},
		{2,"�߾�PKû�ͷ���"},
		{2,"��ӭ��������߾�PK"},
		{2,"�������ڱ߾�����"},
		{2,"���������߾�PK"},
		{2,"�߾����ֵ���ô��һģһ��"},
		{2,"�����ú�ֽ"},
		{2,"ͳһ����Ψһ׬��Ǯ����Ϸ"},
		{2,"˭˵ͳһ�����Ҹ�˭��"},
		{2,"����Ϸ����ǮҲ���ˬ"},
		{2,"�Ȼ���Ǯ����׬����Ԫ��"},
		{2,"��ż����ֵװ�ش�ү"},
		{2,"սʿ��ǿ"},
		{2,"������ţ"},
		{2,"ıʿ������"},
		}
		if(LuaQueryTask("Tdst")==0)   then
			local r=LuaRandom(31)+1-----����ľ仰
			LuaSetTask("DST_R",r)
			local DST_R=LuaQueryTask("DST_R")
			if(LuaQueryStr("gender")=="����") then    ------����������������������Ů���˵��
				if(DSTsh[DST_R][1]==1)then     -----------�����һ��������0Ϊֻ����˵��1Ϊֻ��Ů˵�Ļ���2Ϊ��Ů���á�
					DST_R=DST_R+1
					--LuaSay("������DST_R��ֵΪ��"..DST_R.."")
					LuaSetTask("DST_R",DST_R)
				end
			end	
			if(LuaQueryStr("gender")=="Ů��") then    ------��Ů�����������������������˵��
				if(DSTsh[DST_R][1]==0)then     -----------�����һ��������0Ϊֻ����˵��1Ϊֻ��Ů˵�Ļ���2Ϊ��Ů���á�
					DST_R=DST_R+1
					--LuaSay("������DST_R��ֵΪ��"..DST_R.."")
					LuaSetTask("DST_R",DST_R)
				end
			end
			DST_R=LuaQueryTask("DST_R")
			LuaSay("�������߾�����ϡ�٣�Ϊ�����ñ߾���Ծһ�㣬�ҿ�ν�ʾ���֭����")
			LuaSay("������ֻ������@1����@0Ƶ��˵һ�䣺@5"..DSTsh[DST_R][2].."@0��ע��@2���κη��ţ���Ӣ����ĸȫΪ��д@0���������콱��")
			LuaSetTask("Tdst",1)
			UpdateMenu()
 		elseif(LuaQueryTask("Tdst")==1)  then
			local DST_R=LuaQueryTask("DST_R")
 			if(LuaQueryTempStr("last_world_msg")==DSTsh[DST_R][2])then
				LuaSay("������ÿ��Ц�ڳ������������Ľ�����")
				local jinyan
				if(LuaQuery("level")<=10) then  --С��10��
					jinyan=level*150+level*level*15
				elseif(LuaQuery("level")<=20) then  --10-20
					jinyan=level*600+level*level*15
				elseif(LuaQuery("level")<=30) then	--20-30
					jinyan=level*1200+level*level*15
				elseif(LuaQuery("level")<=60) then	--30-60
					jinyan=level*2300+level*level*15
				else
					jinyan=level*2000+level*level*15
				end
				LuaAddJx("combat_exp",jinyan,"Tdst")
				local x=LuaRandom(10)---�������Ʒ
				if(x==0) then
					LuaGive("coin",100,"Tdst")
				elseif(x==1) then
					LuaGive("coin",200,"Tdst")
				elseif(x==2) then
					LuaGive("coin",300,"Tdst")
				elseif(x==3) then
					LuaGive("coin",400,"Tdst")
				end
				local time=GetCurrentTime()
				LuaSetTask("dsttime",time)
				LuaDelTask("Tdst")
				UpdateMenu()
			else
				LuaSay("������@2��˵���˻��߻�û˵@0��ֻ����@1����@0Ƶ����˵һ�䣺@5"..DSTsh[DST_R][2].."@0��ע��@2���κη��ţ���Ӣ����ĸȫΪ��д@0����")
				LuaSay("��������@1����0��@0���ܽ�������Ƶ����@1�����ƶ�@0����ѡ���͵�Ƶ��������@1ȷ����@0ȷ��ѡ��Ƶ����")
				UpdateMenu()
			end
 	    end
    else
        LuaSay("������@2��������30���Ӳ��ܽ�ȡһ��@0.")
		local q=floor(shijiancha/60)-----����
		local s=shijiancha-q*60
		LuaSay("���������ڲŹ���@2"..q.."����"..s.."��@0������@230����@0�������������ɣ�")
	end
	
-------------------------------------
elseif(answer=="Tghc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc_fs1")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs2")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs3")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs5")-----ʹ����ܵ�����NPC
		if(LuaQueryTask("Tghc_fs4")==0) then ------��ֹ������ͬһ��NPCˢ
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
			LuaSay("���ģ�"..sh[a][1].."")
			if(LuaQueryTask("Tghc_sj")==4 or LuaQueryTask("Tghc_dccs")>=5) then ---���NP���ߵ��NPC>=5��
				local b=LuaRandom(4)+9
				LuaSay("���ģ�"..sh[b][1].."")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","Tghcjl")
			else    -------���NPC
				LuaAddTask("Tghc_dccs",1)----������+1
				local m=LuaRandom(5)+1 -----�����ȷ��NPC   ---1->��1  2->��2`````
				LuaSetTask("Tghc_sj",m) ----��������npc����mֵ
				LuaSetTask("Tghc_fs4",1)-----���һ�δ�NPC
				local c=LuaRandom(5)+4
				LuaSay("���ģ�"..sh[c][1].."")
				LuaSay("���ģ����ܴ����ɣ���������")
				local n=LuaRandom(3)---�۶���ͭ
				if(n==0) then
					LuaGive("coin",-130,"Tghc")
				elseif(n==1) then
					LuaGive("coin",-180,"Tghc")
				elseif(n==2) then
					LuaGive("coin",-230,"Tghc")
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
				LuaSay("���ģ���ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
			end
		elseif(LuaQueryTask("Tghc_fs4")==1) then ------��ֹ������ͬһ��NPCˢ
			LuaSay("���ģ���ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
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
		local cion
		if(LuaQueryTask("Tghc_dccs")==0) then-----��һ�ξ͵��NPC
			cion=1500
		else
			cion=LuaQueryTask("Tghc_dccs")*270----��ͭ��->�͵��NPC��ͭ���ҹ�
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
	LuaSay("@2ͷ����ʾ�����ǹ�������@0�������������Ĺ�����@3"..LuaQueryStr("country").."@0.")
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
local level= LuaQuery("level")
  LuaSay("�߾�����Ա���͹٣����ǻ�����㵱ǰ�ĵȼ����ǽ������㵽������ͼȥ��")
   AddMenuItem("ѡ�����ĵ�ͼ","")
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
