NPCINFO = {
serial="58" ,
base_name="zhuxu",
icon=2576,
NpcMove=2576,
name="����" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��ʱ���ܻص��ҵĹ��簡...",
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
		if((LuaQueryTask("Tsnpc_42")==1 or LuaQueryTask("Tsnpc_42")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_42")
		if(LuaQueryTask("Tsnpc_42")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_42")==1 or LuaQueryTask("Tenpc_42")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_42")
		if(LuaQueryTask("Tenpc_42")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tbprw003")==3 or LuaQueryTask("Tbprw003")==4)then
		AddTopSayMenuItem("@2̽�����ơ�ÿ�ա�","Tbprw003")
		havetask2=1
	end
	if(LuaQueryTask("T853") == 1 or LuaQueryTask("T853") == 2)then
		AddTopSayMenuItem("@2���վ��ѡ����顿","T853")
		if (LuaItemCount("o_mission302")>=1)then
		havetask2 =1
		end
	end

	if(LuaQueryTask("T470")==1) then
	        AddTopSayMenuItem("@2���̱��������顿","T470")
		havetask2 =1
	end
	if(LuaQueryTask("T473") == 1 or LuaQueryTask("T473") == 2)then
		AddTopSayMenuItem("@2��ս���ߡ�BOSS��","T473")
		if(LuaItemCount("o_mission315")>=1) then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T474") == 1 )then
		AddTopSayMenuItem("@2�Ե���������ѭ����","T474")
		havetask2 =1
	end

	if(LuaQueryTask("T476") == 1 or LuaQueryTask("T476") == 2)then
		AddTopSayMenuItem("@2���ա����顿","T476")
		if (LuaItemCount("o_mission340")>=1)then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T477") == 1 )then
		AddTopSayMenuItem("@2���񡾾��顿","T477")
		havetask2 =1
	end
		AddTopSayMenuItem("������ˮ�ӵ�","jrfshd")
	
	if(LuaQueryTask("T302")==12 and LuaQueryTask("T302L")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302L")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T471") == 1)then
		AddTopSayMenuItem("@2�������������顿","T471")
		havetask4 =1
	end
	if(LuaQueryTask("T472") == 1)then
		AddTopSayMenuItem("@2��������2�����顿","T472")
		havetask4 =1
	end
	if(LuaQueryTask("T475") == 1 )then
		AddTopSayMenuItem("@2��ˮ�滼�����顿","T475")
		havetask4 =1
	end
--�����ǻ�ɫ�ʺŲ���
	if(LuaQueryTask("T853") == 0 and level>=28)then
		AddTopSayMenuItem("���վ��ѡ����顿","T853")
		havetask1 =1
	end
	if( level>=28 and LuaQueryTask("T474") == 0 and level<33 and LuaQueryTask("T471") == 99)then
		AddTopSayMenuItem("�Ե���������ѭ����","T474")
		havetask1 =1
	end
	if(LuaQueryTask("T471") == 0 and LuaQueryTask("T853") == 99)then
		AddTopSayMenuItem("�������������顿","T471")
		havetask1 =1
	end
	if(LuaQueryTask("T471") == 99 and LuaQueryTask("T472") == 0)then
		AddTopSayMenuItem("��������2�����顿","T472")
		havetask1 =1
	end
	if(level>=29 and LuaQueryTask("T473") == 0)then
		AddTopSayMenuItem("��ս���ߡ�BOSS��","T473")
		havetask1 =1
	end
	if(LuaQueryTask("T475") == 0 and level>=29)then
		AddTopSayMenuItem("��ˮ�滼�����顿","T475")
		havetask1 =1
	end
	if(LuaQueryTask("T476") == 0 and LuaQueryTask("T475") == 99)then
		AddTopSayMenuItem("���ա����顿","T476")
		havetask1 =1
	end
	if(level>=29 and LuaQueryTask("T477") == 0 and LuaQueryTask("T476") == 99)then
		AddTopSayMenuItem("���񡾾��顿","T477")
		havetask1 =1
	end
	
	if(LuaQueryTask("T470")==0  and level>=30 and LuaQueryTask("T472") == 99) then
	        AddTopSayMenuItem("���̱��������顿","T470")
	        havetask1 =1
	end
--�����ǻ�ɫ�ʺŲ���

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
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end
return 1
------------------------------------------------
	elseif(answer=="jrfshd") then
		ChangeMap("lu_fshd")

elseif(answer=="liaotian") then
	LuaSay("�����Ϸ��ѹ�Ҳ������֮��...��ʵ������ĺ����ȥ")
	
elseif(answer=="T302L") then
	   if(LuaQueryTask("T302L")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("���򣺺��˻���Ϸ�д���أ�")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302L",99)
	   UpdateMenu()
	   end
elseif(answer=="T853"  and LuaQuery("level")>=25)then
	 if(LuaQueryTask("T853") == 0)then
	 LuaSay("���򣺸���˵��@3��ǫ@0���������Ϸ��?�Ҳ�����ȫ�����㣡����......�������õ�@2��ǫ���彣@0���ҷ������㣡")
	 LuaSetTask("T853",1)
	 AddLog("���վ��ѡ����顿",853)
	 UpdateTopSay("ȥ��ˮ֮�����ǫҪ�������彣")
	 UpdateMenu()
	 elseif(LuaQueryTask("T853")==1) then
	 LuaSay("�����㻹û��Ҫ��@2��ǫ���彣@0��������@4��ˮ֮��@0")
	 elseif(LuaQueryTask("T853")==2) then
		if (LuaItemCount("o_mission302")>=1)then
		LuaSay("�������Ȼ��@2��ǫ���彣��@0")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T853jl")
		end

	 end
	elseif(answer=="T853jl")then
	if (LuaItemCount("o_mission302")>=1)then
		LuaSetTask("T853",99)
		LuaAddJx("combat_exp",274000,"T853")
		DelItem("o_mission302",1)
		DelLog("853")
		UpdateMenu()
		end
elseif(answer=="T471" )then
	if(LuaQueryTask("T471") == 0)then
		LuaSay("���򣺱���@3�޼�@0��ǿ��׳����񱱷���Щ���˲��ҽ����Ϸ�����Ϊ������ˮ֮����һ����@3����@0������������!")
		LuaSay("�����޼������ʧ���أ������Ѿ������߽⡣����ͬ�������Ϸ���Ҫ����Ҳ��û�п��ܣ�ͬ�����⵽���ߵ�Ϯ��!")
		LuaSay(""..LuaQueryStr("name")..":����ȥ������߰ɣ�")
		LuaSay("����"..LuaQueryStr("name").."����������һ������ô���Ĺ����ߣ�ȥ����30��@2��ˮ��@0�����֪����Щ����������ˣ�")
		LuaSay("�������������������������࣬�����ɴ������ж���ľ��齱��Ŷ@!")
		LuaSetTask("T471",1)
		LuaSetTask("task_kill/mon_023/T471",1)
		UpdateTopSay("����30����ˮ��")
		AddLog("�������������顿",471)
		UpdateMenu()
	elseif(LuaQueryTask("T471")==1) then
		if(LuaQueryTask("task_kill/mon_023/T471")>=31) then
			LuaSay("���򣺲�����")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T471jl")
			else
			LuaSay("�����㻹ûɱ��30��@2��ˮ��@0��")
			UpdateTopSay("ɱ��30����ˮ����������")
			end
	end
		elseif(answer=="T471jl")then
		        if(LuaQueryTask("T471")==1) then
					if(LuaQueryTask("task_kill/mon_023/T471")>=31) then
					if(TeamCount()>=2)then
						LuaAddJx("combat_exp",304000,"T471")
					else
						LuaAddJx("combat_exp",274000,"T471")
					end
					LuaGive("coin",2400,"T471")
					--31ͷ�� �̼���
					LuaGive("e_head011",1,3,"T471")
					LuaAddAchievementSchedule("Task_num",1)
					LuaDelTask("task_kill/mon_023/T471")
					DelLog("471")
					LuaSetTask("T471",99)
					UpdateMenu()
					end
			end
elseif(answer=="T472")then
	if(LuaQueryTask("T472") == 0) then
		LuaSay("�����벻����������˸���ʵ��������ˣ����Ϸ�����30��@2��ˮ��@0�ɣ�")
		LuaSetTask("T472",1)
		LuaSetTask("task_kill/mon_024/T472",1)
		UpdateTopSay("����30����ˮ��")
		AddLog("��������2�����顿",472)
		UpdateMenu()
	elseif(LuaQueryTask("T472")==1) then
		if(LuaQueryTask("task_kill/mon_024/T472")>=31) then
			LuaSay("���򣺴�����Ȼ��ͬ���죡")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T472jl")
			else
			LuaSay("�����㻹ûɱ��30��@2��ˮ��@0��")
			UpdateTopSay("ɱ��30����ˮ����������")
			end
	end
		elseif(answer=="T472jl")then
		        if(LuaQueryTask("T472")==1) then
				if(LuaQueryTask("task_kill/mon_024/T472")>=31) then
				LuaAddJx("combat_exp",274000,"T472")
				LuaGive("coin",800,"T472")
				if( LuaQueryStr("class")=="wu")then   --���ͣ�29�� ��
					if(LuaRandom(5)==1)then
						LuaGive("e_falchion008",1,2,"T472")
					else
						LuaGive("e_falchion008",1,1,"T4723")
					end
				elseif(LuaQueryStr("class")=="xian")then --ıʿ��29�� ��
					if(LuaRandom(5)==1)then
						LuaGive("e_pen005",1,2,"T472")
					else
						LuaGive("e_pen005",1,1,"T472")
					end
				elseif(LuaQueryStr("class")=="shen")then--սʿ��29�� ��
					if(LuaRandom(5)==1)then
						LuaGive("e_falchion008",1,2,"T472")
					else
						LuaGive("e_falchion008",1,1,"T472")
					end
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_024/T472")
				DelLog("472")
				LuaSetTask("T472",99)
				UpdateMenu()
				end
			end
elseif(answer=="T473")then
	if(LuaQueryTask("T473") == 0) then
		LuaSay("���򣺻���...ֻ�д�����˸���Ī��ı��£�����ͳһ���£�")
		LuaSay(""..LuaQueryStr("name").."���������������ȥն����@2����@0��")
		LuaSay("������@2����@0����ǿ�󣬵���Щ׼�����У�����@220������ɢ@0�����ң�Ȼ���Ҹ������������ںδ���")
		LuaSay("@1��ܰ��ʾ@0������������ӣ����������ɱboss���л�����@530�༶��ɫ����һ��@0����������Խ�࣬����Խ��")
		LuaSay("@1��ܰ��ʾ@0��boss�����Ǹ����һ��ɱ��boss���ˣ�ף����ˣ�")
		LuaSetTask("T473",1)
		AddLog("��ս���ߡ�BOSS��",473)
		UpdateTopSay("׼����@220������ɢ@0")
		UpdateMenu()
	elseif(LuaQueryTask("T473") == 1) then
		if(LuaItemCount("o_drug_hp3")>=20)then
		LuaSay("�������ߵ�����֮������@4��ˮ�����ĵĺӵ�@0�������Ϸ���㴫�͹�ȥ��")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("��ս����","YES","")
		AddMenuItem("�ٵȵ�","NO","")
		UpdateTopSay("��ȡ����֮��")
		else
		LuaSay("���򣺴�������Я����@2����ɢ@0����20����")
		UpdateTopSay("׼������20������ɢ")
		end
	elseif(LuaQueryTask("T473") == 2) then
		if(LuaItemCount("o_mission315")>=1)then
			LuaSay("���򣺴��������ν���Ī�Ⱑ��")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T473jl")
			else
			LuaSay("�����㻹ûɱ@2����@0,��ȡ@2����֮��@0��")
			UpdateTopSay("��ȡ����֮����������")
			end
	end

	elseif(answer=="YES") then
		if(LuaQueryTask("T473") == 1) then
		LuaSetTask("T473",2)
		AddLog("��ս���ߡ�BOSS��",473)
		UpdateMenu()
		end
		ChangeMap("lu_fshd")
	elseif(answer=="NO") then
		LuaSay("����׼�����˾͸�����һ����")
	elseif(answer=="T473jl")then
		        if(LuaQueryTask("T473")==2) then
				if(LuaFreeBag()>=1)then
					if(LuaItemCount("o_mission315")>=1) then
					LuaAddJx("combat_exp",520000,"T473")
					LuaGive("coin",10000,"T473")
					if(LuaQueryTask("Ttaozhuang30B") == 0) then
					LuaGive("e_clothes166",1,2,"T473")
					LuaSetTask("Ttaozhuang30B",99)
					end
					LuaAddAchievementSchedule("Task_num",1)
					DelItem("o_mission315",LuaItemCount("o_mission315"))
					LuaSetTask("T473",99)
					DelLog("473")
					UpdateMenu()
					end
			
				else
					LuaSay("��ʾ����ı����ռ䲻��1������������������ȡŶ@!")
				end
			end
elseif(answer=="T474")then
	if(LuaQueryTask("T474") == 0) then
		LuaSay("���򣺰�!����@3��ǫ@0���յ�������������⼣�߰ߣ�")
		LuaSay("����"..LuaQueryStr("name").."�����Ը����Ϸ��@2��ˮ��@0��ȡЩ�Ե�������@2��ˮ�Ե�@0���Ƿ�������ñ������ַ��������⣡")
		if(TeamCount()>=2)then
			LuaSay("�������������Ķӳ����Ͼ��ж౶�����״̬����ô��Ҳ�����ܵ�50%Ŷ@!")
		else
			LuaSay("����@2��ˮ�Ե�@0��ͬ���콨���Ӷ�ǰ������ӻ��к����Ķ��⾭��Ŷ")
		end
		LuaSetTask("T474",1)
		UpdateTopSay("��ȡ10����ˮ�Ե�")
		AddLog("�Ե���������ѭ����",474)
		UpdateMenu()
	elseif(LuaQueryTask("T474")==1) then
		if (LuaItemCount("o_mission311")>=10)then
		LuaSay("���򣺶�л������������ϧ��ô���Ե���ԶԶ������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T474jl")
		else
		LuaSay("���򣺴����ռ���@2��ˮ�Ե�@0����10����")
		UpdateTopSay("�ռ�10����ˮ�Ե��������Ұ�")
		end
	end
	elseif(answer=="T474jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T474")==1) then
			if(LuaItemCount("o_mission311")>=10) then
				local jingyan
				local money
				if(LuaQuery("level")<20)then
					money=200
				elseif(LuaQuery("level")<30)then
					money=300
				elseif(LuaQuery("level")<40)then
					money=400
				elseif(LuaQuery("level")<50)then
					money=500
				elseif(LuaQuery("level")<100)then
					money=600
				end
				if(TeamCount()>=2)then
					LuaSay("@1��ʾ�������Ӿ���ӳ�")
					jingyan=(75835+level^2*20)
				else
					jingyan=(40000+level^2*20)
				end
				LuaAddJx("combat_exp",jingyan,"T474")
				LuaGive("coin",money,"T474")
				if(LuaQueryTask("T474_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T474_a",99)
				end

				DelItem("o_mission311",10)
				DelLog("474")
				LuaSetTask("T474",0)
				UpdateMenu()
			end
                end
elseif(answer=="T475")then
	if(LuaQueryTask("T475") == 0) then
		LuaSay("����@2��ˮ��@0����һ��ʳ�ݵĺ��棬�Ѿ����ĳ��֣��ͷ��������Ϸ�����30��!")
		LuaSetTask("T475",1)
		LuaSetTask("task_kill/mon_023/T475",1)
		UpdateTopSay("����30����ˮ��")
		AddLog("��ˮ�滼�����顿",475)
		UpdateMenu()
	elseif(LuaQueryTask("T475")==1) then
		if(LuaQueryTask("task_kill/mon_023/T475")>=31) then
			LuaSay("���������Ǵ�����ģ�")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T475jl")
			else
			LuaSay("�����㻹ûɱ��30��@2��ˮ��@0��")
			UpdateTopSay("ɱ��30����ˮ����������")
			end
		end
		elseif(answer=="T475jl")then
		        if(LuaQueryTask("T475")==1) then
					if(LuaQueryTask("task_kill/mon_023/T475")>=31) then
					LuaAddJx("combat_exp",286000,"T475")
					LuaGive("coin",2200,"T475")
					LuaAddAchievementSchedule("Task_num",1)
					LuaDelTask("task_kill/mon_023/T475")
					DelLog("475")
					LuaSetTask("T475",99)
					UpdateMenu()
					end
			end

elseif(answer=="T476")then
	if(LuaQueryTask("T476") == 0) then
		LuaSay("����@2��ˮ��@0����һ����Ű����ʵ���Ϸ�ͷ��!")
		LuaSay("���򣺴˺���ɱ������ն����...������Ǻã������ɷ���Ϸ�ȥ@4��ˮ֮��@0��@3��ǫ@0�ָ��������")
		LuaSetTask("T476",1)
		UpdateTopSay("ȥ��ˮ�԰����ǫ�ָ����")
		AddLog("���ա����顿",476)
		UpdateMenu()
	elseif(LuaQueryTask("T476")==1) then
		LuaSay("����ȥ�ʺ�ǫ�أ�������@4��ˮ֮��@0")
	elseif(LuaQueryTask("T476")==2) then
		if (LuaItemCount("o_mission340")>=1)then
		LuaSay("���򣺺�����˪��ɱ��ҩ���ö�������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T476jl")
		end
	end
		elseif(answer=="T476jl")then
		        if(LuaQueryTask("T476")==2) then
					if (LuaItemCount("o_mission340")>=1)then
					LuaSetTask("T476",99)
					LuaAddJx("combat_exp",286000,"T476")
					LuaAddAchievementSchedule("Task_num",1)
					DelItem("o_mission340",1)
					DelLog("476")
					LuaSetTask("T476",99)
					UpdateMenu()
					end
			end
elseif(answer=="T477")then
	if(LuaQueryTask("T477") == 0) then
	LuaSay("���򣺰�@2ɱ��ҩ@0ɢ������һ�����������������ˮ�棬�����ǣ�һ��ʱ���ڣ��ݲ��ܵ����ϣ�ˮҲ���ò����ˣ�")
	LuaSay("������������øò���ʹ�ã�")
	UpdateTopSay("�����������������")
	AddLog("���񡾾��顿",477)
	AddMenuItem("ѡ���б�","","")
	AddMenuItem("��","YES2","")
	AddMenuItem("����","NO2","")
	end
elseif(answer=="YES2") then
	if(LuaQueryTask("T477") == 0) then
	LuaSay(""..LuaQueryStr("name").."�������Ǳ���ģ������ںܳ�һ��ʱ���￴����������ˮ����")
	LuaSay("�����Ǿ����������ԣ�������Ⱥ���棡")
	LuaAddJx("combat_exp",286000,"T477")
	LuaAddAchievementSchedule("Task_num",1)
	DelLog("477")
	LuaSetTask("T477",99)
	UpdateMenu()
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("T477") == 0) then
	LuaSay(""..LuaQueryStr("name")..":���¾��ã������α겻�α��ķ�����һ��ʹ�ã���������Ⱦˮ�Ͳ�")
	LuaSay("�����������Լ��ǣ�����˳����Ȼ�ɣ�")
	LuaAddJx("combat_exp",286000,"T477")
	LuaAddAchievementSchedule("Task_num",1)
	DelLog("477")
	LuaSetTask("T477",99)
	UpdateMenu()
	end



	elseif(answer=="T470") then
		if(LuaQueryTask("T470")==0) then
	    	LuaSay("�����Ϸ���Ϊ����������������Ӫ���ڶ����������ѹ�����")
	    	LuaSay("����@3"..LuaQueryStr("name").."@0Ӣ���������Σ��������Ϸ����ݣ������Ϸ����޼���������ʱ��@2����@0ȥ��@4��������@0��@3����@0��")
		LuaGive("o_mission303",1,"T470")
		LuaSetTask("T470",1)
		AddLog("���̱��������顿",470)-------��־�����
	    	UpdateMenu()
		elseif(LuaQueryTask("T470")==1 and LuaItemCount("o_mission303")==0) then
		LuaSay("�����Ϸ����ô��Ҫ�����ｻ���㣬��ȴ����Ū����!")
           	LuaSay("�����ٸ���һ�λ��ᣬ�����Ϸ����޼����µ�@2����@0ȥ��@4��������@0��@3����@0��")
           	LuaGive("o_mission303",1,"T470")
           	UpdateMenu()
		elseif(LuaQueryTask("T470")==1 and LuaItemCount("o_mission303")==1) then
		LuaSay("���򣺸���������Ϸ����޼���������ʱ��@2����@0ȥ��@4��������@0��@3����@0��")
		end

elseif(answer=="Tbprw003")then
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw003")==3)then
			LuaSay(""..LuaQueryStr("name").."������Զ����������������ǰ����̹�����������⣬��֪ǰ���ɷ�ָ��һ����")
			LuaSay("�����ѵ�����ô��ѧ���Ҿ͸���ָ��ָ�㡣������֣�����Ҫ�Ƕ���Ҫʵʩ������Ҫ�ͷ����������������������")
			LuaSetTask("Tbprw003",4)
			UpdateMenu()

		elseif(LuaQueryTask("Tbprw003")==4)then
				LuaSay("���򣺿�ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
		end
	else
		LuaSay("���������������@2̽�����ơ�ÿ�ա�δ��ɣ������Զ����ã���@4����@0�����½�����ɣ�")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaDelTask("Tbprw003")
		UpdateMenu()
	end

elseif(answer=="Tsnpc_42")then
	if(LuaQueryTask("Tsnpc_42")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_42",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_42")==2)then
		LuaSay("�������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_42")then
	if(LuaQueryTask("Tenpc_42")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�����ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_42",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_42")==2)then
		LuaSay("���򣺻��Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end

