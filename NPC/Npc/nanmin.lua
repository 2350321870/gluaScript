NPCINFO = { 
serial="59" ,
base_name="nanmin",
icon=2511,
NpcMove=2511,
name="难民" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="天下事小吃饭事大",
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
	local T485=LuaQueryTask("T485")
	local T486=LuaQueryTask("T486")
	local T482=LuaQueryTask("T482")
	local level = LuaQuery("level") 
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_43")==1 or LuaQueryTask("Tsnpc_43")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_43")
		if(LuaQueryTask("Tsnpc_43")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_43")==1 or LuaQueryTask("Tenpc_43")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_43")
		if(LuaQueryTask("Tenpc_43")==1)then
			havetask2=1
		end
	end
	if(T485==1 or T485==2) then
		AddTopSayMenuItem("@2救助难民【剧情】","T485")
		if(LuaItemCount("o_mission321")>=1) then
		havetask2=1
		end
	end	

	if(T486==1) then
		AddTopSayMenuItem("@2知恩图报【剧情】","T486")
		havetask2=1
	end
	if(T482==1 ) then
		AddTopSayMenuItem("@2医治难民【剧情】","T482")
		havetask2=1
	end
	if(T482==3) then
		AddTopSayMenuItem("@2医治难民【剧情】","T482")
		if(LuaItemCount("o_mission335")==1) then
			havetask2=1
		end
	end
--以上是黄色问号部分
	if(LuaQueryTask("T480")==1)then
		AddTopSayMenuItem("@2难民的悲哀【循环】","T480")
		havetask4=1
	end
--以上是灰色问号部分
	if(T485==0 and T482==99) then
		AddTopSayMenuItem("救助难民【剧情】","T485")
		havetask1=1
	end
	if(T485==99 and T486==0 and level>=30) then
		AddTopSayMenuItem("知恩图报【剧情】","T486")
		havetask1=1
	end
	if(level>=30 and level<35 and LuaQueryTask("T480")==0)then
		AddTopSayMenuItem("难民的悲哀【循环】","T480")
		havetask1=1
	end
	if(T482==0 and level>=30) then
		AddTopSayMenuItem("医治难民【剧情】","T482")
		havetask1=1
	end
--以上是黄色问号部分
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end

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

----------------------------
elseif(answer=="liaotian") then
	LuaSay("难民：天下大乱，苦的总是我们这些老百姓!") 
---------------------------------------------  救助难民
elseif(answer=="T485") then
	if(LuaQueryTask("T485") == 0 ) then
		LuaSay("难民：少侠,我因为战乱，流离失所，已经饿了好几天了，能给我点吃的吗？你去找洛阳的药品商人，他会教你寻找食物的。")
		AddMenuItem("选择列表","","")
	        AddMenuItem("帮助","T485YES","")
	        AddMenuItem("不帮","T485NO","")
        elseif(LuaQueryTask("T485") == 1) then
		LuaSay("难民:少侠,去洛阳的商人那里看看吧！找洛阳药品商人，他会给你食物的。")
		AddMenuItem("@7是否@0寻路至@4药品商人","")
		AddMenuItem("自动寻路至药品商人","xl_ydhj1")
	elseif(LuaQueryTask("T485") == 2) then
	   	if(LuaItemCount("o_mission321")>=1) then
			LuaSay("难民:这饼真是太好吃了,一点心意，请少侠务必笑纳!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T485jl")
		end
	end
	elseif(answer=="T485jl") then
	   	if(LuaQueryTask("T485")==2) then
			LuaSetTask("T485",99)
			DelLog("551")
			DelLog("485")
			LuaAddJx("combat_exp",299000,"T485")
			DelItem("o_mission321",LuaItemCount("o_mission321"))
			LuaAddAchievementSchedule("Task_num",1)
			LuaGive("coin",2000,"T485")
			UpdateMenu()
	        end
	elseif(answer=="xl_ydhj1")then
		AutoPathByTaskStep("T485",1)

	elseif(answer=="T485YES") then
		LuaSay("难民：你真是个好人，好人会有好报的.")
		LuaSay("难民：听说洛阳城里的某个商人那里有东西卖，你可以去看看哦@!")
		LuaSetTask("T485",1) 
		AddLog("救助难民【剧情 】",485)
		UpdateMenu()
		UpdateTopSay("去洛阳的某个商人那里看看吧")
		AddMenuItem("@7是否@0寻路至@4药品商人","")
		AddMenuItem("自动寻路至药品商人","xl_ydhj1")
	elseif(answer=="T485NO") then
		LuaSay("难民：真是世风日下,人不如妖")
		LuaSet("hp",0)
		FlushMyInfo("0")
		LuaDelTask("T485")
		UpdateMenu()
---------------------------------------- 知恩图报
elseif(answer=="T486") then               
	if(LuaQueryTask("T486")==0) then
		LuaSay("难民：少侠，急人所急，乐于助人，我就告诉你个好消息吧.洛阳城的符坚，在寻找一件连环铠甲，听说找到铠甲的人，会得到很大的好处.")
		LuaSay(""..LuaQueryStr("name")..":既然那么多人找，想必早就找到了吧!")
		LuaSay("难民：乱找怎么可能找得到，少侠使我免于饥饿，我就给少侠指条明路吧，你去找@4洛阳城@0的@3防具商人@0，相信会有收获的")
		LuaSetTask("T486",1)	
                AddLog("知恩图报【剧情】",486)
                UpdateMenu()
                UpdateTopSay("去洛阳城的防具商人那里看看")
	elseif(LuaQueryTask("T486")==1) then
		LuaSay("难民：不要乱跑了。去找洛阳城的防具商人吧")
	end

------------------------------------------------

elseif(answer=="T480") then
	if(LuaQueryTask("T480")==0) then
		LuaSay("难民：苻坚将军在位之时，我们北方汉族子民尚算安定，如今苻坚将军战败，众将叛变，任谁都能看的出，北方又要战乱了，日子难过啊，我们打算南迁以图稍稍的安宁。")
		LuaSay("难民：现如今我们打算南迁，就要囤积大量物资留在南迁过程中使用，不然还没找到可以安身立命的地方，我们就全死了。")
		LuaSay("难民：而我是负责收集@3鬃毛熊@0身上的@2熊皮@0和@2熊毛@0用于制作衣服来保暖，但是难民中大多都是手无缚鸡之力的，我想请英雄为我收集@25份熊皮@0和@25份熊毛@0。")
		LuaSay("难民：组队会获得额外的收益")
		LuaSetTask("T480",1)      -------日志的添加
		AddLog("难民的悲哀【循环】",480)
		UpdateMenu()
	elseif(LuaQueryTask("T480")==1) then
		if(LuaItemCount("o_mission344")>=5 and LuaItemCount("o_mission345")>=5) then
			LuaSay("难民：多谢英雄相助！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T480jl")
		else
			LuaSay("难民：我需要的@3鬃毛熊@0身上的@2熊皮@0和@2熊毛@0你还没给我找够呢，它们都在@3鬃毛熊@0身上哦@!")
		end
	end

	elseif(answer=="T480jl")then  -----------------给经验
	local level = LuaQuery("level") 
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T480")==1) then
		LuaDelTask("T480")
		DelItem("o_mission344",5)---------删除道具
		DelItem("o_mission345",5)

		LuaGive("coin",1000,"T480")
  		local jingyan
		if(TeamCount()>=2)then
			LuaSay("@1提示：获得组队经验加成")
			jingyan=(78835+level^2*20)
		else
			jingyan=(41000+level^2*20)
		end
		LuaAddJx("combat_exp",jingyan,"T480")
		if(LuaQueryTask("T480_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T480_a",99)
		end

		DelLog("480") 
		LuaDelTask("T480")      
		UpdateMenu()

	end
    
elseif(answer=="T482") then
	if(LuaQueryTask("T482") ==0 ) then
		LuaSay("难民：少侠，为了躲避战乱，我流离至此，更倒霉的是背上有个毒疮，因为没钱买药，现在已经是病入膏肓。")
		LuaSay("难民：不知少侠愿不愿意为我吸毒疮。")
		AddMenuItem("选择列表","","")
		AddMenuItem("帮助","yuanyitg","")
	        AddMenuItem("不帮","byuanyitg","")
        elseif(LuaQueryTask("T482") == 1) then
		LuaSay("难民:少侠,帮我去买@2金创药@0！")
	elseif(LuaQueryTask("T482") == 3) then
	   if(LuaItemCount("o_mission335")==1) then
                LuaSay(""..LuaQueryStr("name").."：快点用吧，这是我找来的@2金创散@0。")
		LuaSay("难民：少侠的大恩我以后定当报答。好人自有天佑，少侠必定前途无量@!！")
	   	LuaSay("难民:,一点心意，请少侠务必笑纳!")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T482jl")
		end
	end
	   	elseif(answer=="T482jl") then
	   	if(LuaQueryTask("T482")==3) then
	   		LuaSetTask("T482",99)
	   		DelLog("482")
	   		DelItem("o_mission335",1)
	   		LuaAddJx("combat_exp",299000,"T482")
			LuaGive("coin",2400,"T482")
			LuaAddAchievementSchedule("Task_num",1)
	          	UpdateMenu()
	          	end

	elseif(answer=="yuanyitg") then
		LuaSay("难民：少侠真乃侠义心肠，毒疮洗掉后，现在感觉好多了")
		LuaSay(""..LuaQueryStr("name")..":举手之劳，何足挂齿。")
		LuaSay("难民：现在毒疮吸了，但是伤口还没有愈合。")
		LuaSay("难民：不知道少侠能不能到洛阳城药品商人那里给我买瓶@2金创散@0，我定当报答少侠的大恩")
		LuaSay(""..LuaQueryStr("name").."：反正我也是闲来无事，就帮你这个忙吧。")
		LuaSetTask("T482",1)
		UpdateTopSay("去药品商人那里看看吧")
		AddLog("医治难民【剧情 】",482)
		UpdateMenu()
	elseif(answer=="byuanyitg") then
		LuaSay("难民：少侠既然不愿意帮忙我也不再为难。")
		UpdateMenu()	
		
elseif(answer=="Tsnpc_43")then
	if(LuaQueryTask("Tsnpc_43")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("难民：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_43",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_43")==2)then
		LuaSay("难民：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_43")then
	if(LuaQueryTask("Tenpc_43")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("难民：这都是大人的功劳啊")
		LuaSetTask("Tenpc_43",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_43")==2)then
		LuaSay("难民：话已经带到了，快回去领取奖励吧")
	end		       
end
LuaSendMenu()
return 1
end