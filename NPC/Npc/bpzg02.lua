NPCINFO = { 
serial="58" ,
base_name="bpzg02" ,
icon=2567,
NpcMove=2567 ,
name="���ҿⷿ�ܹ�" ,
iconaddr=1 ,
butt="10|15|62" ,
lastsay="����������������꣡",
LuaType=1,
} 

function do_talk(answer)
if(answer=="ask")then
	n=10000
	AddTopSayMenuItem("@7�ù���ǰ������Դ��"..n.."","")
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
		AddTopSayMenuItem("@3��������(�ɽ�ש��2Wͭ)","Tgj1a")
		AddTopSayMenuItem("@3��������(����ש)","Tgj1b")
		AddTopSayMenuItem("@3��������(����ש)","Tgj1c")
		AddTopSayMenuItem("@3������ǽ��˵��","Tgjsm")
	else
		AddTopSayMenuItem("@3��ǽ��","Tgj2")
	end
elseif(answer=="Tgjsm")then  
	LuaSay("��ҿ��Ե�@2�������ҵ�������@0@4���ҿⷿ�ܹ�@0��͵��@2ש��@0�����Լ����ҿ����Ͻɽ�ש����ש��߹�����Դ����������Դ��������Խ��(��δ���ţ�������ԴΪ��ֵ)��")
	LuaSay("ש��ɷ�Ϊ@2��������@0����ש�飺@2��ש@0��@2һ��ֻ���Ͻ�һ��@0��������ã�@2��ש@0��@2ÿ��ǰ5�λ�ö��⽱��@0������@2��Ȼ�������ӹ�����Դ@0��@2��ש@0��@2������@0��@2ÿ20��ɻ�ȡһ�ν���@0��������")
	LuaSay("��ø��ʣ�@3��ש@0��͵ש������@210%����@0���@2�������@0��@2���5��@0��-->���@2��ש����@0-->��@4�߾�@0��@2�߾�������(С��)@0-->����@7���߱��ש@0ת����@2��ש@0��@3��ש@0��@220%����ֱ�ӻ�á�@0@2��ש@0��@250%����ֱ�ӻ��@0��")
	LuaSay("@1��ʾ��͵ש������20%�������¶��ˣ�û�ڵ�ש��@0")
	LuaSay("��ʾ��͵ש���������@2�����н�ש���߽�ש����@0�����ٻ��@2��ש������@0�ˣ�@2������5����ש@0Ҳ�����ٻ����ש�ˣ���ع��Ͻɺ��ټ�����ש������������ģ�ע�Ᵽ���������ڣ������˲���PK��")
elseif(answer=="Tgj1a")then       --��������
	local level=LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("Tgj1aday"))then
		if(LuaItemStatusNormalCount("o_mission514")>0) then
			LuaSay("������ֻ��@2��ש����@0����@4�߾�@0��@2�߾�����Ա��С�壩@0�����������@2�ý�ש���߱�ɽ�ש@0�ķ������õ���ש���ٻ��������Ͻɰɣ�")
		end
		if(LuaItemStatusNormalCount("o_mission214")>0)then
			if(LuaQueryTask("Tgj1atimes")<1)then
				LuaAddJx("combat_exp",floor(level/5-1)*50000,"Tgj1a") 
				LuaNotice("��˽��"..LuaQueryStr("name").."Ϊ�����������һ���ש����ô������齱����2Wͭ�ң������ҹ�֮��ģ����") 
				LuaAddTask("Tgj1atimes",1)--����
				DelItem("o_mission214",1)
				LuaGive("coin",20000,"Tgj1a")
			else 
				LuaSay("��שÿ��ֻ���Ͻ�һ�Σ�Ҳ�����ӹ�����Դ����ԴԽ�ߣ���������������Խ�ߣ�ע�Ᵽ�����Լ����ҽ�ש��")
			end 
		elseif(LuaItemStatusNormalCount("o_mission514")<1 and LuaItemStatusNormalCount("o_mission214")<1) then
			LuaSay("������û�н�ש����ע���Լ����񱳰���")
		end
	else
		LuaSetTask("Tgj1aday",GetCurrentDay())
		LuaDelTask("Tgj1atimes")
		LuaSay("�µ�һ�죬����һ���Ͻɽ�ש���ᣡ")
	end
elseif(answer=="Tgj1b")then       --��������
	local level=LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("Tgj1bday"))then            --
		if(LuaItemStatusNormalCount("o_mission213")>0)then
			if(LuaQueryTask("Tgj1btimes")<6)then       
				LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tgj1b") 
				LocalMsg("��˽��"..LuaQueryStr("name").."Ϊ�����������һ����ש����ô������齱���ͽ�Ǯ��") 
				LuaAddTask("Tgj1btimes",1)
				LuaGive("coin",1000,"Tgj1b")
			else
				LuaSay("ÿ��ֻ��ǰ3���н�������������������Ը�������䲻��������Ҳ�����ӹ�����Դ����ԴԽ�ߣ���������������Խ�ߣ�ש���������䣡")
			end
			DelItem("o_mission213",1)
       
		else
			LuaSay("������û����ש")
		end
	else
		LuaSetTask("Tgj1bday",GetCurrentDay())
		LuaDelTask("Tgj1btimes")
		LuaSay("�µ�һ�죬���ǰ3�ξ���ש����ö��⽱����")
	end
elseif(answer=="Tgj1c")then 
	local level=LuaQuery("level")
	if(LuaItemStatusNormalCount("o_mission212")>19)then
		LuaAddJx("combat_exp",floor(level/5-1)*1000,"Tgj1c") 
		LuaGive("coin",1000,"Tgj1c")
		DelItem("o_mission212",20)
	else
		LuaSay("��שÿ20��ɻ�ȡһ�ν�������������ש����20�飡�չ��������ɣ�")
	end
elseif(answer=="Tgj2")then---5%���ᴥ�������ý�ש�� 20%��������ש
	if(LuaItemStatusNormalCount("o_mission514")<1 and LuaQueryTask("Thgz")==1) then
		LuaSay("��˵�����ϵ�@2��ש���߱��˱���@0����������ĺ��ӣ����������ɣ�")
		local tS_skill={  --ɱ��
				{1,"����","task_kill/mon_008/Thgz_1",40},----level<=15
				{2,"����","task_kill/mon_008/Thgz_2",50},----level<=22
				{3,"����","task_kill/mon_020/Thgz_3",40},----level<=28
				{4,"ص���ڱ�","task_kill/mon_025/Thgz_4",40},----level<=35
				{5,"��Ҷ��","task_kill/mon_030/Thgz_5",40},----level<=40
				{6,"��Ҷ��","task_kill/mon_030/Thgz_6",50},----level>40
				}
		local t
		t=LuaQueryTask("hgz_dj")
		LuaDelTask(tS_skill[t][3])---ɾ��ɱ�ּ�����
		LuaDelTask("Thgz")
		LuaDelTask("hgz_dj")
	end
	if(LuaQuery("rightanswer")>0)then 
		if(LuaQuery("zcount")>20)then
			if(LuaQuery("rightanswer") <5)then
				LuaSay("��ʾ�����ڸղŵĴ����У������@3"..LuaQuery("rightanswer").."����Ŀ��С��5���⣬�㲻�ܻ��@2��ש����@0����")
			else
				LuaSay("��ʾ�����ڸղŵĴ����У������@3"..LuaQuery("rightanswer").."����Ŀ.")
				LuaSay("��ϲ�㣬�ɹ���ȡ��һ��@2��ש����@0���ٵ�@4�߾�@0��@2�߾�����Ա��С�壩@0����������������@2��ש���߱�ɽ�ש@0��")
				LuaNotice("�����"..LuaQueryStr("name").."��������������@2��ש����@0һ�飬��ҿ�ȥ��ɱ������ש���߰ɣ�")
				LuaGive("o_mission514",1,"Tgj2")
			end
			LuaDel("rightanswer")
			LuaDelTask("Twdtype")
		else
			LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("@3����","jx")
			AddMenuItem("@3����","fq")
		end
	else        
		if(LuaQueryTask("Tgjtztime") == GetCurrentMinute())then
			LuaSay("���Ƶ��̫�죬1���Ӻ������ɣ�")
		else
			if(GetCurrentDay()~=LuaQueryStrTask("Ac_45numday")) then
				LuaSetTask("Ac_45num",0)
				LuaSetTask("Ac_45numday",GetCurrentDay())
			end
			local day=GetCurrentDay()
			LuaSay("������@2"..GeGJMC().."��@0�������ڳǳ�ǽ������@7��ש��ש@0���ɣ��������۵���ǳ�ǽ������@7��ש@0���ɵġ�")
			LuaSay("����˷ѣ����ܲ�����ʣ�ͻ�����һҹ֮�������ڵ�@2��ש@0�������@3��ש����@0(@4��ש��ש@0���Ʋ�����....)��������������һ����������֣����Ȳ�˼��ȡ���Դ˳ͽ䣡")
			LuaSetTask("Tgjtztime",GetCurrentMinute())
			r=LuaRandom(10)                        --���������ש
			if(LuaQueryTask("Ac_45num")<50)then
				if(LuaQueryStr("country_id")=="200" or LuaQueryStr("country_id")=="201" or LuaQueryStr("country_id")=="202")then
				else
					if(day=="2012-6-18"  or  day=="2012-6-19" or day=="2012-6-20" or day=="2012-6-21")then ---2012��6��19��~21�ջ
						local rr=LuaRandom(100)
						if(rr==0 and rr<=1)then
							LuaGive("o_mission528",1,"Ac_45") ---��ʯ
							LuaSay("��ϲ������@3��ʯ@0����ڼ�2012��6��19��~21�գ�������Լ������еĽ�����NPC�ʹ�߻�ȡ�������Ʒ��")
						elseif(rr>=2 and rr<7)then
							LuaGive("o_mission527",1,"Ac_45") ---��ʯ
							LuaSay("��ϲ������@8��ʯ@0����ڼ�2012��6��19��~21�գ�������Լ������еĽ�����NPC�ʹ�߻�ȡ�������Ʒ��")
						elseif(rr>=8 and rr<38)then
							LuaGive("o_mission526",1,"Ac_45") ---��ʯ
							LuaSay("��ϲ������@9��ʯ@0����ڼ�2012��6��19��~21�գ�������Լ������еĽ�����NPC�ʹ�߻�ȡ�������Ʒ��")
						end
						LuaAddTask("Ac_45num",1)
						LuaSay("������ש��"..LuaQueryTask("Ac_45num").."�Σ�50��֮�󽫲����ٻ��ʯͷ����")
					end
				end
			end
			
			if(r==0)then
 				if(LuaQuery("rightanswer")==0) then  
					if(LuaItemStatusNormalCount("o_mission214")<1) then
						if(LuaItemStatusNormalCount("o_mission514")<1) then
							LuaSay("����������ˣ���������Ŀ��Ϊ20����@2���5��������Ŀ@0������õ�1��@2��ש����@0�Ľ���")
							AddMenuItem("@7�Ƿ����","")
							AddMenuItem("@3��ʼ����","begin")
							AddMenuItem("@3������","noanswer")
						else
							LuaSay("��������@2��ש����@0�������ٴλ�����˴�����ᡣ")
							LuaSay("��@4�߾�@0��@2�߾�����Ա��С�壩@0��ȡ@3����@0@7���߱��ש@0����������������@2��ש���߱�ɽ�ש@0��")
						end
					else
						LuaSay("��������@2��ש@0�������ٴλ�����˴�����ᣬ���@4����������@0@4���ҿⷿ�ܹ�@0���Ͻɺ�������")
					end
				end 
			elseif(r<=2)then
				if(LuaItemStatusNormalCount("o_mission213")<6)then
					LuaSay("Ŭ������ѽ��....")
					LuaSay("���������ڵ���һ��@2��ש@0��")
					LuaNotice("@2"..LuaQueryStr("name").."@0Ŭ������ǽ�ţ��������ڵ���һ���ֵ���ǵ���ש��")
					LuaGive("o_mission213",1,"Tgj2")
				else
					LuaSay("��������ש����5��������Я��������ש�ˣ���@4����������@0@4���ҿⷿ�ܹ�@0���Ͻɺ�������!")
				end
			elseif(r<=7)then
				LuaSay("Ŭ������ѽ��....")
				LuaSay("������Щ���ֻ�ڵ���һ����ͨ��@2��ש@0��")
				LuaGive("o_mission212",1,"Tgj2")
			else
				LuaSay("���¶��ˣ�û�ڵ��κ�ש��")
			end     
		end 
	end
elseif(answer=="begin") then
	a=LuaRandom(5)
	LuaSetTask("Twdtype",a)
	LuaSet("zcount",0) 
	if(LuaQueryTask("Twdtype")==0) then 
		TaskProcess("A")
        elseif(LuaQueryTask("Twdtype")==1) then
		TaskProcess("B")
        elseif(LuaQueryTask("Twdtype")==2) then
		TaskProcess("C")
        elseif(LuaQueryTask("Twdtype")==3) then
		TaskProcess("D")
        elseif(LuaQueryTask("Twdtype")==4) then
		TaskProcess("G")
        end
        
elseif(answer=="noanswer") then
	LuaSay("��ʾ����ש���Ի�ȡ����������") 
elseif(answer=="jx") then
	if(LuaQueryTask("Twdtype")==0) then  
		TaskProcess("A")
        elseif(LuaQueryTask("Twdtype")==1) then 
		TaskProcess("B")
        elseif(LuaQueryTask("Twdtype")==2) then 
		TaskProcess("C")
        elseif(LuaQueryTask("Twdtype")==3) then
		TaskProcess("D")
        elseif(LuaQueryTask("Twdtype")==4) then
		TaskProcess("G")
        end
elseif(answer=="fq") then
	LuaSet("zcount",20)


end
LuaSendMenu()
return 1
end


