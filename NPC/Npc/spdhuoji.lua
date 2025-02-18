NPCINFO = {
serial= "35" ,
base_name="spdhuoji",
icon= 2507,
NpcMove=2507,
name= "饰品商人【商】" ,
iconaddr=1, 
butt="15|10|63", 
name_color = "CEFFCE" , 
lastsay="钻石恒久远，一颗永流传",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=11,
{"e_necklace001" , 2000  , 8 },
{"e_necklace003" , 2000  , 8 },
{"e_necklace005" , 2000  , 8 },
{"e_earring001" , 2000  , 8 },
{"e_earring003" , 2000  , 8 },
{"e_earring005" , 2000  , 8 },
--{"o_transmittal_05" , 2000  , 8 },                --洛岜单回
--{"o_transmittal_06" , 2000  , 8 },                --洛群回
{"o_key100" , 2000  , 8 },
{"o_key101" , 2000  , 8 },
{"o_key102" , 2000  , 8 },
{"o_key103" , 2000  , 8 },
{"o_key104" , 2000  , 8 },
}

function do_talk(answer)
 if (answer=="ask") then
        havetask =0
        local level= LuaQuery("level")
        local T150= LuaQueryTask("T150")
	local T265=LuaQueryTask("T265")
	local T265C=LuaQueryTask("T265C")
        AddTopSayMenuItem("@7任务列表","")
        AddTopSayMenuItem("@3买卖","buy1")
	if((LuaQueryTask("Tsnpc_22")==1 or LuaQueryTask("Tsnpc_22")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_22")
		if(LuaQueryTask("Tsnpc_22")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_22")==1 or LuaQueryTask("Tenpc_22")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_22")
		if(LuaQueryTask("Tenpc_22")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_4")==1 or LuaQueryTask("TfindNPC_4")==2)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_4")==98)then
		AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
	end
	
        if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2跑商【每日】","TPaoShang")          ----------跑商
		havetask =2
		end
		if(LuaQueryTask("Tcoc")==1)then
			AddTopSayMenuItem("@2商贾向背","Tcoc")
			havetask =2
			end
		if(LuaQueryTask("T265")==1 and LuaQueryTask("T265C")==0)  then
			AddTopSayMenuItem("@2初临建康【剧情】","T265C")
			havetask =2
		end

		if(level>=20)  then
			AddTopSayMenuItem("@7缘在于此【每日】@0","Tfind")
		end
	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end	 
	return 1
elseif(answer=="liaotian") then
	LuaSay("饰品商人：饰品也是必不可少的装备。杀人PK之必备，万万不可忽视啊！")
elseif(answer=="buy1") then
      	if(LuaQueryTask("lendmoney")~=0 and floor(GetCurrentTime()/86400)-LuaQueryTask("lend_day")-floor(LuaQueryTask("credit")/10)*7-7>7)then
		LuaSay("@1由于你的贷款已过期限未还，商界对你的信誉产生了怀疑，暂时禁止对你进行买卖")
		LuaSay("@1等你去还了钱庄的贷款再来买卖吧,不及时还贷会禁止很多功能的")
	else
		DoBuy()
	end


elseif(answer=="T302H") then
		LuaSay(""..LuaQueryStr("name").."：这是马夫托老夫带给你的信件。")
       LuaSay("饰品商人：不知是老夫的哪个好学生给老夫写信了@!，桃李天下真是幸福啊。@!")
		DelItem("o_mission076",1) 
		LuaSetTask("T302H",99)
		UpdateMenu()



elseif(answer=="Tcoc")then---------------------商贾向背1 Tcoc===1
	if(LuaQueryTask("Tcoc")==1)then
		LuaSay("饰品商人:平时承蒙钱庄的大哥照顾,组建商会我双手赞成.")
		LuaSetTask("Tcoc",2)
		LuaSetTask("T955",2)
		AddLog("商贾向背【每日】",955)
		if(LuaQuery("level")>=25)then
			LuaGive("coin",700,"Tcoc")
		else
			LuaGive("coin",400,"Tcoc")
			LuaGive("o_drug_hp4",2,"Tcoc")
		end
	end
	UpdateMenu()

elseif(answer=="T265C") then                       -----初临建康 
                 if(LuaQueryTask("T265C") ==0) then
    			LuaSay("饰品商人：项链、耳环也是必不可少的装备哦@!送你一条项链，不过需要13级才能带哦，加油升级吧@!")
			LuaSetTask("T265C",99)
			LuaGive("e_necklace001",1,1,"T265C")
			UpdateMenu()
			UpdateNPCMenu("xiean")
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
		if(LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit") and(GetCurrentTime()-LuaQueryTask("PSbegin_time"))<3600 and LuaCheckBuff("518")==1)then   -----超时与跑商金额满额的判断
		LuaSay("饰品商人：距离下次物品价格刷新还有@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."秒！@0你目前的跑商金额为@3"..LuaQueryTask("PSmoney").."铜币!@0")
		LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("获得5分钟跑商保护状态")
    	FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----即将超时提醒
		LuaSay("饰品商人：你今天的跑商期限不到@55分钟@0了！快@3把东西卖了@0吧，不然你会亏死的！")
		end
		AddMenuItem("@7货品列表","")                  -----------物品列表，以及出现在菜单的概率 
			AddMenuItem("@3玛瑙,单价@3"..LuaPublicQuery("PS_MN_price1").."铜币@0","PS_MN")
			AddMenuItem("@3翡翠石,单价@3"..LuaPublicQuery("PS_FCS_price1").."铜币@0","PS_FCS")
			AddMenuItem("@3水晶,单价@3"..LuaPublicQuery("PS_SJ_price1").."铜币@0","PS_SJ")
			AddMenuItem("@3珍珠,单价@3"..LuaPublicQuery("PS_ZZ_price1").."铜币@0","PS_ZZ")
			AddMenuItem("@3夜明珠,单价@3"..LuaPublicQuery("PS_YMZ_price1").."铜币@0","PS_YMZ")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price1"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price1"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price1"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price1"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price1"),"TPaoShang")
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
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price1")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price1")),"TPaoShang")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price1"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price1"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price1"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price1"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price1"),"TPaoShang")
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
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price1")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price1")),"TPaoShang")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price1"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price1"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price1"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price1"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price1"),"TPaoShang")
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
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price1")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price1")),"TPaoShang")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price1"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price1"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price1"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price1"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price1"),"TPaoShang")
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
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price1")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price1")),"TPaoShang")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price1"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price1"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("饰品商人：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price1"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price1"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price1"),"TPaoShang")
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
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price1")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price1")),"TPaoShang")
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



--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_4")==1)then
					LuaSay("饰品商人：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_4",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_4")==2)then
					LuaSay("饰品商人：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_4",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("饰品商人：你的队友还没接任务哇，赶快通知他接任务哦")
			end

		elseif(LuaQueryTask("T385")==98)then
			LuaSay("饰品商人：你已经将一半的江山画卷送到了我的手上，快去找王镇恶领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end

elseif(answer=="Tfind") then	--每日：找人 
	if(GetCurrentDay()~=LuaQueryStrTask("Tfindday")) then
		LuaDelTask("Tfind")
		LuaDelTask("T959")
		UpdateMenu()
	end
	local Tfind=LuaQueryTask("Tfind")
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(Tfind==0)then
		local r=LuaRandom((LuaQuery("level")-5))
		if(r<=10)then
			r=10 + LuaRandom(LuaQuery("level")-15)
		end
		LuaSetTask("Tfindday",GetCurrentDay())
		LuaSetTask("Tfindlevel",r)
		LuaSetTask("Tfind",1)
		LuaSetTask("T959",1)
		AddLog("缘在于此【每日】","951")
		LuaSay("饰品商人：布道天下，也得找有缘之人，还望阁下帮忙。@!")
		LuaSay("第一步：去找一个@3"..r.."级@0的玩家，并组队前来找我")
		UpdateMenu()
	  elseif(Tfind==1) then
		if(TeamCount()== 2) then
			local teamlevel=TeamQuery("level")
			local teamname=TeamQueryStr("name")
			if(LuaQueryTask("Tfindlevel")==TeamQuery("level")) then
				LuaSet("Tfindteamname",teamname)
				LuaSetTask("Tfindteamlevel",teamlevel)
				LuaSay("饰品商人：等级为@3"..LuaQueryTask("Tfindteamlevel").."@0级的@3"..LuaQueryStr("Tfindteamname").."@0就是你的新队友，当你的队友升级之后你可以领取奖励，但是你必须与他组队才能来领取该奖励哦@!。")
				LuaSetTask("Tfind",2)
				LuaSetTask("T959",2)
				AddLog("缘在于此【每日】","find")
				UpdateMenu()
			else
				LuaSay("饰品商人：你需要找一个@3"..LuaQueryTask("Tfindlevel").."级@0的玩家")
			end   
		else
			LuaSay("饰品商人：你需要找一个@3"..LuaQueryTask("Tfindlevel").."级@0的玩家并组队。")
			
		end
	  elseif(Tfind==2)then
		if(TeamCount()== 2) then
			local teamname=LuaQueryStr("Tfindteamname")
			if(TeamQueryStr("name")==LuaQueryStr("Tfindteamname")) then
				local Tfindteamlevel=LuaQueryTask("Tfindteamlevel")
				local levelup=TeamQuery("level")- LuaQueryTask("Tfindteamlevel")
				if(levelup>0) then
					LuaSay("提示：在你的帮助下，你的队友@3"..teamname.."@0等级提升了@3"..levelup.."@0级。")
					LuaSetTask("Tfind",99)
					LuaSetTask("T959",99)
					DelLog("find")
					if(Tfindteamlevel<20) then						---------奖励上限设定：
						LuaAddJx("combat_exp",(13200+level^2*20*levelup),"Tfind")
					elseif(Tfindteamlevel<30)then
						LuaAddJx("combat_exp",(15200+level^2*20*levelup)*1.5,"Tfind")				 
					elseif(Tfindteamlevel<40)then
						LuaAddJx("combat_exp",(16200+level^2*20*levelup)*2,"Tfind")
					elseif(Tfindteamlevel<50)then
						LuaAddJx("combat_exp",(23200+level^2*20*levelup)*2.5,"Tfind")
					elseif(Tfindteamlevel<60)then
						LuaAddJx("combat_exp",(33200+level^2*20*levelup)*3,"Tfind")
					else
						LuaAddJx("combat_exp",(53200+level^2*20)*3.5,"Tfind")
					end
					UpdateMenu()
				else
					LuaSay("提示：你的队友@3"..teamname.."@0还没升级呢，你不能领取任何奖励。")
				end
			else
				LuaSay("提示：你接该任务时的队友是@3"..LuaQueryStr("Tfindteamname").."@0，等级为@3"..LuaQueryTask("Tfindteamlevel").."@0级，你必须与他组队才能来领取该奖励。")

			end
		else
			LuaSay("提示：你接该任务时的队友是@3"..LuaQueryStr("Tfindteamname").."@0，等级为@3"..LuaQueryTask("Tfindteamlevel").."@0级，你必须与他组队才能来领取该奖励。")

		
		end
	  elseif(Tfind==99)then
		LuaSay("饰品商人：你今天已经做过此任务了哦，明天再来吧@!")
	  end


elseif(answer=="Tsnpc_22")then
	if(LuaQueryTask("Tsnpc_22")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("饰品商人：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_22",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_22")==2)then
		LuaSay("饰品商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_22")then
	if(LuaQueryTask("Tenpc_22")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话表扬你的贡献，希望你再接再厉")
		LuaSay("饰品商人：这都是大人的功劳啊")
		LuaSetTask("Tenpc_22",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_22")==2)then
		LuaSay("饰品商人：话已经带到了，快回去领取奖励吧")
	end



end
LuaSendMenu()
return 1
end

