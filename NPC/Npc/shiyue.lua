NPCINFO = {
serial="76" ,
base_name="shiyue",
icon=2572,
NpcMove=2572 ,
name="石越" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="究竟我该何去何从",
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	local level= LuaQuery("level")
	local T637= LuaQueryTask("T637")
	local T641= LuaQueryTask("T641")
	local T651= LuaQueryTask("T651")
	local T653= LuaQueryTask("T653")
	local T654= LuaQueryTask("T654")
	local T655= LuaQueryTask("T655")
	local T656= LuaQueryTask("T656")

	AddTopSayMenuItem("@7任务列表","")
--	AddTopSayMenuItem("@3治疗@0","Tzhiliao02")
	if((LuaQueryTask("Tsnpc_61")==1 or LuaQueryTask("Tsnpc_61")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_61")
		if(LuaQueryTask("Tsnpc_61")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_61")==1 or LuaQueryTask("Tenpc_61")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_61")
		if(LuaQueryTask("Tenpc_61")==1)then
			havetask2=1
		end
	end
	if(T651==1 or T651==2)then
		AddTopSayMenuItem("@2阴谋的真相【剧情】@0","T651")
		if(LuaQueryTask("T651")==1)then
		havetask2 =1
		end
	end

	if(T653 ==1)  then
		AddTopSayMenuItem("@2物资收集【剧情】@0","T653")
		if(LuaItemCount("o_material_39")>= 5 and LuaItemCount("o_material_48")>=5) then
		havetask2 =1
		else
		havetask4 =1	
		end
	end

	if(T655==1)  then
		AddTopSayMenuItem("@2山中之王【BOSS】@0","T655")
		if(LuaItemCount("o_mission341")==1)then
			havetask2 =1
		else
			havetask4 =1
		end
	end

	if(T641==1 )  then
		AddTopSayMenuItem("@2次子的阴谋【剧情】@0","T641")
		havetask2=1
	end
	if(T637==1)  then
		AddTopSayMenuItem("@2援助石越【剧情】@0","T637")
		havetask2 =1
	end
--以上为黄色问号部分
	if(T637==2)  then
		AddTopSayMenuItem("@2援助石越【剧情】@0","T637")
		havetask4 =1
	end
	if(T654==1)  then
		AddTopSayMenuItem("@2绿石之魂【剧情】@0","T654")
		havetask4 =1
	end
	if(T656==1)then
		AddTopSayMenuItem("@2匡扶正义【循环】@0","T656")
		havetask4=1
	end
--以上为灰色问号部分
	if(T651==0 and level>=45)then
		AddTopSayMenuItem("阴谋的真相【剧情】","T651")
		havetask1=1
	end
	if(T653 ==0 and level>=48)  then
		AddTopSayMenuItem("物资收集【剧情】","T653")
		havetask1 =1
	end
	if(T654==0 and level>=48)  then
		AddTopSayMenuItem("绿石之魂【剧情】","T654")
		havetask1 =1
	end
	if(T655==0 and T654==99 and level>=49)  then
		AddTopSayMenuItem("山中之王【BOSS】","T655")
		havetask1 =1
	end
	if(T656==0 and level>=47 and level<52)then
		AddTopSayMenuItem("匡扶正义【循环】","T656")
		havetask1=1
	end
--以上为黄色感叹号部分

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
--------------------------------------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	
	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1

------------------------------------------------
elseif(answer=="liaotian") then                 -------------------------聊天
	if(LuaQueryStr("gender")=="男性")then
	LuaSay("石越：@3大侠@0,风云无常，变幻莫测，前路多艰，@3"..LuaQueryStr("name").."@0要多加小心啊！")
	else
	LuaSay("石越：@3女侠@0,风云无常，变幻莫测，前路多艰，@3"..LuaQueryStr("name").."@0要多加小心啊！")
	end


elseif(answer=="T641")then                             ---------------次子的阴谋
	if(LuaQueryTask("T641")==1)then
	LuaSay("石越:阁下到此有何贵干！")
	LuaSay(LuaQueryStr("name").."：@3慕容垂@0之子让我到此转告您，说是他父亲让你击杀@3太行古猿@0，所以到此相告！")
	LuaSay("石越：@3慕容垂@0之意，我已明了，辛苦你了！")
	AddLog("次子的阴谋【剧情】",641)
	UpdateMenu()
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T641jl")
	end
		elseif(answer=="T641jl")then                           --------------641领取奖励
			if(LuaQueryTask("T641")==1)then
				LuaSetTask("T641",99)
				DelLog("641")
				LuaAddJx("combat_exp",502000,"T641")
				LuaAddAchievementSchedule("Task_num",1)	
				LuaGive("coin",3000,"T641")
			UpdateMenu()
			end
	
elseif(answer=="T651")then                                  ---------------------阴谋的真相
	if(LuaQueryTask("T651")==0)then
		LuaSay("石越：让我静思其因，大侠五分钟以后再来找我！")
		UpdateTopSay("五分钟后再来找我")
		LuaSetTask("T651time",GetCurrentTime())
		LuaSetTask("T651",1)
		AddLog("阴谋的真相【剧情】",651)
	UpdateMenu()
	elseif(LuaQueryTask("T651")==1)then
		local tgtime=GetCurrentTime()-LuaQueryTask("T651time")
	if(tgtime>=300)then
		LuaSetTask("T651",2)
		AddLog("阴谋的真相【剧情】",651)
		LuaSay("石越：据我所知，你击杀了@3太行古猿@0!")
		LuaSay(LuaQueryStr("name").."；没错，@3太行古猿@0太嚣张了！")
		LuaSay("石越：但是，你击杀@3太行古猿@0触怒了@3山灵玄武兽@0，如今后方危急，马上去转告@4太行古径@0的@3慕容垂@0！")
		LuaSay(LuaQueryStr("name").."：原来事情这么严重，我马上去转告！")
	else
		LuaSay("石越：时间还未到，请耐心等侯！")
	end
	elseif(LuaQueryTask("T651")==2)then
		LuaSay("石越：怎么还没到@3太行古径的慕容垂@0那里去啊？情况危急啊，请速去！")
	end
	
	
elseif(answer=="T637")then                                      --------------------援助石越
	if(LuaQueryTask("T637")==1)then
	LuaSay("石越：大侠去见过@3慕容垂@0了吗？")
	LuaSay(LuaQueryStr("name").."：见过了，@3慕容垂@0说我们都中了他儿子的奸计！如今让我来帮助你，以平定后方危机！")
	LuaSay("石越：辛苦@3大侠了@0，时不我待！如今@3太行古猿@0在此祸害@3百姓@0，气势尤为猖狂！")
	LuaSay("石越：请@3大侠@0速去击杀@310只太行古猿@0，完成后再到此！")
	LuaSetTask("T637",2)
	AddLog("援助石越【剧情】",637)
	LuaSetTask("task_kill/mon_038/T637",1)

	UpdateTopSay("击杀10只太行古猿")
	UpdateMenu()

	elseif(LuaQueryTask("T637")==2)then
	local a=LuaQueryTask("task_kill/mon_038/T637")-1
	   if(a>9) then
	   LuaSay("石越：很好，期待你的下一次进步！")
	   AddMenuItem("@7任务完成","")
	   AddMenuItem("领取奖励","T637jl")
	   else
	   LuaSay("石越：你才消灭了@3"..a.."只太行古猿@0，快去杀@210只太行古猿@0锻炼吧！")
	   end
	   end


	   elseif(answer=="T637jl")then                            ----------------637领取奖励
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


elseif(answer=="T653")then                                          -----------------------物资收集
	   if(LuaQueryTask("T653")==0)then
		   LuaSay("石越：我主管@3慕容垂@0的军需，现因后方危急，军需已快殆尽！")             -----------------o_material_48   2级矿
		   LuaSay("石越：所以想请阁下帮忙收集物资！")                                        -----------------o_material_39   2级木
		   LuaSay(LuaQueryStr("name").."：没问题，愿意效劳！")
		   LuaSay("石越：那就烦劳大侠收集@25个2级木与2级矿@0后再来找我！")
		   LuaSetTask("T653",1)
		   AddLog("物资收集【剧情】",653)
		   UpdateTopSay("收集五个二级木跟二级矿")
		   UpdateMenu()


	   elseif(LuaQueryTask("T653")==1)then
		   if(LuaItemCount("o_material_39")>= 5 and LuaItemCount("o_material_48")>=5) then
			   LuaSay("石越：这么快就收集到@3物资军备@0了，阁下的本领真是让人佩服！")
			   LuaSay(LuaQueryStr("name").."：哪里哪里。。。")
			   LuaSay("石越：领取奖励吧！")
			   AddMenuItem("任务完成","")
			   AddMenuItem("领奖励","T653jl")
		   else
			   LuaSay("石越：才"..LuaItemCount("o_material_39").."个二级木,"..LuaItemCount("o_material_48").."个二级矿，还不够@25个二级木跟二级矿@0，击杀太行古径的穷奇可得军用物质！")
			   UpdateTopSay("收集五个二级木跟二级矿")
		   end
	   end


	   elseif(answer=="T653jl")then                 -------------------------653奖励
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

elseif(answer=="T654")then                ----------------------绿石之魂
	if(LuaQueryTask("T654")==0)then
	LuaSay("石越：大侠真是有勇有谋啊!")
	LuaSay(LuaQueryStr("name").."：过奖过奖!")
	LuaSay("石越：如今后方军需急需@2绿石之魂@0，可否烦请大侠去收集一些@2绿石之魂@0？")
	LuaSay(LuaQueryStr("name").."：没问题，为天下苍生，值得！")
	LuaSay("石越；帮我去收集@25个绿石之魂@0吧，击杀@3太行山谷@0的@2绿石人@0可以得到！")
	UpdateTopSay("收集5个绿石之魂")
	LuaSetTask("T654",1)
	AddLog("绿石之魂【剧情】",654)
    UpdateMenu()
	elseif(LuaQueryTask("T654")==1)then
	if(LuaItemCount("o_mission324")>=5)then                  ----------------o_mission324     绿石之魂
	LuaSay("石越：多谢阁下的帮忙，有了这么多的绿石之魂，后方应该无忧了......")
	LuaSay(LuaQueryStr("name").."；只要百姓生活安定，多杀一些也没问题。")
	LuaSay("石越；英雄风范，佩服之极！")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T654jl")
	else
	LuaSay("石越：你才收集"..LuaItemCount("o_mission324").."个绿石之魂，赶紧去收集吧！")
	UpdateTopSay("击杀绿石人得绿石之魂")
	end
	end

	elseif(answer=="T654jl")then          ------------------------654奖励
	if(LuaQueryTask("T654")==1)then
	DelItem("o_mission324",5)
	LuaSetTask("T654",99)
	DelLog("654")
	LuaAddJx("combat_exp",767000,"T654")
	LuaAddAchievementSchedule("Task_num",1)	
	LuaGive("coin",3500,"T654")
	UpdateMenu()
	end


elseif(answer=="T655")then                   ----------------------山中之王
	if(LuaQueryTask("T655")==0)then
	LuaSay("石越：如今有你相助，后方也算安定了！")
	LuaSay(LuaQueryStr("name").."：过奖了，哪里哪里。。。。")                   ----------------王者之气   o_mission341
	LuaSay("石越：虽然后方暂时稳定了，但是究其根本不在那里！")
	LuaSay(LuaQueryStr("name").."；那在哪里呢?")
	LuaSay("石越：太行山行军艰难，出现众多阻碍，都是@3山灵玄武兽@0作怪，这才是根本！")
	LuaSay("石越：烦劳大侠再助一臂之力，去消灭在@3太行谷底的山灵玄武兽@0,然后再来找我！")
	LuaGive("o_drug_hp1",5)
	LuaSetTask("T655",1)
	AddLog("山中之王【BOSS】",655)
	UpdateTopSay("去太行谷底击杀山灵玄武兽")
	UpdateMenu()

	elseif(LuaQueryTask("T655")==1)then
	if(LuaItemCount("o_mission341")==1)then
	LuaSay("石越；阁下真是神勇，一举破碎怪兽的阴谋。")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T655jl")
        else
        LuaSay("石越：你还没击败@4太行谷底@0的@2山灵玄武兽@0，快去摧毁他们的阴谋吧。")
		if(LuaQueryStr("MobieType") ~= "S20")then	
			LuaSay("石越：药物@2点击菜单，再点击背包键打开背包，选中金疮药，点击快捷栏中的任意一个快捷键小格即可将该药品设置到快捷栏中。")
			LuaSay("石越：消灭BOSS或者PK需要@2角色锁定@0，点击左上角的PK键@@0再点击角色身上的@3数字键@0即可锁定，再次点击PK键可取消锁定。")
		else
			LuaSay("石越：药物@2按左软件，再按3打开背包，选中金疮药，按下响应快捷键@0设置到快捷键中。")
			LuaSay("石越：消灭BOSS或者PK需要@2角色锁定@0，按@3星号键@0再按角色身上的@3数字键@0即可锁定，按取消键可取消锁定。")
		end
	end
	end


	elseif(answer=="T655jl")then         -----------------------655奖励
	if(LuaItemCount("o_mission341")==1)then
	LuaSetTask("T655",99)
	DelLog("655")
	DelItem("o_mission341",1)
	LuaAddJx("combat_exp",1500000,"T655")
	LuaGive("coin",3000,"T655")
	LuaAddAchievementSchedule("Task_num",1)	
	UpdateMenu()
	end


elseif(answer=="Tzhiliao02") then            ----------------------治疗
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
		      LuaSay("提示：你刚花了@2"..jinqian.."@0铜币进行治疗，又恢复了活力。")
		  else
		      LuaSay("提示：你的铜币不足，需要@2"..jinqian.."@0铜币方可治疗。")
		  end
		 else
		LuaSay("你正处于满血满魔状态，不需要治疗。")
		 end
	else
		LuaSay("角色已死亡,无法治疗")
	end


elseif(answer=="T656")then    --------------------------匡扶正义
	local level= LuaQuery("level")
	if(LuaQueryStrTask("656day")~=GetCurrentDay())then
		LuaDelTask("T656num")
	end
	if(LuaQueryTask("T656")==0)then
	LuaSay("石越：如今@3金纹巨灵@0在@4太行古径@0大肆作乱，请阁下速去@3太行古径消灭10个金纹巨灵@0前来领取奖励！")
	LuaSay(LuaQueryStr("name").."：为百姓安定，在下速去！")
	LuaSetTask("T656",1)
	LuaAddTask("T656num",1)
	LuaSetTask("656day",GetCurrentDay())
	LuaSetTask("task_kill/mon_036/T656",1)
	AddLog("匡扶正义【循环】",656)
	UpdateTopSay("去太行古径消灭10个金纹巨灵")
	UpdateMenu()

	elseif(LuaQueryTask("T656")==1)then
	local a=LuaQueryTask("task_kill/mon_036/T656")-1
	if(a>9)then
	LuaSay("石越：阁下神勇，去领奖励吧!")
	AddMenuItem("任务完成","")
	AddMenuItem("领取奖励","T656jl")
	else
	LuaSay("石越：才杀了@3"..a.."只金纹巨灵@0，为天下苍生，赶快去吧！")
	end
	end
	elseif(answer=="T656jl")then            ------------------------656奖励
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
			LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
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
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("石越：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_61",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_61")==2)then
		LuaSay("石越：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_61")then
	if(LuaQueryTask("Tenpc_61")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("石越：这都是大人的功劳啊")
		LuaSetTask("Tenpc_61",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_61")==2)then
		LuaSay("石越：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end
