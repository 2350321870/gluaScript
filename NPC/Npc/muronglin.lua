NPCINFO = {
serial="75" ,
base_name="muronglin",
icon=2588,
NpcMove=2588,
name="Ľ����" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��ڵ���û�кú�Т���Ҹ�",
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
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_60")==1 or LuaQueryTask("Tsnpc_60")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_60")
		if(LuaQueryTask("Tsnpc_60")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_60")==1 or LuaQueryTask("Tenpc_60")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_60")
		if(LuaQueryTask("Tenpc_60")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T641") ==1 )  then
		AddTopSayMenuItem("@2���ӵ���ı�����顿@0","T641")
	end

	if(LuaQueryTask("T644") ==1 or LuaQueryTask("T644")==2)  then
		AddTopSayMenuItem("@2���Ӻ��������顿@0","T644")
		if(LuaQueryTask("T644")==2) then
			havetask2 =1
		end
	end

	if(LuaQueryTask("T646")==1) then
		AddTopSayMenuItem("@2��ȡ���Ρ����顿","T646")
	end
	if(LuaQueryTask("T647")==1 or LuaQueryTask("T647")==2) then
		AddTopSayMenuItem("@2��ȴ��ӡ����顿@0","T647")
		if(LuaItemStatusNormalCount("o_material_58") >= 1 and LuaItemStatusNormalCount("o_mission039") >= 1) then
			havetask2=1
		end
	end

	if(LuaQueryTask("T636")==1 or LuaQueryTask("T636")==2) then
		AddTopSayMenuItem("@2����֮�顾���顿@0","T636")
		if(LuaQueryTask("T636")==1 ) then
		havetask2=1
		end
	end
	if(LuaQueryTask("T638")==1 or LuaQueryTask("T638")==2) then
		AddTopSayMenuItem("@2Ȱ��֮�������顿@0","T638")
		havetask2 =1
	end
	if(LuaQueryTask("T745")==1 or LuaQueryTask("T745")==2) then
		AddTopSayMenuItem("@2���̵Ĺػ������顿@0","T745")
		if(LuaQueryTask("T745")==1)then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T630")==1 or LuaQueryTask("T630")==2)then
		AddTopSayMenuItem("@2���׵Ľ��͡����顿","T630")
		if(LuaQueryTask("T630")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T670")==1 or LuaQueryTask("T670")==2)then
		AddTopSayMenuItem("@2���Ӳ��š����顿","T670")
		if(LuaItemCount("o_mission352")>=1 and LuaQueryTask("T670")==1)then
			havetask2=1
		end
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T642") ==1 )  then
		AddTopSayMenuItem("@2��ı�ĺ�������顿@0","T642")
		havetask4 =1
	end
	if(LuaQueryTask("T645")==1 or LuaQueryTask("T645")==2 or LuaQueryTask("T645")==3)then
		AddTopSayMenuItem("@2����������顿","T645")
		if(LuaQueryTask("T645")==3)then
		havetask4=1
		end
	end
	if(LuaQueryTask("T648")==1 or LuaQueryTask("T648")==2) then
		AddTopSayMenuItem("@2���ӵĹػ������顿@0","T648")
		havetask4=1
	end
	if(LuaQueryTask("T649")==1 ) then
		AddTopSayMenuItem("@2���ӵİ�Σ��ѭ����@0","T649")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T641") ==0 and level>=43)  then
		AddTopSayMenuItem("���ӵ���ı�����顿","T641")
		havetask1 =1
	end
	if(LuaQueryTask("T642") ==0 and level>=43)  then
		AddTopSayMenuItem("��ı�ĺ�������顿","T642")
		havetask1 =1
	end
	if(LuaQueryTask("T644") ==0 and LuaQueryTask("T645")==99 )  then
		AddTopSayMenuItem("���Ӻ��������顿","T644")
		havetask1 =1
	end
	if(LuaQueryTask("T645")==0 and level>=45)then
		AddTopSayMenuItem("����������顿","T645")
		havetask1=1
	end
	if(LuaQueryTask("T646")==0 and level>=50 and LuaQueryTask("T644")==99) then
		AddTopSayMenuItem("��ȡ���Ρ����顿","T646")
		havetask1=1
	end
	if(LuaQueryTask("T647") ==0  and level>=44  and LuaQueryTask("T670")==99)  then
		AddTopSayMenuItem("��ȴ��ӡ����顿","T647")
		havetask1 =1
	end
	if(LuaQueryTask("T648") ==0  and level>=45)  then
		AddTopSayMenuItem("���ӵĹػ������顿","T648")
		havetask1 =1
	end
	if(LuaQueryTask("T649") ==0 and level>=45 and level<50)  then
		AddTopSayMenuItem("���ӵİ�Σ��ѭ����","T649")
		havetask1 =1
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
-------------------------------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	AddTopSayMenuItem("����","liaotian","0")
end
return 1
-------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("Ľ����:��λ����������Ӣ�����������Ҳ�����ǳ���֮�ﰡ��")
------------------------------------------------------------------------���׵Ľ���
elseif(answer=="T630")then
	if(LuaQueryTask("T630")==1)then
		LuaSay("Ľ���룺�����������������������ͷ�������Ļ����㻹�ǳ����ȥ�ĺ�")
		LuaSay(""..LuaQueryStr("name").."��Ľ�ݹ��ӣ��㸸�״�û�ֹ��㣬һֱ�����ں��㣬�����㲻Ҫ���������ˡ�Ľ�����������㵱�ڻҰ�")
		LuaSay("Ľ���룺�Ҳ����ţ���ȥ���常����������ҵ��ڻҵģ�����һֱ�ߣ���@4�κ���@0���ܼ������常��")
		LuaSetTask("T630",2)
		AddLog("���׵Ľ��͡����顿",630)
		UpdateTopSay("���������常�������߿�")
		UpdateMenu()
		UpdateNPCMenu("murongping")
	elseif(LuaQueryTask("T630")==2)then
		LuaSay("Ľ���룺ȥ�����常����������������һֱ�ߣ���@4�κ���@0���ܼ������常��")
	end
--------------------------------------------------------------------------���Ӳ���
elseif(answer=="T670")then
	if(LuaQueryTask("T670")==1)then
		if(LuaItemCount("o_mission352")>=1)then
			LuaSay(""..LuaQueryStr("name").."�������常���У��������@4������@0")
			LuaSay("Ľ���룺�����������常����ҡ���...������һ�������˼���ڣ����������...�ж�")
			LuaSay(""..LuaQueryStr("name").."��������...����������ȥ����Ȼ�Ŷ���")
			DelItem("o_mission352",1)
			LuaSetTask("T670",2)
			AddLog("���Ӳ��š����顿",670)
			UpdateMenu()
		else
			LuaSay("Ľ���룺�常�ܾ�û����������")
		end

	elseif(LuaQueryTask("T670")==2)then
		LuaSay("Ľ����:˵����ȥ��@3Ľ����@0����ô�㻹û��ȥ����")
		
	end


----------------------------------------------------------------------------���ӵ���ı
elseif(answer=="T641") then
	local level=LuaQuery("level")
	if( level<48)then
		LuaSay("��ȼ������������ȵ���@348��@0�������ɣ�")
	else
		if(LuaQueryTask("T641")==0) then
			LuaSay("Ľ����:�ҵ����Ͻ���@3̫�й�Գ@0��@4̫��ɽ��@0���ң���@4̫��ɽ��@0��@3ʯԽ@0��ɱ֮��")
			LuaSay("Ľ����:��ȥ����@4̫��ɽ��@0��@3ʯԽ@0�ɣ�")
			LuaSetTask("T641",1)
			AddLog("���ӵ���ı�����顿",641)
			AddMenuItem("�Ƿ��ͣ�","")
			AddMenuItem("��","Tshi")
			AddMenuItem("��","Tfou")
			UpdateMenu()
		elseif(LuaQueryTask("T641")==1) then
			LuaSay("Ľ����:����ô��û�е�@4̫��ɽ��@0 @3ʯԽ@0����ȥ����")
		end
	end
	elseif(answer=="Tshi")then
	ChangeMap("lu_thsg",171,144)



--------------------------------------------------------------------------��ı�ĺ��
elseif(answer== "T642") then
	local level=LuaQuery("level")
    if( level<48)then
    LuaSay("��ȼ������������ȵ���@348��@0�������ɣ�")
    else
	if(LuaQueryTask("T642")==0) then
		LuaSay("Ľ����: @3̫�й�Գ@0���һֱ��@4̫��ɽ��@0���ң���������ȥ��ɱ@330ֻ��Գ@0")
		LuaSetTask("T642",1)
		LuaSetTask("task_kill/mon_038/T642",1)
		UpdateTopSay("ɱ30ֻ̫�й�Գ")
		AddLog("��ı�ĺ�������顿",642)
   	UpdateMenu()

		elseif(LuaQueryTask("T642")==1)then
			if(LuaQueryTask("task_kill/mon_038/T642")>=31) then
				LuaSay(LuaQueryStr("name").."��@3ʯԽ@0æ�ھ��£�δ�����������棡")
				LuaSay("Ľ����:�������㶼��ʲôȥ����")
				LuaSay(LuaQueryStr("name").."����������������Ѱ�@230ֻ��Գ@0ɱ�ˣ�")
				LuaSay("Ľ����:����~...��Ȼ��������Ϊ���ɵò���")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T642jl")
			else
				LuaSay("Ľ����:��û��ɱ��@4̫��ɽ��@0��@330ֻ̫�й�Գ@0��")
				UpdateTopSay("ɱ��30ֻ̫�й�Գ�������Ұ�")
			end
	 end
    end
    elseif(answer=="T642jl")then
		if(LuaQueryTask("T642")==1) then
			if(LuaFreeBag()>=1)then
				LuaSetTask("T642",99)
				DelLog("642")
				LuaDelTask("task_kill/mon_038/T642")
				LuaGive("e_head015",1,2,"T642")
				LuaGive("coin",3400,"T642")
				LuaAddJx("combat_exp",502000,"T642")
				LuaAddAchievementSchedule("Task_num",1)	
				UpdateMenu()
			else
				LuaSay("@5��ܰ��ʾ���뱣�ֱ�����һ���λ��������ȡ���Ľ�����Ϊ����������ʧ��Ŷ@!")
			end
		end

--------------------------------------------------���Ӻ��������顿
elseif(answer=="T644") then
	if(LuaQueryTask("T644")==0)then
	LuaSay("Ľ���룺�鷳���ȥת���ҵ������Ӳ�Т��ô������һֱ��������˼ң�ϣ���ܹ�ԭ���ң���һ�����Ÿ������")
	LuaSetTask("T644",1)
	AddLog("���Ӻ��������顿",644)
	UpdateMenu()
	UpdateNPCMenu("murongchui")
	elseif(LuaQueryTask("T644")==1) then
		LuaSay("����ô��û�е�@4̫�йž�@0 @3Ľ�ݴ�@0����ȥ����")
	elseif(LuaQueryTask("T644")==2) then
		LuaSay(""..LuaQueryStr("name").."�����û�����㣬����úñ������壬��˵�Լ�û�������������Σ����Ժ�һ���˺����ദ��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T644jl")

	end

		elseif(answer=="T644jl")then
			if(LuaQueryTask("T644")==2) then
			LuaSetTask("T644",99)
			LuaAddJx("combat_exp",598000,"T644")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",1000,"T644")
			DelLog("644")
			UpdateMenu()
			end


------------------------------------------------����������顿
elseif(answer=="T645")then
	if(LuaQueryTask("T645")==0)then
		LuaSay("Ľ���룺������̫��Բ����׵����飬��ȥ����@3���ƾ���@0�������ռ�@220�����ƴ�@0��")  --o_mission354
		LuaSetTask("T645",1)
		AddLog("����������顿",645)
		UpdateMenu()
		UpdateNPCMenu("murongchui")
		UpdateTopSay("ȥ�ռ����ƴ̣���Ҫ���׸������")
	elseif(LuaQueryTask("T645")==1)then
		if(LuaItemCount("o_mission354")>=20)then
		LuaSay("Ľ���룺ת���Ҹ��ף�����������������")
		LuaSetTask("T645",2)
		UpdateNPCMenu("murongchui")
		AddLog("����������顿",645)
		UpdateMenu()
		else
		LuaSay("Ľ���룺����Ҫ��@3���ƴ�@0�����ռ�������")
		end
	elseif(LuaQueryTask("T645")==2)then
		LuaSay("Ľ���룺��Ҫȥ��������")
	elseif(LuaQueryTask("T645")==3)then
		LuaSay(""..LuaQueryStr("name").."��Ľ���������㸸���Ѿ�ԭ���㣬������úõĻ���ȥ����Ҫ��������һƬ���ģ�")
		LuaSay("Ľ���룺�һ�ģ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T645jl")
	end
	elseif(answer=="T645jl") then
		if(LuaQueryTask("T645")==3)then
		LuaSay("Ľ���룺��Ҫ��Ʒװ��������ȥɱҰ��BOSS�͸����������м��ʳ���Ӧ�ȼ�����װŶ@!")
		LuaGive("e_necklace008",1,1,"T645")
		LuaSetTask("T645",99)
		LuaAddJx("combat_exp",598000,"T645")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("645")
		DelItem("o_mission354",1)
		UpdateMenu()
		end

------------------------------------------------��ȡ���Ρ����顿
elseif(answer=="T646")then
	if(LuaQueryTask("T646")==0)then
		LuaSay("Ľ���룺�������ˣ������ڵð���������Щ���飬�����ҵ�����������õ�@3Ľ����@0�����������������")
		LuaSetTask("T646",1)
		AddLog("��ȡ���Ρ����顿",646)
		LuaGive("o_mission356",1)
		UpdateMenu()
		UpdateNPCMenu("murongping")
	else
		LuaSay("Ľ���룺�����ҵ�����ȥȡ��@3Ľ����@0������")
	end

------------------------------------------------��ȴ��ӡ����顿
elseif(answer=="T647")then
	if(LuaQueryTask("T647")==0)then
	LuaSay("Ľ���룺�Ҿ�Ȼ���常���е�һ�����ӣ����ڻ���ɱ�����ң������ܷ���ҵ�@3������ҩƷ����@0����ѯ�ʽⶾ֮��")
	LuaSay(""..LuaQueryStr("name").."���õģ����¼��̾�ȥ��")
	LuaSetTask("T647",1)
	AddLog("��ȴ��ӡ����顿",647)
	AddMenuItem("�Ƿ��Զ������������ǣ�","")
	AddMenuItem("��","T")
	AddMenuItem("��","F")
	UpdateMenu()
	elseif(LuaQueryTask("T647") == 1)then
		LuaSay("Ľ���룺����ô��û�е�@4������@0��@3ҩƷ����@0����ȥ����")
	elseif(LuaQueryTask("T647") == 2 ) then
		if(LuaItemStatusNormalCount("o_material_58") >= 1 and LuaItemStatusNormalCount("o_mission039") >= 1) then
		LuaSay(""..LuaQueryStr("name").."���������ռ�����@21��������@0��@21����������@0��")
		LuaSay(""..LuaQueryStr("name").."��ҩƷ����˵�����ڷ����ܻ���˶�!")
		LuaSay("Ľ���룺�ţ������ϵĶ��ѽ�����Ǹм���������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T647jl")

		else
		LuaSay("Ľ���룺��û���ռ���@21��������@0��@21����������@0")
		end
    end

		elseif(answer=="T647jl")then
			if(LuaQueryTask("T647")==2) then
			LuaSetTask("T647",99)
			DelItem("o_material_58",1)
			DelItem("o_mission039",1)
			LuaAddJx("combat_exp",548000,"T647")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("647")
			UpdateMenu()
			end


		elseif(answer=="T")then
		ChangeMap("lu_lyc")


----------------------------------------------------------���ӵĹػ������顿
elseif(answer=="T648")then
	if(LuaQueryTask("T648")==0)then
	LuaSay("Ľ���룺����~~��ô�����ȥ�ˣ�û�뵽@3����@0���ǵã�������ô�����ң���һ���˹¿�����Ҳ��֪����Щ������ô�������ģ�")
	LuaSay(""..LuaQueryStr("name").."������ǰЩ����@3����@0��Ⱦ����������~~~�������ֳ���@3ҹ���ͻ�@0��û������ȫ��")
	LuaSay("Ľ���룺��������������ȥ@3��ɱ20ֻ�ͻ���20��ҹ��@0���ϴ��Ӱ�ȫ��")
	LuaSetTask("task_kill/mon_046/T648",1)
	LuaSetTask("task_kill/mon_047/T648",1)
	LuaSetTask("T648",1)
	UpdateTopSay("ɱ20ֻ�Ի���20��ҹ��")
	AddLog("���ӵĹػ������顿",648)
    UpdateMenu()
	elseif(LuaQueryTask("T648")==1)then
		local a=LuaQueryTask("task_kill/mon_046/T648")
		local b=LuaQueryTask("task_kill/mon_047/T648")
		local c=21-a
		local d=21-b
			if(a>=21 and b>=21) then
			LuaSay("Ľ���룺������Ȼ���£����ڴ��ӽϰ�ȫ�ˣ�")
			LuaSay("Ľ���룺������Ҫ�ͷ������ٵ�@4����ؿ�@0ת������Ҫ�ú���Ϣ��ע�����壬�º���һ��ȥ̽�������˼ң�")
			LuaSetTask("T648",2)
			AddLog("���ӵĹػ������顿",648)
			LuaDelTask("task_kill/mon_046/T648")
			LuaDelTask("task_kill/mon_047/T648")
   			UpdateMenu()
	   		else
	   		LuaSay("Ľ���룺�㻹��@3"..c.."ֻ�Ի���"..d.."��ҹ��@0ûɱ����ȥ@3��ɱ20ֻ�ͻ���20��ҹ��@0���ϴ��Ӱ�ȫ��")
	   		end
	elseif(LuaQueryTask("T648")==2)then
			LuaSay("Ľ���룺����ô��û�е�@4����ؿ�@0��@3����@0����ȥ������")
	end


---------------------------------------------------���ӵİ�Σ��ѭ����
elseif(answer== "T649") then
	local level=LuaQuery("level")
    if( level<47)then
    LuaSay("����̫���գ��ڶ�ĥ��ĥ�����ȵ���@347��@0�������ɣ�")
    else
	if(LuaQueryStrTask("649day")~=GetCurrentDay())then
		LuaDelTask("T649num")
	end
	if(LuaQueryTask("T649")==0) then
		
		LuaSay("Ľ����: @3���ƾ���@0����@4̫�йž�@0��û��ʹ�ҳ��в��ף���ɱ@330ֻ���ƾ���@0")
		LuaSetTask("T649",1)
		LuaAddTask("T649num",1)
		LuaSetTask("649day",GetCurrentDay())
		LuaSetTask("task_kill/mon_036/T649",1)
		UpdateTopSay("ɱ30ֻ���ƾ���")
		AddLog("���ӵİ�Σ��ѭ����",649)
		UpdateMenu()

	elseif(LuaQueryTask("T649")==1)then
		if(LuaQueryTask("task_kill/mon_036/T649")>=31) then
		LuaSay("Ľ����:��Ȼ��������Ϊ�����ɵò���")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T649jl")
		else
		LuaSay("Ľ����:��û��ɱ��@4̫�йž�@0��@330ֻ���ƾ���@0��")
		UpdateTopSay("ɱ��30ֻ���ƾ����������Ұ�")
		end
    end
    end
    elseif(answer=="T649jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQueryTask("task_kill/mon_036/T649")>=31) then
		if(LuaQueryTask("T649")==1) then
		local jinyan
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
		if(LuaQueryTask("T649num")<=30)then
		jinyan=(78203+level^2*20)
		LuaGive("coin",money,"T649")
		else
		LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
		jinyan=(78203+level^2*20)/2
		end
		LuaSetTask("T649",99)
		LuaDelTask("T649")
		DelLog("649")
		LuaDelTask("task_kill/mon_036/T649")
    		LuaAddJx("combat_exp",jinyan,"T649")
			if(LuaQueryTask("T649_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T649_a",99)
			end
    		UpdateMenu()
		end
		end

-----------------------------------------------����֮�顾���顿
elseif(answer=="T636")then
	if(LuaQueryTask("T636")==1)then
		LuaSay(LuaQueryStr("name").."�������@3Ľ�ݴ�@0֮��@3Ľ����@0�ɣ�")
		LuaSay("Ľ���룺������@3����Ľ�ݻ����ӵ�Ľ����@0������˭��")
		LuaSay(LuaQueryStr("name").."������з������Ҵ����㣡")
		LuaSay("Ľ���룺���������ˣ���ȥ�����ҵ������յ���")
		UpdateTopSay("��̫�йž�Ľ�ݴ�����ȡ�����ɣ�")
		DelItem("o_mission368",1)
		LuaSetTask("T636",2)
		AddLog("����֮�顾���顿",636)
		UpdateMenu()
	elseif(LuaQueryTask("T636")==2)then
		LuaSay("Ľ���룺��ȥ�����ҵ������յ���")
	end

------------------------------------------------Ȱ��֮�������顿
elseif(answer=="T638")then
	if(LuaQueryTask("T638")==1)then
		LuaSay(""..LuaQueryStr("name").."��ԭ����һ�ж��������ı�����֪�������������Σ�������ٽ�ʿ��Ѫ����!")
		LuaSay(""..LuaQueryStr("name").."������ܰ��㣬Ҳ�ܹ����㡣�������Ҳ�Ҫ�˺��㣬�Ͽ��ͷ�ǰ�����Ҫ�����������ɸ���Т֮�ӣ�������������")
		LuaSay("Ľ���룺�ҵ��²�����ܣ��ҵ���û���������Ķ��ӣ���Ҳ�Ӳ����������������������������Һ��常�Ĺ�ϵ��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T638jl")
		UpdateMenu()
		UpdateNPCMenu("murongchui")
	elseif(LuaQueryTask("T638")==2)then
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T638jl")
	end

		elseif(answer=="T638jl")then
			if(LuaQueryTask("T638")==2 or LuaQueryTask("T638")==1)  then
			LuaSetTask("T638",99)
			DelLog("638")
			LuaAddJx("combat_exp",548000,"T638")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",1000,"T638")
			UpdateMenu()
			end


--------------------------------------------���̵Ĺػ������顿
elseif(answer=="T745")then
	if(LuaQueryTask("T745")==1)then
	LuaSay(""..LuaQueryStr("name").."�����̽����������㣬������Ÿ��㣬�������㣡")
	LuaSay("Ľ���룺��ģ���̫�����ˣ��ѵû�������ô�����ң���ȥ�������̾�˵�ҹ��ĺܺã��Ҳ����������ģ�")
	LuaSay(""..LuaQueryStr("name").."�������ھ�ȥ����@3����@0")
	LuaSetTask("T745",2)
	AddLog("���̵Ĺػ������顿",745)
	UpdateMenu()
    elseif(LuaQueryTask("T745")==2)then
        	LuaSay("Ľ���룺����ô��ûȥ@4����ؿ�@0��@3����@0��")

	end

elseif(answer=="Tsnpc_60")then
	if(LuaQueryTask("Tsnpc_60")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("Ľ���룺���ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_60",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_60")==2)then
		LuaSay("Ľ���룺���ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_60")then
	if(LuaQueryTask("Tenpc_60")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("Ľ���룺�ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_60",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_60")==2)then
		LuaSay("Ľ���룺���Ѿ������ˣ����ȥ��ȡ������")
	end
end
LuaSendMenu()
return 1
end

