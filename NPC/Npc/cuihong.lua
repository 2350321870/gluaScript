NPCINFO = { 
serial="127" ,
base_name="cuihong",
icon=2573,
NpcMove=2573,
name="崔宏" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="谁人识我千里马",
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
	local T736=LuaQueryTask("T736")
	local T750=LuaQueryTask("T750")
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_68")==1 or LuaQueryTask("Tsnpc_68")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_68")
		if(LuaQueryTask("Tsnpc_68")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_68")==1 or LuaQueryTask("Tenpc_68")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_68")
		if(LuaQueryTask("Tenpc_68")==1)then
			havetask2=1
		end
	end
	if(T736==2 )then
		AddTopSayMenuItem("@2义助崔宏【剧情】","T736")
		havetask2=1
	end

	if(T750==1 or T750==2 or T750==3 or T750==4)then
		AddTopSayMenuItem("@2最后的挑战【剧情】@0","T750")
		if(LuaQueryTask("T750")==3)then
			havetask2=1
		end
	end
--以上为黄色问号部分
	if(LuaQueryTask("T751")==1)then
		AddTopSayMenuItem("@2鏖战草原【循环】","T751")
		havetask4=1
	end
	if(T736==3)then
		AddTopSayMenuItem("@2义助崔宏【剧情】","T736")
		havetask4=1
	end
--以上为灰色问号部分
	if(T750==0 and level>=59)then
		AddTopSayMenuItem("最后的挑战【剧情】","T750")
		havetask1=1
	end
	if(LuaQueryTask("T751")==0 and level>=47 and level<=50)then
		AddTopSayMenuItem("鏖战草原【循环】","T751")
		havetask1=1
	end
--以上为黄色问号部分

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
------------------------------------------------
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
elseif(answer=="liaotian") then
	LuaSay("崔宏：一代明主难寻啊？？？") 

elseif(answer=="T736")then            ----------------------------------------------义助崔宏【剧情】
	if(LuaQueryTask("T736")==2)then
		LuaSay(LuaQueryStr("name").."：据说你对消灭邪恶有一定的建树，可否指点一二啊？")
		LuaSay("崔宏：可以啊。邪术传自西北之地，往北去自可找到答案，可惜@4关外@0到处都是@3草原熊@0，很不安全，请你去消灭@220只草原熊@0，消灭后回复。")
		LuaSetTask("T736",3)
		LuaSetTask("task_kill/mon_049/T736",1)
		AddLog("义助崔宏【剧情】",736)
		UpdateTopSay("消灭20只草原熊")
		UpdateMenu()
	elseif(LuaQueryTask("T736")==3)then
		local a=LuaQueryTask("task_kill/mon_049/T736")-1
		if(a>=20)then
			LuaSay("崔宏：非常漂亮，就需要你这样的英雄！")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","T736jl")
		else
			LuaSay("崔宏：你才杀了@2"..a.."只草原熊@0，快去消灭@220只草原熊@0吧！")
		end
	end
	elseif(answer=="T736jl")then     ---------------------------------736奖励
		if(LuaQueryTask("task_kill/mon_049/T736")>=21)then
			LuaSetTask("T736",99)
			DelLog("736")
			LuaAddJx("combat_exp",707000,"T736")
			LuaGive("coin",4000,"T736")
			LuaAddAchievementSchedule("Task_num",1)	
			UpdateMenu()
		end

elseif(answer=="T750")then                 --------------------------------------最后的挑战【剧情】
	if(LuaQueryTask("T750")==0)then
		LuaSay("崔宏：如今统一大业还未完成，形势异常复杂。先去@3苻坚@0那里吧！")
		LuaSetTask("T750",1)
		AddLog("最后的挑战【剧情】",750)
		UpdateTopSay("去找苻坚")
		UpdateMenu()
	elseif(LuaQueryTask("T750")==1)then
		LuaSay("崔宏：快去找@3苻坚@0吧！")
	elseif(LuaQueryTask("T750")==3)then
		LuaSay(LuaQueryStr("name").."：@3苻坚与晋帝@0等都支持我完成统一大业，可现在北方局势还是很糟糕，唉....")
		LuaSay("崔宏：没错，现在要想完成统一大业，就得平定北方，到@4云中城@0找@3拓跋圭@0去锻炼吧！")
		LuaSetTask("T750",4)
		AddLog("最后的挑战【剧情】",750)
		UpdateTopSay("去云中城找拓跋圭")
		UpdateMenu()
	elseif(LuaQueryTask("T750")==4)then
		LuaSay("崔宏：快去@4云中城@0找@3拓跋圭@0吧")
	end

elseif(answer=="T751")then ----------------------------------------------鏖战草原【循环】
	if(LuaQueryStrTask("751day")~=GetCurrentDay())then
			LuaDelTask("T751num")
	end
	if(LuaQueryTask("T751")==0)then
		LuaSay("崔宏：我欲去北方投靠拓跋氏，无奈被草原熊阻隔再次。幸得小英雄您前来，帮我消灭@235只草原熊@0吧，必有重谢！")
		LuaSetTask("T751",1)
		LuaSetTask("task_kill/mon_049/T751",1)
		LuaAddTask("T751num",1)
		LuaSetTask("751day",GetCurrentDay())
		AddLog("鏖战草原【循环】",751)
		UpdateTopSay("消灭35只草原熊后回复我")
		UpdateMenu()
	elseif(LuaQueryTask("T751")==1)then
		local a=LuaQueryTask("task_kill/mon_049/T751")-1
		if(a>19)then
			LuaSay("崔宏：英雄您虽然神勇，可这草原熊杀之不绝啊！先给你些许报酬吧。")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","T751jl")
		else
			LuaSay("崔宏：你才杀了@2"..a.."只草原熊@0，快去消灭@235只草原熊@0再来找我吧！")
		end
	end
	elseif(answer=="T751jl")then     ---------------------------------751奖励
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T751")==1 and LuaQueryTask("task_kill/mon_049/T751")>=36)then
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
			LuaGive("coin",money,"T751")
			if(LuaQueryTask("T751num")<=30)then	
				jingyan=(88126+level^2*20)
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
				jingyan=(88126+level^2*20)/2
			end
			LuaAddJx("combat_exp",jingyan,"T751")
			if(LuaQueryTask("T751_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T751_a",99)
			end

			DelLog("751")
			LuaSetTask("T751",0)
			UpdateMenu()
		end
elseif(answer=="Tsnpc_68")then
	if(LuaQueryTask("Tsnpc_68")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("崔宏：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_68",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_68")==2)then
		LuaSay("崔宏：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_68")then
	if(LuaQueryTask("Tenpc_68")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("崔宏：这都是大人的功劳啊")
		LuaSetTask("Tenpc_68",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_68")==2)then
		LuaSay("崔宏：话已经带到了，快回去领取奖励吧")
	end
end
LuaSendMenu()
return 1
end 

