NPCINFO = {
serial="160" ,
base_name="bordermgr",
icon= 2569,
NpcMove=2569,
name= "�߾�����Ա��С�壩" , 
iconaddr=1,
butt="10|10|64",
lastsay="������������������������",
LuaType=1,
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�߹ز���","")
	AddTopSayMenuItem("@3����ù���ͼ","incounty")
        AddTopSayMenuItem("@3���߳���","Tcs")
	AddTopSayMenuItem("@3����ù�����","joincountry")
		if(level>=35)then
        AddTopSayMenuItem("@3���ָù�(20:00-21:00)","gjbwz")
        else
        AddTopSayMenuItem("@3���ָù�(20:00-21:00)","gjbwz_no")
        end
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3�ع�ָ��","milu")
	end
	AddTopSayMenuItem("@7���߱��ש","Thgz")
	if(LuaQueryTask("Txxwc")==0) then
		AddTopSayMenuItem("@3��ϵ����","Txxwc")
		havetask=1
	end
	if(LuaQueryTask("Txxwc")==1 or LuaQueryTask("Txxwc")==2) then
		AddTopSayMenuItem("@2��ϵ����","Txxwc")
		havetask=2
	end
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2�ϻ�","Tghc")
		havetask=2
	end
	AddTopSayMenuItem("����˵��","countrysm")
    return 1



--------------------------------------------------------------------------------------------------------------------
---------------------------���߱��ש
elseif(answer=="Thgz") then
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
		if(LuaQueryTask("Thgz")==0) then
			if(LuaItemStatusNormalCount("o_mission514")>=1) then-----------������
				LuaSay("С�壺Ӣ���õ�@2��ש������@0����ɹ�ֻ��һ���ˣ�@3���߱��ש@0��")
				LuaSay("С�壺��Ҫ��@2��ש���߱�ɽ�ש@0@3��Ҫ1500ͭ��@0��֪��������ֻ����һ����Ŷ!(ת���ɽ�ש������2w�õ�Ŷ)")
				AddMenuItem("@7ѡ���б�","")
				AddMenuItem("@3�ҳ�Ǯ����Ϣ","Tyes")
				AddMenuItem("̫���ˣ���ѡ��","Tno")
			elseif(LuaItemStatusNormalCount("o_mission214")>=1) then-----------������
				LuaSay("С�壺�������Ѿ���@2��ש@0�ˣ��������������������@3��ϵ����@0�������ש��ħ��ȡ�������ٻ᱾���Ͻɣ�")
				LuaSay("С�壺Ҳ����ֱ�ӻ�@4����������@0@4���ҿⷿ�ܹ�@0���Ͻɡ�")
			elseif(LuaItemStatusNormalCount("o_mission214")<1 and LuaItemStatusNormalCount("o_mission514")<1) then
				LuaSay("С�壺�����ϼ�@3û�н�ש@0Ҳ@2û�н�ש����@0����@4�����������@0@2���ҿⷿ�ܹ�@0��@7��ǽ��@0͵��һ��@2��ש����@0�������ң�")
			end
		elseif(LuaQueryTask("Thgz")==1) then
			 tS_skill={  --ɱ��
					{1,"����","task_kill/mon_008/Thgz_1",40},----level<=15
					{2,"����","task_kill/mon_008/Thgz_2",50},----level<=22
					{3,"����","task_kill/mon_020/Thgz_3",40},----level<=28
					{4,"ص���ڱ�","task_kill/mon_025/Thgz_4",40},----level<=35
					{5,"��Ҷ��","task_kill/mon_030/Thgz_5",40},----level<=40
					{6,"��Ҷ��","task_kill/mon_030/Thgz_6",50},----level>40
					}
			if(LuaItemStatusNormalCount("o_mission514")>=1) then
				local t=LuaQueryTask("hgz_dj")
				if(LuaQueryTask(tS_skill[t][3])>=tS_skill[t][4]+1) then-----�Ѿ�ɱ����
					LuaSay("С�壺��ϲ����ȡ������@2��ש���߱���˽�ש@0��")
					DelItem("o_mission514",1,"Thgz")--------ɾ������
					LuaGive("o_mission214",1,"Thgz")
					LuaDelTask(tS_skill[t][3])---ɾ��ɱ�ּ�����
					LuaDelTask("hgz_dj")
					LuaDelTask("Thgz")
				else----δɱ��
					local t=LuaQueryTask("hgz_dj")
					local m=tS_skill[t][4]----�ܵ�Ҫɱ
					local n=LuaQueryTask(tS_skill[t][3])-1----ʵ��ɱ��
					if(n==-1) then------�ݴ��ж�   δ�ɹ�����ɱ�ּ�����	  ������Ϊ0
						LuaSay("С�壺����Ӣ�ۣ�ʵ�ڲ�����˼���ղ�ʦ�������ټ��ң�Ҳ��֪����ɱ�˶��ٹ֣�Ҫ����@2��������һ��@0�ɣ�")
						local t
						if(LuaQuery("level")<=15) then
							t=1
						elseif(LuaQuery("level")<=22) then
							t=2
						elseif(LuaQuery("level")<=28) then
							t=3
						elseif(LuaQuery("level")<=35) then
							t=4
						elseif(LuaQuery("level")<=40) then
							t=5
						else
							t=6
						end
						LuaSetTask(tS_skill[t][3],1)-------����ɱ�ּ�����
					else
						LuaSay("С�壺��Ż�ɱ��@6"..n.."@0��@2"..tS_skill[t][2].."@0�����ŵ��߾���ɱ@6"..(m-n).."@0��@2"..tS_skill[t][2].."@0�������Ұɣ�")
					end
				end
			else------����û��ש������  ���˱���
				local t=LuaQueryTask("hgz_dj")
				LuaSay("С�壺������û�н�ש���ߣ����˱��ˣ���ȥ@2�����������@0@4���ҿⷿ�ܹ�@0��@2��ǽ��@0͵��һ��@2��ש����@0�������ң�")
				LuaDelTask(tS_skill[t][3])---ɾ��ɱ�ּ�����
				LuaDelTask("hgz_dj")
				LuaDelTask("Thgz")
			end
		end
	else
		LuaSay("С�壺��ש����������ֻ����@2�������@0��ȥ����������")
	end

elseif(answer=="Tyes") then
	if(LuaItemCount("coin")>=1500) then
		LuaSay("С�壺��ʦ����׷���ɵ���������ˣ�����������ʦ��ѧ��Щéɽ����.")
		LuaSay("С�壺�Դ������ڽ�ש������ߺ���ҹ�����󣬷���@2��ש@0������ɢ��@4�߾�@0@2����@0���ϡ�")
		local tS_skill={  --ɱ��
			{1,"����","task_kill/mon_008/Thgz_1",40},----level<=15
			{2,"����","task_kill/mon_008/Thgz_2",50},----level<=22
			{3,"����","task_kill/mon_020/Thgz_3",40},----level<=28
			{4,"ص���ڱ�","task_kill/mon_025/Thgz_4",40},----level<=35
			{5,"��Ҷ��","task_kill/mon_030/Thgz_5",40},----level<=40
			{6,"��Ҷ��","task_kill/mon_030/Thgz_6",50},----level>40
			}
		local t
		if(LuaQuery("level")<=15) then
			t=1
		elseif(LuaQuery("level")<=22) then
			t=2
		elseif(LuaQuery("level")<=28) then
			t=3
		elseif(LuaQuery("level")<=35) then
			t=4
		elseif(LuaQuery("level")<=40) then
			t=5
		else
			t=6
		end
		LuaSetTask("hgz_dj",t)-----�����������t
		local t=LuaQueryTask("hgz_dj")
		LuaSay("С�壺��Ȼ�����1500ͭ�ң��Ҿ͸�����ת����������@4�߾�@0��ɱ@6"..tS_skill[t][4].."@0��@2"..tS_skill[t][2].."@0��ȡ������@2��ש����@0ת��Ϊ@2��ש@0�ɣ�")
		LuaNotice("�����"..LuaQueryStr("name").."������������@2��ש����@0һ�飬Ŀǰ����@2"..GeGJMC().."���߾�@0ɱ�֣���ҿ�ȥ��ɱ������ש���߰ɣ�")
		LuaGive("coin",-1500,"Thgz")
		LuaSetTask(tS_skill[t][3],1)-------����ɱ�ּ�����
		LuaSetTask("Thgz",1)
	elseif(LuaItemCount("coin")<1500) then
		LuaSay("С�壺������û��1500ͭ�ң����ˮ���㣬���롣")
	end
elseif(answer=="Tno") then
	LuaSay("С�壺������ò���ã�һ���ש�Ͻɵ����Ǿ��ܻ�ȡ@22wͭ��+��������@0��զ����˾��㲻�����أ�")



---------------------------��ϵ����
elseif(answer=="Txxwc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Txxwc")==0) then
		local shijiancha2=(GetCurrentTime() - LuaQueryTask("xxwctime2"))
		if(shijiancha2>=600 or shijiancha2==GetCurrentTime()) then-------10�����ܽ�һ��������ߵ�һ�ν�����
			LuaSay("С�壺��ӭ�����߾�����˵����������@2͵ש@0Ϊ�Լ����ҽ�������.")
			LuaSay("С�壺��Ҳ��Ϊ�Լ��Ĺ��ҽ��辡��һ�������Ҵ�Сѧϰһ�ַ����ܹ�������ħ��������Ҫ@2��ש@0��Ϊ���塣")
			LuaSay("С�壺��������Ҫ@2һ���ש@0(��ש��Դ��һ��ɱ�н�ש֮�ˡ�������@5���͵��ש����@0��@2��������@0�������ɽ�ש�ķ���)����Ϊ��ש����һ����ħ�����������ǡ�")
			LuaSetTask("Txxwc",1)
			UpdateMenu()
		else
			LuaSay("����@2��������10���Ӳ��ܽ�ȡһ��@0.")
			local q=floor(shijiancha2/60)-----����
			local s=shijiancha2-q*60
			LuaSay("�������ڲŹ���@2"..q.."����"..s.."��@0������@210����@0�������������ɣ�")
		end
	elseif(LuaQueryTask("Txxwc")==1) then
		if(LuaItemCount("o_mission214")>=1) then----�����н�ש
			LuaSay("С�壺�����ھ�Ϊ��ש����һ����ħ���ģ���ש�ͷ�Ӣ�����ϼ��ɡ�")
			LuaSay("С�壺�������@4��Ҫ10����@0����Ӣ��10���Ӻ���������ȡ�������Ա�Ӣ�۶Թ�����������Ŭ����")
			LuaSay("С�壺���Ӣ���е����ģ����Ե��ҵ���λ����ǿ�����û������@4��ס10�����������콱����שǧ����˱���@0����ħʧ����Ȼû�����ˣ�")
			LuaNotice("@4"..LuaQueryStr("name").."@0������@2��ש@0��Ŀǰ����@4�߾�@0����ҿ�������@2��ש@0����")
			local time=GetCurrentTime()
			LuaSetTask("xxwctime1",time)
			LuaSetTask("Txxwc",2)
			UpdateMenu()
		elseif(LuaItemCount("o_mission514")>=1) then----�����н�ש����
			LuaSay("С�壺������ֻ��@2��ש����@0��@2���������@0@7���߱��ש@0�ٽ��������ɣ�")
		else
			LuaSay("С�壺@4������û�н�ש@0��ȥ���͵ȡ@2��ש����@0ת����@2��ש@0��������ɣ�")
		end
	elseif(LuaQueryTask("Txxwc")==2) then
		if(LuaItemCount("o_mission214")>=1) then----�����н�ש,û�б������˱���
			local shijiancha1=(GetCurrentTime() - LuaQueryTask("xxwctime1"))
			if(shijiancha1>=600) then
				LuaSay("С�壺����������������ʵ�˴��Ұ���")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","Txxwcjl")
			else
				LuaSay("С�壺@210����@0��û����������Ϊ��ש��ħ���ٹ��������ɣ�")
			end
		else
			LuaSay("С�壺�����ϵ�@2��ש���˱���@0����ש��ħʧ�ܣ���Ȼ�����콱�ˣ���ͷ�����ɡ�")
			LuaDelTask("xxwctime1")
			LuaDelTask("Txxwc")
			UpdateMenu()
		end
	end
elseif(answer=="Txxwcjl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Txxwc")==2) then
		if(LuaItemCount("o_mission214")>=1) then
			local time=GetCurrentTime()
			LuaSetTask("xxwctime2",time)
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
					LuaAddJx("combat_exp",jinyan,"Txxwc")
				local x=LuaRandom(10)---�������Ʒ
		if(x==0) then
			LuaGive("coin",300,"Txxwc")
		elseif(x==1) then
			LuaGive("coin",400,"Txxwc")
		elseif(x==2) then
			LuaGive("coin",500,"Txxwc")
		elseif(x==3) then
			LuaGive("coin",700,"Txxwc")
		end
			LuaDelTask("xxwctime1")
			LuaDelTask("Txxwc")
			UpdateMenu()
		end
	end
---------------------------�ϻ�
elseif(answer=="Tghc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc_fs1")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs2")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs3")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs4")-----ʹ����ܵ�����NPC
		if(LuaQueryTask("Tghc_fs5")==0) then ------��ֹ������ͬһ��NPCˢ
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
			LuaSay("С�壺"..sh[a][1].."")
			if(LuaQueryTask("Tghc_sj")==5 or LuaQueryTask("Tghc_dccs")>=5) then ---���NP���ߵ��NPC>=5��
				local b=LuaRandom(4)+9
				LuaSay("С�壺"..sh[b][1].."")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","Tghcjl")
			else    -------���NPC
				LuaAddTask("Tghc_dccs",1)----������+1
				local m=LuaRandom(5)+1 -----�����ȷ��NPC   ---1->��1  2->��2``
				LuaSetTask("Tghc_sj",m) ----��������npc����mֵ
				LuaSetTask("Tghc_fs5",1)-----���һ�δ�NPC
				local c=LuaRandom(5)+4
				LuaSay("С�壺"..sh[c][1].."")
				LuaSay("С�壺���ܴ����ɣ���������")
				local n=LuaRandom(3)---�۶���ͭ
				if(n==0) then
					LuaGive("coin",-100,"Tghc")
				elseif(n==1) then
					LuaGive("coin",-150,"Tghc")
				elseif(n==2) then
					LuaGive("coin",-200,"Tghc")
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
				LuaSay("С�壺��ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
				LuaSay("С�壺���ĵĸ����㣬�����ֵ�������У�@2�ϴ��϶�@0����ϲ��Ǯ�ģ�@2���Ҵ��˴���Ҳ����ߵ�@0�������Ժ����������ܡ�")
			end
		elseif(LuaQueryTask("Tghc_fs5")==1) then ------��ֹ������ͬһ��NPCˢ
			LuaSay("С�壺��ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
		end
	end      

elseif(answer=="Tghcjl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc")
		local time=GetCurrentTime()
		LuaSetTask("ghctime",time)
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
			cion=LuaQueryTask("Tghc_dccs")*230----��ͭ��->�͵��NPC��ͭ���ҹ�
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



	
elseif(answer=="incounty") then
local level= LuaQuery("level")
  LuaSay("�͹٣����ǻ�����㵱ǰ�ĵȼ����ǽ������㵽�Ƚϰ�ȫ�ĵ�ͼȥ����ȷ������ù�����")
   AddMenuItem("ѡ�����ĵ�ͼ","")
      if(0<level and level<=10 )then
          AddMenuItem("��Դ","changqmk")
      elseif(10<level and level <=40)then    
         AddMenuItem("�����Ƕ���","wds")
          elseif(40<level  )then
          AddMenuItem("��Ƿ���","jgd") 	  
      end

   elseif(answer=="changqmk") then
    ChangeMap("lu_changqmk")
   elseif(answer=="wds") then
    ChangeMap("lu_jkdj")
     elseif(answer=="jgd") then
    ChangeMap("lu_jgd")
   
elseif(answer=="Tcs") then
	if(LuaItemCount("o_tgws") >=1) then
			LuaSay("�߾�����Ա����ӭ����ʱ�մ������")
			ChangeServer()
	else
		LuaSay("�߾�����Ա��������@2��ͨ������@0���������߳�����������@4����ѡ��@0��")
		LuaSay("�߾�����Ա��һ������@220��ͨ��@0(@7�̳�-Ԫ��-����@0�й���)��ȡһ��@1����@0��@2ͨ������@0�ٽ������߻�����")
		LuaSay("�߾�����Ա����������@23000ͭ��@0����@2һ����@0��ʱ�⴩���������@2���߻���@0.")
		AddMenuItem("@7ѡ���б�","")
		AddMenuItem("@520ͨ����ȡһ��ͨ������","Thq")
		AddMenuItem("@53000ͭ�ҳ���һ���Ե�","Tyq")
		AddMenuItem("����","Tbhg")
	end
elseif(answer=="Thq")then
	if(LuaItemCount("o_gold1y") >=20) then 
		DelItem("o_gold1y",20)
		LuaGive("o_tgws",1)
		DoTalk("Tcs")
	else
		LuaSay("�߾�����Ա����û���㹻��@9ͨ��@0���뵽@2�̳�-Ԫ��-����@0�й���@220��ͨ��@0�������⻻ȡ�ɣ�")
	end
elseif(answer=="Tyq")then
	if(LuaItemCount("coin")>=3000) then
		LuaSay("�߾�����Ա����ӭ����ʱ�մ������")
		LuaGive("coin",-3000,"Tcs")
		ChangeServer()
	else
		LuaSay("�߾�����Ա��������û��@23000ͭ��@0���������߻�����ʱ�մ������ά�޷ѿ��Ǻܸߵġ�")
	end
elseif(answer=="Tbhg")then
		LuaSay("��ѡ��@2���߻���@0��Ҫ��������������@2����-->ѡ�����-->������@0�����ܵ��������ң��㲻�����鷳ô��������ò���ã�զ����˾��㲻�����أ�")
elseif(answer=="joincountry") then 
    if(LuaQuery("partyid") == 0)then
       JoinInCountry()
       else 
       LuaSay("Ҫ���뱾���������ǣ�@21������ˣ�2���ް�����ʿ@0��3:˧�����Ů����Ȼ����ϵ�����������Ѿ��а��ɻ�����ˣ�����Ҳ�����������㡣")
       LuaSay("����@2�й��������@0������뱾�����뵽@2��ԭ���Ĺ���@0��@4����@0������@2�ѹ����˳���������@0���¹ٽ��ڴ˹�����")
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
		LuaSay("�����ͨ�����������@2������Ӧ�ȼ��ĵ�ͼ@0,�����@430������@0�Ļ���������@2ֱ�Ӵ����ұ���ͼ����������@0��")
		LuaSay("�������ṩ������˵�һ�в���������@3����ù���ͼ@0��@3���߳���@0��@3����ù�����@0��@3���ָù�@0(21:00-22:00).")
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
	LuaSay("@2ÿ��20��-21��@0���Ե�@4�ң��߾�����Ա��С�壩)����@0����@3���ָù���@0��������@2ֱ��ȥ����͵�ù�ש�ع�@0��ͭ�ҽ�������ש���Ի�ȡ����ͭ�ң���ͷ���Ļ�����ȥ���ԣ�")
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
 elseif(answer=="gjbwz")then
	if(GetCurrentHour()==20) then----20�㵽20��30��
		if(LuaQueryTask("Ac14")==0)then
			LuaSay("ͳһ����ʿ����ӭ�����μӴ�˵�лҳ������Ĺ�սɱ�˻���������Ī��")
			LuaSetTask("Ac14_gz",LuaQuery("gj_gx"))
			LuaSetTask("Ac14",99)
		end
		GetInCountryProtectFightMap("lu_gzdt_01")
	else 
		LuaSay("�߾�����Ա�����ڻ�û��@2���ұ���ս@0ʱ�䣬��@220:00~21:00@0�����ѣ�")
	end
 elseif(answer=="gjbwz_no")then
 	LuaSay("��ʾ����Ҫ35�����ϲ��ܲμӹ�ս��")
end 
LuaSendMenu()
return 1
end
