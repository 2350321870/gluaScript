NPCINFO = {
serial="76" ,
base_name="shiyue",
icon=2572,
NpcMove=2572 ,
name="ʯԽ" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="�����Ҹú�ȥ�δ�",
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
	local T637= LuaQueryTask("T637")
	local T641= LuaQueryTask("T641")
	local T651= LuaQueryTask("T651")
	local T653= LuaQueryTask("T653")
	local T654= LuaQueryTask("T654")
	local T655= LuaQueryTask("T655")
	local T656= LuaQueryTask("T656")

	AddTopSayMenuItem("@7�����б�","")
--	AddTopSayMenuItem("@3����@0","Tzhiliao02")
	if((LuaQueryTask("Tsnpc_61")==1 or LuaQueryTask("Tsnpc_61")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_61")
		if(LuaQueryTask("Tsnpc_61")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_61")==1 or LuaQueryTask("Tenpc_61")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_61")
		if(LuaQueryTask("Tenpc_61")==1)then
			havetask2=1
		end
	end
	if(T651==1 or T651==2)then
		AddTopSayMenuItem("@2��ı�����ࡾ���顿@0","T651")
		if(LuaQueryTask("T651")==1)then
		havetask2 =1
		end
	end

	if(T653 ==1)  then
		AddTopSayMenuItem("@2�����ռ������顿@0","T653")
		if(LuaItemCount("o_material_39")>= 5 and LuaItemCount("o_material_48")>=5) then
		havetask2 =1
		else
		havetask4 =1	
		end
	end

	if(T655==1)  then
		AddTopSayMenuItem("@2ɽ��֮����BOSS��@0","T655")
		if(LuaItemCount("o_mission341")==1)then
			havetask2 =1
		else
			havetask4 =1
		end
	end

	if(T641==1 )  then
		AddTopSayMenuItem("@2���ӵ���ı�����顿@0","T641")
		havetask2=1
	end
	if(T637==1)  then
		AddTopSayMenuItem("@2Ԯ��ʯԽ�����顿@0","T637")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T637==2)  then
		AddTopSayMenuItem("@2Ԯ��ʯԽ�����顿@0","T637")
		havetask4 =1
	end
	if(T654==1)  then
		AddTopSayMenuItem("@2��ʯ֮�꡾���顿@0","T654")
		havetask4 =1
	end
	if(T656==1)then
		AddTopSayMenuItem("@2������塾ѭ����@0","T656")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T651==0 and level>=45)then
		AddTopSayMenuItem("��ı�����ࡾ���顿","T651")
		havetask1=1
	end
	if(T653 ==0 and level>=48)  then
		AddTopSayMenuItem("�����ռ������顿","T653")
		havetask1 =1
	end
	if(T654==0 and level>=48)  then
		AddTopSayMenuItem("��ʯ֮�꡾���顿","T654")
		havetask1 =1
	end
	if(T655==0 and T654==99 and level>=49)  then
		AddTopSayMenuItem("ɽ��֮����BOSS��","T655")
		havetask1 =1
	end
	if(T656==0 and level>=47 and level<52)then
		AddTopSayMenuItem("������塾ѭ����","T656")
		havetask1=1
	end
--����Ϊ��ɫ��̾�Ų���

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
--------------------------------------------------------------------------------
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
elseif(answer=="liaotian") then                 -------------------------����
	if(LuaQueryStr("gender")=="����")then
	LuaSay("ʯԽ��@3����@0,�����޳������Ī�⣬ǰ·��裬@3"..LuaQueryStr("name").."@0Ҫ���С�İ���")
	else
	LuaSay("ʯԽ��@3Ů��@0,�����޳������Ī�⣬ǰ·��裬@3"..LuaQueryStr("name").."@0Ҫ���С�İ���")
	end


elseif(answer=="T641")then                             ---------------���ӵ���ı
	if(LuaQueryTask("T641")==1)then
	LuaSay("ʯԽ:���µ����кι�ɣ�")
	LuaSay(LuaQueryStr("name").."��@3Ľ�ݴ�@0֮�����ҵ���ת������˵�������������ɱ@3̫�й�Գ@0�����Ե�����棡")
	LuaSay("ʯԽ��@3Ľ�ݴ�@0֮�⣬�������ˣ��������ˣ�")
	AddLog("���ӵ���ı�����顿",641)
	UpdateMenu()
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T641jl")
	end
		elseif(answer=="T641jl")then                           --------------641��ȡ����
			if(LuaQueryTask("T641")==1)then
				LuaSetTask("T641",99)
				DelLog("641")
				LuaAddJx("combat_exp",502000,"T641")
				LuaAddAchievementSchedule("Task_num",1)	
				LuaGive("coin",3000,"T641")
			UpdateMenu()
			end
	
elseif(answer=="T651")then                                  ---------------------��ı������
	if(LuaQueryTask("T651")==0)then
		LuaSay("ʯԽ�����Ҿ�˼���򣬴���������Ժ��������ң�")
		UpdateTopSay("����Ӻ���������")
		LuaSetTask("T651time",GetCurrentTime())
		LuaSetTask("T651",1)
		AddLog("��ı�����ࡾ���顿",651)
	UpdateMenu()
	elseif(LuaQueryTask("T651")==1)then
		local tgtime=GetCurrentTime()-LuaQueryTask("T651time")
	if(tgtime>=300)then
		LuaSetTask("T651",2)
		AddLog("��ı�����ࡾ���顿",651)
		LuaSay("ʯԽ��������֪�����ɱ��@3̫�й�Գ@0!")
		LuaSay(LuaQueryStr("name").."��û��@3̫�й�Գ@0̫�����ˣ�")
		LuaSay("ʯԽ�����ǣ����ɱ@3̫�й�Գ@0��ŭ��@3ɽ��������@0������Σ��������ȥת��@4̫�йž�@0��@3Ľ�ݴ�@0��")
		LuaSay(LuaQueryStr("name").."��ԭ��������ô���أ�������ȥת�棡")
	else
		LuaSay("ʯԽ��ʱ�仹δ���������ĵȺ")
	end
	elseif(LuaQueryTask("T651")==2)then
		LuaSay("ʯԽ����ô��û��@3̫�йž���Ľ�ݴ�@0����ȥ�������Σ����������ȥ��")
	end
	
	
elseif(answer=="T637")then                                      --------------------Ԯ��ʯԽ
	if(LuaQueryTask("T637")==1)then
	LuaSay("ʯԽ������ȥ����@3Ľ�ݴ�@0����")
	LuaSay(LuaQueryStr("name").."�������ˣ�@3Ľ�ݴ�@0˵���Ƕ����������ӵļ�ƣ���������������㣬��ƽ����Σ����")
	LuaSay("ʯԽ������@3������@0��ʱ���Ҵ������@3̫�й�Գ@0�ڴ˻���@3����@0��������Ϊ����")
	LuaSay("ʯԽ����@3����@0��ȥ��ɱ@310ֻ̫�й�Գ@0����ɺ��ٵ��ˣ�")
	LuaSetTask("T637",2)
	AddLog("Ԯ��ʯԽ�����顿",637)
	LuaSetTask("task_kill/mon_038/T637",1)

	UpdateTopSay("��ɱ10ֻ̫�й�Գ")
	UpdateMenu()

	elseif(LuaQueryTask("T637")==2)then
	local a=LuaQueryTask("task_kill/mon_038/T637")-1
	   if(a>9) then
	   LuaSay("ʯԽ���ܺã��ڴ������һ�ν�����")
	   AddMenuItem("@7�������","")
	   AddMenuItem("��ȡ����","T637jl")
	   else
	   LuaSay("ʯԽ�����������@3"..a.."ֻ̫�й�Գ@0����ȥɱ@210ֻ̫�й�Գ@0�����ɣ�")
	   end
	   end


	   elseif(answer=="T637jl")then                            ----------------637��ȡ����
	   if(LuaQueryTask("T637")==2)then
	   if(LuaQueryTask("task_kill/mon_038/T637")>=11)then
	   LuaSetTask("T637",99)
	   DelLog("637")
	   LuaAddJx("combat_exp",598000,"T637")
	   LuaAddAchievementSchedule("Task_num",1)	
	   LuaGive("coin",3400,"T637")
	   UpdateMenu()
	   end
	   end


elseif(answer=="T653")then                                          -----------------------�����ռ�
	   if(LuaQueryTask("T653")==0)then
		   LuaSay("ʯԽ��������@3Ľ�ݴ�@0�ľ��裬�����Σ���������ѿ������")             -----------------o_material_48   2����
		   LuaSay("ʯԽ������������°�æ�ռ����ʣ�")                                        -----------------o_material_39   2��ľ
		   LuaSay(LuaQueryStr("name").."��û���⣬Ը��Ч�ͣ�")
		   LuaSay("ʯԽ���Ǿͷ��ʹ����ռ�@25��2��ľ��2����@0���������ң�")
		   LuaSetTask("T653",1)
		   AddLog("�����ռ������顿",653)
		   UpdateTopSay("�ռ��������ľ��������")
		   UpdateMenu()


	   elseif(LuaQueryTask("T653")==1)then
		   if(LuaItemCount("o_material_39")>= 5 and LuaItemCount("o_material_48")>=5) then
			   LuaSay("ʯԽ����ô����ռ���@3���ʾ���@0�ˣ����µı����������������")
			   LuaSay(LuaQueryStr("name").."�������������")
			   LuaSay("ʯԽ����ȡ�����ɣ�")
			   AddMenuItem("�������","")
			   AddMenuItem("�콱��","T653jl")
		   else
			   LuaSay("ʯԽ����"..LuaItemCount("o_material_39").."������ľ,"..LuaItemCount("o_material_48").."�������󣬻�����@25������ľ��������@0����ɱ̫�йž�������ɵþ������ʣ�")
			   UpdateTopSay("�ռ��������ľ��������")
		   end
	   end


	   elseif(answer=="T653jl")then                 -------------------------653����
	   if(LuaQueryTask("T653")==1)then
		   if(LuaItemCount("o_material_39") >= 5 and LuaItemCount("o_material_48")>=5)then
			   LuaSetTask("T653",99)
			   DelLog("653")
			   DelItem("o_material_39",5)
			   DelItem("o_material_48",5)
			   LuaAddJx("combat_exp",767000,"T653")
			   LuaAddAchievementSchedule("Task_num",1)	
			   LuaGive("coin",3500,"T653")
			   UpdateMenu()
		   end
	   end

elseif(answer=="T654")then                ----------------------��ʯ֮��
	if(LuaQueryTask("T654")==0)then
	LuaSay("ʯԽ����������������ı��!")
	LuaSay(LuaQueryStr("name").."����������!")
	LuaSay("ʯԽ�����󷽾��輱��@2��ʯ֮��@0���ɷ������ȥ�ռ�һЩ@2��ʯ֮��@0��")
	LuaSay(LuaQueryStr("name").."��û���⣬Ϊ���²�����ֵ�ã�")
	LuaSay("ʯԽ������ȥ�ռ�@25����ʯ֮��@0�ɣ���ɱ@3̫��ɽ��@0��@2��ʯ��@0���Եõ���")
	UpdateTopSay("�ռ�5����ʯ֮��")
	LuaSetTask("T654",1)
	AddLog("��ʯ֮�꡾���顿",654)
    UpdateMenu()
	elseif(LuaQueryTask("T654")==1)then
	if(LuaItemCount("o_mission324")>=5)then                  ----------------o_mission324     ��ʯ֮��
	LuaSay("ʯԽ����л���µİ�æ��������ô�����ʯ֮�꣬��Ӧ��������......")
	LuaSay(LuaQueryStr("name").."��ֻҪ�������������ɱһЩҲû���⡣")
	LuaSay("ʯԽ��Ӣ�۷緶�����֮����")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T654jl")
	else
	LuaSay("ʯԽ������ռ�"..LuaItemCount("o_mission324").."����ʯ֮�꣬�Ͻ�ȥ�ռ��ɣ�")
	UpdateTopSay("��ɱ��ʯ�˵���ʯ֮��")
	end
	end

	elseif(answer=="T654jl")then          ------------------------654����
	if(LuaQueryTask("T654")==1)then
	DelItem("o_mission324",5)
	LuaSetTask("T654",99)
	DelLog("654")
	LuaAddJx("combat_exp",767000,"T654")
	LuaAddAchievementSchedule("Task_num",1)	
	LuaGive("coin",3500,"T654")
	UpdateMenu()
	end


elseif(answer=="T655")then                   ----------------------ɽ��֮��
	if(LuaQueryTask("T655")==0)then
	LuaSay("ʯԽ�����������������Ҳ�㰲���ˣ�")
	LuaSay(LuaQueryStr("name").."�������ˣ��������������")                   ----------------����֮��   o_mission341
	LuaSay("ʯԽ����Ȼ����ʱ�ȶ��ˣ����Ǿ�������������")
	LuaSay(LuaQueryStr("name").."������������?")
	LuaSay("ʯԽ��̫��ɽ�о����ѣ������ڶ��谭������@3ɽ��������@0���֣�����Ǹ�����")
	LuaSay("ʯԽ�����ʹ�������һ��֮����ȥ������@3̫�йȵ׵�ɽ��������@0,Ȼ���������ң�")
	LuaGive("o_drug_hp1",5)
	LuaSetTask("T655",1)
	AddLog("ɽ��֮����BOSS��",655)
	UpdateTopSay("ȥ̫�йȵ׻�ɱɽ��������")
	UpdateMenu()

	elseif(LuaQueryTask("T655")==1)then
	if(LuaItemCount("o_mission341")==1)then
	LuaSay("ʯԽ�������������£�һ��������޵���ı��")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T655jl")
        else
        LuaSay("ʯԽ���㻹û����@4̫�йȵ�@0��@2ɽ��������@0����ȥ�ݻ����ǵ���ı�ɡ�")
		if(LuaQueryStr("MobieType") ~= "S20")then	
			LuaSay("ʯԽ��ҩ��@2����˵����ٵ���������򿪱�����ѡ�н�ҩ�����������е�����һ����ݼ�С�񼴿ɽ���ҩƷ���õ�������С�")
			LuaSay("ʯԽ������BOSS����PK��Ҫ@2��ɫ����@0��������Ͻǵ�PK��@@0�ٵ����ɫ���ϵ�@3���ּ�@0�����������ٴε��PK����ȡ��������")
		else
			LuaSay("ʯԽ��ҩ��@2����������ٰ�3�򿪱�����ѡ�н�ҩ��������Ӧ��ݼ�@0���õ���ݼ��С�")
			LuaSay("ʯԽ������BOSS����PK��Ҫ@2��ɫ����@0����@3�Ǻż�@0�ٰ���ɫ���ϵ�@3���ּ�@0������������ȡ������ȡ��������")
		end
	end
	end


	elseif(answer=="T655jl")then         -----------------------655����
	if(LuaItemCount("o_mission341")==1)then
	LuaSetTask("T655",99)
	DelLog("655")
	DelItem("o_mission341",1)
	LuaAddJx("combat_exp",1500000,"T655")
	LuaGive("coin",3000,"T655")
	LuaAddAchievementSchedule("Task_num",1)	
	UpdateMenu()
	end


elseif(answer=="Tzhiliao02") then            ----------------------����
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	if(LuaQuery("hp")>0) then
		if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
		local jinqian=(level^2 + 50)
		  if(LuaItemCount("coin")>=jinqian) then
		      local maxhp=LuaQuery("max_hp")
		      local maxmp=LuaQuery("max_mp")
		      LuaSet("hp",maxhp)
		      LuaSet("mp",maxmp)
		      FlushMyInfo("0")
		      LuaGive("coin",-jinqian,"Tzhiliao02")
		      LuaSay("��ʾ����ջ���@2"..jinqian.."@0ͭ�ҽ������ƣ��ָֻ��˻�����")
		  else
		      LuaSay("��ʾ�����ͭ�Ҳ��㣬��Ҫ@2"..jinqian.."@0ͭ�ҷ������ơ�")
		  end
		 else
		LuaSay("����������Ѫ��ħ״̬������Ҫ���ơ�")
		 end
	else
		LuaSay("��ɫ������,�޷�����")
	end


elseif(answer=="T656")then    --------------------------�������
	local level= LuaQuery("level")
	if(LuaQueryStrTask("656day")~=GetCurrentDay())then
		LuaDelTask("T656num")
	end
	if(LuaQueryTask("T656")==0)then
	LuaSay("ʯԽ�����@3���ƾ���@0��@4̫�йž�@0�������ң��������ȥ@3̫�йž�����10�����ƾ���@0ǰ����ȡ������")
	LuaSay(LuaQueryStr("name").."��Ϊ���հ�����������ȥ��")
	LuaSetTask("T656",1)
	LuaAddTask("T656num",1)
	LuaSetTask("656day",GetCurrentDay())
	LuaSetTask("task_kill/mon_036/T656",1)
	AddLog("������塾ѭ����",656)
	UpdateTopSay("ȥ̫�йž�����10�����ƾ���")
	UpdateMenu()

	elseif(LuaQueryTask("T656")==1)then
	local a=LuaQueryTask("task_kill/mon_036/T656")-1
	if(a>9)then
	LuaSay("ʯԽ���������£�ȥ�콱����!")
	AddMenuItem("�������","")
	AddMenuItem("��ȡ����","T656jl")
	else
	LuaSay("ʯԽ����ɱ��@3"..a.."ֻ���ƾ���@0��Ϊ���²������Ͽ�ȥ�ɣ�")
	end
	end
	elseif(answer=="T656jl")then            ------------------------656����
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T656")==1)then
	if(LuaQueryTask("task_kill/mon_036/T656")>=11)then
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
		local jinyan
		if(LuaQueryTask("T656num")<=30)then
			jinyan=(level^2*20+88126)
			LuaGive("coin",money,"T656")
		else
			LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
			jinyan=(level^2*20+88126)/2
		end
		LuaSetTask("T656",0)
		LuaDelTask("T656")
		DelLog("656")
		LuaAddJx("combat_exp",jinyan,"T656")
		if(LuaQueryTask("T656_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T656_a",99)
		end
	LuaAddAchievementSchedule("Task_num",1)	
	UpdateMenu()
	end
	end
elseif(answer=="Tsnpc_61")then
	if(LuaQueryTask("Tsnpc_61")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("ʯԽ�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_61",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_61")==2)then
		LuaSay("ʯԽ�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_61")then
	if(LuaQueryTask("Tenpc_61")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("ʯԽ���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_61",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_61")==2)then
		LuaSay("ʯԽ�����Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end
