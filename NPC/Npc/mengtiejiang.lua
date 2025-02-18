NPCINFO = { 
serial="17" ,
base_name="mengtiejiang",
icon=2517,
NpcMove=2517,
name="孟铁匠" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="种植采集可以获得珍贵材料",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0	--灰色问号

	local level= LuaQuery("level")

	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("T61") ==1)then
		AddTopSayMenuItem("@2成长之路2【剧情】@0","T61")
		havetask2 =1
	end
	if(LuaQueryTask("T50") ==1)then
		AddTopSayMenuItem("@2采集【教程】@0","T50")
		havetask2 =1
	end
	if(LuaQueryTask("T51") ==1)then
		AddTopSayMenuItem("@2从军【剧情】@0","T51")
	end
	if((LuaQueryTask("Tsnpc_4")==1 or LuaQueryTask("Tsnpc_4")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_4")
		if(LuaQueryTask("Tsnpc_4")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_4")==1 or LuaQueryTask("Tenpc_4")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_4")
		if(LuaQueryTask("Tenpc_4")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tfkdcg")>=9 and LuaQueryTask("Tfkdcg")<13 and GetCurrentDay()==LuaQueryStrTask("fkdcgday"))then
		AddTopSayMenuItem("@2疯狂大采购【活动】","Tfkdcg")			--疯狂大采购
		if(LuaQueryTask("Tfkdcg")==9)then
			if(LuaItemCount("o_material_48")>0 and LuaItemCount("o_material_58")>0)then
				havetask2 =1
			else
				havetask4 =1
			end
		else
			havetask2 =1
		end
	end
	if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2跑商【每日】","TPaoShang")          ----------跑商
		havetask2 =1
	end

        if(LuaQueryTask("T302")==1 and LuaQueryTask("T302A")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302A")
		havetask2 =1
	end
-----------------------国庆节----------------------------------	
	if(LuaQueryTask("Tjianguodaye")>=9 and LuaQueryTask("Tjianguodaye")<13)then
			AddTopSayMenuItem("@2建国大业【活动】","Tjianguodaye")			--国庆活动
			havetask2 =1
	end

--上为黄色问号部分

	if(LuaQueryTask("T50") ==0 and LuaQueryTask("T61") ==99)then
		AddTopSayMenuItem("采集【教程】","T50")
		havetask1 =1
	end
	if(LuaQueryTask("T51") == 0 and LuaQueryTask("T50")~=0)  then
		AddTopSayMenuItem("从军【剧情】","T51")
		havetask1 =1
	end
	
--上为黄色感叹号部分	
	

	if(LuaQueryTask("T50")==99 and level<20)  then
		AddTopSayMenuItem("@9采集【教程】","T50")--保留一段时间提示
	end
			
--上为无符号部分       

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
-----------------------国庆节-------------------------
elseif(answer=="Tjianguodaye")then			--国庆活动
	if(LuaQueryTask("Tjianguodaye")==9)then
		LuaSay(""..LuaQueryStr("name")..":听闻师父打造兵器天下无双，不知是不是真的？")
		LuaSay("孟铁匠：天下无双可不敢当，会几锤子而已！")
		LuaSay(""..LuaQueryStr("name")..":您真是过谦了！我想请您帮我打造一把@3绝世好剑@0，不知您是否愿意？")
		LuaSay("孟铁匠：打造好的兵器容易，寻找好的材料难啊！你去帮我收集@3一个二级矿和一个三级晶@0。我就帮你打造你要的兵器！")
		LuaSetTask("Tjianguodaye",10)
	elseif(LuaQueryTask("Tjianguodaye")==10)then
		if(LuaItemCount("o_material_48")>0 and LuaItemCount("o_material_58")>0)then
		LuaSay("孟铁匠：这么快就收集好啦？打造这么好的剑可需要花点时间，10分钟后在来找我吧！")
		time=GetCurrentTime()
		LuaSetTask("jianguodayetime",time)
		LuaSetTask("Tjianguodaye",11)
		DelItem("o_material_48",1)
		DelItem("o_material_58",1)
		else
		LuaSay("孟铁匠：你还没有收集到@3一个二级矿和一个三级晶@0呢！")
		end
	elseif(LuaQueryTask("Tjianguodaye")==11)then
		a=GetCurrentTime()-LuaQueryTask("jianguodayetime")
		if(a>600)then
			LuaGive("o_mission250",1)
			LuaSetTask("Tjianguodaye",12)
		else
		LuaSay("孟铁匠：时间还没过@310分钟@0呢！在等等吧！")
		end
	elseif(LuaQueryTask("Tjianguodaye")==12)then
		LuaSay("铁匠：剑已经铸造好了，快拿去交给@3活动使者@0吧！")
	end	
------------------------------------------------------- 
elseif(answer=="liaotian") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("孟铁匠：点击@2菜单@0后点击@2背包@0即可进入背包中了，选中@2药物@0后再直接选择@31使用@0即可。") 
	else
		LuaSay("孟铁匠：按@2确定键@0后点@23背包@0即可进入@3背包@0了，选中@2药物@0后可按@2确定键@0直接@3使用@0，也可按@21/3/7/9设置快捷键@0。")
	end
 elseif(answer=="Txl_mwzl")then
	AutoGoToNpc("@7是否@0寻路至@4迷雾之林方向","lu_tyc")
	
elseif(answer=="T302A") then
	if(LuaQueryTask("T302A")==0) then
		LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件")
		LuaSay("孟铁匠：难道又有人稀罕我打造的武器了？")
		DelItem("o_mission076",1)
		LuaSetTask("T302A",99)
		UpdateMenu()
	end
		       
elseif(answer=="T50") then
	if(LuaQueryTask("T60")==99)then
		if(LuaQueryTask("T50")==0)then
			LuaSay("孟铁匠：最近矿石奇缺，你去帮我采些矿来吧。好像貌似在我身边就有一个矿，去@2采集一个矿石@0交给我吧。")
			LuaSetTask("T50",1)
			AddLog("采集【教程】",50)
			UpdateMenu()
			AddMenuItem("@7了解用快捷键采集","")
			AddMenuItem("如何用快捷键","caiji")
			AddMenuItem("清楚了，不用了解","fangqi")
		elseif(LuaQueryTask("T50")==1)then
			if(LuaItemCount("o_mission021")==0)then
				LuaSay("孟铁匠：今天本匠眼花了吗？你还没有采集到@2矿石@0呢，采集@2我身边的矿@0就能得到了。")
				AddMenuItem("@7了解用快捷键采集","")
				AddMenuItem("如何用快捷键","caiji")
				AddMenuItem("清楚了，不用了解","fangqi")
			else
				LuaSay("孟铁匠：原来你脑子和我一样好使啊，你已经懂得了如何采集，本匠甚是欣慰啊！")
				LuaSay("孟铁匠：@2采集物@0可不是只有矿物哦，还有很多@3花草植物也可采集@0。")
				if(LuaQueryStr("MobieType") ~= "S20") then
					LuaSay("孟铁匠：记住！@3所有技能和药品@0都可以@2设置快捷键@0，快捷键有两栏，可用右上角的@2切换@0可切换到下一单元的快捷键。@!快试试吧。")
				else
					LuaSay("孟铁匠：记住！@3所有技能和药品@0都可以@2设置快捷键@0，快捷键有三栏，可用@39号键@0切换。@!快试试吧。")
				end
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T50jl")
			end
		elseif(LuaQueryTask("T50")==99)then
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("孟铁匠：点击@2菜单@0后再点击@2技能@0，弹出界面后点击@2生活技能@0出现的@2第一个技能@0就是@2采集技能@0。")
				LuaSay("孟铁匠：@2选中采集技能@0后，再点击@快捷栏中的任何一个快捷键小格@0，就将@2采集技能@0放入@2快捷键栏@0了。")
				LuaSay("孟铁匠：@2在矿物或者植物附近@0按设置好的采集快捷键，@2使用采集技能@0就可以进行采集了。")
				LuLuaSay("孟铁匠：记住！@3所有技能和药品@0都可以@2设置快捷键@0，快捷键有两栏，可用右上角的@2切换@0可切换到下一单元的快捷键。@!快试试吧。")

			else
				LuaSay("孟铁匠：按@2确认键@0后再按@24键@0，弹出界面后点击@2生活技能@0出现的@2第一个技能@0就是@2采集技能@0。")
				LuaSay("孟铁匠：@2选中采集技能@0后，再按@21、2、3、4、6、7@0中的任意一个键，就将@2采集技能@0放入@2快捷键@0了。")
				LuaSay("孟铁匠：@2在矿物或者植物附近@0按设置好的采集快捷键，@2使用采集技能@0就可以进行采集了。")
				LuaSay("孟铁匠：@3所有技能和药品@0都可以@2设置快捷键@0，快捷键有三栏，可用@39号键@0切换。@!快试试吧。")
			end
			LuaSay("提示：该任务已完成")
		end
	else
		LuaSay("孟铁匠：大侠必须完成@5浣衣娘@0处的@3使用物品【教程】@0任务才能继续前行，使用物品是最基础的操作哦@!")
	end
elseif(answer=="caiji") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		SendCommand("call=孟铁匠：点击@2菜单@0后再点击@2技能@0，弹出界面后点击@2生活技能@0出现的@2第一个技能@0就是@2采集技能@0。。|0|12|3|5|180")
		LuaSay("孟铁匠：@2选中采集技能@0后，再点击@快捷栏中的任何一个快捷键小格@0，就将@2采集技能@0放入@2快捷键栏@0了。")
		LuaSay("孟铁匠：@2在矿物或者植物附近@0按设置好的采集快捷键，@2使用采集技能@0就可以进行采集了。")

	else
		SendCommand("call=孟铁匠：按@2确认键@0后再按@24键@0，弹出界面后点击@2生活技能@0出现的@2第一个技能@0就是@2采集技能@0。|0|12|3|5|180")
		LuaSay("孟铁匠：@2选中采集技能@0以后，再按@21、3、7、9@0中的任意一个键，就将@2采集技能@0放入@2快捷键@0了。")
		LuaSay("孟铁匠：@2在矿物或者植物附近@0按设置好的采集快捷键，@2使用采集技能@0就可以进行采集了。")
	end
	LuaSay("孟铁匠：@2其他的技能物品的快捷键设置也是如此@0，以您的智慧，一定觉得很简单吧。现在我帮你打开生活技能哦@!")
elseif(answer=="fangqi") then
        LuaSay("孟铁匠：嗯，你行！既然已经知道如何采集，我就不罗嗦了。@!")
elseif(answer=="T50jl") then
	if(LuaQueryTask("T50")==1)then
		if(LuaItemCount("o_mission021")>=1)then
			LuaSetTask("T50",99)
			DelLog("50")
			DelItem("o_mission021",LuaItemCount("o_mission021"))
			LuaAddJx("combat_exp",7700,"T50")
			LuaGive("e_head003",1,1,"T50")   --7级帽子
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
		end
	end

elseif(answer=="T61") then              ------------------------成长之路 
		if(LuaQueryTask("T61")==1) then
			LuaSay("孟铁匠："..LuaQueryStr("name").."，你要去闯天下了吗？好，好，英雄当志在四方。")
			LuaSay("孟铁匠：哈哈，我这辈子就和矿物打交道了，你若不嫌弃，就在我这了解一番吧。@!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T61jl")
		end 
		elseif(answer=="T61jl")then	            
		       if(LuaQueryTask("T61")==1)then
				LuaSetTask("T61",99) 
				LuaAddJx("combat_exp",5300,"T61") 
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("e_pants002",1,1,"T145")         --7级的绝尘裤
				DelLog("61") 
				UpdateMenu() 
				UpdateNPCMenu("huanyiniang")
				AddMenuItem("@7任务完成","")
				AddMenuItem("采集【教程】","T50")
			end

elseif(answer=="T51") then              ------------------------从军 
	if(LuaQueryTask("T50")==99)then
		if(LuaQueryTask("T51")==0) then
			SendCommand("call=孟铁匠：我的技巧都被你学光了，快去找@3王主簿@0，开创你的统一大业吧！|0|100")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("孟铁匠：万能任务健现在在你的快捷技能栏上哦，按一下就能打开它能将你传送到任务对应的NPC哪里去。")
				LuaSay("孟铁匠：方便吧，现在我帮你打开万能任务键，选择此任务再次点击就能传送到@4王主簿@0了哦@!")
			else
				LuaSay("孟铁匠：万能任务健现在在你的快捷技能栏1上哦，按一下就能打开它能将你传送到任务对应的NPC哪里去。")
				LuaSay("孟铁匠：方便吧，现在我帮你打开万能任务键，选择此任务点确定键就能传送到@4王主簿@0了哦@!")
			end
			LuaSetTask("T51",1)
			UpdateTopSay("去找迷雾之林的王主簿谈话")
			AddLog("从军【剧情】",51)
			UpdateMenu()
			UpdateNPCMenu("mubingshi")
			--if(LuaQueryTask("T50")==99)then
			--		AutoGoToNpc("@7是否@0寻路至@4迷雾之林方向","lu_tyc")
			--end
		elseif(LuaQueryTask("T51")==1) then
			SendCommand("call=孟铁匠：快去找@3王主簿@0，踏上你的统一之途吧。他就在@2右边的村子外@0。|0|100") 
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("孟铁匠：万能任务健现在在你的快捷技能栏上哦，按一下就能打开它能将你传送到任务对应的NPC哪里去。")
				LuaSay("孟铁匠：方便吧，现在我帮你打开万能任务键，选择此任务再次点击就能传送到@4王主簿@0了哦@!")
			else
				LuaSay("孟铁匠：万能任务健现在在你的快捷技能栏1上哦，按一下就能打开它能将你传送到任务对应的NPC哪里去。")
				LuaSay("孟铁匠：方便吧，现在我帮你打开万能任务键，选择此任务点确定键就能传送到@4王主簿@0了哦@!")
			end
		end
	else
		LuaSay("孟铁匠：采集所得的材料是提升装备能力的一种重要方式。英雄先要完成@3采集【教程】@0才能继续开创统一大业@!")
	end
elseif(answer=="TPaoShang") then------------跑商
    if((GetCurrentTime()-LuaPublicQuery("PSshuaxin_CD"))>=300) 	 then     -------物品价格，公用一个刷新时间间隔，
        LuaPublicSet("PSshuaxin_CD",GetCurrentTime())   ----------重置公用刷新时间
		LuaPublicSet("PS_MN_price1",100*(LuaRandom(35)+90)/100)     -------物品价格波动范围：-10%~25%   ，暂定
		LuaPublicSet("PS_FCS_price1",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price1",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price1",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price1",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price2",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price2",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price2",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price2",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price2",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price3",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price3",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price3",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price3",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price3",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price4",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price4",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price4",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price4",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price4",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price5",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price5",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price5",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price5",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price5",1000*(LuaRandom(20)+90)/100)
		UpdateMenu()
	end
   -------------------------
   
   
	if(LuaQueryTask("TPaoShang")==1) then
	if(LuaCheckBuff("518")==1)then      --------跑商保护检测
		if(LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit") and(GetCurrentTime()-LuaQueryTask("PSbegin_time"))<3600 )then   -----超时与跑商金额满额的判断 
		LuaSay("孟铁匠：距离下次物品价格刷新还有@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."秒！@0你目前的跑商金额为@3"..LuaQueryTask("PSmoney").."铜币!@0")
		LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("获得5分钟跑商保护状态")
    		FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----即将超时提醒
		LuaSay("孟铁匠：你今天的跑商期限不到@55分钟@0了！快@3把东西卖了@0吧，不然你会亏死的！")
		end
		AddMenuItem("@7货品列表","")                  -----------物品列表，以及出现在菜单的概率 
			AddMenuItem("@3玛瑙,单价@3"..LuaPublicQuery("PS_MN_price2").."铜币@0","PS_MN")
			AddMenuItem("@3翡翠石,单价@3"..LuaPublicQuery("PS_FCS_price2").."铜币@0","PS_FCS")
			AddMenuItem("@3水晶,单价@3"..LuaPublicQuery("PS_SJ_price2").."铜币@0","PS_SJ")
			AddMenuItem("@3珍珠,单价@3"..LuaPublicQuery("PS_ZZ_price2").."铜币@0","PS_ZZ")
			AddMenuItem("@3夜明珠,单价@3"..LuaPublicQuery("PS_YMZ_price2").."铜币@0","PS_YMZ")
		else
		LuaSay("孟铁匠：你今天的跑商已经到达期限或者跑商金额已满，快回复@4建康城@0的@3行脚商人@0吧！")
		UpdateTopSay("快回复建康城的行脚商人吧")
		end 
    else
    LuaSay("孟铁匠：你身上的@3跑商保护状态@0已经消失，在路上容易遭受攻击，无法继续跑商！")
    LuaSay("@1提示@0：回行脚商人那里结束任务，能获得额外奖励，有机会触发隐藏奖励！现在确定立即结束？")
    AddMenuItem("@7操作列表","")
	AddMenuItem("@3结束跑商","PS_over")
    end
	end
elseif(answer=="PS_over")then
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DelItem("o_mission380",LuaItemCount("o_mission380"))
	if(LuaItemCount("o_mission414")~=0) then         ----删除跑商结束符
  	DelItem("o_mission414",LuaItemCount("o_mission414"))
  	end
	FlushMyInfo("1")
	LuaSetTask("TPaoShang",99)
	UpdateMenu()
elseif(answer=="PS_MN")then                 ---------------玛瑙买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_MN_buy_1")
	AddMenuItem("@3买10个","PS_MN_buy_10")
	AddMenuItem("@3卖1个","PS_MN_sell_1")
	AddMenuItem("@3卖10个","PS_MN_sell_10")
	AddMenuItem("@3全卖了","PS_MN_sell_all")
elseif(answer=="PS_MN_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price2"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price2"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price2"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_MN_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission376") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_MN_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price2")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_FCS")then                 ---------------翡翠石买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_FCS_buy_1")
	AddMenuItem("@3买10个","PS_FCS_buy_10")
	AddMenuItem("@3卖1个","PS_FCS_sell_1")
	AddMenuItem("@3卖10个","PS_FCS_sell_10")
	AddMenuItem("@3全卖了","PS_FCS_sell_all")
elseif(answer=="PS_FCS_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price2"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price2"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price2"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_FCS_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission377") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_FCS_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price2")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_SJ")then                 ---------------水晶买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_SJ_buy_1")
	AddMenuItem("@3买10个","PS_SJ_buy_10")
	AddMenuItem("@3卖1个","PS_SJ_sell_1")
	AddMenuItem("@3卖10个","PS_SJ_sell_10")
	AddMenuItem("@3全卖了","PS_SJ_sell_all")
elseif(answer=="PS_SJ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price2"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price2"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price2"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_SJ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission378") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_SJ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price2")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
	
elseif(answer=="PS_ZZ")then                 ---------------珍珠买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_ZZ_buy_1")
	AddMenuItem("@3买10个","PS_ZZ_buy_10")
	AddMenuItem("@3卖1个","PS_ZZ_sell_1")
	AddMenuItem("@3卖10个","PS_ZZ_sell_10")
	AddMenuItem("@3全卖了","PS_ZZ_sell_all")
elseif(answer=="PS_ZZ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price2"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price2"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price2"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_ZZ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission379") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_ZZ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price2")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_YMZ")then                 ---------------夜明珠买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_YMZ_buy_1")
	AddMenuItem("@3买10个","PS_YMZ_buy_10")
	AddMenuItem("@3卖1个","PS_YMZ_sell_1")
	AddMenuItem("@3卖10个","PS_YMZ_sell_10")
	AddMenuItem("@3全卖了","PS_YMZ_sell_all")
elseif(answer=="PS_YMZ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price2"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price2"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price2"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_YMZ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission380") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_YMZ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price2")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("孟铁匠：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 	DoTalk("TPaoShang")
	else
	LuaSay("孟铁匠：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end
--------------------------------------------------------------------------------
elseif(answer=="Tfkdcg")then	
	if(GetCurrentHour()>=16 and GetCurrentHour()<18)then
	if(LuaQueryTask("Tfkdcg")==9)then
		LuaSay(""..LuaQueryStr("name")..":听闻师父打造兵器天下无双，不知是不是真的？")
		LuaSay("孟铁匠：天下无双可不敢当，会几锤子而已！")
		LuaSay(""..LuaQueryStr("name")..":您真是过谦了！我想请您帮我打造一把@3神兵利器@0，不知您是否愿意？")
		LuaSay("孟铁匠：打造好的兵器容易，寻找好的材料难啊！你去帮我收集@3一个二级矿和一个三级晶@0。我就帮你打造你要的兵器！")
		LuaSetTask("Tfkdcg",10)
		UpdateMenu()
	elseif(LuaQueryTask("Tfkdcg")==10)then
		if(LuaItemCount("o_material_48")>0 and LuaItemCount("o_material_58")>0)then
			LuaSay("孟铁匠：这么快就收集好啦？打造这么好的兵器可需要花点时间，10分钟后在来找我吧！")
			LuaSetTask("fkdcgtime",GetCurrentTime())
			LuaSetTask("Tfkdcg",11)
			DelItem("o_material_48",1)
			DelItem("o_material_58",1)
		else
			LuaSay("孟铁匠：你还没有收集到@3一个二级矿和一个三级晶@0呢！")
		end
	elseif(LuaQueryTask("Tfkdcg")==11)then
		local a=GetCurrentTime()-LuaQueryTask("fkdcgtime")
		if(a>600)then
			LuaSay("孟铁匠：神兵已经铸造好了，快拿去交给@3活动使者@0吧！")
			LuaGive("o_mission424",1)
			LuaSetTask("Tfkdcg",12)
		else
			local b = 10 - floor(a/60)
			LuaSay("孟铁匠：打造这么好的兵器可需要花点时间，时间还没过@310分钟@0呢！再等"..b.."分钟就能拿到了哦@!")
		end
	elseif(LuaQueryTask("Tfkdcg")==12)then
		LuaSay("孟铁匠：神兵已经铸造好了，快拿去交给@3活动使者@0吧！")
	end
	else
		LuaSay("孟铁匠：该活动已经结束了！明天再来参与吧！")
		LuaDelTask("Tfkdcg")
		UpdateMenu()
	end
---------------------------------------------------------------------------------
elseif(answer=="Tsnpc_4")then
	if(LuaQueryTask("Tsnpc_4")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是当朝大人给你的秘密信件，需要我亲自交给您")
		LuaSay("孟铁匠：额，有什么重要的事情这么急")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_4",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_4")==2)then
		LuaSay("孟铁匠：你回去给你们大人说我收到信了@!")
	end
elseif(answer=="Tenpc_4")then
	if(LuaQueryTask("Tenpc_4")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主明鉴，说信件会透露秘密，拖我给你传话，将乱将起，小心为妙")
		LuaSay("孟铁匠：啊，那可怎么办")
		LuaSetTask("Tenpc_4",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_4")==2)then
		LuaSay("孟铁匠：回去告诉你们大人，就说我知道了")
	end

end
LuaSendMenu()
return 1
end 

