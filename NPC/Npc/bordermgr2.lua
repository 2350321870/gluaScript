NPCINFO = {
serial="191" ,
base_name="bordermgr2",
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
	if(LuaQueryTask("Twutu")==0 or LuaQueryTask("Twutu")==99) then
		AddTopSayMenuItem("@3������ͽ��ѭ����","Twutu")
		havetask=1
	end
	if(LuaQueryTask("Twutu")==1) then
		AddTopSayMenuItem("@2������ͽ��ѭ����","Twutu")
		havetask=2
	end
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2�ϻ�","Tghc")
		havetask=2
	end
	--if(LuaQueryTask("Tbjxh1")==1) then
	--	AddTopSayMenuItem("@2��Ƥ���¡�ѭ����","Tbjxh1")
		--havetask=2
	--end
	AddTopSayMenuItem("����˵��","countrysm")
    return 1
elseif(answer=="test") then
LuaGive("o_mix_book029",1,"test")
	


--------------------------------------------------------------------------------------------------------------------
------������ͽ��ѭ����------���ɱ��
elseif(answer=="Twutu") then
local shijiancha=(GetCurrentTime() - LuaQueryTask("wututime"))
if(shijiancha>=1800) then-------30�����ܽ�һ������
	tSkill={  --ɱ��
		--������  ����  ����id  ɱ������(��������)
		----->���������ȼ�Ϊ��׼
		{1,"����","task_kill/mon_008/Twutu",60},
		{2,"����","task_kill/mon_020/Twutu",70},
		{3,"ص���ڱ�","task_kill/mon_025/Twutu",60},
		{4,"��Ҷ��","task_kill/mon_030/Twutu",70},
		{5,"��Ҷ��","task_kill/mon_030/Twutu",90},
		}
	if(TeamCount()==2)then
		if(LuaQueryStrTask("wutu_dyid")==TeamQueryStr("id")) then
			if(LuaQueryTask("Twutu")==0)then
				if(TeamQueryTask("Twutu")==0 or TeamQueryTask("Twutu")==99)then
					local a=LuaQuery("level")----�Լ��ȼ�
					local b=TeamQuery("level")---���ѵȼ�
					local m
					local t
					if(a<b) then ---�Լ��ȼ�С�ڶ��ѵȼ� ---> �Զ��ѵȼ�Ϊ��׼
						t=b
					else 
						t=a   ---���ѵȼ�С���Լ��ȼ� ---> ���Լ��ȼ�Ϊ��׼
					end
					if(t<=18) then
						m=1
					elseif(t<=28) then
						m=2
					elseif(t<=35) then
						 m=3
					elseif(t<=40) then
						m=4
					else
						m=5
					end
					LuaSetTask("wutu_sjbh",m)--------��������ܶ���mֵ				
					LuaSay("����������߾���֪����ð����ôЩ����������ġ�")
					LuaSay("�����������Ķ�����@4�߾�@0һ���ɱ@3"..tSkill[m][4].."@0��@4"..tSkill[m][2].."@0�ɣ�")
					LuaSay("��������Ķ��ѻ�û��ȡ����Ŷ���Ͽ�������������һͬɱ��Ŷ�����֮��ɱ�Ĺ������������һ��ɱ��Ŷ@!")
					LuaSay("@1�ر���ʾ�������ڼ䲻Ҫ�˳���ӣ���Ȼ�����޷����")
					LuaSetTask("Twutu",1)
					LuaSetTask("wutu_dyid",TeamQueryStr("id"))-------��ȡ����id
					LuaSetTask(tSkill[m][3],1)-------����ɱ�ּ�����						
					UpdateMenu()
				elseif(TeamQueryTask("Twutu")==1)then
					local m=TeamQueryTask("wutu_sjbh")--------��ȡ�������ϵ�mֵ
					LuaSetTask("wutu_sjbh",m)-------��������������mֵ
					--LuaSay("m��ֵΪ��"..m.."")
					LuaSay("����������߾���֪����ð����ôЩ����������ġ�")
					LuaSay("�����������Ķ�����@4�߾�@0һ���ɱ@3"..tSkill[m][4].."@0��@4"..tSkill[m][2].."@0�ɣ�")					
					LuaSay("@1�ر���ʾ�������ڼ䲻Ҫ�˳���ӣ���Ȼ�����޷����")
					LuaSetTask("Twutu",1)	
					LuaSetTask("wutu_dyid",TeamQueryStr("id"))-------��ȡ����id
					LuaSetTask(tSkill[m][3],1)-------����ɱ�ּ�����
					UpdateMenu()
				end
			elseif(LuaQueryTask("Twutu")==1)then
				if(TeamQueryTask("Twutu")==0)then-------��ֹ����δ����ɱ�ּ����� y=0����ʾ-1
					LuaSay("������@2��Ķ��ѻ�û�н�����@0����ȥ�����������!")
				elseif(TeamQueryTask("Twutu")==1)then
					local m=LuaQueryTask("wutu_sjbh")--------��ȡ����mֵ
					--LuaSay("m��ֵΪ��"..m.."")
					local x=LuaQueryTask(tSkill[m][3])------�Լ�ɱ�ּ�����----x-1Ϊɱ����
					local y=TeamQueryTask(tSkill[m][3])-----����ɱ�ּ�����
					--LuaSay("������x��ֵΪ��"..x.."")
					--LuaSay("������y��ֵΪ��"..y.."")
					if(x>=tSkill[m][4]+1 and y>=tSkill[m][4]+1) then
						LuaSay("��������Ϊ�����ҵ�һ��Ը�����һͬ��ս�����Ѷ�����@!")
						LuaSay("���������ֵܣ���ͳһ��")
						AddMenuItem("@7�������","")
						AddMenuItem("��ȡ����","Twutujl")
					else
						if(x==y) then  ------ɱ�ֹ�����δ����  ɱ�ֹ���  ɱ������һ��
							LuaSay("�����������Ķ��ѲŻ�ɱ��@2"..(x-1).."@0��@4"..tSkill[m][2].."@0��ɱ��@3"..tSkill[m][4].."��@0�������Ұɣ�")
						else       -----ɱ�ֹ����������ٽ���
							if(x>=tSkill[m][4]+1 and y<tSkill[m][4]+1)then
								LuaSay("���������Ѿ�ɱ����@3"..tSkill[m][4].."@0��@2"..tSkill[m][2].."@0��������Ķ���ֻ��ɱ��@2"..(y-1).."@0�����Ͽ�ȥ�������ɡ�")
							elseif(x<tSkill[m][4]+1 and y>=tSkill[m][4]+1)then
								LuaSay("��������Ķ���ɱ����@3"..tSkill[m][4].."@0��@2"..tSkill[m][2].."@0��������ֻ��ɱ��@2"..(x-1).."@0�����Ͽ������������ɡ�")
							elseif(x<tSkill[m][4]+1 and y<tSkill[m][4]+1)then
								LuaSay("�����������Ķ��ѻ�û��ɱ��@2"..tSkill[m][4].."@0��"..tSkill[m][2].."�����ɱ��@2"..(x-1).."@0��,��Ķ���Ҳ��ɱ��@2"..(y-1).."@0�����Ͽ�Ŭ���ɣ�")
							end
						end
					end
				elseif(TeamQueryTask("Twutu")==99)then
					local m=LuaQueryTask("wutu_sjbh")--------��ȡ����mֵ
					local x=LuaQueryTask(tSkill[m][3])------�Լ�ɱ�ּ�����----x-1Ϊɱ����
					if(x>=tSkill[m][4]+1) then
						LuaSay("���᣺��Ϊ�����ҵ�һ��Ը�����һͬ��ս�����Ѷ�����@!")
						LuaSay("���᣺���ֵܣ���ͳһ��")
						AddMenuItem("@7�������","")
						AddMenuItem("��ȡ����","Twutujl")
					end
				end
			elseif(LuaQueryTask("Twutu")==99)then
				if(TeamQueryTask("Twutu")==1)then-------���ѻ�û�н�����
					local m=TeamQueryTask("wutu_sjbh")--------��ȡ����mֵ
					local y=TeamQueryTask(tSkill[m][3])-----����ɱ�ּ�����
					if(y>=tSkill[m][4]+1) then
						LuaSay("������@2��Ķ��ѻ�û�н�����@0���Ͽ���������������ȡ�����ɣ�")
					else
						LuaDelTask("Twutu")
						DoTalk("Twutu")
					end
				elseif(TeamQueryTask("Twutu")==99)then-------����Ҳ��������
					LuaSay("��������ϲ�����Ķ���������������Ƿ������ȡ@2������ͽ@0����")
					AddMenuItem("@7�Ƿ������������","")
					AddMenuItem("����","Yes")
					AddMenuItem("��Ҫȥ������������","No")
				end
			end
		else
			LuaSay("��������������ǰ����һ�����@2������ͽ@0����Ķ���@2�����ڵĶ���@0�����ڽ��Զ����ô�������@2���½�ȡ������ͽ����@0��")
			LuaDelTask("Twutu")
			LuaDelTask("wutu_sjbh")
			LuaSetTask("wutu_dyid",TeamQueryStr("id"))-------��ȡ����id
			UpdateMenu()
		end
	else
		LuaSay("��������������Ҫ@2����������@0���ܽ�����һ�����Ͽ��Ҹ����һ����Ӱɣ�")
	end
else
	LuaSay("������@2��������30���Ӳ��ܽ�ȡһ��@0.")
	local q=floor(shijiancha/60)-----����
	local s=shijiancha-q*60
	LuaSay("���������ڲŹ���@2"..q.."����"..s.."��@0������@230����@0�������������ɣ�")
end
elseif(answer=="Yes")then
	LuaDelTask("Twutu")
	LuaSetTask("wutu_dyid",TeamQueryStr("id"))-------��ȡ����id
	DoTalk("Twutu")
	UpdateMenu()
elseif(answer=="Twutujl")then
	local level= LuaQuery("level")
	if(LuaQueryTask("Twutu")==1 and TeamQueryTask("Twutu")==1)then
		local m=LuaQueryTask("wutu_sjbh")--------��ȡ����mֵ
		if(LuaQueryTask(tSkill[m][3])>=tSkill[m][4]+1 and TeamQueryTask(tSkill[m][3])>=tSkill[m][4]+1) then
			local jinyan
			if(LuaQuery("level")<=10) then  --С��10��
						jinyan=level*150+level*level*20
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*600+level*level*20
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*1200+level*level*20
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*2300+level*level*4
					else
						jinyan=level*2800+level*level*4
					end
		end
	elseif(LuaQueryTask("Twutu")==1 and TeamQueryTask("Twutu")==99)then
		local m=LuaQueryTask("wutu_sjbh")--------��ȡ����mֵ
		if(LuaQueryTask(tSkill[m][3])>=tSkill[m][4]+1) then
			local jinyan
			if(LuaQuery("level")<=10) then  --С��10��
						jinyan=level*150+level*level*20
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*600+level*level*20
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*1200+level*level*20
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*2300+level*level*4
					else
						jinyan=level*2800+level*level*4
					end
		end
	end
		LuaAddJx("combat_exp",jinyan,"Twutu")
		LuaGive("coin",1200,"Twutu")
		local x=LuaRandom(20)---�������Ʒ
		if(x==0) then
			LuaGive("o_drug_hp4",5,"Twutu")
		elseif(x==1) then
			LuaGive("o_drug_mp4",5,"Twutu")
		end
		local time=GetCurrentTime()
		LuaSetTask("wututime",time)
		LuaSetTask("Twutu",99)
		local m=LuaQueryTask("wutu_sjbh")
		LuaDelTask(tSkill[m][3],1)---ɾ��ɱ�ּ�����
		LuaDelTask("wutu_sjbh")
		UpdateMenu()

--------��Ƥ����
elseif(answer=="Tbjxh1") then
	if(LuaQueryTask("Tbjxh1")==1) then
		LuaSay(""..LuaQueryStr("name").."������Ӧ�����Ҫ��������Ƥ����ģ��������������֯��Ƥ���¡�")
		if(LuaItemCount("o_mission419")>=10) then
			LuaSay("�����������ϴ��˽��ң�֪����һ�����������£��ҵ���������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbjxh1jl")
		else
			LuaSay("����������Ҫ�����ң����շɸ봫��˵��@210����Ƥ@0�������ϲ���@2"..LuaItemCount("o_mission419").."��@0.")
			LuaSay("������������߱�@2��ɱ����@0@3�ռ���10����Ƥ@0�������Ұ�.")
		end
	end
elseif(answer=="Tbjxh1jl") then
	if(LuaQueryTask("Tbjxh1")==1 and LuaItemCount("o_mission419")>=10) then
		LuaAddJx("combat_exp",45000,"Tbjxh1")
		DelItem("o_mission419",10)
		LuaDelTask("Tbjxh1")
		local x=LuaRandom(5)---�������Ʒ
		if(x==0) then
			LuaGive("coin",450,"Tbjxh1")
		end
		UpdateMenu()
		UpdateNPCMenu("bordermgr1")
		UpdateNPCMenu("bordermgr2")
	end

elseif(answer=="Tghc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc_fs1")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs3")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs4")-----ʹ����ܵ�����NPC
		LuaDelTask("Tghc_fs5")-----ʹ����ܵ�����NPC
		if(LuaQueryTask("Tghc_fs2")==0) then ------��ֹ������ͬһ��NPCˢ
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
			if(LuaQueryTask("Tghc_sj")==2 or LuaQueryTask("Tghc_dccs")>=5) then ---���NP���ߵ��NPC>=5��
				local b=LuaRandom(4)+9
				LuaSay("������"..sh[b][1].."")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","Tghcjl")
			else    -------���NPC
				LuaAddTask("Tghc_dccs",1)----������+1
				local m=LuaRandom(5)+1 -----�����ȷ��NPC   ---1->��1  2->��2```
				LuaSetTask("Tghc_sj",m) ----��������npc����mֵ
				LuaSetTask("Tghc_fs2",1)-----���һ�δ�NPC
				local c=LuaRandom(5)+4
				LuaSay("������"..sh[c][1].."")
				LuaSay("���������ܴ����ɣ���������")
				local n=LuaRandom(3)---�۶���ͭ
				if(n==0) then
					LuaGive("coin",-170,"Tghc")
				elseif(n==1) then
					LuaGive("coin",-120,"Tghc")
				elseif(n==2) then
					LuaGive("coin",-270,"Tghc")
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
		elseif(LuaQueryTask("Tghc_fs2")==1) then ------��ֹ������ͬһ��NPCˢ
			LuaSay("��������ȥ@2�ҵ������ĸ��ֵ�@0�����ǿ�@2�Ҵ�����@0�ɣ�")
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
			cion=1500
		else
			cion=LuaQueryTask("Tghc_dccs")*210----��ͭ��->�͵��NPC��ͭ���ҹ�
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
