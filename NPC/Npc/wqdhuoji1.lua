NPCINFO = {
serial= "64" ,
base_name="wqdhuoji1",
icon= 2505, 
NpcMove=2505, 
name= "武器商人【商】" , 
--level=10 ,
iconaddr=1, 
butt="40|10|63", 
name_color = "CEFFCE" , 
lastsay="装备强化可增加属性",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=10,
{"e_falchion012" , 2000, 8 },
{"e_falchion014" , 2000, 8 },
{"e_falchion017" , 2000, 8 },
{"e_sword014" , 2000, 8 },
{"e_sword016" , 2000, 8 },
{"e_sword018" , 2000, 8 },
{"e_knife008" , 2000, 8 },
{"e_knife009" , 2000, 8 },
{"e_book006" , 2000, 8 },
{"e_book008" , 2000, 8 },
} 
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
	local level= LuaQuery("level")
        local T533 = LuaQueryTask("T533")
	local Tbprw9=LuaQueryTask("Tbprw9")
	local Tbprw9_1=LuaQueryTask("Tbprw9_1")
	AddTopSayMenuItem("@7任务列表","")
	AddTopSayMenuItem("买卖","buy1")
 	AddTopSayMenuItem("@3抢矿【活动】","cm4")
	 if(T533 ==0 and level >=32) then
		AddTopSayMenuItem("为民除害【剧情】","T533")
		havetask =1
	end
	if(T533 ==1 or T533 ==2 or T533 ==3) then
		AddTopSayMenuItem("@2为民除害【剧情】","T533")
		if(T533 ==1) then	--显示灰色
			havetask =4
		end
	end  
	if((LuaQueryTask("Tsnpc_48")==1 or LuaQueryTask("Tsnpc_48")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_48")
		if(LuaQueryTask("Tsnpc_48")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_48")==1 or LuaQueryTask("Tenpc_48")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_48")
		if(LuaQueryTask("Tenpc_48")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tbprw9_1")==1) then
		AddTopSayMenuItem("@2购买物资【每日】","Tbprw9_1")
		havetask=2
	end
	if(LuaQueryTask("Tcoc")==19)then
		AddTopSayMenuItem("@2商贾向背","Tcoc")
		havetask =2
	end

		AddTopSayMenuItem("前往黑石矿场","Cm2")	

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
elseif(answer=="buy1") then
	DoBuy()
elseif(answer=="liaotian") then
	LuaSay("武器商人：没落的洛阳啊。")
elseif(answer=="Tcoc")then---------------------商贾向背8 Tcoc===19
	if(LuaQueryTask("Tcoc")==19)then
		LuaSay("武器商人：我一向独来独往，我还是一个人清净.")
		LuaSetTask("Tcoc",20)
		LuaSetTask("T955",20)
		AddLog("商贾向背【每日】",955)
		LuaGive("coin",800,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		UpdateMenu()
	end

elseif(answer=="cm4")then
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(hour==12 or hour==23)then
	LuaSay("在上午@212:00~13:00@0，下午@223:00~24:00@0时分开放@2抢采矿场@0,有机会采到高级材料，耐心等待吧。@!")
	AddMenuItem("要进入@2抢采矿场@0吗","")
	AddMenuItem("不进入","no")
	AddMenuItem("@2进入","yescm4")
	else
	LuaSay("在上午@212:00~13:00@0，下午@223:00~24:00@0时分开放@2抢采矿场@0,有机会采到高级材料，耐心等待吧。@!")
	LuaSay("现在服务器时间是:@2"..hour.."时"..minute.."分@0.不是抢采时间")
	end
elseif(answer=="yescm4")then
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(hour==12 or hour==23)then
		ChangeMap("lu_mine04")
	else
	LuaSay("好你个臭小子，你又作弊了，小心封你号哈。")
	end
elseif(answer=="no")then
	LuaSay("武器商人：白占的便宜都不想占，孺子不可教也！")

elseif(answer=="Cm2") then 
	local level= LuaQuery("level")
	if(level>=40)then
		if(LuaQuery("till")>=500)then
		ChangeMap("lu_mine02")
		else
		LuaSay("采集熟练度不够,你的采集次数达到500以上才能进入.")
		end
	else
	LuaSay("中级采集场40级才能进入")
	end


 elseif(answer=="T533")then
	if(LuaQueryTask("T533")==0)then
		LuaSay("武器伙计：洛阳郊外的@3氐族哨兵@0到处作乱，经常到洛阳城里强虐我们的财物，本店的@2火麟剑@0就被他们抢走了。")
		LuaSay("武器伙计：见阁下气定神闲，定是高手！劳烦阁下帮忙杀@210个氐族哨兵@0，如此就可以消除城里的安全隐患了。")
		LuaSay("武器伙计： 要是能顺便找到本店的@3火麟剑@0那就更好了，在下一定重谢。")
		LuaSay(""..LuaQueryStr("name").."：为民除害，是我的本分，这事就包在我身上了")
		UpdateTopSay("杀10个氐族哨兵来找我")
		LuaSetTask("T533",1)
		AddLog("为民除害【剧情】",533)
		LuaSetTask("task_kill/mon_025/T533",1)
		UpdateMenu()
	elseif(LuaQueryTask("T533")==1)then
		local a=LuaQueryTask("task_kill/mon_025/T533")-1
		if(a<10) then
			LuaSay("武器伙计：你才消灭了@3"..a.."@0个氐族哨兵，他们以后还会为祸乡里，快去杀@210个氐族哨兵@0消除隐患吧。") 
		elseif(LuaItemCount("o_mission342")==1 and a>=10 ) then 
			LuaSay("武器伙计：阁下不仅帮我杀了@310个氐族哨兵@0，而且找回了本店的@2火麟剑@0,真是太感谢了") 
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T533j1")
		else
			LuaSay("武器伙计：多谢你了，我们暂时没有威胁了。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T533j2")
		end
	else
	  LuaSay("武器伙计：去洛阳郊外杀10个氐族哨兵来找我")
	end

	elseif(answer=="T533j1")then
		if(LuaQueryTask("T533")==1) then
		if(LuaQueryTask("task_kill/mon_025/T533") >= 11 and LuaItemCount("o_mission342")==1) then 
		LuaSetTask("T533",99)
		DelLog("533")
		LuaDelTask("task_kill/mon_005/T241")
		DelItem("o_mission342",1)
		LuaAddJx("combat_exp",314000,"T241")--奖励
		LuaAddAchievementSchedule("Task_num",1)
		LuaGive("coin",3000,"T533")
		UpdateMenu() 
		end
		end
	elseif(answer=="T533j2")then
		if(LuaQueryTask("T533")==1) then
		if(LuaQueryTask("task_kill/mon_025/T533") >= 11 ) then
		LuaSetTask("T533",99)
		DelLog("533")
		LuaDelTask("task_kill/mon_025/T533")
		LuaAddJx("combat_exp",314000,"T533")--奖励
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu() 
		end
		end 

elseif(answer=="Tbprw9_1")  then
if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw9_1")==1) then
		LuaSay(""..LuaQueryStr("name").."：我奉晋帝的圣旨前来购买@3晋国御用武器@0，还望行个方便。")
		LuaSay("武器伙计：购买@3晋国御用武器@0要使用@33000铜币@0")
		AddMenuItem("选择列表","")
        AddMenuItem("买","YES")
	    AddMenuItem("不买","NO1")
	end
	if(LuaQueryTask("Tbprw9")==2) then
		LuaSay("武器伙计：快去把@3晋国御用防具@0送给@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
	end
else
		LuaSay("武器伙计：新的一天，新的开始，你今天以前的@3购买物资【每日】@0任务还没完成！")
		LuaSay("武器伙计：现在到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0重新接取任务@3购买物资【每日】@0任务吧！")
end
elseif(answer=="YES") then
	if(LuaQueryTask("Tbprw9_1")== 1) then
		if(LuaItemCount("coin")>=3000) then
			LuaGive("o_mission403",1)
			LuaGive("coin",-3000,"Tbprw9")
			LuaSay("武器伙计：快去把@3晋国御用防具@0送给@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
			LuaSetTask("Tbprw9",2)
			LuaSetTask("Tbprw9_1",99)
		elseif(LuaItemCount("coin")<3000) then
			LuaSay("武器伙计：你身上只有@3"..LuaItemCount("coin").."铜币@0,不足@33000铜币@0啊！")
			LuaSay("武器伙计：你虽然是晋帝派来买@3晋国御用武器@0的，但也不能让我做亏本生意啊！")
		end
	end
elseif(answer=="NO1") then
	if(LuaQueryTask("Tbprw9_1")== 1) then
		LuaSay("武器伙计：这么小气，@33000铜币@0都不愿出。")
		LuaSay("武器伙计：听说晋帝很大气哦，你替他办事，他绝对不会亏待你的。")
		LuaSay("武器伙计：还是买吧，回去好交差。")
		AddMenuItem("选择列表","")
        AddMenuItem("买","YES")
	    AddMenuItem("不买","NO2")
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("Tbprw9_1")== 1) then
		LuaSay("武器伙计：哎，这孩子，不买就算了吧，我也不强迫你，又不是只有你一个人来买。")
	end



elseif(answer=="Tsnpc_48")then
	if(LuaQueryTask("Tsnpc_48")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("武器伙计：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_48",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_48")==2)then
		LuaSay("武器伙计：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_48")then
	if(LuaQueryTask("Tenpc_48")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("武器伙计：这都是大人的功劳啊")
		LuaSetTask("Tenpc_48",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_48")==2)then
		LuaSay("武器伙计：话已经带到了，快回去领取奖励吧")
	end

end
LuaSendMenu()
return 1
end

