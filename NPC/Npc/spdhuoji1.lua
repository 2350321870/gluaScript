NPCINFO = {
serial= "65" ,
base_name="spdhuoji1",
icon= 2507, 
NpcMove=2507, 
name= "饰品商人【商】" ,
iconaddr=1, 
butt="15|14|63", 
name_color = "CEFFCE" , 
lastsay="饰品增加各项能力，不可缺",
have_sell_item=1,
LuaType=1,
}

addBuyitem={
count=6,
{"e_shoes008" , 2000, 8 },
{"e_shoes010" , 2000, 8 },
{"e_necklace006" , 2000, 8 },
{"e_necklace008" , 2000, 8 },
{"e_earring006" , 2000, 8 },
{"e_earring008" , 2000, 8 },
--{"o_transmittal_08" , 2000  , 8 },
--{"o_transmittal_09" , 2000  , 8 },
} 

function do_talk(answer)
 if (answer=="ask") then
        havetask =0
	local level= LuaQuery("level")
	local T860=LuaQueryTask("T860")
	local Tbprw9=LuaQueryTask("Tbprw9")
	local Tbprw9_2=LuaQueryTask("Tbprw9_2")
	AddTopSayMenuItem("@7任务列表","")
	AddTopSayMenuItem("买卖","buy1")
	if((LuaQueryTask("Tsnpc_49")==1 or LuaQueryTask("Tsnpc_49")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_49")
		if(LuaQueryTask("Tsnpc_49")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_49")==1 or LuaQueryTask("Tenpc_49")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_49")
		if(LuaQueryTask("Tenpc_49")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2跑商【每日】","TPaoShang")          ----------跑商
		havetask =2
	end
	if(LuaQueryTask("Tbprw9_2")==1 ) then
		AddTopSayMenuItem("@2购买物资【每日】","Tbprw9_2")
		havetask=2
	end
	if(LuaQueryTask("Tcoc")==17)then
		AddTopSayMenuItem("@2商贾向背","Tcoc")
		havetask =2
	end
	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end	 
	return 1
elseif(answer=="buy1") then
    DoBuy()
elseif(answer=="liaotian") then
     LuaSay("饰品商人：落没的洛阳啊。")
elseif(answer=="Tcoc")then---------------------商贾向背8 Tcoc===17
	if(LuaQueryTask("Tcoc")==17)then
		LuaSay("饰品商人：虽说洛阳没落，但这是一块肥土，我再想想吧.")
		LuaSetTask("Tcoc",18)
		LuaSetTask("T955",18)
		AddLog("商贾向背【每日】",955)
		LuaGive("coin",800,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		UpdateMenu()
	end
elseif(answer=="Tbprw9_2")  then
if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then

	if(LuaQueryTask("Tbprw9_2")==1) then
		LuaSay(""..LuaQueryStr("name").."：我奉晋帝的圣旨前来购买@3晋国御用饰品@0，还望行个方便。")
		LuaSay("饰品商人：购买@3晋国御用饰品@0要使用@33000铜币@0")
		AddMenuItem("选择列表","")
        AddMenuItem("买","YES")
	    AddMenuItem("不买","NO1")
	end
	if(LuaQueryTask("Tbprw9")==2) then
		LuaSay("饰品商人：快去把@3晋国御用饰品@0送给@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
	end
else
		LuaSay("饰品商人：新的一天，新的开始，你今天以前的@3购买物资【每日】@0任务还没完成！")
		LuaSay("饰品商人：现在到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0重新接取任务@3购买物资【每日】@0任务吧！")
end
elseif(answer=="YES") then
	if(LuaQueryTask("Tbprw9_2")== 1) then
		if(LuaItemCount("coin")>=3000) then
			LuaGive("o_mission404",1)
			LuaGive("coin",-3000,"Tbprw9")
			LuaSay("饰品商人：快去把@3晋国御用饰品@0送给@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
			LuaSetTask("Tbprw9",2)
			LuaSetTask("Tbprw9_2",99)
		elseif(LuaItemCount("coin")<3000) then
			LuaSay("饰品商人：你身上只有@3"..LuaItemCount("coin").."铜币@0,不足@33000铜币@0啊！")
			LuaSay("饰品商人：你虽然是晋帝派来买@3晋国御用饰品@0的，但也不能让我做亏本生意啊！")
		end
	end
elseif(answer=="NO1") then
	if(LuaQueryTask("Tbprw9_2")== 1) then
		LuaSay("饰品商人：这么小气，@33000铜币@0都不愿出。")
		LuaSay("饰品商人：听说晋帝很大气哦，你替他办事，他绝对不会亏待你的。")
		LuaSay("饰品商人：还是买吧，回去好交差。")
		AddMenuItem("选择列表","")
        AddMenuItem("买","YES")
	    AddMenuItem("不买","NO2")
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("Tbprw9_2")== 1) then
		LuaSay("饰品商人：哎，这孩子，不买就算了吧，我也不强迫你，又不是只有你一个人来买。")
	end
	
elseif(answer=="TPaoShang") then------------跑商
    if((GetCurrentTime()-LuaPublicQuery("PSshuaxin_CD"))>=300) 	 then     -------物品价格，公用一个刷新时间间隔，
        LuaPublicSet("PSshuaxin_CD",GetCurrentTime())   ----------重置公用刷新时间
		LuaPublicSet("PS_MN_price1",100*(LuaRandom(20)+90)/100)     -------物品价格波动范围：-10%~25%   ，暂定
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
		LuaSay("饰品商人：距离下次物品价格刷新还有@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."秒！@0你目前的跑商金额为@3"..LuaQueryTask("PSmoney").."铜币!@0")
       	LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("获得5分钟跑商保护状态")
    	FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----即将超时提醒
		LuaSay("饰品商人：你今天的跑商期限不到@55分钟@0了！快@3把东西卖了@0吧，不然你会亏死的！")
		end
		AddMenuItem("@7货品列表","")                  -----------物品列表，以及出现在菜单的概率 
			AddMenuItem("@3玛瑙,单价@3"..LuaPublicQuery("PS_MN_price3").."铜币@0","PS_MN")
			AddMenuItem("@3翡翠石,单价@3"..LuaPublicQuery("PS_FCS_price3").."铜币@0","PS_FCS")
			AddMenuItem("@3水晶,单价@3"..LuaPublicQuery("PS_SJ_price3").."铜币@0","PS_SJ")
			AddMenuItem("@3珍珠,单价@3"..LuaPublicQuery("PS_ZZ_price3").."铜币@0","PS_ZZ")
			AddMenuItem("@3夜明珠,单价@3"..LuaPublicQuery("PS_YMZ_price3").."铜币@0","PS_YMZ")
		else
		LuaSay("饰品商人：你今天的跑商已经到达期限或者跑商金额已满，快回复@4建康城@0的@3行脚商人@0吧！")
		UpdateTopSay("快回复建康城的行脚商人吧")
		end 
    else
    LuaSay("饰品商人：你身上的@3跑商保护状态@0已经消失，在路上容易遭受攻击，无法继续跑商！")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price3"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price3"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price3"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_MN_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission376") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_MN_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price3")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price3")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_FCS")then                 ---------------翡翠石买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_FCS_buy_1")
	AddMenuItem("@3买10个","PS_FCS_buy_10")
	AddMenuItem("@3卖1个","PS_FCS_sell_1")
	AddMenuItem("@3卖10个","PS_FCS_sell_10")
	AddMenuItem("@3全卖了","PS_FCS_sell_all")
elseif(answer=="PS_FCS_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price3"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price3"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price3"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_FCS_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission377") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_FCS_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price3")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price3")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_SJ")then                 ---------------水晶买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_SJ_buy_1")
	AddMenuItem("@3买10个","PS_SJ_buy_10")
	AddMenuItem("@3卖1个","PS_SJ_sell_1")
	AddMenuItem("@3卖10个","PS_SJ_sell_10")
	AddMenuItem("@3全卖了","PS_SJ_sell_all")
elseif(answer=="PS_SJ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price3"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price3"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price3"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_SJ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission378") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_SJ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price3")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price3")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
	
elseif(answer=="PS_ZZ")then                 ---------------珍珠买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_ZZ_buy_1")
	AddMenuItem("@3买10个","PS_ZZ_buy_10")
	AddMenuItem("@3卖1个","PS_ZZ_sell_1")
	AddMenuItem("@3卖10个","PS_ZZ_sell_10")
	AddMenuItem("@3全卖了","PS_ZZ_sell_all")
elseif(answer=="PS_ZZ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price3"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price3"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price3"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_ZZ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission379") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_ZZ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price3")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price3")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_YMZ")then                 ---------------夜明珠买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_YMZ_buy_1")
	AddMenuItem("@3买10个","PS_YMZ_buy_10")
	AddMenuItem("@3卖1个","PS_YMZ_sell_1")
	AddMenuItem("@3卖10个","PS_YMZ_sell_10")
	AddMenuItem("@3全卖了","PS_YMZ_sell_all")
elseif(answer=="PS_YMZ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price3"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price3"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price3"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_YMZ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission380") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price3"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_YMZ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price3")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price3")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("饰品商人：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end


elseif(answer=="Tsnpc_49")then
	if(LuaQueryTask("Tsnpc_49")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("饰品商人：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_49",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_49")==2)then
		LuaSay("饰品商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_49")then
	if(LuaQueryTask("Tenpc_49")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("饰品商人：这都是大人的功劳啊")
		LuaSetTask("Tenpc_49",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_49")==2)then
		LuaSay("饰品商人：话已经带到了，快回去领取奖励吧")
	end




end
LuaSendMenu()
return 1
end