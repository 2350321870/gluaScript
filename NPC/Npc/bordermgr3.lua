NPCINFO = {
serial="192" ,
base_name="bordermgr3",
icon= 2569,
NpcMove=2569,
name= "�߾�����Ա��������" , 
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
	AddTopSayMenuItem("@3�߳ǲ���","Tbccz")------�ʴ�
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2�ϻ�","Tghc")
		havetask=2
	end
	AddTopSayMenuItem("����˵��","countrysm")
    return 1
elseif(answer=="test") then
LuaGive("o_mix_book029",1,"test")



--------------------------------------------------------------------------------------------------------------------
------------�߳ǲ���
elseif(answer=="Tbccz") then                 --ÿ30����һ�Σ�ÿ��3�֣�ÿ��20����Ŀ�����ݴ����Ŀ���ж��Ƿ������һ�� 
	local level= LuaQuery("level")
	local shijiancha=(GetCurrentTime() - LuaQueryTask("bccztime"))
	if(shijiancha>=1800 or shijiancha==GetCurrentTime()) then-------30�����ܽ�һ��������ߵ�һ�ν�����
		local Tbccz=LuaQueryTask("Tbccz") 
		if(Tbccz==0) then
			LuaSay("�������߾�������壬�������ֵ������ſ���ѧ�ã��κα߾�����ϡ�٣����ֻ��ͨ���н��ʴ�ķ�ʽ�����ӱ߾���������")
			LuaSay("��ʾ��ÿ@230����@0��1�δ�����ᣬÿ�δ����Ϊ3�أ�Խ�������Ѷ�Խ�󣬽���Խ�ߡ�")
			LuaSay("��ʾ���������������@24�δ�ϻ���@0����4�δ�ϻ���ȫ�����꣬�����ٴα���Ͻ���Ϊ�Զ�@2�������ֺ�����Ŀ@0��")
			LuaSay("@7��1�أ��ٿ�")
			LuaSay("��ʾ����Ҫ���20�����е�@35����Ŀ@0�����ɽ���@3��2�ء�")
			AddMenuItem("@7�Ƿ����","")
			AddMenuItem("��һ��","G")
			AddMenuItem("����","giveup")
		elseif(Tbccz==1) then   
			if(LuaQuery("zcount")<20)  then
				LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
				AddMenuItem("@7�Ƿ��������","")
				AddMenuItem("@3����","jx1")
				AddMenuItem("@3����","fq")
			else
				if(LuaQuery("rightanswer")>=5) then        --1�ɹ� --5
					LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����ϲ��@3��1�ش��سɹ���")
					AddMenuItem("@7��ȡ����","")
					AddMenuItem("ȷ��","num1")        
				elseif(LuaQuery("rightanswer")<5) then  
					if(LuaQueryTask("Tbccza")<99) then--------����ʧ��
						LuaSay("��ʾ������ʧ�ܣ�") 
						LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����Ҫ���5����ܽ����2�ء�")
						LuaSetTask("Tbccz",99)
						local time=GetCurrentTime()
						LuaSetTask("bccztime",time)
						LuaDelTask("Tbccz")
						LuaSet("rightanswer",0)-------ÿ�ִ����ȷ��Ŀ
						LuaSetTask("ddcs",0)------��ϴ���
    				elseif(LuaQueryTask("Tbccza")==99) then-----���سɹ�  �������������
    					LuaSay("@7��2�أ����Ծ���")         --�����2�� 
						LuaSay("��ʾ����Ҫ���20�����е�@38����Ŀ@0�����ɽ���@3��3�ء�")
						AddMenuItem("@7�Ƿ����","")
						AddMenuItem("��һ��","A")
						AddMenuItem("����","giveup")
    				end
				end
			end
		elseif(Tbccz==2) then 
			if(LuaQuery("zcount")<20)  then
				LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
				AddMenuItem("@7�Ƿ��������","")
				AddMenuItem("@3����","jx2")
				AddMenuItem("@3����","fq")
			else
				if(LuaQuery("rightanswer")>=8) then      --2�ɹ�    8
					LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����ϲ��@3��2�ش��سɹ���")
					AddMenuItem("@7��ȡ����","")
					AddMenuItem("ȷ��","num2")        
				elseif(LuaQuery("rightanswer")<8) then
					if(LuaQueryTask("Tbcczb")<99) then-------����ʧ��
						LuaSay("��ʾ������ʧ�ܣ�") 
						LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����Ҫ���8����ܽ����3�ء�")
						LuaSetTask("Tbccz",99) 
						local time=GetCurrentTime()
						LuaSetTask("bccztime",time)
						LuaDelTask("Tbccz")
						LuaSet("rightanswer",0)-------ÿ�ִ����ȷ��Ŀ
						LuaSetTask("ddcs",0)------��ϴ���
					elseif(LuaQueryTask("Tbcczb")==99) then-----���سɹ�  �������������
						LuaSay("@7��3�أ�����")             --�����3�� 
						LuaSay("��ʾ����Ҫ���20�����е�@310����Ŀ@0��������ɱ���@4�߳ǲ����ʴ�@0��")
						AddMenuItem("@7�Ƿ����","")
						AddMenuItem("��һ��","D")
						AddMenuItem("����","giveup")
					end
				end
			end 
		elseif(Tbccz==3) then 
			if(LuaQuery("zcount")<20)  then
				LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
				AddMenuItem("@7�Ƿ��������","")
				AddMenuItem("@3����","jx3")
				AddMenuItem("@3����","fq")
			else
				if(LuaQuery("rightanswer")>=10) then       --3�ɹ� 10
					LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����ϲ��˳��ͨ�أ�")
					AddMenuItem("@7��ȡ����","")
					AddMenuItem("ȷ��","num3")
				else
					LuaSay("��ʾ�����ǿ�ϧ�����һ�ع��ܴ��ɡ�")
					LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����Ҫ���10�����˳��ͨ�ء�")
					LuaSetTask("Tbccz",99) 
					time=GetCurrentTime()
					LuaSetTask("bccztime",time)
					LuaDelTask("Tbccz")
					LuaSet("rightanswer",0)-------ÿ�ִ����ȷ��Ŀ
					LuaSetTask("ddcs",0)------��ϴ���
				end
			end        
		--elseif(Tbccz==99) then 
			--LuaSay("��ʾ�����Ѿ��μ��˽��յĴ�����ս������������")
		end
	else
		LuaSay("������@2��������30���Ӳ��ܽ�ȡһ��@0.")
		local q=floor(shijiancha/60)-----����
		local s=shijiancha-q*60
		LuaSay("���������ڲŹ���@2"..q.."����"..s.."��@0������@230����@0�������������ɣ�")
	end
     
      elseif(answer=="num1") then             --��1�ؽ���
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=5) then      --5
			if(LuaQuery("level")<20) then
				LuaAddJx("combat_exp",2000+level^2*10+level*200+LuaQuery("rightanswer")*800,"Tbccz")
			elseif(LuaQuery("level")<=80)then
				LuaAddJx("combat_exp",6000+level^2*10+level*600+LuaQuery("rightanswer")*1300,"Tbccz")
			else
				LuaAddJx("combat_exp",6000+80^2*10+80*600+LuaQuery("rightanswer")*1300,"Tbccz")
			end
			LuaSetTask("Tbccza",99) 
			LuaDel("rightanswer")
			LuaSay("@7��2�أ����Ծ���")         --�����2�� 
			LuaSay("��ʾ����Ҫ���20�����е�@38����Ŀ@0�����ɽ���@3��3�ء�")
			AddMenuItem("@7�Ƿ����","")
			AddMenuItem("��һ��","A")
			AddMenuItem("����","giveup")
		end
          
	elseif(answer=="num2") then             --��2�ؽ���
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=8) then   --8
			if(LuaQuery("level")<20) then
				LuaAddJx("combat_exp",3000+level^2*20+level*300+LuaQuery("rightanswer")*900,"Tbccz")
			elseif(level<=80)then
				LuaAddJx("combat_exp",6000+level^2*20+level*1200+LuaQuery("rightanswer")*1400,"Tbccz")
			else
				LuaAddJx("combat_exp",6000+80^2*20+80*1200+LuaQuery("rightanswer")*1400,"Tbccz")
			end
			LuaDel("rightanswer")
			LuaSetTask("Tbcczb",99) 
			LuaDelTask("Tbccza")
			LuaSay("@7��3�أ�����")             --�����3�� 
			LuaSay("��ʾ����Ҫ���20�����е�@310����Ŀ@0������˳��ͨ�ء�")
			AddMenuItem("@7�Ƿ����","")
			AddMenuItem("��һ��","D")
			AddMenuItem("����","giveup") 
		end
  
	elseif(answer=="num3") then             --��3�ؽ��� 
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=10) then    --10
			if(LuaQuery("level")<20) then
				LuaAddJx("combat_exp",3000+level^2*30+level*400+LuaQuery("rightanswer")*1100,"Tbccz")
			elseif(level<=80)then
				LuaAddJx("combat_exp",6000+level^2*30+level*1800+LuaQuery("rightanswer")*1500,"Tbccz")
			else
				LuaAddJx("combat_exp",6000+80^2*30+80*1800+LuaQuery("rightanswer")*1500,"Tbccz")
			end
			local x=LuaRandom(15)---�������Ʒ
		if(x==0) then
			LuaGive("coin",500,"Tbccz")
		elseif(x==1) then
			LuaGive("coin",700,"Tbccz")
		elseif(x==2) then
			LuaGive("coin",900,"Tbccz")
		elseif(x==3) then
			LuaGive("coin",1100,"Tbccz")
		end
				LuaDel("rightanswer")
				LuaDelTask("Tbcczb")
				time=GetCurrentTime()
				LuaSetTask("bccztime",time)
				LuaDelTask("Tbccz")
				LuaSet("rightanswer",0)-------ÿ�ִ����ȷ��Ŀ
				LuaSetTask("ddcs",0)------��ϴ���
				LuaSay("��ʾ���ɹ�ͨ��ȫ�����⡣")
		end
     
	  elseif(answer=="A") then 
	    if(LuaQueryTask("Tbccz")<2) then
	    LuaDelTask("Tbccza")
	    LuaSetTask("Tbccz",2)
		LuaSet("zcount",0) 
        TaskProcess("A")
        end
	  elseif(answer=="G") then 
	    if(LuaQueryTask("Tbccz")<1) then
	    LuaSetTask("Tbccz",1)  
	    LuaSet("zcount",0) 
        TaskProcess("G")
        end
      elseif(answer=="D") then
        if(LuaQueryTask("Tbccz")<3) then
        LuaDelTask("Tbcczb")
	    LuaSetTask("Tbccz",3) 
		LuaSet("zcount",0) 
        TaskProcess("D")
        end
      elseif(answer=="giveup") then
        LuaSay("��ʾ��������˴��⣬����ʲôʱ�򶼿�����������Ŷ��")

elseif(answer=="jx1") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=4) then
		TaskProcess("G")
	else
		LuaSay("����������������б����@24��@0����Ϊ@2�����ش������Ŀ@0��")
		LuaSet("zcount",20)
		DoTalk("Tbccz")
	end
elseif(answer=="jx2") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=4) then
		TaskProcess("A")
	else
		LuaSay("����������������б����@24��@0����Ϊ@2�����ش������Ŀ@0��")
		LuaSet("zcount",20)
		DoTalk("Tbccz")
	end
elseif(answer=="jx3") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=4) then
		TaskProcess("D")
	else
		LuaSay("����������������б����@24��@0����Ϊ@2�����ش������Ŀ@0��")
		LuaSet("zcount",20)
		DoTalk("Tbccz")
	end
elseif(answer=="fq") then
	LuaSet("zcount",20)
	DoTalk("Tbccz")
------------�ϻ�
elseif(answer=="Tghc") then
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc_fs1")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs2")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs4")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs5")-----ʹ����ܵ�����NPC
		if(LuaQueryTask("Tghc_fs3")==0) then ------��ֹ������ͬһ��NPCˢ
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
			LuaSay("������"..sh[a][1].."")
			if(LuaQueryTask("Tghc_sj")==3 or LuaQueryTask("Tghc_dccs")>=5) then ---���NP���ߵ��NPC>=5��
				local b=LuaRandom(4)+9
				LuaSay("������"..sh[b][1].."")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","Tghcjl")
			else    -------���NPC
				LuaAddTask("Tghc_dccs",1)----������+1
				local m=LuaRandom(5)+1 -----�����ȷ��NPC   ---1->��1  2->��2````
				LuaSetTask("Tghc_sj",m) ----��������npc����mֵ
				LuaSetTask("Tghc_fs3",1)-----���һ�δ�NPC
				local c=LuaRandom(5)+4
				LuaSay("������"..sh[c][1].."")
				LuaSay("���������ܴ����ɣ���������")
				local n=LuaRandom(3)---�۶���ͭ
				if(n==0) then
					LuaGive("coin",-150,"Tghc")
				elseif(n==1) then
					LuaGive("coin",-200,"Tghc")
				elseif(n==2) then
					LuaGive("coin",-250,"Tghc")
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
				LuaSay("��������ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
			end
		elseif(LuaQueryTask("Tghc_fs3")==1) then ------��ֹ������ͬһ��NPCˢ
			LuaSay("��������ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
		end
	end          
elseif(answer=="Tghcjl") then
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
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
						jinyan=level*400+level*level*4
					end
		LuaAddJx("combat_exp",jinyan,"Tghc")
		local cion
		if(LuaQueryTask("Tghc_dccs")==0) then-----��һ�ξ͵��NPC
			cion=1500
		else
			cion=LuaQueryTask("Tghc_dccs")*250----��ͭ��->�͵��NPC��ͭ���ҹ�
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

----------------------------------------------
	
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
