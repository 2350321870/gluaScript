NPCINFO = { 
serial="11" ,
base_name="jieyinxianzi",
icon=2561,
NpcMove=2561 ,
name="南宫若兰【新人接引】" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="靠近我，踏上统一之路",
LuaType=1,
} 
function do_talk(answer)
if (answer=="ask") then	
	havetask =0
	if(LuaQueryTask("T1")<99 )  then
		SetTitleMeg(0)
		if(LuaQueryStr("gender")=="男性") then
			LuaSay("南宫若兰：公子，欢迎来到统一ol的世界，@3走近我，与我对话@0，您将得到@3豪华新手大礼包@0哦。@!")
		else
			LuaSay("南宫若兰：姑娘，欢迎来到统一ol的世界，@3走近我，与我对话@0，您将得到@3豪华新手大礼包@0哦。@!")
		end
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("南宫若兰：您可以点击走到我的身边，@3直接点我@0，与我交谈。@!")
		else
			LuaSay("南宫若兰：您可以通过@3方向键@0走到我的身边，按@3中间确认键@0或@3直接点我@0与我交谈。@!")
		end
		LuaSetTask("T1",1)
		AddLog("与南宫若兰对话",1)
	end
		AddTopSayMenuItem("@7任务列表","")
		if(LuaQueryTask("T1")==1)  then
			AddTopSayMenuItem("@3领取新手礼包@0","T1")
			havetask =2
		else
			if(LuaQueryTask("T12")==0) then
				AddTopSayMenuItem("@5寻路至桃源径@0","Txl_ty")
			end
		end

		if(LuaQueryTask("T9")<99 and LuaQueryTask("T1")==99) then
			AddTopSayMenuItem("@3悬崖的秘密@0","T9")
		end 

--[[                                                            --------------作废
		if(LuaQueryTask("T2")<99) then
			AddTopSayMenuItem("@3无上真诀@0","T2")
			if(LuaQueryTask("T2")==1 and LuaQuery("level")>=12) then
			havetask =2
			elseif(LuaQueryTask("T2")==2 and LuaQuery("level")>=18) then
			havetask =2
			elseif(LuaQueryTask("T2")==3 and LuaQuery("level")>=24) then
			havetask =2
			end
		end    ]]
if(LuaQueryTask("T1")==99)  then
	if(havetask ==2)then
		AddTopSayMenuItem("@3剧情使命","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("@3剧情使命","liaotian","1")
	else
		AddTopSayMenuItem("@3剧情使命","liaotian","0")
	end
end
       
--return 1


elseif(answer=="liaotian") then
	LuaSay("南宫若兰：东晋末年，胡人入侵中原，东晋被逼到长江以南只能自保。胡人的统治下，汉人过着非人的生活就像牲畜一样，")
	LuaSay("南宫若兰：被圈养起来，被当做奴隶使用，失去使用价值后，就直接被杀掉甚至吃人肉喝人血。同时群妖四起，")
	LuaSay("南宫若兰：四处作乱的妖魔鬼怪更让老百姓的生活雪上加霜，妖魔吃人，人也吃人，百姓苦不堪言！")
	LuaSay("南宫若兰：传说这里乃是世外桃源，有隐士高人出没！小女子在此，期待能够一统天下的王者现世，拯救我华夏子民与水火！")
	LuaSay("南宫若兰：今天看到少侠您，便知是救世主降临，赶紧去@3桃源径@0找@2冉闵@0，他会送给您@3极品武器@0哦！")
	UpdateMenu()

elseif(answer=="Txl_ty")then	
		AutoPathByTaskStep("T1",99)
		--AutoGoToNpc("@7是否@0寻路至@4桃园径方向","lu_tyj")

elseif(answer=="T1") then
	if(LuaQueryTask("T1")==1) then	
	 LuaSay("南宫若兰：做的很好！统一ol需要您这样聪明的人。@2向右走@0，去找@4桃源径@0的@3冉闵@0可以@2领取极品装备@0哦！@!")
	 AddMenuItem("@7任务完成","")
	 AddMenuItem("领取奖励","T1jl")
	elseif(LuaQueryTask("T1")==99) then
 	LuaSay("南宫若兰：您已经领过新手礼包了，去追寻属于您的霸业吧。@2向右@0走到@3箭头@0处就可以去@4桃源径@0找@3冉闵@0了。")
	 end
		elseif(answer=="T1jl")then
			if(LuaQueryTask("T1")==1) then       
			LuaAddJx("combat_exp",200,"T1")
			LuaGive("coin",200,"T1")
			LuaSay("系统提示：恭喜您！获得了@4价值人民币1000元@0的@4豪华新手大礼包@0一个！祝您游戏愉快！")
			LuaGive("o_present001",1,"T1")
                       -- LuaGive("o_sendmap",2,"T1")
			LuaSay("南宫若兰：@2向右@0走到@3箭头@0处就可以去@4桃源径@0找@3冉闵@0了，你可以在我这里@7自动寻路去桃园径@0哦@!")
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T1",99)
			DelLog("1")
			AddMenuItem("@7是否寻路至@0@4桃源径","")
			AddMenuItem("@5寻路至桃源径@0","Txl_ty")
			UpdateTopSay("向右走去找桃源径的冉闵谈话")
			UpdateMenu()
			end
			
elseif(answer=="T2") then 
	if(LuaQueryTask("T2")==0) then        
		LuaSay(""..LuaQueryStr("name").."：听闻这世上有“@3无上真诀@0”这门奇功，恳请姑娘指点一二！")
		LuaSay("南宫若兰：此乃我师父独创，绝不外传！不过看在你我有缘，我助你洗髓伐筋！")
		LuaSay("南宫若兰：我先问问你，你有何志向？")
		AddLog("无上真诀",2)
		AddMenuItem("@7请选择","")
		AddMenuItem("@3手握重权只手遮天@0","T2_1")      
		AddMenuItem("@3天地不仁绝情入魔@0","T2_2") 
		AddMenuItem("@3看破红尘遁入空门@0","T2_3") 
		AddMenuItem("@3寂寞醉酒只为红颜@0","T2_4")
	elseif(LuaQueryTask("T2")==1) then 
		if(LuaQuery("level")>=12) then
		LuaSay("南宫若兰：恭喜你练到了12级以上！师父最看重的是有毅力的人，如果你能升到@318级@0，我愿意去求师父传你武功！")
		LuaAddJx("combat_exp",7000,"T2")
		LuaSetTask("T2",2)
		UpdateMenu()
		else
		LuaSay("提示：你由于功力不够，还没靠近她，被一股劲风弹开了！等到@312级@0再来试试吧！")
		end
	elseif(LuaQueryTask("T2")==2) then 
		if(LuaQuery("level")>=18) then
		LuaSay("提示：你正想开口说话，天空中突然传来一个洪亮的声音：小辈！习武最看重的是毅力！我可以破例传授“@3无上真诀@0”！")
		LuaSay("南宫若兰：恭喜你哦！不过由于“@3无上真诀@0”学习要求极严，没有深厚的内力容易走火入魔！等你达到@324级@0再来吧！")
		LuaAddJx("combat_exp",20000,"T2")
		LuaSetTask("T2",3)
		UpdateMenu()
		else
		LuaSay("提示：你由于功力不够，还没靠近她，被一股劲风弹开了！等到@318级@0再来试试吧！")
		end
	elseif(LuaQueryTask("T2")==3) then 
		if(LuaQuery("level")>=24) then                                                                                    
		LuaSay("提示：你正想开口说话，天空中突然出现一只大大手朝你拍下，你一时不知所措，本以为必死无疑，却发现安然无恙！")
			if(LuaQueryTask("T2_1")==1) then
			LuaSay("南宫若兰：真可惜哦！你要是有勇气去跟师父对拼一掌，你就能学习“@3无上真诀@0”中极为霸道的“@3遮天手@0”！")
			elseif(LuaQueryTask("T2_2")==1) then
			LuaSay("南宫若兰：真可惜哦！你要是有勇气去跟师父对拼一掌，你就能学习“@3无上真诀@0”中至无至绝的“@3灭神掌@0”！") 
			elseif(LuaQueryTask("T2_3")==1) then
			LuaSay("南宫若兰：真可惜哦！你要是有勇气去跟师父对拼一掌，你就能学习“@3无上真诀@0”中至空至禅的“@3如来神掌@0”！")
			elseif(LuaQueryTask("T2_4")==1) then
			LuaSay("南宫若兰：真可惜哦！你要是有勇气去跟师父对拼一掌，你就能学习“@3无上真诀@0”中至情至伤的“@3黯然销魂掌@0”！")
			end 
			LuaSay("南宫若兰：不过你的功力在不知不觉中又有新的提高！再接再厉，努力修炼，他日必定可以成为一代宗师的！")
			LuaAddJx("combat_exp",120000,"T2")
			LuaSetTask("T2",99)
			DelLog("2")
			UpdateMenu()
		else
		LuaSay("提示：你由于功力不够，还没靠近她，被一股劲风弹开了！等到@324级@0再来试试吧！")
		end
	elseif(LuaQueryTask("T2")==99) then
	LuaSay("南宫若兰：可惜哦，你没通过师父的考验，无法修炼“@3无上真诀@0”了！希望你不要灰心，努力修炼，他日必定可以成为一代宗师的！")
	end
elseif(answer=="T2_1") then
	LuaSay("南宫若兰：好一个雄心壮志！")
	LuaSay("提示：南宫若兰突然一掌拍在你头顶百汇穴！一股浑厚的内力从头顶而下！你的头脑顿时一阵清明！")
	LuaSay("南宫若兰：我已经帮你洗髓伐筋！你以后练级将事半功倍！如果你修炼到了@312级@0，那就再来找我吧！")
	LuaAddJx("combat_exp",100,"T2")
	LuaSetTask("T2_1",1)
	LuaSetTask("T2",1)

elseif(answer=="T2_2") then
	LuaSay("南宫若兰：看不出你如此无情！")
	LuaSay("提示：南宫若兰突然一掌拍在你头顶百汇穴！一股浑厚的内力从头顶而下！你的头脑顿时一阵清明！")
	LuaSay("南宫若兰：我已经帮你洗髓伐筋！你以后练级将事半功倍！如果你修炼到了@312级@0，那就再来找我吧！")
	LuaAddJx("combat_exp",100,"T2")
	LuaSetTask("T2_2",1)
	LuaSetTask("T2",1)

elseif(answer=="T2_3") then
	LuaSay("南宫若兰：原来你向往六根清净！")
	LuaSay("提示：南宫若兰突然一掌拍在你头顶百汇穴！一股浑厚的内力从头顶而下！你的头脑顿时一阵清明！")
	LuaSay("南宫若兰：我已经帮你洗髓伐筋！你以后练级将事半功倍！如果你修炼到了@312级@0，那就再来找我吧！")
	LuaAddJx("combat_exp",100,"T2")
	LuaSetTask("T2_3",1)
	LuaSetTask("T2",1)

elseif(answer=="T2_4") then
	LuaSay("南宫若兰：想不到你如此追求！")
	LuaSay("提示：南宫若兰突然一掌拍在你头顶百汇穴！一股浑厚的内力从头顶而下！你的头脑顿时一阵清明！")
	LuaSay("南宫若兰：我已经帮你洗髓伐筋！你以后练级将事半功倍！如果你修炼到了@312级@0，那就再来找我吧！")
	LuaAddJx("combat_exp",100,"T2")
	LuaSetTask("T2_4",1)
	LuaSetTask("T2",1)
elseif(answer=="T9") then
	if(LuaQueryTask("T9")==0) then
	LuaSay("南宫若兰：传闻悬崖下有一个隐世高人，不知是真是假，你有兴趣可以去看看哦！")
	LuaSay("南宫若兰：你往下走，就能看到@3万丈悬崖了@0！说不定可以得到武功秘籍、黄金万两、绝世美女帅哥哦。@!")
	LuaSetTask("T9",1)	
	AddLog("悬崖的秘密",9)
	UpdateMenu()
	else
	LuaSay("南宫若兰：传闻悬崖下有一个隐世高人，不知是真是假，你有兴趣可以去看看哦！")
	LuaSay("南宫若兰：你往下走，就能看到@3万丈悬崖了@0！说不定可以得到武功秘籍、黄金万两、绝世美女帅哥哦。@!")
	end
	

end
LuaSendMenu()
return 1
end

