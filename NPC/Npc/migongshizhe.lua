NPCINFO = { 
serial="141" ,
base_name="migongshizhe" ,
icon=2576,
NpcMove=2576 ,
name="�Թ�ʹ��" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE",
lastsay="��������ĬĬ���ڽ����﷢��",               
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0
        local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
	fail = LuaQueryTask("fail")	--ȫ�ֱ���
	xiuxi = LuaQueryTask("xiuxi")	--ȫ�ֱ���
        Txmg1= LuaQueryTask("Txmg1")	--ȫ�ֱ���
	award= LuaQueryTask("award")	--ȫ�ֱ�����������ǣ���ֹ��ˢ��
        AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("Txmg1")<15 and LuaQueryTask("fail")==0 and LuaQueryTask("xiuxi")==0)then
		AddTopSayMenuItem("@3������һ��","next")
	end
	if(LuaQueryTask("fail")==1)then
		AddTopSayMenuItem("@3�ٻ�ʹ��","wenti")
	end
	if(LuaQueryTask("IsNo1")==1)then
		AddTopSayMenuItem("@3��ȡ�ƺ�","lqchyes")
		AddTopSayMenuItem("@3����","lqchno")
	end
	if(LuaQueryTask("xiuxi")==1)then
		AddTopSayMenuItem("@3��Ϣ���","xiuxi")
	end
	if(LuaQueryTask("Txmg1")==15 and LuaQueryTask("award")==3)then
		AddTopSayMenuItem("@3��������","over")
	end
	if(LuaQueryTask("Txmg1")<15)then
		AddTopSayMenuItem("@3����Կ��","buykey")
	end
	if(LuaQueryTask("Txmg1")==5 or LuaQueryTask("Txmg1")==10 or LuaQueryTask("Txmg1")==15)then
		AddTopSayMenuItem("@3��ȡ����","xmgjl")
	end
	if(LuaQueryTask("award")~=3)then
		AddTopSayMenuItem("@3�鿴��ǰ����","look")
		AddTopSayMenuItem("@3���ҳ�ȥ","out")
	end
 return 1


  
elseif(answer=="next")then
	if((GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5) and GetCurrentHour()~=23)then
		if(LuaQueryTask("Txmg1")<5)then
			LuaAddTask("Txmg1",1)
			LuaDelTask("alopen")
			LuaDelTask("albuy")
			if(LuaQueryTask("Txmg1")==5)then
				if(LuaPublicQuery("publicSum")==0)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵���㣬�´��Թ��������һ����δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==1)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵���㣬�´��Թ�������ڶ�����δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==2)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵���㣬�´��Թ��������������δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==3)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵���㣬�´��Թ��������������δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==4)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵���㣬�´��Թ��������������δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==5)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵���㣬�´��Թ�������������Ѿ�������������ҿ��Է����Ų���Ѱ�������Ķ��ı�����")
				end
			end
			local r=LuaRandom(12)
			if    (r==0)then   ChangeMap("lu_xmigong1")
			elseif(r==1)then   ChangeMap("lu_xmigong2")
			elseif(r==2)then   ChangeMap("lu_xmigong3")
			elseif(r==3)then   ChangeMap("lu_xmigong4")
			elseif(r==4)then   ChangeMap("lu_xmigong5")
			elseif(r==5)then   ChangeMap("lu_xmigong6")
			elseif(r==6)then   ChangeMap("lu_xmigong7")
			elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("��ϲ�����������˲㣬��������򿪱��佫���ø�������棡")
			elseif(r==8)then   ChangeMap("lu_xmigong9") 
			elseif(r==9)then   ChangeMap("lu_xmigong10")
			elseif(r==10)then  ChangeMap("lu_xmigong11")
			elseif(r==11)then  ChangeMap("lu_xmigong12")
			end 
			
			UpdateMenu()
		elseif(LuaQueryTask("Txmg1")<=10)then
			if(LuaQueryTask("Txmg1")==5)then
				LuaSay("�Թ�ʹ�ߣ��������㣬�ղ����Ѿ�ͨ�������Ŀ������潫�Ƕ������ĺ�������˫�ؿ��飬��Ȼ����Կ����˳�������㺦�µĻ���")
				LuaSay("�Թ�ʹ�ߣ��ã���������ʼ�ش��ҵ����⣬�ش���ȷ������ʸ������һ�ء�")
			elseif(LuaQueryTask("Txmg1")==10)then
				LuaSay("�Թ�ʹ�ߣ������˿�����ô������ı��͵͵����ǰ�����㣬����һ�ؽ��Ǽ�ʱ���أ�ֻ��ʮ���ӣ���ϧʱ��Ŷ")
				LuaSay("�Թ�ʹ�ߣ��������ش��ҵ����һ�������")
			else		
				LuaSay("�Թ�ʹ�ߣ��ã���������ʼ�ش��ҵ����⣬�ش���ȷ������ʸ������һ�ء�")
			end
				local r=LuaRandom(14)
				if(r==0)then
					LuaSay("�Թ�ʹ�ߣ���������Խ���@3���϶һ���ÿ���ڱ�@0��")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("����Դ���������","NO_6","")--NO_6
					AddMenuItem("�������ϵ��������ƴ�","NO_6","")
					AddMenuItem("�����ǵ��н����˴�","NO6_ANSWER","")--NO6_ANSWER
				elseif(r==1)then
					LuaSay("�Թ�ʹ�ߣ���������Խ���@3ÿ����������@0��")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("��Դ����Թ�ʹ�ߴ�","NO_6","")
					AddMenuItem("�����ǵ����","NO_6","")
					AddMenuItem("�����ǵ��н����˴�","N06_ANSWER","")
				elseif(r==2)then
					LuaSay("�Թ�ʹ�ߣ���Ի���ʣ���Ի˵��������ȡ������һ������ȷ�ģ�")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("��Ի����","NO6_ANSWER")
					AddMenuItem("��Ի˵��","NO_6")
					AddMenuItem("����ȡ��","NO_6")
				elseif(r==3)then
					LuaSay("�Թ�ʹ�ߣ�������Դ�ȡǮ�ƺʹ����Ǯ��")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("�����ǵ����̴�","NO_6","")
					AddMenuItem("�������ϵĵ��̻�ƴ�","NO_6","")
					AddMenuItem("�������ϵ�Ǯׯ�ϰ崦","NO6_ANSWER","")				
				elseif(r==4)then
					LuaSay("�Թ�ʹ�ߣ���������򵽳��������","")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("�����ǵ����̴�","NO_6","")
					AddMenuItem("�������ϵ�Ǯׯ�ϰ崦","NO_6","")
					AddMenuItem("�����ǵ�ѱ��ʦ��","NO6_ANSWER","")
				elseif(r==5)then
					LuaSay("�Թ�ʹ�ߣ�������Խ��м�����","")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("�����ǵ����̴�","NO_6","")
					AddMenuItem("�������ϵĵ��̻�ƴ�","NO6_ANSWER","")
					AddMenuItem("�������ϵ�Ǯׯ�ϰ崦","NO_6","")
				elseif(r==6)then
					LuaSay("�Թ�ʹ�ߣ�����ͳһ�㿴���ĵ�һ��NPC��ʲô���֣�")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("�ϴ峤","NO_6")
					AddMenuItem("������","NO_6")
					AddMenuItem("�Ϲ�����","NO6_ANSWER")
				elseif(r==7)then---------------------------------------
					LuaSay("�Թ�ʹ�ߣ�������Թ���װ���벹Ѫ����ҩ�","")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("�������ϵĸ����̵��ƴ�","NO6_ANSWER","")
					AddMenuItem("�����ǵ��н����˴�","NO_6","")
					AddMenuItem("���������괦","NO_6","")
				elseif(r==8)then
					LuaSay("�Թ�ʹ�ߣ����������@3���е���@0��")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("�����ǵ����̴�","NO6_ANSWER","")
					AddMenuItem("�����ǵĸ�������Ա��","NO_6","")
					AddMenuItem("����Ľ��۴�","NO_6","")
				elseif(r==9)then
					LuaSay("�Թ�ʹ�ߣ���������Խ���@3���ɹ��ҵ���ز���@0��")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("����Ľ��۴�","NO6_ANSWER","")
					AddMenuItem("�����ǵĿ��Ӵ�","NO_6","")
					AddMenuItem("�����ǵ��Թ�ʹ�ߴ�","NO_6","")			
				elseif(r==10)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("�Թ�ʹ�ߣ����@3�򿪱�����")
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("���ϵͳ�ٵ��������","NO_6","")
						AddMenuItem("����˵��ٵ��������","NO6_ANSWER","")
						AddMenuItem("���ϵͳ�ٵ��ָ�ϼ�","NO_6","")
					else
						LuaSay("�Թ�ʹ�ߣ����@3�򿪱�����")
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("��ȡ�����ٰ�3��","NO_6","")
						AddMenuItem("��ȷ�ϼ��ٰ�3��","NO6_ANSWER","")
						AddMenuItem("��ȡ�����ٰ��Ǻż�","NO_6","")
					end
				elseif(r==11)then
					LuaSay("�Թ�ʹ�ߣ���������Խ���@3ÿ����������@0��")
					AddMenuItem("@7��ѡ��","")
					AddMenuItem("��Դ����Թ�ʹ�ߴ�","NO_6","")
					AddMenuItem("�����ǵĿ��Ӵ�","NO_6","")
					AddMenuItem("�����ǵ��н����˴�","NO6_ANSWER","")
				elseif(r==12)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("�Թ�ʹ�ߣ����@3��ȡ������Ϣ��")
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("����˵��ٵ��ָ�ϼ�","NO_6")
						AddMenuItem("����˵��ٵ��Ѱ·��","NO_6")
						AddMenuItem("���ϵͳ�ٵ��ָ�ϼ�","NO6_ANSWER")
					else
						LuaSay("�Թ�ʹ�ߣ����@3��ȡ������Ϣ��")
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("��ȡ�������ٰ��Ǻż�","NO_6")
						AddMenuItem("��Ҫʹ�òɼ�����","NO_6")
						AddMenuItem("��ȡ�������ٰ�7ָ��","NO6_ANSWER")
					end
				elseif(r==13)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("�Թ�ʹ�ߣ������ɫ�ڵ�ͼ�п�ס��,��ȷ�����ֲ��û�ͭ�ҵ������ǣ�") 
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("�޷����","NO_6")
						AddMenuItem("����ʹ���Զ�Ѱ·","NO6_ANSWER")
					else
						LuaSay("�Թ�ʹ�ߣ������ɫ�ڵ�ͼ�п�ס��,��ȷ�����ֲ��û�ͭ�ҵ������ǣ�")            
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("�޷����","NO_6")
						AddMenuItem("��ȡ�������ٰ�5��λ��","NO6_ANSWER")
						AddMenuItem("�������뿪","NO_6")
					end
				end
		elseif(LuaQueryTask("Txmg1")==11)then
				local shijiancha=(GetCurrentTime()-LuaQueryTask("Txmg1time_11"))
				if(shijiancha<=600)then
					LuaAddTask("Txmg1",1)
					LuaDelTask("albuy")
					LuaDelTask("alopen")
					LuaShowNotify("���Թ��Ļ������ռ�5���Թ������ҵ�NPC���ܽ���13��")
					local r=LuaRandom(12)
					if    (r==0)then   ChangeMap("lu_xmigong1")
					elseif(r==1)then   ChangeMap("lu_xmigong2")
					elseif(r==2)then   ChangeMap("lu_xmigong3")
					elseif(r==3)then   ChangeMap("lu_xmigong4")
					elseif(r==4)then   ChangeMap("lu_xmigong5")
					elseif(r==5)then   ChangeMap("lu_xmigong6")
					elseif(r==6)then   ChangeMap("lu_xmigong7")
					elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("��ϲ�����������˲㣬��������򿪱��佫���ø�������棡")
					elseif(r==8)then   ChangeMap("lu_xmigong9")
					elseif(r==9)then   ChangeMap("lu_xmigong10")
					elseif(r==10)then  ChangeMap("lu_xmigong11")
					elseif(r==11)then  ChangeMap("lu_xmigong12")
					end
					UpdateMenu()
				else
					LuaShowNotify("�Թ�ʹ�ߣ���ʱ������ʧ�ܣ�")
					LuaSetTask("Txmg",99)
					ChangeMap("lu_jkc")
					LuaDelTask("award")--ɾ���������
				end
		elseif(LuaQueryTask("Txmg1")==12)then --����ռ�����
			if(LuaItemCount("o_mission218")>=5)then
				LuaAddTask("Txmg1",1)
				LuaDelTask("albuy")
				LuaDelTask("alopen")
				LuaShowNotify("�ҵ�NPC��������ֱ�ӽ���һ�㣬��֮��һ����")
				local r=LuaRandom(12)
				if    (r==0)then   ChangeMap("lu_xmigong1")
				elseif(r==1)then   ChangeMap("lu_xmigong2")
				elseif(r==2)then   ChangeMap("lu_xmigong3")
				elseif(r==3)then   ChangeMap("lu_xmigong4")
				elseif(r==4)then   ChangeMap("lu_xmigong5")
				elseif(r==5)then   ChangeMap("lu_xmigong6")
				elseif(r==6)then   ChangeMap("lu_xmigong7")
				elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("��ϲ�����������˲㣬��������򿪱��佫���ø�������棡")
				elseif(r==8)then   ChangeMap("lu_xmigong9")
				elseif(r==9)then   ChangeMap("lu_xmigong10")
				elseif(r==10)then  ChangeMap("lu_xmigong11")
				elseif(r==11)then  ChangeMap("lu_xmigong12")
				end 
				DelItem("o_mission218",5)
				UpdateMenu()
			else
				LuaSay("�Թ�ʹ�ߣ�����Ҫ��5��@3�Թ�����@0���Ҵ�����ô�����Ǿ���@3�Թ��Ļ�@0����")
			end
		elseif(LuaQueryTask("Txmg1")==13)then
			local r13=LuaRandom(2)
			if(r13==0)then
				LuaAddTask("Txmg1",1)
				LuaDelTask("alopen")
				LuaDelTask("albuy")
				LuaShowNotify("���Թ��Ļ������ռ�10���Թ����ҵ�NPC���ܽ���15��")
				local r=LuaRandom(12)
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
				UpdateMenu()
			else
				LuaSay("�Թ�ʹ�ߣ�����Ѱ�����ڻ�����������ЪϢһ�����ټ���ǰ����")
				time13=GetCurrentTime()
				LuaSetTask("Txmg1time_13",time13)
				LuaSetTask("xiuxi",1)
				UpdateMenu()
			end
			

		elseif(LuaQueryTask("Txmg1")==14)then
			if(LuaItemCount("o_mission219")>=10)then
				LuaAddTask("Txmg1",1)
				LuaDelTask("alopen")
				LuaDelTask("albuy")
				ChangeMap("lu_xmigongbx")
				DelItem("o_mission219",10)
				UpdateMenu()
			else
				LuaSay("�Թ�ʹ�ߣ�����Ҫ��10��@3�Թ���@0���Ҵ�����ô�����Ǿ���@3�Թ��Ļ�@0����")
			end	
		end
	else
		LuaSay("�Թ�ʹ�ߣ������´��Թ���Ѿ�������Ŷ�����ܽ��н�����һ��Ĳ������������������ѡ��@3���ҳ�ȥ@0���㴫����������Ŷ@!")
	end
	elseif(answer=="NO_6")then
		if(LuaQueryTask("fail")==1)then
			LuaSay("�Թ�ʹ�ߣ����ִ���ˣ���һ����֮���������Ұ�")
			time=GetCurrentTime()
			LuaSetTask("Txmg1time_f",time)
		else
			LuaSay("�Թ�ʹ�ߣ���������Ĳ����������е���ô�вţ���һ����֮������������һ������ɣ�")
			LuaSetTask("fail",1)
			time=GetCurrentTime()
			LuaSetTask("Txmg1time_f",time)
			UpdateMenu()
		end

	elseif(answer=="NO6_ANSWER")then
			--LuaSay("�Թ�ʹ�ߣ������ˣ���ϲ���ý�����һ����ʸ�")   �˾�ֻ�����������ǰ���ʱ��Ż���������������������
			if(LuaQueryTask("fail")==1)then
				LuaDelTask("fail")
			end
			if(LuaQueryTask("Txmg1")==10)then
				local time=GetCurrentTime()
				LuaSetTask("Txmg1time_11",time)
			--[[elseif(LuaQueryTask("Txmg1")==9)then
				if(LuaPublicQuery("publicSum")==0)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵�ʮ�㣬�´��Թ��������һ����δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==1)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵�ʮ�㣬�´��Թ�������ڶ�����δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==2)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵�ʮ�㣬�´��Թ��������������δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==3)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵�ʮ�㣬�´��Թ��������������δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==4)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵�ʮ�㣬�´��Թ��������������δ��������ҿ�׷����")
				elseif(LuaPublicQuery("publicSum")==5)then
					LuaNotice("���@3"..LuaQueryStr("name").."@0�Ѿ�ͨ���˵�ʮ�㣬�´��Թ�������������Ѿ�������������ҿ��Է����Ų���Ѱ�������Ķ��ı�����")
				end]]
			end
			LuaAddTask("Txmg1",1)
			LuaDelTask("alopen")
			LuaDelTask("albuy")
			r=LuaRandom(12)
			if    (r==0)then   ChangeMap("lu_xmigong1")
			elseif(r==1)then   ChangeMap("lu_xmigong2")
			elseif(r==2)then   ChangeMap("lu_xmigong3")
			elseif(r==3)then   ChangeMap("lu_xmigong4")
			elseif(r==4)then   ChangeMap("lu_xmigong5")
			elseif(r==5)then   ChangeMap("lu_xmigong6")
			elseif(r==6)then   ChangeMap("lu_xmigong7")
			elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("��ϲ�����������˲㣬��������򿪱��佫���ø��������")
			elseif(r==8)then   ChangeMap("lu_xmigong9")
			elseif(r==9)then   ChangeMap("lu_xmigong10")
			elseif(r==10)then  ChangeMap("lu_xmigong11")
			elseif(r==11)then  ChangeMap("lu_xmigong12")
			end 
			UpdateMenu()
elseif(answer=="xmgjl")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if((GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5) and GetCurrentHour()~=23)then
		if(LuaQueryTask("Txmg1")==5)then
			if(LuaQueryTask("award")==0)then
				LuaSay("�Թ�ʹ�ߣ��¸ҵ������ˣ����Ѿ�ͨ��ǰ���Ŀ���")
				local exp=level^2*10+level*2000                                
				LuaAddJx("combat_exp",exp,"Txmg1")
				local r1=LuaRandom(10)
				LuaSay("�Թ�ʹ�ߣ��콵��⣬���@3���˱���@0������Ŭ���ĳɹ�")
						LuaNotice("���@3"..LuaQueryStr("name").."@0���´��Թ�������д�ͷɥ����׼���뿪��ʱ��һֻ@2���˱���@0������ͷ")
						LuaGive("o_box002",1,"Txmg1")
				if(r1==0)then
					LuaSay("�Թ�ʹ�ߣ�����@3�ر�ͼ@0����Ϊ�����͸����")
					LuaGive("o_cangbaotu",1,"Txmg1")
				elseif(r1==1 or r1==2)then
					LuaSay("�Թ�ʹ�ߣ����@3˫��������[1Сʱ]@0����Ϊ�����͸����")
					LuaGive("o_state008j",1,"Txmg1")
				end
				LuaSetTask("award",1)
				UpdateMenu()

			else
				LuaSay("�Թ�ʹ�ߣ����Ѿ���ȡ��ǰ���Ľ�����")
			end
		elseif(LuaQueryTask("Txmg1")==10)then
			if(LuaQueryTask("award")~=2)then
				LuaSay("�Թ�ʹ�ߣ��¸ҵ������ˣ����Ѿ�ͨ��ǰʮ��Ŀ���")
				local exp=level^2*10+level*3000                                
				LuaAddJx("combat_exp",exp,"Txmg1")
				local r2=LuaRandom(15)
				if(r2>=0 and r2<5)then
					LuaSay("�Թ�ʹ�ߣ����@3˫��������[1Сʱ]@0����Ϊ�����͸����")
					LuaGive("o_state008j",1,"Txmg1")
				elseif(r2>=5 and r2<10)then
					LuaSay("�Թ�ʹ�ߣ����@3˫����@0����Ϊ�����͸����")
					LuaGive("o_state012j",1,"Txmg1")
				elseif(r2>=10 and r2<15)then
					LuaSay("�Թ�ʹ�ߣ����@3˫����@0����Ϊ�����͸����")
					LuaGive("o_state001j",1,"Txmg1")
				elseif(r2==15)then
					LuaSay("�Թ�ʹ�ߣ��콵��⣬���@3���˱���@0Ϊ��Ŭ���ĳɹ�")
					LuaNotice("���@3"..LuaQueryStr("name").."@0���´��Թ������Ѱ��ʱ��һֻ���˱���������ͷ")
					LuaGive("o_box002",1,"Txmg1")
				end
				LuaSetTask("award",2)
				UpdateMenu()
			else
				LuaSay("�Թ�ʹ�ߣ����Ѿ���ȡ����ʮ��Ľ���")
			end
		elseif(LuaQueryTask("Txmg1")==15)then
			if(LuaQueryTask("award")~=3)then
				LuaSay("�Թ�ʹ�ߣ��¸ҵ��ˣ���˳����ȫ��ͨ�����Թ�")
				if(LuaPublicQuery("publicSum")==0)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number1",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0�ڽ�����´��Թ��������ж�õ�һ��")
					LuaSay("�Թ�ʹ�ߣ����ڱ����´��Թ������Ѱ����л�õ�"..LuaPublicQuery("publicSum").."�����һ��@3��ë��@0�ƺţ���ȡ��ǰ�ƺŽ��Ḳ����ԭ�еĳƺš�")
					LuaSetTask("IsNo1",1)                                               --��һ����ǣ���ȡ�ƺ�
					LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Txmg1")	--5����������һ
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1")	--4����������һ
					LuaGive("coin",60000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0���´��Թ��������л��@3��һ��@0����ô������������ٻ�@3��ë��@0���ƺ�")
					LuaSetTask("award",3)
					UpdateMenu()
				elseif(LuaPublicQuery("publicSum")==1)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number2",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0�ڽ�����´��Թ��������ж�õڶ���")
					LuaSay("�Թ�ʹ�ߣ����ڱ����´��Թ������Ѱ����л�õ�"..LuaPublicQuery("publicSum").."��")
					LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Txmg1")	--5����������һ
					LuaGive("coin",50000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0���´��Թ��������л��@3�ڶ���@0����ô�����������ҿ�ȥ������")
					LuaSetTask("award",3)
					UpdateMenu()
				elseif(LuaPublicQuery("publicSum")==2)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number3",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0�ڽ�����´��Թ��������ж�õ�����")
					LuaSay("�Թ�ʹ�ߣ����ڱ����´��Թ������Ѱ����л�õ�"..LuaPublicQuery("publicSum").."��")
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4����������һ
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4����������һ
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4����������һ
					LuaGive("coin",40000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0���´��Թ��������л��@3������@0����ô�����������ҿ�ȥ������")
					LuaSetTask("award",3)
					UpdateMenu()
				elseif(LuaPublicQuery("publicSum")==3)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number4",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0�ڽ�����´��Թ��������ж�õ�����")
					LuaSay("�Թ�ʹ�ߣ����ڱ����´��Թ������Ѱ����л�õ�"..LuaPublicQuery("publicSum").."��")
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4����������һ��
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4����������һ
					LuaGive("coin",30000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0���´��Թ��������л��@3������@0����ô�����������ҿ�ȥ������")
					LuaSetTask("award",3)
					UpdateMenu()
				elseif(LuaPublicQuery("publicSum")==4)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number5",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0�ڽ�����´��Թ��������ж�õ�����")
					LuaSay("�Թ�ʹ�ߣ����ڱ����´��Թ������Ѱ����л�õ�"..LuaPublicQuery("publicSum").."��")
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4����������һ
					LuaGive("coin",20000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0���´��Թ��������л��@3������@0����ô�����������ҿ�ȥ������")
					LuaSetTask("award",3)
					UpdateMenu()
				else
					LuaPublicAdd("publicSum",1)
					LuaSay("�Թ�ʹ�ߣ����ǵ�"..LuaPublicQuery("publicSum").."��ͨ��������´��Թ�������")
					local exp=level^2*100+level*5000                                
					LuaAddJx("combat_exp",exp,"Txmg1")
					local r=LuaRandom(10)
					if(r==0 or r==1)then
						LuaSay("�Թ�ʹ�ߣ����@3˫��������[1Сʱ]@0����Ϊ�����͸����")
						LuaGive("o_state008j",1,"Txmg1")	
					elseif(r==2 or r==3 or r==8)then
						LuaSay("�Թ�ʹ�ߣ����@3˫����@0����Ϊ�����͸����")
						LuaGive("o_state012j",1,"Txmg1")
					elseif(r==4 or r==5 or r==9)then
						LuaSay("�Թ�ʹ�ߣ����@3˫����@0����Ϊ�����͸����")
						LuaGive("o_state001j",1,"Txmg1")
					elseif(r==6)then
						LuaSay("�Թ�ʹ�ߣ�����@3�ر�ͼ@0����Ϊ�����͸����")
						LuaGive("o_cangbaotu",1,"Txmg1")
					elseif(r==7)then
						LuaSay("�Թ�ʹ�ߣ��콵��⣬���@3���˱���@0������Ŭ���ĳɹ�")
						LuaNotice("���@3"..LuaQueryStr("name").."@0���´��Թ�������д�ͷɥ����׼���뿪��ʱ��һֻ@2���˱���@0������ͷ")
						LuaGive("o_box002",1,"Txmg1")
					end
					LuaSetTask("award",3)
					UpdateMenu()
				end
				LuaSetTask("Txmigong",99)

			else
				LuaSay("�Թ�ʹ�ߣ����Ѿ���ȡ����ʮ���Ľ�����")
			end
		end
	else
		LuaSay("�Թ�ʹ�ߣ����Ѿ�������ȡ������ʱ����Ŷ���´��Թ��ÿ������һ�������嶨�ھ��У���ӭ�´βμ�@!")
	end
-------------�ƺ���ȡ----------------
elseif(answer=="lqchyes")then
	if((GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5) and GetCurrentHour()~=23)then
		LuaSay("�Թ�ʹ�ߣ���ȡ��@3��ë��@0���ƺųɹ���")
		SetTitleMeg(102)	
		LuaNotice("���@3"..LuaQueryStr("name").."@0Ϊ�����´��Թ�������ĵ�һ�����ɹ���ȡ�ƺ�@2��ë��@0")
		LuaDelTask("IsNo1")
		UpdateMenu()
	else
		LuaSay("�Թ�ʹ�ߣ����Ѿ�������ȡ������ʱ����Ŷ���´��Թ��ÿ������һ�������嶨�ھ��У���ӭ�´βμ�@!")
	end
elseif(answer=="lqchno")then
	LuaSay("�Թ�ʹ�ߣ���ѡ���˱�����ǰ�ƺţ�������õ��´��Թ��������һ����@3��ë��@0���ĳƺ�")
				

elseif(answer=="wenti")then
	local shijiancha=(GetCurrentTime() - LuaQueryTask("Txmg1time_f"))
	if(shijiancha<=60)then
		LuaSay("�Թ�ʹ�ߣ�ʱ�仹û��һ������")
	else
		LuaSay("�Թ�ʹ�ߣ���ʼ�ش��ҵ������")
		LuaSay("�Թ�ʹ�ߣ���Ҫ����Ŷ")
		local r=LuaRandom(14)
		if(r==0)then
			LuaSay("�Թ�ʹ�ߣ���������Խ���@3���϶һ���ÿ���ڱ�@0��")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("����Դ���������","NO_6","")--NO_6
			AddMenuItem("�������ϵ��������ƴ�","NO_6","")
			AddMenuItem("�����ǵ��н����˴�","NO6_ANSWER","")--NO6_ANSWER
		elseif(r==1)then
			LuaSay("�Թ�ʹ�ߣ���������Խ���@3�������@0��")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("��Դ����Թ�ʹ�ߴ�","NO_6","")
			AddMenuItem("�����ǵ����","NO_6","")
			AddMenuItem("�����ǵ�ѱ��ʦ��","N06_ANSWER","")
		elseif(r==2)then
			LuaSay("�Թ�ʹ�ߣ���Ի���ʣ���Ի˵��������ȡ������һ������ȷ�ģ�")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("��Ի����","NO6_ANSWER")
			AddMenuItem("��Ի˵��","NO_6")
			AddMenuItem("����ȡ��","NO_6")
		elseif(r==3)then
			LuaSay("�Թ�ʹ�ߣ�������Դ�ȡǮ�ƺʹ����Ǯ��")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("�������ϵ����̴�","NO_6","")
			AddMenuItem("�����ǵĵ��̻�ƴ�","NO_6","")
			AddMenuItem("�����ǵ�Ǯׯ�ϰ崦","NO6_ANSWER","")				
		elseif(r==4)then
			LuaSay("�Թ�ʹ�ߣ���������򵽳��������","")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("�������ϵ����̴�","NO_6","")
			AddMenuItem("�����ǵ�Ǯׯ�ϰ崦","NO_6","")
			AddMenuItem("�����ǵ�ѱ��ʦ��","NO6_ANSWER","")
		elseif(r==5)then
			LuaSay("�Թ�ʹ�ߣ�������Խ��м�����","")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("�������ϵ����̴�","NO_6","")
			AddMenuItem("�����ǵĵ��̻�ƴ�","NO6_ANSWER","")
			AddMenuItem("�����ǵ�Ǯׯ�ϰ崦","NO_6","")
		elseif(r==6)then
			LuaSay("�Թ�ʹ�ߣ�����ͳһ�㿴���ĵ�һ��NPC��ʲô���֣�")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("�ϴ峤","NO_6")
			AddMenuItem("Ƚ��","NO_6")
			AddMenuItem("�Ϲ�����","NO6_ANSWER")
		elseif(r==7)then---------------------------------------
			LuaSay("�Թ�ʹ�ߣ�������Թ���װ���벹Ѫ����ҩ�","")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("�������ϵĸ����̵��ƴ�","NO6_ANSWER","")
			AddMenuItem("�����ǵ��н����˴�","NO_6","")
			AddMenuItem("�����˾����Ӵ�","NO_6","")
		elseif(r==8)then
			LuaSay("�Թ�ʹ�ߣ����������@3���е���@0��")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("�����ǵ����̴�","NO6_ANSWER","")
			AddMenuItem("�����ǵĸ�������Ա��","NO_6","")
			AddMenuItem("����Ľ��۴�","NO_6","")
		elseif(r==9)then
			LuaSay("�Թ�ʹ�ߣ���������Խ���@3���ɹ��ҵ���ز���@0��")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("����Ľ��۴�","NO6_ANSWER","")
			AddMenuItem("�����ǵĽ��崦","NO_6","")
			AddMenuItem("�����ǵ��Թ�ʹ�ߴ�","NO_6","")			
		elseif(r==10)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("�Թ�ʹ�ߣ����@3�򿪱�����")
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("���ϵͳ�ٵ��������","NO_6","")
						AddMenuItem("����˵��ٵ��������","NO6_ANSWER","")
						AddMenuItem("���ϵͳ�ٵ��ָ�ϼ�","NO_6","")
					else
						LuaSay("�Թ�ʹ�ߣ����@3�򿪱�����")
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("��ȡ�����ٰ�3��","NO_6","")
						AddMenuItem("��ȷ�ϼ��ٰ�3��","NO6_ANSWER","")
						AddMenuItem("��ȡ�����ٰ��Ǻż�","NO_6","")
					end
		elseif(r==11)then
			LuaSay("�Թ�ʹ�ߣ���������Խ���@3ÿ����������@0��")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("��Դ�����������","NO_6","")
			AddMenuItem("�������ϵ��������˴�","NO_6","")
			AddMenuItem("�����ǵ��н����˴�","NO6_ANSWER","")
		elseif(r==12)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("�Թ�ʹ�ߣ����@3��ȡ������Ϣ��")
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("����˵��ٵ��ָ�ϼ�","NO_6")
						AddMenuItem("����˵��ٵ��Ѱ·��","NO_6")
						AddMenuItem("���ϵͳ�ٵ��ָ�ϼ�","NO6_ANSWER")
					else
						LuaSay("�Թ�ʹ�ߣ����@3��ȡ������Ϣ��")
						AddMenuItem("@7��ѡ��","")
						AddMenuItem("��ȡ�������ٰ��Ǻż�","NO_6")
						AddMenuItem("��Ҫʹ�òɼ�����","NO_6")
						AddMenuItem("��ȡ�������ٰ�7ָ��","NO6_ANSWER")
					end
		elseif(r==13)then
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("�Թ�ʹ�ߣ������ɫ�ڵ�ͼ�п�ס��,��ȷ�����ֲ��û�ͭ�ҵ������ǣ�") 
				AddMenuItem("@7��ѡ��","")
				AddMenuItem("�޷����","NO_6")
				AddMenuItem("����ʹ���Զ�Ѱ·","NO6_ANSWER")
			else
				LuaSay("�Թ�ʹ�ߣ������ɫ�ڵ�ͼ�п�ס��,��ȷ�����ֲ��û�ͭ�ҵ������ǣ�")            
				AddMenuItem("@7��ѡ��","")
				AddMenuItem("�޷����","NO_6")
				AddMenuItem("��ȡ�������ٰ�5��λ��","NO6_ANSWER")
				AddMenuItem("�������뿪","NO_6")
			end
		end
		UpdateMenu()
	end

		
elseif(answer=="xiuxi")then
	local shijiancha=(GetCurrentTime() - LuaQueryTask("Txmg1time_13"))
	if(shijiancha<=60)then
		LuaSay("�Թ�ʹ�ߣ�ʱ�仹û��һ������")
	else

		local r13=LuaRandom(2)
		if(r13==0)then
			LuaAddTask("Txmg1",1)
			LuaDelTask("alopen")
			LuaDelTask("albuy")
			local r=LuaRandom(12)
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
			LuaDelTask("xiuxi")
			UpdateMenu()
		else
			LuaSay("�Թ�ʹ�ߣ������������ӻ�����Ҫ�����Ϣ�����ܼ���ǰ�����ٵ�һ����֮�������Ұ�")
			time13=GetCurrentTime()
			LuaSetTask("Txmg1time_13",time13)
			UpdateMenu()
		end

	end

	--------------------------------------------------------

	
elseif(answer=="out")then
	AddMenuItem("@3��ȷ���뿪��","")
	LuaSay("@1��ʾ�������������һ���뿪���콫���ܼ����μ�@0@3�´��Թ������@0@1�ˡ�@0")
	AddMenuItem("@3��","no")
	AddMenuItem("@1��","yes")
	elseif(answer=="yes")then
		LuaShowNotify("��ʮ���ƣ���Ϊ�ϲߣ�")
		ChangeMap("lu_jkc")
		LuaSetTask("Txmg1",99)
		UpdateMenu()
	elseif(answer=="no")then
		LuaSay("�Թ�ʹ�ߣ��¸ҵ���ǰ�߰ɣ�����ı����ڵ����㣡")

elseif(answer=="buykey")then
	LuaSay("�Թ�ʹ�ߣ�������͵͵�Ĵ���һ��Կ�ף�������˺ܶ�ѣ�����������Ҳ����ȥѰ���˱���������һ�Ѱ�")
	LuaSay("�Թ�ʹ�ߣ���Ը�⻨500ͭ��������@3�Թ�Կ��@0��")
	AddMenuItem("@7����ѡ��","")
	AddMenuItem("����","nobuy")
	AddMenuItem("��","yesbuy")

	elseif(answer=="nobuy")then
		LuaSay("�Թ�ʹ�ߣ�ʡ�Լ��ù�Ȼ�Ǻã�����Ҳ�����������һ��Ѱ���Ļ���")
	elseif(answer=="yesbuy")then
		if(LuaQueryTask("albuy")==1) then
			LuaSay("�Թ�ʹ�ߣ��������Ѿ��ڴ����һ��Կ����,������һ������ٴι���")
		else 
			if(LuaItemCount("coin")>=500) then
				LuaSay("�Թ�ʹ�ߣ�����Կ��ȥ׷���Ѱ���ΰ�@!")
	    			LuaGive("o_mission217",1,"Txmg1")
				LuaGive("coin",-500,"Txmg1")
				LuaSetTask("albuy",1)
				UpdateMenu()
			else
				LuaSay("�Թ�ʹ�ߣ��������ͭ�Ҳ���")
			end
		end

elseif(answer=="look")then
	LuaSay("�Թ�ʹ�ߣ��㵱ǰ���ڵĲ���Ϊ@3"..LuaQueryTask("Txmg1").."@0")
	--LuaSay("�����ã���ǰ��ͼ�ű����"..MapName().."")

elseif(answer=="over")then
	if((GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5) and GetCurrentHour()~=23)then
		LuaSay("�Թ�ʹ�ߣ�ǧ��Ӣ�ۣ��������")
		ChangeMap("lu_jkc")
		LuaSetTask("Txmg1",99)
		UpdateMenu()
	else
		LuaSay("�Թ�ʹ�ߣ����Ѿ�������ȡ������ʱ����Ŷ���´��Թ��ÿ������һ�������嶨�ھ��У���ӭ�´βμ�@!")
		ChangeMap("lu_jkc")
	end
end

LuaSendMenu()
return 1
end 