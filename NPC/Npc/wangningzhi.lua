NPCINFO = { 
serial="50" ,
base_name="wangningzhi",
icon=2567,
NpcMove=2567,
name="����֮" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="���а����������",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0

	local level= LuaQuery("level")
	local T371=LuaQueryTask("T371")
	local T391=LuaQueryTask("T391")
	local T392=LuaQueryTask("T392")
	local T393=LuaQueryTask("T393")
	local T394=LuaQueryTask("T394")
	local T395=LuaQueryTask("T395")
	local T384= LuaQueryTask("T384")

	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_35")==1 or LuaQueryTask("Tsnpc_35")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_35")
		if(LuaQueryTask("Tsnpc_35")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_35")==1 or LuaQueryTask("Tenpc_35")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_35")
		if(LuaQueryTask("Tenpc_35")==1)then
			havetask2=1
		end
	end
	if(T371==1)then
		AddTopSayMenuItem("@2��¶��ݡ����顿@0","T371")
		havetask2=1
	end
	if(T391==1 or T391==2)then
		AddTopSayMenuItem("@2����Ӣ�ۡ����顿@0","T391")
		if(T391==2)then
			havetask2=1
		end
	end

	if(T393==1)then
		AddTopSayMenuItem("@2�Ƴ�а����BOSS��@0","T393")
		if( LuaItemCount("o_mission190")>=1)then
			havetask2=1
		else
			havetask4=1
		end
	end

	if(T384==1 or T384==2)then
		AddTopSayMenuItem("@2ǧ�ﹲ濾꡾���顿@0","T384")
		if(LuaQueryTask("T384")==1)then
		havetask2=1
		end
	end


	if(T392==0 and level>=19)then
		AddTopSayMenuItem("����֮�ա����顿","T392")
		havetask1=1
	end
	if(T393==0 and T392==99 and level>=20)then
		AddTopSayMenuItem("�Ƴ�а����BOSS��","T393")
		havetask1=1
	end
	if(T395==0 and T393==99)then
		AddTopSayMenuItem("��̨���ԡ����顿","T395")
		havetask1=1
	end
--	if(T394==0 and level>=18 and level<25)then
--		AddTopSayMenuItem("���γ���ѭ����","T394")
--		havetask=1
--	end
----------------------------------------------------------------------------------
	if(T392==1)then
		AddTopSayMenuItem("@2����֮�ա����顿@0","T392")
		havetask4=1
	end
	if(T394==1)then
		AddTopSayMenuItem("@2���γ���ѭ����@0","T394")
		havetask4=1
	end
-----------------------------------------------------------
	
	if(T395==1)then
		AddTopSayMenuItem("@2��̨���ԡ����顿@0","T395")
	end
	if(level>=20)then
		AddTopSayMenuItem("��������","Tshi")
	end
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
elseif(answer=="liaotian") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("����֮��@!�����Ͻǵ�PK��������Է���boss���ϳ���һ�����֣�����������ֶ�Ӧ�Ľ������������boss�ˣ�")
	else
		LuaSay("����֮��@!�����Ǻż�������Է���boss���ϳ���һ�����֣�����������ֶ�Ӧ�Ľ������������boss�ˣ�")
	end

elseif(answer=="Tshi")then
	ChangeMap("lu_dlsc")
	
elseif(answer=="T384")then
	if(LuaQueryTask("T384")==1)then
		LuaSay(LuaQueryStr("name").."����������ҽ����@2����@0�����㣬��Ȼ���ǲ�����������������Ǻ������㣡")
		LuaSay("����֮����лǰ����棬�鷳����ת����ˣ���Ȼ���������������������һ�������ģ������������壡")
		LuaSetTask("T384",2)
		AddLog("ǧ�ﹲ濾꡾���顿",384)
		UpdateMenu()
	elseif(LuaQueryTask("T384")==2)then
		LuaSay("����֮���鷳����ת���ҷ����ҵ���Ϣ")
	end

elseif(answer=="T371")then         --------------------------------------------��¶��ݡ����顿
	if(LuaQueryTask("T371")==1)then
	LuaSay("����֮�����ǣ�����ô��������ѵ�Ҳ�Ǳ�а������")
	LuaSay(""..LuaQueryStr("name").."�����ѵ�����@3����֮@0��@3л���@0�ķ�����㻹���Ű����������۰����Ҿ���Ϊ��������Ź���������εġ�")
	AddMenuItem("�������","")
	AddMenuItem("��ȡ����","T371jl")
	UpdateMenu()
	end
	elseif(answer=="T371jl")then      -------------------------------------371����
	if(LuaQueryTask("T371")==1)then
	LuaSetTask("T371",99)
	DelLog("371")
	LuaAddJx("combat_exp",121000,"T370")--����
	UpdateMenu()
	end
elseif(answer=="T391")then                  ----------------------------------------����Ӣ�ۡ����顿
		if(LuaQueryTask("T391")==0)then
		LuaSay("����֮���������о綾������Σ�ڵ�Ϧ�����ڼ����ҩ���Σ����������@210�����ڸϻؽ�������@0��@3ҩƷ����@0Ѱ���ҩ��")
		LuaSay(LuaQueryStr("name").."����һ��Ҫ���ס������ȥ�ٻأ�")
		LuaSetTask("T391",1)
		LuaSetTask("T391time",GetCurrentTime())
		AddLog("����Ӣ�ۡ����顿",391)
		LuaSay("����֮��ȥ@4��������@0��@3ҩƷ����@0Ѱ���ҩ��")
		UpdateTopSay("ȥ����������ҩƷ����Ѱ���ҩ")
		UpdateMenu()

		elseif(LuaQueryTask("T391")==1)then
		LuaSay("����֮����������Σ�ڵ�Ϧ������������ȥ�ٻذ���")

		elseif(LuaQueryTask("T391")==2)then
		local tgtime=GetCurrentTime()-LuaQueryTask("T391time")
		if(tgtime<=600 and LuaItemCount("o_mission181")==2)then
		LuaSay("����֮�����µľ���֮�������պ󱨴����а�����ң����ƶ�������")
		AddMenuItem("�������","")
		AddMenuItem("��ȡ����","T391jl")
		else
		LuaSay("����֮������ô���ڲŻ��������Һ����ɢ����������������ҩ�ɾ��ˣ�")
		LuaSetTask("T391",99)
		DelLog("391")
		DelItem("o_mission181",2)
		UpdateMenu()
		end
		end

		elseif(answer=="T391jl")then      ------------------------------391����
		if(LuaQueryTask("T391")==2 and LuaItemCount("o_mission181")==2)then
		LuaSetTask("T391",99)
		DelLog("391")
		DelItem("o_mission181",2)
		LuaAddJx("combat_exp",99000,"T391")
		if(LuaRandom(10)==1)then  --16������ 
			LuaGive("e_necklace002",1,2,"T391")--����
		else
			LuaGive("e_necklace002",1,1,"T391")--����
		end
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end

elseif(answer=="T392")then                 --------------------------------����֮�ա����顿
		if(LuaQueryTask("T392")==0)then
		LuaSay("����֮����л���¾���֮��������Ǹý�����ʱ���ˣ����͸���ȥ@4ɽկ����@0��ɱ@210ֻ�����10ֻ��ʦ����@0��ظ���")
		LuaSay("����֮��ѧ����Ӳ���������°빦�������ܽ�����������ѡ�")
		LuaSetTask("T392",1)
		LuaSetTask("task_kill/mon_014/T392",1)
		LuaSetTask("task_kill/mon_015/T392",1)
		AddLog("����֮�ա����顿",392)
		UpdateTopSay("��ɱ�������ʦ������10��")
		UpdateMenu()

		elseif(LuaQueryTask("T392")==1)then
		local a=LuaQueryTask("task_kill/mon_014/T392")-1
		local b=LuaQueryTask("task_kill/mon_015/T392")-1
		if(a>9 and b>9)then
		LuaSay("����֮���ɵ�Ư������Щ���񼫵�а��֮ͽ���ڵõ�������Ӧ�õı�Ӧ��")
		AddMenuItem("�������","")
		AddMenuItem("��ȡ����","T392jl")
		UpdateMenu()
		else
		LuaSay("����֮�����ɱ��@2"..a.."������@0,@2"..b.."����ʦ����@0����ȥ��ɱ@210�������10����ʦ����@0�ɣ�")
		end
		end
		elseif(answer=="T392jl")then   --------------------------392����
		if(LuaQueryTask("T392")==1)then
		if(LuaQueryTask("task_kill/mon_014/T392")>=11 and LuaQueryTask("task_kill/mon_015/T392")>=11)then
		LuaSetTask("T392",99)
		DelLog("392")
		LuaDelTask("task_kill/mon_014/T392")
		LuaDelTask("task_kill/mon_015/T392")
		if(TeamCount()>=2)then
			LuaAddJx("combat_exp",138800,"T392")
		else
			LuaAddJx("combat_exp",118800,"T392")
		end
		if(LuaRandom(5)==1)then
			LuaGive("e_shoes004",1,2,"T392") --19��Ь��
		else
			LuaGive("e_shoes004",1,1,"T392")
		end
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end

elseif(answer=="T393")then          -------------------------------�Ƴ�а����BOSS��
		if(LuaQueryTask("T393")==0)then
			LuaSay("����֮���������ˣ���ʵ����������а�岻����һ���ܿ��ƵĿ��ܣ����������������������@4���ε��@0�������Ƴ�а����")
			if(LuaQueryStr("class")=="shen") then      --սʿ
				LuaSay("����֮��ɱ��@2���а��@0����ܻ��@1��ʦа��@0�������һ�Ѽ��������������")
			elseif(LuaQueryStr("class")=="wu") then       --����
				LuaSay("����֮��ɱ��@2���а��@0����ܻ��@1��ʦа��@0�������һ�Ѽ��������������")
			elseif(LuaQueryStr("class")=="xian") then       --ıʿ
				LuaSay("����֮��ɱ��@2���а��@0����ܻ��@1��ʦа��@0�������һ�Ѽ���ǿ���������")
			end
			LuaSay("����֮�����������ǰȥŶ��ף��ɹ�@!")
			LuaSay("@1��ܰ��ʾ@0����boss�뱣��2�����ϰ����ռ䣬��������ò�����Ʒװ��@!")
			LuaSay("@1��ܰ��ʾ@0��boss�����Ǹ����һ��ɱ��boss���ˣ�ף����ˣ�")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("����֮��@!�����Ͻǵ�PK��������Է���boss���ϳ���һ�����֣�����������ֶ�Ӧ�Ľ������������boss�ˣ�")
			else
				LuaSay("@7�������boss@0��@!�����Ǻż�������Է���boss���ϳ���һ�����֣�����������ֶ�Ӧ�Ľ������������boss�ˣ�")
			end
			LuaSetTask("T393",1)
			LuaGive("o_drug_hp2",10)
			AddLog("�Ƴ�а����BOSS��",393)
			UpdateTopSay("�������������а��")
			UpdateMenu()
		elseif(LuaQueryTask("T393")==1)then
			if(LuaItemCount("o_mission190")>=1)then
			LuaSay("����֮������������ı�������������֮�����������Թ���һ�ΰ�����������!")
			if(LuaQueryStr("class")=="shen") then      --սʿ
				LuaSay("����֮�����������Ѿ��õ���@1��ʦа��@0�ˣ���ϧ�����ڻ��費���ˣ�������Ե�Ҿͽ�����������ɣ�")
			elseif(LuaQueryStr("class")=="wu") then       --����
				LuaSay("����֮�����������Ѿ��õ���@1��ʦа��@0�ˣ���ϧ�����ڻ��費���ˣ�������Ե�Ҿͽ�����������ɣ�")
			elseif(LuaQueryStr("class")=="xian") then       --ıʿ
				LuaSay("����֮�����������Ѿ��õ���@1��ʦа��@0�ˣ���ϧ�����ڻ��費���ˣ�������Ե�Ҿͽ�����������ɣ�")
			end
			LuaSay("����֮������������һ��ǿ��ʯ����������ǿ�����������������ĸ���������ԣ���������Ҫǿ����װ�����ȷ������ѡ��ǿ�������ܽ���ǿ���ˡ�")
			LuaSay("����֮������װ������ͨ�����ϵ���Ƕ�����װ�����ԣ���������Ҫ��Ƕ��װ�����ȷ������ѡ����Ƕ������ܽ�����Ƕ�ˡ�")
			LuaSay("����֮�����ĵĸ����㣬�������Լ�װ�������Բ����⣬����Ե��������ϵķ��������������ϴ����Ŷ@!")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","T393jl")
			UpdateMenu()
			else
			LuaSay("����֮��ս��δƽ���Ͻ�ȥ@4�����@0����@3���а��@0�ɣ�")
			LuaSay("@7��ܰ��ʾ@0��@!��ɱ����񲻹��з��Ľ��������ܵõ�ǿ������Ŷ��")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("����֮��@!�����Ͻǵ�PK��������Է���boss���ϳ���һ�����֣�����������ֶ�Ӧ�Ľ������������boss�ˣ�")
			else
				LuaSay("@7�������boss@0��@!�����Ǻż�������Է���boss���ϳ���һ�����֣�����������ֶ�Ӧ�Ľ������������boss�ˣ�")
			end
			end
		end
		elseif(answer=="T393jl")then             --------------------------393����
			if(LuaQueryTask("T393")==1 and LuaItemCount("o_mission190")>=1)then
				if(LuaFreeBag()>=2)then
					LuaSetTask("T393",99)
					DelItem("o_mission190",1)
					DelLog("393")
					if(TeamCount()>=2)then
						LuaAddJx("combat_exp",350000,"T393")
					else
						LuaAddJx("combat_exp",275000,"T393")
					end
					if(LuaQueryTask("TtaozhuangB") == 0) then
					LuaGive("e_clothes165",1,2,"T393")
					LuaSetTask("TtaozhuangB",99)
					end
					LuaGive("o_ybsc002j",1,"T393")--ǿ��ʯ	
					LuaAddAchievementSchedule("Task_num",1)
					LuaGive("coin",2000,"T393")
					UpdateMenu()
					SendCommand("call=����֮���ղ������������ǿ��ʯ���ܴ���ȵ�����װ��������Ŷ��ǿ��ʯ�ǿ�����@3Ԫ���̳�@0�е�@4���ߵ�@0�й���Ŷ@!|0|101")
					LuaSay("������Ϊ�����̳ǣ�ϣ���ܶ�����������")

				else
					LuaSay("��ʾ���뱣������2��ı����ռ䡣")
				end
			end

elseif(answer=="T394")then                      -----------------------------------���γ���ѭ����
		if(LuaQueryTask("T394")==0)then
		LuaSay("����֮����˵���@2ɽկ���ε���ʦ����@0���ǰԵ������͸���ȥ�����ǵ��ѵ������@320ֻ��ʦ����@0��ظ��ң�")
		LuaSetTask("T394",1)
		LuaSetTask("task_kill/mon_015/T394",1)
		AddLog("���γ���ѭ����",394)
		UpdateTopSay("ȥɽկ��������20ֻ��ʦ������ظ���")
		UpdateMenu()

		elseif(LuaQueryTask("T394")==1)then
		local a=LuaQueryTask("task_kill/mon_015/T394")-1
		if(a>19)then
		LuaSay("����֮��������Щ��ʦ�������Ҳ����𣬹���...")
		AddMenuItem("�������","")
		AddMenuItem("��ȡ����","T394jl")
		UpdateMenu()
		else
		LuaSay("����֮�����ɱ��@2"..a.."ֻ��ʦ����@0,��ȥ��ɱ@220ֻ��ʦ����@0��")
		end
		end

		elseif(answer=="T394jl")then        -------------------------------394����
		if(LuaQueryTask("T394")==1)then
		if(LuaQueryTask("task_kill/mon_015/T394")>=21)then
		local money
		if(LuaQuery("level")<20)then
			money=200
		elseif(LuaQuery("level")<30)then
			money=300
		elseif(LuaQuery("level")<40)then
			money=400
		elseif(LuaQuery("level")<40)then
			money=500
		elseif(LuaQuery("level")<100)then
			money=600
		end
		local jinyan
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T394_first")~=1)then
			jinyan=((level^2*20+28000)*1.4)
		else
			jinyan=(level^2*20+28000)
		end
		LuaDelTask("T394")
		DelLog("394")
		LuaDelTask("task_kill/mon_015/T394")
		LuaAddJx("combat_exp",jinyan,"T394")
		LuaGive("coin",money,"T394")
		if(LuaQueryTask("T394_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T394_a",99)
		end

		UpdateMenu()
		end
		end
		      		       
elseif(answer=="T395")then
	if(LuaQueryTask("T395")==0)then
		LuaSay("����֮��СӢ�ۣ�������̫�����ˡ�������Ѿ��ǿ��Զ���һ��������ˣ����и��ߵ���ս�ˡ�")
		LuaSay("����֮��ȥ��@4������Ӫ@0��@3����ʹ��@0�ɣ�������������԰�����̨��ӭ��������ҵ���ս�����б������Ŷ��@!")
		LuaSay("����֮���ص������ǣ�@4�ӽ���������@0����ȥ@4������Ӫ@0�ˡ�")
		LuaSetTask("T395",1)
		AddLog("��̨���ԡ����顿",395)
		UpdateMenu()
		if(LuaQueryTask("T393")==99)then
				AddMenuItem("������������Ӫ���","")
				AddMenuItem("ȷ�ϴ�����������Ӫ���","Tcs_jck")
		end
	elseif(LuaQueryTask("T395")==1)then
		LuaSay("����֮����ȥ@4������Ӫ@0��@3����ʹ��@0����һ���Լ���ʵ���ɡ���@4������������@0�Ϳ��Ե����ˡ�@!")
		if(LuaQueryTask("T393")==99)then
				AddMenuItem("������������Ӫ���","")
				AddMenuItem("ȷ�ϴ�����������Ӫ���","Tcs_jck")
		end
	end
elseif(answer=="Tcs_jck")then
	ChangeMap("lu_jkc",85,332)
elseif(answer=="Tsnpc_35")then
	if(LuaQueryTask("Tsnpc_35")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("����֮�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_35",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_35")==2)then
		LuaSay("����֮�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_35")then
	if(LuaQueryTask("Tenpc_35")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("����֮���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_35",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_35")==2)then
		LuaSay("����֮�����Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end 

