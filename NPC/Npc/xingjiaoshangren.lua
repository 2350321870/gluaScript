NPCINFO = { 
serial="31" ,
base_name="xingjiaoshangren" ,
icon=2583,
NpcMove=2583,
name="行脚商人" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE" ,
lastsay="熙熙攘攘利来利往",
LuaType=1,
} 

function do_talk(answer) 
if (answer=="ask") then 
	havetask =0
	local level= LuaQuery("level")
	local T180 = LuaQueryTask("T180")
	local T181 = LuaQueryTask("T181")
	AddTopSayMenuItem("@7任务列表","")
	if(level>=22)then
		AddTopSayMenuItem("@7跑商【每日】","TPaoShang")
	end
--	AddTopSayMenuItem("@7巨富之梦【每日】@0","T180")
	if(level<30 and level>=20)then
		AddTopSayMenuItem("@7世界寻宝【每日】@0","T181")
	end
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(GetCurrentHour()==9 or GetCurrentHour()==16)then
		AddTopSayMenuItem("@7奇珍异宝【奇珍】","Tqzyb")
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_10")==1 or LuaQueryTask("TfindNPC_10")==2)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_10")==98)then
		AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
	end
	if((LuaQueryTask("Tsnpc_17")==1 or LuaQueryTask("Tsnpc_17")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_17")
		if(LuaQueryTask("Tsnpc_17")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_17")==1 or LuaQueryTask("Tenpc_17")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_17")
		if(LuaQueryTask("Tenpc_17")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tcoc")==11)then
		AddTopSayMenuItem("@2商贾向背【每日】","Tcoc")
		havetask =2
	end
	AddTopSayMenuItem("@3换取同级材料@0","M2M")
	AddTopSayMenuItem("@3换取低级材料@0","M2m")
--	AddTopSayMenuItem("@3兑换灵石","Tm2stone")
	if(level>=30)then
		AddTopSayMenuItem("@9世界寻宝【每日】@0","T181")
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
	LuaSay("行脚商人：我要成为天下最大的商贾。@!")

	
	

	----------------------------------------跑商-------------------------- 
elseif(answer=="TPaoShang") then
local level= LuaQuery("level")
if(level>=24)then
    if(LuaPublicQueryStr("Tpublic_data")~=GetCurrentDay() )then
   		LuaPublicSet("TZGZF",0)                           ---------千古名商次数重置
		LuaPublicSet("DMCZF",0)
		LuaPublicSet("PSshuaxin_CD",GetCurrentTime())     --------物品价格刷新CD重置
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
    	LuaPublicSetStr("Tpublic_data",GetCurrentDay())
	end
		-------------------根据日期重置千古名商的次数---------------
		
		
		
	if(LuaQueryStrTask("TPaoShang_Taskday")~=GetCurrentDay()) then
		DelItem("o_mission376",LuaItemCount("o_mission376"))  ----------删除昨天未卖的物品
		DelItem("o_mission377",LuaItemCount("o_mission377"))
		DelItem("o_mission378",LuaItemCount("o_mission378"))
		DelItem("o_mission379",LuaItemCount("o_mission379"))
		DelItem("o_mission380",LuaItemCount("o_mission380"))
		LuaSetTask("TPaoShang",0)
		LuaSetTask("flag_PSFF",0)       ------- 千古名商个人次数-----------
		LuaSetTask("TPaoShang_Taskday",GetCurrentDay())
	end

	if(LuaQueryTask("TPaoShang")==0) then
		if(LuaItemCount("coin")>=200) 	then--------跑商最低起始资金
			if(level>=20 and level<=29)then
			PSmoney_begin=5000    --起始
			PSmoney_end=10000      --最终赚的
			PSmoney_get=5000      --纯利润 
			elseif(level>=30 and level<=39)then 
			PSmoney_begin=10000
			PSmoney_end=20000
			PSmoney_get=10000
			elseif(level>=40 and level<=49)then 
			PSmoney_begin=20000
			PSmoney_end=40000
			PSmoney_get=20000
			elseif(level>=50 and level<=59)then 
			PSmoney_begin=20000
			PSmoney_end=50000
			PSmoney_get=30000
			elseif(level>=60)then 
			PSmoney_begin=30000
			PSmoney_end=70000
			PSmoney_get=40000
			end
			if(LuaItemCount("coin")>=PSmoney_begin) then  
				LuaSetTask("PSmoney",PSmoney_begin)  --------制定今天的跑商金额
				LuaSetTask("PSmoney_begin",PSmoney_begin)  --------制定今天的跑商金额
				LuaSetTask("PSmoney_limit",PSmoney_end)  --------制定今天的跑商金额
			else
				LuaSetTask("PSmoney",LuaItemCount("coin"))
				LuaSetTask("PSmoney_limit",LuaItemCount("coin")+PSmoney_get)
			end 
			LuaSetTask("PSmoney_get",PSmoney_get)  --------制定今天的跑商金额
			LuaSay("行脚商人：跑商金额与等级有关，等级越高，赚的越多！@0你今天起始@3跑商金额为@3"..LuaQueryTask("PSmoney").."铜币@0.上限为@3"..(LuaQueryTask("PSmoney_limit")).."铜币@0！") 
   			LuaSay("行脚商人：20级的时候你可以与以下的NPC做买卖：@4桃源村@0的@3孟铁匠@0！@4建康城南@0的@3饰品商人@0！@4北府军营@0的@3驿站小吏@0！")
			LuaSay("行脚商人：等级高了以后，你可以与更多的NPC做买卖：@4洛阳城@0的@3饰品商人@0！@4中山城@0的@3杂货商@0！")
			LuaSay("行脚商人：每次与这些NPC进行跑商对话，你将获得超高的防御和免PK状态,持续5分钟！同时无法走飞世界等捷径！")
			LuaSay("行脚商人：任务限时1小时！如果你能赚@3"..floor( LuaQueryTask("PSmoney_get")*0.8 ).."铜币@0以上，说不定有什么@3奇遇@0呢！")
			LuaSay("@1特别提醒@0：整个过程就是用低价买进物品，找另外个NPC高价卖出！从中获利！")
			LuaSetTask("PSbegin_time",GetCurrentTime())   ----------玩家计时开始
			LuaGiveBuff("518",1)
  			LuaSay("获得5分钟跑商保护状态")               ------------玩家获得跑商保护
  			LuaGive("o_mission414",1)                      ------给一个跑商结束符
   			FlushMyInfo("1")
			LuaSetTask("TPaoShang",1)
			LuaSetTask("T183",1)
			AddLog("跑商[每日]",183)
			UpdateTopSay("时间有限，赶快跑商吧")
			UpdateMenu()
		else
		LuaSay("行脚商人：你身上的铜币不足200，连最便宜的跑商物品也买不起！")
		end   
	elseif(LuaQueryTask("TPaoShang")==1) then
	    LuaSay("行脚商人：20级的时候你可以与以下的NPC做买卖：@4桃源村@0的@3孟铁匠@0！@4建康城南@0的@3饰品商人@0！@4北府军营@0的@3驿站小吏@0！")
		LuaSay("行脚商人：等级高了以后，你可以与更多的NPC做买卖：@4洛阳城@0的@3饰品商人@0！@4中山城@0的@3杂货商@0！")
		LuaSay("行脚商人：每次与这些NPC进行跑商对话，你将获得超高的防御和免PK状态,持续5分钟！同时无法走飞世界等捷径！进出边境会造成跑商状态消失导致任务失败！")
		LuaSay("行脚商人：任务限时1小时！如果你能赚@3"..floor( LuaQueryTask("PSmoney_get")*0.8 ).."铜币@0以上，说不定有什么@3奇遇@0呢！那么你现在想要结束跑商么？")
		LuaSay("@1特别提醒@0：整个过程就是用低价买进物品，找另外个NPC高价卖出！从中获利！")
		AddMenuItem("@7操作列表","")
		AddMenuItem("@3再等会","PS_go")
		AddMenuItem("@3结束跑商","PS_over")
    elseif(LuaQueryTask("TPaoShang")==99) then
        LuaSay("行脚商人：你今天已经跑过了，明天再来找我吧！")
	end
else
    LuaSay("行脚商人：跑商任务要24级才能接取！")
end
elseif(answer=="PS_go")then 
	LuaSay("行脚商人：你目前的跑商金额为@3"..LuaQueryTask("PSmoney").."铜币!@0")
	if(LuaQueryTask("PSmoney")==LuaQueryTask("PSmoney_limit"))  then
	LuaSay("行脚商人：你今天已经赚满跑商金额了，真是一代经营人才！")
	elseif(LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney")<floor(LuaQueryTask("PSmoney_get")*0.2) )  then
	LuaSay("行脚商人：你今天已经赚了@3"..floor( LuaQueryTask("PSmoney_get")*0.8 ).."以上铜币，真是有经商头脑！")
	end
elseif(answer=="PS_over")then
    LuaSay("@1特别提醒@0：如果你还能继续进行跑商，最好赚足今天的跑商金额，再结束任务！")
    AddMenuItem("@7是否确认","")
	AddMenuItem("@3再等会","PS_NO")
	AddMenuItem("@3确定结束","PS_YES")
elseif(answer=="PS_NO")then
	LuaSay("行脚商人：你目前的跑商金额为@3"..LuaQueryTask("PSmoney").."铜币!@0")
	if(LuaQueryTask("PSmoney")==LuaQueryTask("PSmoney_limit"))  then
	LuaSay("行脚商人：你今天已经赚满跑商金额了，真是一代经营人才！")
	elseif(LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney")<floor(LuaQueryTask("PSmoney_get")*0.2) )  then
	LuaSay("行脚商人：你今天已经赚了@3"..floor( LuaQueryTask("PSmoney_get")*0.8 ).."以上铜币，真是有经商头脑！")
	end
elseif(answer=="PS_YES")then
	local aa=(LuaQueryTask("PSmoney")-LuaQueryTask("PSmoney_begin"))
	if(aa>0)then
	local jingshang=LuaGetSkillLevel("182")
	LuaSay("行脚商人：你经商等级为"..jingshang.."级！")
	LuaSay("行脚商人：你今天赚的跑商金额为@3"..aa.."铜币!@0根据@5经商等级@0奖励你额外的奖励！")
	LuaAddJx("combat_exp",30000+aa*jingshang*3,"TPaoShang_over")             --------经商等级给予额外奖励
	else
	LuaSay("行脚商人：貌似你今天跑商亏了，建议你上论坛去提问或者看看别人的经商心得吧！")
	end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 		if(LuaQueryTask("PSmoney_limit")==LuaQueryTask("PSmoney") and LuaRandom(20)==0 and LuaPublicQuery("TZGZF")<2 and LuaQueryTask("flag_PSFF")==0 )  then       --------触发千古名商
		LuaSay("行脚商人：你经商之略颇有陶朱公范蠡的风范，获得2个金币！")
		LuaNotice(""..LuaQueryStr("name").."经商之略颇有陶朱公范蠡的风范，额外获得2个金币！")
		LuaSay("行脚商人：你可以小退下再上来查看所获得的金币！")
 		LuaAddYB(2,2)
 		LuaPublicSet("TZGZF",1+LuaPublicQuery("TZGZF"))
 		LuaSay("行脚商人："..LuaPublicQuery("TZGZF").."")
		LuaSetTask("flag_PSFF",99)
		UpdateTopSay("恭喜你获得2个金币，你可以小退下再上来查看所获得的金币！")
		UpdateMenu()
		elseif(LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney")<floor(LuaQueryTask("PSmoney_get")*0.2) and LuaQueryTask("PSmoney_limit")~=LuaQueryTask("PSmoney") and LuaRandom(20)==0 and LuaPublicQuery("DMCZF")<2 and LuaQueryTask("flag_PSFF")==0 )  then
		LuaSay("行脚商人：你经商之略颇有端木赐的风范，获得3万铜币！")
		LuaNotice(""..LuaQueryStr("name").."经商之略颇有端木赐的风范，额外获得3万铜币！")
		LuaGive("coin",30000,"TPaoShang")
		LuaPublicSet("DMCZF",1+LuaPublicQuery("DMCZF"))
		LuaSetTask("flag_PSFF",99)
		UpdateTopSay("恭喜你获得3万铜币的额外奖励")
		UpdateMenu()
		end
	LuaDeleteBuff("518")
--  	LuaSay("删除跑商保护")
  	if(LuaItemCount("o_mission414")~=0) then         ----删除跑商结束符
  	DelItem("o_mission414",LuaItemCount("o_mission414"))
  	end
  	FlushMyInfo("1")
	LuaSetTask("TPaoShang",99)
	DelLog("183")
	LuaDelTask("183")
	UpdateMenu()

elseif(answer=="T181")then--世界寻宝,藏宝图
local level= LuaQuery("level")
if(level>=20 and level<30)then
   if(GetCurrentDay()~=LuaQueryStrTask("181Taskday")) then
      LuaSetTask("T181",0)
      LuaSetTask("181etime",0)
      LuaSetTask("181Taskday",GetCurrentDay())
   end
	if(LuaQueryTask("T181")<1) then
		if(LuaItemCount("o_cangbaotu")==0)then
		LuaSay("行脚商人：走南闯北这些年淘了不少好东西，精力都放在经商上，收到的一些@2藏宝图@0却无法兑换成实实在在的东西。")
		LuaSay("行脚商人：如今天下战乱，是为天地立心，为生民立命的时候了，拿着这些@2藏宝图@0，找到藏着的宝藏，拿它们救民于水火吧！")
		LuaSay("行脚商人：做为商人也不能不赚不是，1000铜币一张，为了你的安全考虑每天只卖一张给你哦。")
		LuaSay("行脚商人：当然如果你是个非常勤劳的人，经常在线，我会额外再给你一张免费的藏宝图哦。")
		LuaSay("行脚商人：当您达到30级的时候，就有能力保护自己了，可以去找@4洛阳城@0的@3王镇恶@0，每天会有@2更多的藏宝图@0呢。@!")
		AddMenuItem("选择列表","")
		AddMenuItem("好来一张","T181ok")
		AddMenuItem("我没空跑腿","T181no")
		else
		LuaSay("行脚商人：你还没去寻宝呢，寻完一个才能寻下一个")
		end
	else
		if(LuaQuery("onlinetime")-LuaQueryTask("181etime")>10800 and LuaQueryTask("T181")<2)then
		LuaSay("行脚商人：你是个勤劳的人，这张宝图算我送你的。")
		LuaSetTask("181etime",LuaQueryTask("181etime")+10800)
		LuaAddTask("T181",1)
		LuaGive("o_cangbaotu",1,"T181")
		else
		LuaSay("行脚商人：今天你已经领完藏宝图了，每在线时间超过3小时我会额外送1张,每天最多送出额外1张。")
		LuaSay("行脚商人：如果想获得更多的的藏宝图，当你30级之后洛阳城王镇恶那里能为你出售更多的藏宝图哦，加油升级吧@!")
		end
	end
elseif(level<20)then
LuaSay("行脚商人：寻宝要有足够高的历练才能行，你现在还不到20级，宝图指示的地方你都不一定去的了，还是20级后再来吧。")
 UpdateTopSay("20级后每天可以去寻宝")
elseif(level>=30)then
	LuaSay("行脚商人：我这里只提供30级之前的藏宝图出售，30级之后请到洛阳城王镇恶那里去购买哦!")
end
elseif(answer=="T181ok" and LuaQueryTask("T181")  < 3 ) then
	LuaSay("挖到好东西回来告诉我，也让我高兴高兴。")
	if(LuaItemCount("coin")>=1000)then
		if(LuaGive("o_cangbaotu",1))then
		LuaGive("coin",-1000,"Tcangbaotu")
		LuaAddTask("T181",1)
		LuaDelTask("Tbaotu")
		else
		LuaSay("背包空间不足！")
		end
	else
		LuaSay("生意人做赔本生意也得收回点本呀，这宝图可不能白给，1000铜币1张！")
	end	
	
	
elseif(answer=="T180") then  ------任务概述：每天让玩家收集材料，而收集什么材料每天是随机获得的，需要收集的材料等级的高低根据玩家等级来设定
   local level= LuaQuery("level")
   if(GetCurrentDay()~=LuaQueryStrTask("180Taskday")) then
      LuaSetTask("T180",0)
   end

   if(LuaQueryTask("T180") == 0 ) then
	local r = LuaRandom(6)		----------------------每天随机收购不同的原材料：矿 木 晶 肉 皮 毛
	local day=GetCurrentDay()
    LuaSetTask("180Taskday",day)
    LuaSay("行脚商人：乱世出英雄，在这战乱的年代正是我实现价值的好时机，我要成为天下最大的商贾。@!")
    LuaSay("行脚商人：每天我都会根据@4建康及洛阳@0的行情收集不同的@3原材料@0，你帮我收集材料，我给你重奖，咱们各取所需。@!")
    LuaSay("行脚商人：不管你是@2合成@0也好、@2分解@0、@2采集种植@0，@2购买@0、@2掠夺@0也好只要能够收集够材料我就会奖励你。@!")
    ----------
    if(level<20) then  ----------------------- 20级以下收5个1级材料
      if(r==0) then
      LuaSay("行脚商人：今天你去帮我收集@23个1级矿@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",11)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个1级矿")     
      elseif(r==1) then
      LuaSay("行脚商人：今天你去帮我收集@23个1级木@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",12)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个1级木")
      elseif(r==2) then
      LuaSay("行脚商人：今天你去帮我收集@23个1级晶@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",13)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个1级晶")
      elseif(r==3) then
	LuaSay("行脚商人：今天你去帮我收集@23个1级皮@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
	LuaSetTask("T180",14)
	AddLog("巨富之梦",180)
	UpdateTopSay("去收集3个1级皮")
      
	 elseif(r==4) then

	LuaSay("行脚商人：今天你去帮我收集@23个1级毛@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
	LuaSetTask("T180",15)
	AddLog("巨富之梦",180)
	UpdateTopSay("去收集3个1级毛")
      elseif(r==5) then
      LuaSay("行脚商人：今天你去帮我收集@23个1级肉@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",16)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个1级肉")
      end
 ------------
     elseif(level<30) then    -- 20级到30级间收5个2级材料
      if(r==0) then
      LuaSay("行脚商人：今天你去帮我收集@23个2级矿@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      UpdateTopSay("去收集3个2级矿")
      AddLog("巨富之梦",180)
      LuaSetTask("T180",21)
      elseif(r==1) then
      LuaSay("行脚商人：今天你去帮我收集@23个2级木@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      UpdateTopSay("去收集3个2级木")
	 LuaSetTask("T180",22)
      AddLog("巨富之梦",180)
      elseif(r==2) then
      LuaSay("行脚商人：今天你去帮我收集@23个2级晶@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      UpdateTopSay("去收集3个2级晶")
	 LuaSetTask("T180",23)
      AddLog("巨富之梦",180)
      elseif(r==3) then										
      LuaSay("行脚商人：今天你去帮我收集@23个2级皮@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      UpdateTopSay("去收集3个2级皮")
	 LuaSetTask("T180",24)
      AddLog("巨富之梦",180)
      elseif(r==4) then
      LuaSay("行脚商人：今天你去帮我收集@23个2级毛@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      UpdateTopSay("去收集3个2级毛")
	 LuaSetTask("T180",25)
      AddLog("巨富之梦",180)
      elseif(r==5) then
      LuaSay("行脚商人：今天你去帮我收集@23个2级肉@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      UpdateTopSay("去收集3个2级肉")
	 LuaSetTask("T180",26)
      AddLog("巨富之梦",180)
      end
 --------------

    elseif(level<100) then      -- 20级到30级间收10个3级材料
      if(r==0) then
      LuaSay("行脚商人：今天你去帮我收集@23个3级矿@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",31)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个3级矿")
      elseif(r==1) then
      LuaSay("行脚商人：今天你去帮我收集@23个3级木@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",32)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个3级木")
      elseif(r==2) then
      LuaSay("行脚商人：今天你去帮我收集@23个3级晶@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",33)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个3级晶")
      elseif(r==3) then
	LuaSay("行脚商人：今天你去帮我收集@23个3级皮@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",34)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个3级皮")
      elseif(r==4) then											
      LuaSay("行脚商人：今天你去帮我收集@23个3级毛@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",35)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个3级毛")
      elseif(r==5) then
      LuaSay("行脚商人：今天你去帮我收集@23个3级肉@0就好了，我成为天下最大商贾的愿望真是越来越近了。@!")
      LuaSetTask("T180",36)
      AddLog("巨富之梦",180)
      UpdateTopSay("去收集3个3级肉")   
      end
    elseif(level>=40) then  
     LuaSay("提示：暂时未开放") 

   end
   LuaSendMenu()
   return 1
  end
-------------
  if(LuaQueryTask("T180") >= 11 and LuaQueryTask("T180")<=16 ) then    --------交任务，先判断区间，少判断一部分任务编号值
	local level= LuaQuery("level")
	local T180=LuaQueryTask("T180")
	if(T180==11) then
		      if(LuaItemStatusNormalCount("o_material_47") >=3) then     --------1级矿
		      LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
		      DelItem("o_material_47",3)
		      LuaSetTask("T180",99)
		      local jingyan=(15000+(level-8)*10000)
		      LuaAddJx("combat_exp",jingyan)
		      LuaGive("coin",1000,"T180")
		      DelLog("180")
		      else
		      LuaSay("行脚商人：你还没有收集够@23个1级矿@0呢。")
		      end
	elseif(T180==12) then
		 if(LuaItemStatusNormalCount("o_material_38") >=3) then     --------1级木
			LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
			DelItem("o_material_38",3)
			LuaSetTask("T180",99)
			local jingyan=(15000+(level-8)*10000)
			LuaAddJx("combat_exp",jingyan,"T180")
			LuaGive("coin",1000,"T180")
			DelLog("180")
		else
		LuaSay("行脚商人：你还没有收集够@23个1级木@0呢。")
		 end
	

	elseif(T180==13) then
		 if(LuaItemStatusNormalCount("o_material_56") >=3) then     --------1级晶
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_56",3)
	      LuaSetTask("T180",99)
	      local jingyan=(15000+(level-8)*10000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",1000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个1级晶@0呢。")
		 end
	
	elseif(T180==14) then
		 if(LuaItemStatusNormalCount("o_material_20") >=3) then     --------1级皮
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_20",3)
	      LuaSetTask("T180",99)
	      local jingyan=(15000+(level-8)*10000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",1000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个1级皮@0呢。")
		 end
	
	elseif(T180==15) then
		 if(LuaItemStatusNormalCount("o_material_11") >=3) then     --------1级毛
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_11",3)
	      LuaSetTask("T180",99)
	      local jingyan=(15000+(level-8)*10000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",1000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个1级毛@0呢。")
		 end
	
	elseif(T180==16) then
		 if(LuaItemStatusNormalCount("o_material_29") >=3) then     --------1级肉
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_29",3)
	      LuaSetTask("T180",99)
	      local jingyan=(15000+(level-8)*10000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",1000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个1级肉@0呢。")
		 end
    end
----------------
   elseif(LuaQueryTask("T180") >= 21 and LuaQueryTask("T180")<=26 ) then
	local level= LuaQuery("level")
	local T180=LuaQueryTask("T180")
	if(T180==21) then
	      if(LuaItemStatusNormalCount("o_material_48") >=3) then     --------2级矿
	      LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_48",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个2级矿@0呢。")
	      end
	elseif(T180==22) then
		 if(LuaItemStatusNormalCount("o_material_39") >=3) then     --------2级木
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_39",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个2级木@0呢。")
		 end


	elseif(T180==23) then
		 if(LuaItemStatusNormalCount("o_material_57") >=3) then     --------2级晶
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_57",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个2级晶@0呢。")
		 end

	elseif(T180==24) then
		 if(LuaItemStatusNormalCount("o_material_21") >=3) then     --------2级皮
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_21",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个2级皮@0呢。")
		 end

	elseif(T180==25) then
		 if(LuaItemStatusNormalCount("o_material_12") >=3) then     --------2级毛
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_12",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个2级毛@0呢。")
		 end

	elseif(T180==26) then
		 if(LuaItemStatusNormalCount("o_material_30") >=3) then     --------2级肉
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_30",3)
	      LuaSetTask("T180",99)
	      local jingyan=(130000+(level-20)*16000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",2000,"T180")
		 DelLog("180")
		 else
	      LuaSay("行脚商人：你还没有收集够@23个2级肉@0呢。")
		 end
	end
   ---------------
   elseif(LuaQueryTask("T180") >= 31 and LuaQueryTask("T180")<=36 ) then
	local level= LuaQuery("level")
	local T180=LuaQueryTask("T180")
		if(T180==31) then
	      if(LuaItemStatusNormalCount("o_material_49") >=3) then     --------3级矿
	      LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_49",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
		 else
	      LuaSay("行脚商人：你还没有收集够@23个3级矿@0呢。")
	      end
	elseif(T180==32) then
		 if(LuaItemStatusNormalCount("o_material_40") >=3) then     --------3级木
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_40",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
		 else
	      LuaSay("行脚商人：你还没有收集够@23个3级木@0呢。")
		 end


	elseif(T180==33) then
		 if(LuaItemStatusNormalCount("o_material_58") >=3) then     --------3级晶
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_58",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
		 else
	      LuaSay("行脚商人：你还没有收集够@23个3级晶@0呢。")
		 end

	elseif(T180==34) then
		 if(LuaItemStatusNormalCount("o_material_22") >=3) then     --------3级皮
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_22",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
		 else
	      LuaSay("行脚商人：你还没有收集够@23个3级皮@0呢。")
		 end

	elseif(T180==35) then
		 if(LuaItemStatusNormalCount("o_material_13") >=3) then     --------3级毛
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_13",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个3级毛@0呢。")
		 end

	elseif(T180==36) then
		 if(LuaItemStatusNormalCount("o_material_31") >=3) then     --------3级肉
		 LuaSay("行脚商人：看来成为天下最大的商贾的梦想，是越来越近了啊。@!")
	      DelItem("o_material_31",3)
	      LuaSetTask("T180",99)
	      local jingyan=(240000+(level-30)*17000)
	      LuaAddJx("combat_exp",jingyan,"T180")
	      LuaGive("coin",5000,"T180")
	      DelLog("180")
	      else
	      LuaSay("行脚商人：你还没有收集够@23个3级肉@0呢。")
		 end
    end
  end
  
   
    
  if(LuaQueryTask("T180") ==99) then
   LuaSay("行脚商人：我今天已经不再收购任何原材料了，你明天再来吧。@!")
   end
elseif(answer=="Tcoc")then---------------------商贾向背6 Tcoc===11
	if(LuaQueryTask("Tcoc")==11)then
	LuaSay("行脚商人:我要成为天下最大的商贾,组建商会当然我要占一席之地喽.")
	LuaSetTask("Tcoc",14)
	LuaSetTask("T955",14)
		AddLog("商贾向背【每日】",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		end
	end
	UpdateMenu()

-------------------------------兑换兑换兑换兑换兑换兑换天下熙熙攘攘利来利往
--[[elseif(answer=="Tm2stone")then--兑换灵石
	LuaSay("灵石是驯化宠物,铸造神器的必需材料,目前灵石还没找到升级方法,最好需要多少兑换多少,高级灵石暂时没货")
	AddMenuItem("请选择要兑换的灵石","") 
	AddMenuItem("兑换@2一元石","m2s1")--这玩意低级虽然便宜，但是不买，再便宜也要四处搜罗或买玩家的，一增加玩家的游戏时间，二让市场去调节价值
	AddMenuItem("兑换@2两仪石","m2s2")
	AddMenuItem("兑换@2三才石","m2s3")
	AddMenuItem("兑换@2四象石","m2s4")
	AddMenuItem("兑换@2五行石","m2s5")
	AddMenuItem("兑换@2六合石","m2s6")
	AddMenuItem("兑换@2七星石","m2s7")
	AddMenuItem("兑换@2八卦石","m2s8")
	AddMenuItem("兑换@2九宫石","m2s9")
	elseif(answer=="m2s1")then	SelfDefM2Stone(1,1)--参数1为级别，参数2为兑换数量，暂时一次只换一个，保留参数用于扩展一次兑换多个
	elseif(answer=="m2s2")then	SelfDefM2Stone(2,1)
	elseif(answer=="m2s3")then	SelfDefM2Stone(3,1)
	elseif(answer=="m2s4")then	SelfDefM2Stone(4,1)
	elseif(answer=="m2s5")then	SelfDefM2Stone(5,1)
	elseif(answer=="m2s6")then	SelfDefM2Stone(6,1)
	elseif(answer=="m2s7")then	SelfDefM2Stone(7,1)
	elseif(answer=="m2s8")then	SelfDefM2Stone(8,1)
	elseif(answer=="m2s9")then	SelfDefM2Stone(9,1)
	LuaSendMenu()
	return 1]]
elseif(answer=="M2m")then-----换取低一级别材料
	LuaSay("行脚商人:在我这里,@3高一级的材料1个@0可以换取@3低1级的同类材料3个")	
	LuaSay("行脚商人:我只提供@24级以下单个或最多6换18个@0的兑换")
	AddMenuItem("你需要什么兑换什么?","")
	AddMenuItem("材料毛","c1")
	AddMenuItem("材料皮","c2")
	AddMenuItem("材料肉","c3")
	AddMenuItem("材料木","c4")
	AddMenuItem("材料矿","c5")
	AddMenuItem("材料晶","c6")
	LuaSendMenu()
	return 1
elseif(answer=="c1" or answer=="c2" or answer=="c3" or answer=="c4" or answer=="c5" or answer=="c6")then
	AddMenuItem("你要怎么换?","")
	AddMenuItem("2级换1级",answer.."1")
	AddMenuItem("3级换2级",answer.."2")
	AddMenuItem("4级换3级",answer.."3")
	AddMenuItem("5级换4级",answer.."4")
	LuaSendMenu()
	return 1
elseif(answer=="c11" or answer=="c12" or answer=="c13" or answer=="c14" or answer=="c21" or answer=="c22" or answer=="c23" or answer=="c24" or answer=="c31" or answer=="c32" or answer=="c33" or answer=="c34" or answer=="c41" or answer=="c42" or answer=="c43" or answer=="c44" or answer=="c51" or answer=="c52" or answer=="c53" or answer=="c54" or answer=="c61" or answer=="c62" or answer=="c63" or answer=="c64")then
	AddMenuItem("你要换多少?","")
	AddMenuItem("1个换3个",answer.."1")
	AddMenuItem("6个换18个",answer.."2")
	elseif(answer=="c111")then	SelfDefM2m(1,2,1)
	elseif(answer=="c112")then	SelfDefM2m(1,2,6)
	elseif(answer=="c121")then	SelfDefM2m(1,3,1)
	elseif(answer=="c122")then	SelfDefM2m(1,3,6)
	elseif(answer=="c131")then	SelfDefM2m(1,4,1)
	elseif(answer=="c132")then	SelfDefM2m(1,4,6)
	elseif(answer=="c141")then	SelfDefM2m(1,5,1)
	elseif(answer=="c142")then	SelfDefM2m(1,5,6)
	elseif(answer=="c211")then	SelfDefM2m(2,2,1)
	elseif(answer=="c212")then	SelfDefM2m(2,2,6)
	elseif(answer=="c221")then	SelfDefM2m(2,3,1)
	elseif(answer=="c222")then	SelfDefM2m(2,3,6)
	elseif(answer=="c231")then	SelfDefM2m(2,4,1)
	elseif(answer=="c232")then	SelfDefM2m(2,4,6)
	elseif(answer=="c241")then	SelfDefM2m(2,5,1)
	elseif(answer=="c242")then	SelfDefM2m(2,5,6)
	elseif(answer=="c311")then	SelfDefM2m(3,2,1)
	elseif(answer=="c312")then	SelfDefM2m(3,2,6)
	elseif(answer=="c321")then	SelfDefM2m(3,3,1)
	elseif(answer=="c322")then	SelfDefM2m(3,3,6)
	elseif(answer=="c331")then	SelfDefM2m(3,4,1)
	elseif(answer=="c332")then	SelfDefM2m(3,4,6)
	elseif(answer=="c341")then	SelfDefM2m(3,5,1)
	elseif(answer=="c342")then	SelfDefM2m(3,5,6)
	elseif(answer=="c411")then	SelfDefM2m(4,2,1)
	elseif(answer=="c412")then	SelfDefM2m(4,2,6)
	elseif(answer=="c421")then	SelfDefM2m(4,3,1)
	elseif(answer=="c422")then	SelfDefM2m(4,3,6)
	elseif(answer=="c431")then	SelfDefM2m(4,4,1)
	elseif(answer=="c432")then	SelfDefM2m(4,4,6)
	elseif(answer=="c441")then	SelfDefM2m(4,5,1)
	elseif(answer=="c442")then	SelfDefM2m(4,5,6)
	elseif(answer=="c511")then	SelfDefM2m(5,2,1)
	elseif(answer=="c512")then	SelfDefM2m(5,2,6)
	elseif(answer=="c521")then	SelfDefM2m(5,3,1)
	elseif(answer=="c522")then	SelfDefM2m(5,3,6)
	elseif(answer=="c531")then	SelfDefM2m(5,4,1)
	elseif(answer=="c532")then	SelfDefM2m(5,4,6)
	elseif(answer=="c541")then	SelfDefM2m(5,5,1)
	elseif(answer=="c542")then	SelfDefM2m(5,5,6)
	elseif(answer=="c611")then	SelfDefM2m(6,2,1)
	elseif(answer=="c612")then	SelfDefM2m(6,2,6)
	elseif(answer=="c621")then	SelfDefM2m(6,3,1)
	elseif(answer=="c622")then	SelfDefM2m(6,3,6)
	elseif(answer=="c631")then	SelfDefM2m(6,4,1)
	elseif(answer=="c632")then	SelfDefM2m(6,4,6)
	elseif(answer=="c641")then	SelfDefM2m(6,5,1)
	elseif(answer=="c642")then	SelfDefM2m(6,5,6)
	LuaSendMenu()
	return 1
elseif(answer=="M2M")then--换取同级材料
	LuaSay("行脚商人:@22个材料可以换取1个同级的其他材料@0.@!")
	--LuaSay("行脚商人:我只提供@25级以下@0材料的@2单个或一次最多20个@0的兑换")
	LuaSay("行脚商人:@5现在开启了7级以下包括7级材料都能兑换了哦@!")
	AddMenuItem("你需要换什么","")
	AddMenuItem("材料毛","1")
	AddMenuItem("材料皮","2")
	AddMenuItem("材料肉","3")
	AddMenuItem("材料木","4")
	AddMenuItem("材料矿","5")
	AddMenuItem("材料晶","6")
	LuaSendMenu()
	return 1
elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4" or answer=="5" or answer=="6")then
	ians=answer+0--把纯数字的字符串转化为数字等效于if(answer=="1")then ians=1 end
	show={}
	show={"毛","皮","肉","木","矿","晶"}
	gms=show[ians]
	AddMenuItem("你需要几级"..gms.."?","")
	AddMenuItem("1级",answer.."1")
	AddMenuItem("2级",answer.."2")
	AddMenuItem("3级",answer.."3")
	AddMenuItem("4级",answer.."4")
	AddMenuItem("5级",answer.."5")
	AddMenuItem("6级",answer.."6")
	AddMenuItem("7级",answer.."7")
	LuaSendMenu()
	return 1
elseif(    answer=="11" or answer=="12" or answer=="13" or answer=="14" or answer=="15" or answer=="16" or answer=="17"
	or answer=="21" or answer=="22" or answer=="23" or answer=="24" or answer=="25" or answer=="26" or answer=="27"
	or answer=="31" or answer=="32" or answer=="33" or answer=="34" or answer=="35" or answer=="36" or answer=="37"
	or answer=="41" or answer=="42" or answer=="43" or answer=="44" or answer=="45" or answer=="46" or answer=="47"
	or answer=="51" or answer=="52" or answer=="53" or answer=="54" or answer=="55" or answer=="56" or answer=="57"
	or answer=="61" or answer=="62" or answer=="63" or answer=="64" or answer=="65" or answer=="66" or answer=="67")then
	ians=answer+0
	show={}
	show={"毛","皮","肉","木","矿","晶"}
	gms=show[floor(ians/10)]
	lvs=ians-floor(ians/10)*10
	AddMenuItem("你需要兑换几个"..lvs.."级"..gms.."?","")--仅提供单个及最多20个的兑换
	AddMenuItem("用2个其它材料换1个",answer.."1")
	AddMenuItem("用40个其它材料换20个",answer.."2")
	LuaSendMenu()
	return 1
elseif(    answer=="111" or answer=="121" or answer=="131" or answer=="141" or answer=="151" or answer=="161" or answer=="162"
	or answer=="211" or answer=="221" or answer=="231" or answer=="241" or answer=="251" or answer=="261" or answer=="262"
	or answer=="311" or answer=="321" or answer=="331" or answer=="341" or answer=="351" or answer=="361" or answer=="362"
	or answer=="112" or answer=="122" or answer=="132" or answer=="142" or answer=="152" or answer=="461" or answer=="462"	
	or answer=="212" or answer=="222" or answer=="232" or answer=="242" or answer=="252" or answer=="561" or answer=="562"
	or answer=="312" or answer=="322" or answer=="332" or answer=="342" or answer=="352" or answer=="661" or answer=="662"
	or answer=="411" or answer=="421" or answer=="431" or answer=="441" or answer=="451" or answer=="171" or answer=="172"
	or answer=="511" or answer=="521" or answer=="531" or answer=="541" or answer=="551" or answer=="271" or answer=="272"
	or answer=="611" or answer=="621" or answer=="631" or answer=="641" or answer=="651" or answer=="371" or answer=="372"
	or answer=="412" or answer=="422" or answer=="432" or answer=="442" or answer=="452" or answer=="471" or answer=="472" 
	or answer=="512" or answer=="522" or answer=="532" or answer=="542" or answer=="552" or answer=="571" or answer=="572" 
	or answer=="612" or answer=="622" or answer=="632" or answer=="642" or answer=="652" or answer=="671" or answer=="672")then	
	ians=answer+0
	igm=floor(ians/100)
	show={}
	show={"毛","皮","肉","木","矿","晶"}
	gms=show[igm]
	lvs=floor((ians-floor(ians/100)*100)/10)
	if(ians-floor(ians/10)*10==1)then
	mms=1
	else
	mms=20
	end
	AddMenuItem("你要用"..(mms*2).."个什么材料换取"..mms.."个"..lvs.."级"..gms.."?","")
	if(igm~=1)then	AddMenuItem("用毛换",answer.."1")	end
	if(igm~=2)then	AddMenuItem("用皮换",answer.."2")	end
	if(igm~=3)then	AddMenuItem("用肉换",answer.."3")	end
	if(igm~=4)then	AddMenuItem("用木换",answer.."4")	end
	if(igm~=5)then	AddMenuItem("用矿换",answer.."5")	end
	if(igm~=6)then	AddMenuItem("用晶换",answer.."6")	end
	elseif(answer=="1112")then	SelfDefM2M(1,2,1,1)
	elseif(answer=="1113")then	SelfDefM2M(1,3,1,1)
	elseif(answer=="1114")then	SelfDefM2M(1,4,1,1)
	elseif(answer=="1115")then	SelfDefM2M(1,5,1,1)
	elseif(answer=="1116")then	SelfDefM2M(1,6,1,1)
	elseif(answer=="1122")then	SelfDefM2M(1,2,1,20)
	elseif(answer=="1123")then	SelfDefM2M(1,3,1,20)
	elseif(answer=="1124")then	SelfDefM2M(1,4,1,20)
	elseif(answer=="1125")then	SelfDefM2M(1,5,1,20)
	elseif(answer=="1126")then	SelfDefM2M(1,6,1,20)
	elseif(answer=="1212")then	SelfDefM2M(1,2,2,1)
	elseif(answer=="1213")then	SelfDefM2M(1,3,2,1)
	elseif(answer=="1214")then	SelfDefM2M(1,4,2,1)
	elseif(answer=="1215")then	SelfDefM2M(1,5,2,1)
	elseif(answer=="1216")then	SelfDefM2M(1,6,2,1)
	elseif(answer=="1222")then	SelfDefM2M(1,2,2,20)
	elseif(answer=="1223")then	SelfDefM2M(1,3,2,20)
	elseif(answer=="1224")then	SelfDefM2M(1,4,2,20)
	elseif(answer=="1225")then	SelfDefM2M(1,5,2,20)
	elseif(answer=="1226")then	SelfDefM2M(1,6,2,20)
	elseif(answer=="1312")then	SelfDefM2M(1,2,3,1)
	elseif(answer=="1313")then	SelfDefM2M(1,3,3,1)
	elseif(answer=="1314")then	SelfDefM2M(1,4,3,1)
	elseif(answer=="1315")then	SelfDefM2M(1,5,3,1)
	elseif(answer=="1316")then	SelfDefM2M(1,6,3,1)
	elseif(answer=="1322")then	SelfDefM2M(1,2,3,20)
	elseif(answer=="1323")then	SelfDefM2M(1,3,3,20)
	elseif(answer=="1324")then	SelfDefM2M(1,4,3,20)
	elseif(answer=="1325")then	SelfDefM2M(1,5,3,20)
	elseif(answer=="1326")then	SelfDefM2M(1,6,3,20)
	elseif(answer=="1412")then	SelfDefM2M(1,2,4,1)
	elseif(answer=="1413")then	SelfDefM2M(1,3,4,1)
	elseif(answer=="1414")then	SelfDefM2M(1,4,4,1)
	elseif(answer=="1415")then	SelfDefM2M(1,5,4,1)
	elseif(answer=="1416")then	SelfDefM2M(1,6,4,1)
	elseif(answer=="1422")then	SelfDefM2M(1,2,4,20)
	elseif(answer=="1423")then	SelfDefM2M(1,3,4,20)
	elseif(answer=="1424")then	SelfDefM2M(1,4,4,20)
	elseif(answer=="1425")then	SelfDefM2M(1,5,4,20)
	elseif(answer=="1426")then	SelfDefM2M(1,6,4,20)
	elseif(answer=="1512")then	SelfDefM2M(1,2,5,1)
	elseif(answer=="1513")then	SelfDefM2M(1,3,5,1)
	elseif(answer=="1514")then	SelfDefM2M(1,4,5,1)
	elseif(answer=="1515")then	SelfDefM2M(1,5,5,1)
	elseif(answer=="1516")then	SelfDefM2M(1,6,5,1)
	elseif(answer=="1522")then	SelfDefM2M(1,2,5,20)
	elseif(answer=="1523")then	SelfDefM2M(1,3,5,20)
	elseif(answer=="1524")then	SelfDefM2M(1,4,5,20)
	elseif(answer=="1525")then	SelfDefM2M(1,5,5,20)
	elseif(answer=="1526")then	SelfDefM2M(1,6,5,20)
	elseif(answer=="1612")then	SelfDefM2M(1,2,6,1)
	elseif(answer=="1613")then	SelfDefM2M(1,3,6,1)
	elseif(answer=="1614")then	SelfDefM2M(1,4,6,1)
	elseif(answer=="1615")then	SelfDefM2M(1,5,6,1)
	elseif(answer=="1616")then	SelfDefM2M(1,6,6,1)
	elseif(answer=="1622")then	SelfDefM2M(1,2,6,20)
	elseif(answer=="1623")then	SelfDefM2M(1,3,6,20)
	elseif(answer=="1624")then	SelfDefM2M(1,4,6,20)
	elseif(answer=="1625")then	SelfDefM2M(1,5,6,20)
	elseif(answer=="1626")then	SelfDefM2M(1,6,6,20)
	elseif(answer=="1712")then	SelfDefM2M(1,2,7,1)
	elseif(answer=="1713")then	SelfDefM2M(1,3,7,1)
	elseif(answer=="1714")then	SelfDefM2M(1,4,7,1)
	elseif(answer=="1715")then	SelfDefM2M(1,5,7,1)
	elseif(answer=="1716")then	SelfDefM2M(1,6,7,1)
	elseif(answer=="1722")then	SelfDefM2M(1,2,7,20)
	elseif(answer=="1723")then	SelfDefM2M(1,3,7,20)
	elseif(answer=="1724")then	SelfDefM2M(1,4,7,20)
	elseif(answer=="1725")then	SelfDefM2M(1,5,7,20)
	elseif(answer=="1726")then	SelfDefM2M(1,6,7,20)

	elseif(answer=="2111")then	SelfDefM2M(2,1,1,1)
	elseif(answer=="2113")then	SelfDefM2M(2,3,1,1)
	elseif(answer=="2114")then	SelfDefM2M(2,4,1,1)
	elseif(answer=="2115")then	SelfDefM2M(2,5,1,1)
	elseif(answer=="2116")then	SelfDefM2M(2,6,1,1)
	elseif(answer=="2121")then	SelfDefM2M(2,1,1,20)
	elseif(answer=="2123")then	SelfDefM2M(2,3,1,20)
	elseif(answer=="2124")then	SelfDefM2M(2,4,1,20)
	elseif(answer=="2125")then	SelfDefM2M(2,5,1,20)
	elseif(answer=="2126")then	SelfDefM2M(2,6,1,20)
	elseif(answer=="2211")then	SelfDefM2M(2,1,2,1)
	elseif(answer=="2213")then	SelfDefM2M(2,3,2,1)
	elseif(answer=="2214")then	SelfDefM2M(2,4,2,1)
	elseif(answer=="2215")then	SelfDefM2M(2,5,2,1)
	elseif(answer=="2216")then	SelfDefM2M(2,6,2,1)
	elseif(answer=="2221")then	SelfDefM2M(2,1,2,20)
	elseif(answer=="2223")then	SelfDefM2M(2,3,2,20)
	elseif(answer=="2224")then	SelfDefM2M(2,4,2,20)
	elseif(answer=="2225")then	SelfDefM2M(2,5,2,20)
	elseif(answer=="2226")then	SelfDefM2M(2,6,2,20)
	elseif(answer=="2311")then	SelfDefM2M(2,1,3,1)
	elseif(answer=="2313")then	SelfDefM2M(2,3,3,1)
	elseif(answer=="2314")then	SelfDefM2M(2,4,3,1)
	elseif(answer=="2315")then	SelfDefM2M(2,5,3,1)
	elseif(answer=="2316")then	SelfDefM2M(2,6,3,1)
	elseif(answer=="2321")then	SelfDefM2M(2,1,3,20)
	elseif(answer=="2323")then	SelfDefM2M(2,3,3,20)
	elseif(answer=="2324")then	SelfDefM2M(2,4,3,20)
	elseif(answer=="2325")then	SelfDefM2M(2,5,3,20)
	elseif(answer=="2326")then	SelfDefM2M(2,6,3,20)
	elseif(answer=="2411")then	SelfDefM2M(2,1,4,1)
	elseif(answer=="2413")then	SelfDefM2M(2,3,4,1)
	elseif(answer=="2414")then	SelfDefM2M(2,4,4,1)
	elseif(answer=="2415")then	SelfDefM2M(2,5,4,1)
	elseif(answer=="2416")then	SelfDefM2M(2,6,4,1)
	elseif(answer=="2421")then	SelfDefM2M(2,1,4,20)
	elseif(answer=="2423")then	SelfDefM2M(2,3,4,20)
	elseif(answer=="2424")then	SelfDefM2M(2,4,4,20)
	elseif(answer=="2425")then	SelfDefM2M(2,5,4,20)
	elseif(answer=="2426")then	SelfDefM2M(2,6,4,20)
	elseif(answer=="2511")then	SelfDefM2M(2,1,5,1)
	elseif(answer=="2513")then	SelfDefM2M(2,3,5,1)
	elseif(answer=="2514")then	SelfDefM2M(2,4,5,1)
	elseif(answer=="2515")then	SelfDefM2M(2,5,5,1)
	elseif(answer=="2516")then	SelfDefM2M(2,6,5,1)
	elseif(answer=="2521")then	SelfDefM2M(2,1,5,20)
	elseif(answer=="2523")then	SelfDefM2M(2,3,5,20)
	elseif(answer=="2524")then	SelfDefM2M(2,4,5,20)
	elseif(answer=="2525")then	SelfDefM2M(2,5,5,20)
	elseif(answer=="2526")then	SelfDefM2M(2,6,5,20)
	elseif(answer=="2611")then	SelfDefM2M(2,1,6,1)
	elseif(answer=="2613")then	SelfDefM2M(2,3,6,1)
	elseif(answer=="2614")then	SelfDefM2M(2,4,6,1)
	elseif(answer=="2615")then	SelfDefM2M(2,5,6,1)
	elseif(answer=="2616")then	SelfDefM2M(2,6,6,1)
	elseif(answer=="2621")then	SelfDefM2M(2,1,6,20)
	elseif(answer=="2623")then	SelfDefM2M(2,3,6,20)
	elseif(answer=="2624")then	SelfDefM2M(2,4,6,20)
	elseif(answer=="2625")then	SelfDefM2M(2,5,6,20)
	elseif(answer=="2626")then	SelfDefM2M(2,6,6,20)
	elseif(answer=="2711")then	SelfDefM2M(2,1,7,1)
	elseif(answer=="2713")then	SelfDefM2M(2,3,7,1)
	elseif(answer=="2714")then	SelfDefM2M(2,4,7,1)
	elseif(answer=="2715")then	SelfDefM2M(2,5,7,1)
	elseif(answer=="2716")then	SelfDefM2M(2,6,7,1)
	elseif(answer=="2721")then	SelfDefM2M(2,1,7,20)
	elseif(answer=="2723")then	SelfDefM2M(2,3,7,20)
	elseif(answer=="2724")then	SelfDefM2M(2,4,7,20)
	elseif(answer=="2725")then	SelfDefM2M(2,5,7,20)
	elseif(answer=="2726")then	SelfDefM2M(2,6,7,20)

	elseif(answer=="3111")then	SelfDefM2M(3,1,1,1)
	elseif(answer=="3112")then	SelfDefM2M(3,2,1,1)
	elseif(answer=="3114")then	SelfDefM2M(3,4,1,1)
	elseif(answer=="3115")then	SelfDefM2M(3,5,1,1)
	elseif(answer=="3116")then	SelfDefM2M(3,6,1,1)
	elseif(answer=="3121")then	SelfDefM2M(3,1,1,20)
	elseif(answer=="3122")then	SelfDefM2M(3,2,1,20)
	elseif(answer=="3124")then	SelfDefM2M(3,4,1,20)
	elseif(answer=="3125")then	SelfDefM2M(3,5,1,20)
	elseif(answer=="3126")then	SelfDefM2M(3,6,1,20)
	elseif(answer=="3211")then	SelfDefM2M(3,1,2,1)
	elseif(answer=="3212")then	SelfDefM2M(3,2,2,1)
	elseif(answer=="3214")then	SelfDefM2M(3,4,2,1)
	elseif(answer=="3215")then	SelfDefM2M(3,5,2,1)
	elseif(answer=="3216")then	SelfDefM2M(3,6,2,1)
	elseif(answer=="3221")then	SelfDefM2M(3,1,2,20)
	elseif(answer=="3222")then	SelfDefM2M(3,2,2,20)
	elseif(answer=="3224")then	SelfDefM2M(3,4,2,20)
	elseif(answer=="3225")then	SelfDefM2M(3,5,2,20)
	elseif(answer=="3226")then	SelfDefM2M(3,6,2,20)
	elseif(answer=="3311")then	SelfDefM2M(3,1,3,1)
	elseif(answer=="3312")then	SelfDefM2M(3,2,3,1)
	elseif(answer=="3314")then	SelfDefM2M(3,4,3,1)
	elseif(answer=="3315")then	SelfDefM2M(3,5,3,1)
	elseif(answer=="3316")then	SelfDefM2M(3,6,3,1)
	elseif(answer=="3321")then	SelfDefM2M(3,1,3,20)
	elseif(answer=="3322")then	SelfDefM2M(3,2,3,20)
	elseif(answer=="3324")then	SelfDefM2M(3,4,3,20)
	elseif(answer=="3325")then	SelfDefM2M(3,5,3,20)
	elseif(answer=="3326")then	SelfDefM2M(3,6,3,20)
	elseif(answer=="3411")then	SelfDefM2M(3,1,4,1)
	elseif(answer=="3412")then	SelfDefM2M(3,2,4,1)
	elseif(answer=="3414")then	SelfDefM2M(3,4,4,1)
	elseif(answer=="3415")then	SelfDefM2M(3,5,4,1)
	elseif(answer=="3416")then	SelfDefM2M(3,6,4,1)
	elseif(answer=="3421")then	SelfDefM2M(3,1,4,20)
	elseif(answer=="3422")then	SelfDefM2M(3,2,4,20)
	elseif(answer=="3424")then	SelfDefM2M(3,4,4,20)
	elseif(answer=="3425")then	SelfDefM2M(3,5,4,20)
	elseif(answer=="3426")then	SelfDefM2M(3,6,4,20)
	elseif(answer=="3511")then	SelfDefM2M(3,1,5,1)
	elseif(answer=="3512")then	SelfDefM2M(3,2,5,1)
	elseif(answer=="3514")then	SelfDefM2M(3,4,5,1)
	elseif(answer=="3515")then	SelfDefM2M(3,5,5,1)
	elseif(answer=="3516")then	SelfDefM2M(3,6,5,1)
	elseif(answer=="3521")then	SelfDefM2M(3,1,5,20)
	elseif(answer=="3522")then	SelfDefM2M(3,2,5,20)
	elseif(answer=="3524")then	SelfDefM2M(3,4,5,20)
	elseif(answer=="3525")then	SelfDefM2M(3,5,5,20)
	elseif(answer=="3526")then	SelfDefM2M(3,6,5,20)
	elseif(answer=="3611")then	SelfDefM2M(3,1,6,1)
	elseif(answer=="3612")then	SelfDefM2M(3,2,6,1)
	elseif(answer=="3614")then	SelfDefM2M(3,4,6,1)
	elseif(answer=="3615")then	SelfDefM2M(3,5,6,1)
	elseif(answer=="3616")then	SelfDefM2M(3,6,6,1)
	elseif(answer=="3621")then	SelfDefM2M(3,1,6,20)
	elseif(answer=="3622")then	SelfDefM2M(3,2,6,20)
	elseif(answer=="3624")then	SelfDefM2M(3,4,6,20)
	elseif(answer=="3625")then	SelfDefM2M(3,5,6,20)
	elseif(answer=="3626")then	SelfDefM2M(3,6,6,20)
	elseif(answer=="3711")then	SelfDefM2M(3,1,7,1)
	elseif(answer=="3712")then	SelfDefM2M(3,2,7,1)
	elseif(answer=="3714")then	SelfDefM2M(3,4,7,1)
	elseif(answer=="3715")then	SelfDefM2M(3,5,7,1)
	elseif(answer=="3716")then	SelfDefM2M(3,6,7,1)
	elseif(answer=="3721")then	SelfDefM2M(3,1,7,20)
	elseif(answer=="3722")then	SelfDefM2M(3,2,7,20)
	elseif(answer=="3724")then	SelfDefM2M(3,4,7,20)
	elseif(answer=="3725")then	SelfDefM2M(3,5,7,20)
	elseif(answer=="3726")then	SelfDefM2M(3,6,7,20)

	elseif(answer=="4111")then	SelfDefM2M(4,1,1,1)
	elseif(answer=="4112")then	SelfDefM2M(4,2,1,1)
	elseif(answer=="4113")then	SelfDefM2M(4,3,1,1)
	elseif(answer=="4115")then	SelfDefM2M(4,5,1,1)
	elseif(answer=="4116")then	SelfDefM2M(4,6,1,1)
	elseif(answer=="4121")then	SelfDefM2M(4,1,1,20)
	elseif(answer=="4122")then	SelfDefM2M(4,2,1,20)
	elseif(answer=="4123")then	SelfDefM2M(4,3,1,20)
	elseif(answer=="4125")then	SelfDefM2M(4,5,1,20)
	elseif(answer=="4126")then	SelfDefM2M(4,6,1,20)
	elseif(answer=="4211")then	SelfDefM2M(4,1,2,1)
	elseif(answer=="4212")then	SelfDefM2M(4,2,2,1)
	elseif(answer=="4213")then	SelfDefM2M(4,3,2,1)
	elseif(answer=="4215")then	SelfDefM2M(4,5,2,1)
	elseif(answer=="4216")then	SelfDefM2M(4,6,2,1)
	elseif(answer=="4221")then	SelfDefM2M(4,1,2,20)
	elseif(answer=="4222")then	SelfDefM2M(4,2,2,20)
	elseif(answer=="4223")then	SelfDefM2M(4,3,2,20)
	elseif(answer=="4225")then	SelfDefM2M(4,5,2,20)
	elseif(answer=="4226")then	SelfDefM2M(4,6,2,20)
	elseif(answer=="4311")then	SelfDefM2M(4,1,3,1)
	elseif(answer=="4312")then	SelfDefM2M(4,2,3,1)
	elseif(answer=="4313")then	SelfDefM2M(4,3,3,1)
	elseif(answer=="4315")then	SelfDefM2M(4,5,3,1)
	elseif(answer=="4316")then	SelfDefM2M(4,6,3,1)
	elseif(answer=="4321")then	SelfDefM2M(4,1,3,20)
	elseif(answer=="4322")then	SelfDefM2M(4,2,3,20)
	elseif(answer=="4323")then	SelfDefM2M(4,3,3,20)
	elseif(answer=="4325")then	SelfDefM2M(4,5,3,20)
	elseif(answer=="4326")then	SelfDefM2M(4,6,3,20)
	elseif(answer=="4411")then	SelfDefM2M(4,1,4,1)
	elseif(answer=="4412")then	SelfDefM2M(4,2,4,1)
	elseif(answer=="4413")then	SelfDefM2M(4,3,4,1)
	elseif(answer=="4415")then	SelfDefM2M(4,5,4,1)
	elseif(answer=="4416")then	SelfDefM2M(4,6,4,1)
	elseif(answer=="4421")then	SelfDefM2M(4,1,4,20)
	elseif(answer=="4422")then	SelfDefM2M(4,2,4,20)
	elseif(answer=="4423")then	SelfDefM2M(4,3,4,20)
	elseif(answer=="4425")then	SelfDefM2M(4,5,4,20)
	elseif(answer=="4426")then	SelfDefM2M(4,6,4,20)
	elseif(answer=="4511")then	SelfDefM2M(4,1,5,1)
	elseif(answer=="4512")then	SelfDefM2M(4,2,5,1)
	elseif(answer=="4513")then	SelfDefM2M(4,3,5,1)
	elseif(answer=="4515")then	SelfDefM2M(4,5,5,1)
	elseif(answer=="4516")then	SelfDefM2M(4,6,5,1)
	elseif(answer=="4521")then	SelfDefM2M(4,1,5,20)
	elseif(answer=="4522")then	SelfDefM2M(4,2,5,20)
	elseif(answer=="4523")then	SelfDefM2M(4,3,5,20)
	elseif(answer=="4525")then	SelfDefM2M(4,5,5,20)
	elseif(answer=="4526")then	SelfDefM2M(4,6,5,20)
	elseif(answer=="4611")then	SelfDefM2M(4,1,6,1)
	elseif(answer=="4612")then	SelfDefM2M(4,2,6,1)
	elseif(answer=="4613")then	SelfDefM2M(4,3,6,1)
	elseif(answer=="4615")then	SelfDefM2M(4,5,6,1)
	elseif(answer=="4616")then	SelfDefM2M(4,6,6,1)
	elseif(answer=="4621")then	SelfDefM2M(4,1,6,20)
	elseif(answer=="4622")then	SelfDefM2M(4,2,6,20)
	elseif(answer=="4623")then	SelfDefM2M(4,3,6,20)
	elseif(answer=="4625")then	SelfDefM2M(4,5,6,20)
	elseif(answer=="4626")then	SelfDefM2M(4,6,6,20)
	elseif(answer=="4711")then	SelfDefM2M(4,1,7,1)
	elseif(answer=="4712")then	SelfDefM2M(4,2,7,1)
	elseif(answer=="4713")then	SelfDefM2M(4,3,7,1)
	elseif(answer=="4715")then	SelfDefM2M(4,5,7,1)
	elseif(answer=="4716")then	SelfDefM2M(4,6,7,1)
	elseif(answer=="4721")then	SelfDefM2M(4,1,7,20)
	elseif(answer=="4722")then	SelfDefM2M(4,2,7,20)
	elseif(answer=="4723")then	SelfDefM2M(4,3,7,20)
	elseif(answer=="4725")then	SelfDefM2M(4,5,7,20)
	elseif(answer=="4726")then	SelfDefM2M(4,6,7,20)

	elseif(answer=="5111")then	SelfDefM2M(5,1,1,1)
	elseif(answer=="5112")then	SelfDefM2M(5,2,1,1)
	elseif(answer=="5113")then	SelfDefM2M(5,3,1,1)
	elseif(answer=="5114")then	SelfDefM2M(5,4,1,1)
	elseif(answer=="5116")then	SelfDefM2M(5,6,1,1)
	elseif(answer=="5121")then	SelfDefM2M(5,1,1,20)
	elseif(answer=="5122")then	SelfDefM2M(5,2,1,20)
	elseif(answer=="5123")then	SelfDefM2M(5,3,1,20)
	elseif(answer=="5124")then	SelfDefM2M(5,4,1,20)
	elseif(answer=="5126")then	SelfDefM2M(5,6,1,20)
	elseif(answer=="5211")then	SelfDefM2M(5,1,2,1)
	elseif(answer=="5212")then	SelfDefM2M(5,2,2,1)
	elseif(answer=="5213")then	SelfDefM2M(5,3,2,1)
	elseif(answer=="5214")then	SelfDefM2M(5,4,2,1)
	elseif(answer=="5216")then	SelfDefM2M(5,6,2,1)
	elseif(answer=="5221")then	SelfDefM2M(5,1,2,20)
	elseif(answer=="5222")then	SelfDefM2M(5,2,2,20)
	elseif(answer=="5223")then	SelfDefM2M(5,3,2,20)
	elseif(answer=="5224")then	SelfDefM2M(5,4,2,20)
	elseif(answer=="5226")then	SelfDefM2M(5,6,2,20)
	elseif(answer=="5311")then	SelfDefM2M(5,1,3,1)
	elseif(answer=="5312")then	SelfDefM2M(5,2,3,1)
	elseif(answer=="5313")then	SelfDefM2M(5,3,3,1)
	elseif(answer=="5314")then	SelfDefM2M(5,4,3,1)
	elseif(answer=="5316")then	SelfDefM2M(5,6,3,1)
	elseif(answer=="5321")then	SelfDefM2M(5,1,3,20)
	elseif(answer=="5322")then	SelfDefM2M(5,2,3,20)
	elseif(answer=="5323")then	SelfDefM2M(5,3,3,20)
	elseif(answer=="5324")then	SelfDefM2M(5,4,3,20)
	elseif(answer=="5326")then	SelfDefM2M(5,6,3,20)
	elseif(answer=="5411")then	SelfDefM2M(5,1,4,1)
	elseif(answer=="5412")then	SelfDefM2M(5,2,4,1)
	elseif(answer=="5413")then	SelfDefM2M(5,3,4,1)
	elseif(answer=="5414")then	SelfDefM2M(5,4,4,1)
	elseif(answer=="5416")then	SelfDefM2M(5,6,4,1)
	elseif(answer=="5421")then	SelfDefM2M(5,1,4,20)
	elseif(answer=="5422")then	SelfDefM2M(5,2,4,20)
	elseif(answer=="5423")then	SelfDefM2M(5,3,4,20)
	elseif(answer=="5424")then	SelfDefM2M(5,4,4,20)
	elseif(answer=="5426")then	SelfDefM2M(5,6,4,20)
	elseif(answer=="5511")then	SelfDefM2M(5,1,5,1)
	elseif(answer=="5512")then	SelfDefM2M(5,2,5,1)
	elseif(answer=="5513")then	SelfDefM2M(5,3,5,1)
	elseif(answer=="5514")then	SelfDefM2M(5,4,5,1)
	elseif(answer=="5516")then	SelfDefM2M(5,6,5,1)
	elseif(answer=="5521")then	SelfDefM2M(5,1,5,20)
	elseif(answer=="5522")then	SelfDefM2M(5,2,5,20)
	elseif(answer=="5523")then	SelfDefM2M(5,3,5,20)
	elseif(answer=="5524")then	SelfDefM2M(5,4,5,20)
	elseif(answer=="5526")then	SelfDefM2M(5,6,5,20)
	elseif(answer=="5611")then	SelfDefM2M(5,1,6,1)
	elseif(answer=="5612")then	SelfDefM2M(5,2,6,1)
	elseif(answer=="5613")then	SelfDefM2M(5,3,6,1)
	elseif(answer=="5614")then	SelfDefM2M(5,4,6,1)
	elseif(answer=="5616")then	SelfDefM2M(5,6,6,1)
	elseif(answer=="5621")then	SelfDefM2M(5,1,6,20)
	elseif(answer=="5622")then	SelfDefM2M(5,2,6,20)
	elseif(answer=="5623")then	SelfDefM2M(5,3,6,20)
	elseif(answer=="5624")then	SelfDefM2M(5,4,6,20)
	elseif(answer=="5626")then	SelfDefM2M(5,6,6,20)
	elseif(answer=="5711")then	SelfDefM2M(5,1,7,1)
	elseif(answer=="5712")then	SelfDefM2M(5,2,7,1)
	elseif(answer=="5713")then	SelfDefM2M(5,3,7,1)
	elseif(answer=="5714")then	SelfDefM2M(5,4,7,1)
	elseif(answer=="5716")then	SelfDefM2M(5,6,7,1)
	elseif(answer=="5721")then	SelfDefM2M(5,1,7,20)
	elseif(answer=="5722")then	SelfDefM2M(5,2,7,20)
	elseif(answer=="5723")then	SelfDefM2M(5,3,7,20)
	elseif(answer=="5724")then	SelfDefM2M(5,4,7,20)
	elseif(answer=="5726")then	SelfDefM2M(5,6,7,20)

	elseif(answer=="6111")then	SelfDefM2M(6,1,1,1)
	elseif(answer=="6112")then	SelfDefM2M(6,2,1,1)
	elseif(answer=="6113")then	SelfDefM2M(6,3,1,1)
	elseif(answer=="6114")then	SelfDefM2M(6,4,1,1)
	elseif(answer=="6115")then	SelfDefM2M(6,5,1,1)
	elseif(answer=="6121")then	SelfDefM2M(6,1,1,20)
	elseif(answer=="6122")then	SelfDefM2M(6,2,1,20)
	elseif(answer=="6123")then	SelfDefM2M(6,3,1,20)
	elseif(answer=="6124")then	SelfDefM2M(6,4,1,20)
	elseif(answer=="6125")then	SelfDefM2M(6,5,1,20)
	elseif(answer=="6211")then	SelfDefM2M(6,1,2,1)
	elseif(answer=="6212")then	SelfDefM2M(6,2,2,1)
	elseif(answer=="6213")then	SelfDefM2M(6,3,2,1)
	elseif(answer=="6214")then	SelfDefM2M(6,4,2,1)
	elseif(answer=="6215")then	SelfDefM2M(6,5,2,1)
	elseif(answer=="6221")then	SelfDefM2M(6,1,2,20)
	elseif(answer=="6222")then	SelfDefM2M(6,2,2,20)
	elseif(answer=="6223")then	SelfDefM2M(6,3,2,20)
	elseif(answer=="6224")then	SelfDefM2M(6,4,2,20)
	elseif(answer=="6225")then	SelfDefM2M(6,5,2,20)
	elseif(answer=="6311")then	SelfDefM2M(6,1,3,1)
	elseif(answer=="6312")then	SelfDefM2M(6,2,3,1)
	elseif(answer=="6313")then	SelfDefM2M(6,3,3,1)
	elseif(answer=="6314")then	SelfDefM2M(6,4,3,1)
	elseif(answer=="6315")then	SelfDefM2M(6,5,3,1)
	elseif(answer=="6321")then	SelfDefM2M(6,1,3,20)
	elseif(answer=="6322")then	SelfDefM2M(6,2,3,20)
	elseif(answer=="6323")then	SelfDefM2M(6,3,3,20)
	elseif(answer=="6324")then	SelfDefM2M(6,4,3,20)
	elseif(answer=="6325")then	SelfDefM2M(6,5,3,20)
	elseif(answer=="6411")then	SelfDefM2M(6,1,4,1)
	elseif(answer=="6412")then	SelfDefM2M(6,2,4,1)
	elseif(answer=="6413")then	SelfDefM2M(6,3,4,1)
	elseif(answer=="6414")then	SelfDefM2M(6,4,4,1)
	elseif(answer=="6415")then	SelfDefM2M(6,5,4,1)
	elseif(answer=="6421")then	SelfDefM2M(6,1,4,20)
	elseif(answer=="6422")then	SelfDefM2M(6,2,4,20)
	elseif(answer=="6423")then	SelfDefM2M(6,3,4,20)
	elseif(answer=="6424")then	SelfDefM2M(6,4,4,20)
	elseif(answer=="6425")then	SelfDefM2M(6,5,4,20)
	elseif(answer=="6511")then	SelfDefM2M(6,1,5,1)
	elseif(answer=="6512")then	SelfDefM2M(6,2,5,1)
	elseif(answer=="6513")then	SelfDefM2M(6,3,5,1)
	elseif(answer=="6514")then	SelfDefM2M(6,4,5,1)
	elseif(answer=="6515")then	SelfDefM2M(6,5,5,1)
	elseif(answer=="6521")then	SelfDefM2M(6,1,5,20)
	elseif(answer=="6522")then	SelfDefM2M(6,2,5,20)
	elseif(answer=="6523")then	SelfDefM2M(6,3,5,20)
	elseif(answer=="6524")then	SelfDefM2M(6,4,5,20)
	elseif(answer=="6525")then	SelfDefM2M(6,5,5,20)
	elseif(answer=="6611")then	SelfDefM2M(6,1,6,1)
	elseif(answer=="6612")then	SelfDefM2M(6,2,6,1)
	elseif(answer=="6613")then	SelfDefM2M(6,3,6,1)
	elseif(answer=="6614")then	SelfDefM2M(6,4,6,1)
	elseif(answer=="6615")then	SelfDefM2M(6,5,6,1)
	elseif(answer=="6621")then	SelfDefM2M(6,1,6,20)
	elseif(answer=="6622")then	SelfDefM2M(6,2,6,20)
	elseif(answer=="6623")then	SelfDefM2M(6,3,6,20)
	elseif(answer=="6624")then	SelfDefM2M(6,4,6,20)
	elseif(answer=="6625")then	SelfDefM2M(6,5,6,20)
	elseif(answer=="6711")then	SelfDefM2M(6,1,7,1)
	elseif(answer=="6712")then	SelfDefM2M(6,2,7,1)
	elseif(answer=="6713")then	SelfDefM2M(6,3,7,1)
	elseif(answer=="6714")then	SelfDefM2M(6,4,7,1)
	elseif(answer=="6715")then	SelfDefM2M(6,5,7,1)
	elseif(answer=="6721")then	SelfDefM2M(6,1,7,20)
	elseif(answer=="6722")then	SelfDefM2M(6,2,7,20)
	elseif(answer=="6723")then	SelfDefM2M(6,3,7,20)
	elseif(answer=="6724")then	SelfDefM2M(6,4,7,20)
	elseif(answer=="6725")then	SelfDefM2M(6,5,7,20)



	

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..奇珍异宝
elseif(answer=="Tqzyb")then
	--甲鱼 o_mission168 A
	--金枝 o_mission153 B
	--矿精 o_mission145 C
	--古董 o_mission018 D
	LuaSay("行脚商人：我这里免费为大家提供各种奇珍异宝的销售渠道，可别告诉其他人哦@!")
	a=LuaItemStatusNormalCount("o_mission168")
	b=LuaItemStatusNormalCount("o_mission153")
	c=LuaItemStatusNormalCount("o_mission145")
	d=LuaItemStatusNormalCount("o_mission018")
	AddMenuItem("@7奇珍异宝","")
	if(LuaQueryTask("bao_A")~=0)then
		AddMenuItem("@2甲鱼","bao_A")
	else
		AddMenuItem("@7甲鱼","bao_A")
	end
	if(LuaQueryTask("bao_B")~=0)then
		AddMenuItem("@2金枝","bao_B")
	else
		AddMenuItem("@7金枝","bao_B")
	end
	if(LuaQueryTask("bao_C")~=0)then
		AddMenuItem("@2矿精","bao_C")
	else
		AddMenuItem("@7矿精","bao_C")
	end
	if(LuaQueryTask("bao_D")~=0)then
		AddMenuItem("@2古董","bao_D")
	else
		AddMenuItem("@7古董","bao_D")
	end
	
	elseif(answer=="bao_A")then
	local a=LuaItemStatusNormalCount("o_mission168")
		if(a>0)then
			if(LuaQueryTask("bao_A")==0)then
				LuaSay("行脚商人：听说@4建康城@0的@3渔翁@0对这个东西感兴趣，你去找他看看。")
				LuaSetTask("bao_A",1)
				UpdateNPCMenu("yuweng")
				UpdateMenu()
			elseif(LuaQueryTask("bao_A")==1)then
				LuaSay("行脚商人：去找@4建康城@0的@3渔翁@0，他对这个感兴趣。")
			end
		else
			LuaSay("行脚商人：你身上没有携带@2甲鱼@0，甲鱼可以通过钓鱼获得哦。@!")
		end
	elseif(answer=="bao_B")then
		local b=LuaItemStatusNormalCount("o_mission153")
		if(b>0)then
			if(LuaQueryTask("bao_B")==0)then
				LuaSay("行脚商人：听说建康城的@3晋清公主@0对@2金枝@0很是喜爱，你去找她看看。")
				LuaSetTask("bao_B",1)
				UpdateNPCMenu("jinqing")
				UpdateMenu()
			elseif(LuaQueryTask("bao_B")==1)then
				LuaSay("行脚商人：去找@4建康城@0的@3晋清公主@0。")
			end
		else
			LuaSay("行脚商人：你身上没有携带@2金枝@0，@2金枝@0可以通过采集场采集获得哦。@!")
		end
	elseif(answer=="bao_C")then
		local c=LuaItemStatusNormalCount("o_mission145")
		if(c>0)then
			if(LuaQueryTask("bao_C")==0)then
				LuaSay("行脚商人：@2矿精@0是打造武器的上等材料，@4建康城南@0的@3武器商人@0急需一部分@2矿精@0，你找他。")
				LuaSetTask("bao_C",1)
				UpdateMenu()
			elseif(LuaQueryTask("bao_C")==1)then
				LuaSay("行脚商人：去找@4建康城南@0的@3武器商人@0。")
			end
		else
			LuaSay("行脚商人：你身上没有携带@2矿精@0，@2矿精@0可以通过矿场采集获得哦。@!")
		end
	elseif(answer=="bao_D")then
		local d=LuaItemStatusNormalCount("o_mission018")
		if(d>0)then
			if(LuaQueryTask("bao_D")==0)then
				LuaSay("行脚商人：@4建康城南@0的@3防具商人@0对古董有一定的研究，你去找他一起研究下啊。@!")
				LuaSetTask("bao_D",1)
				UpdateMenu()
			elseif(LuaQueryTask("bao_D")==1)then
				LuaSay("行脚商人：去找@4建康城南@0的@3防具商人@0。")
			end
		else
			LuaSay("行脚商人：你身上没有携带@2破旧古董@0，@2破旧古董@0可以通过藏宝图、探宝器获得哦。@!")
		end



--半壁江山
elseif(answer=="T385")then
if(TeamCount()>=2)then
	if(LuaQueryTask("T385")==1)then
		if(TeamQueryTask("T385")>=1)then
			if(LuaQueryTask("TfindNPC_10")==1)then
				LuaSay("行脚商人：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
				LuaSetTask("T385",98)
				LuaSetTask("TfindNPC_10",98)
				DelItem("o_mission417",1)
				UpdateMenu()
			elseif(LuaQueryTask("TfindNPC_10")==2)then
				LuaSay("行脚商人：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
				LuaSetTask("T385",98)
				LuaSetTask("TfindNPC_10",98)
				DelItem("o_mission418",1)
				UpdateMenu()
			end
		else
			LuaSay("行脚商人：你的队友还没接任务哇，赶快通知他接任务哦")
		end
	elseif(LuaQueryTask("T385")==98)then
		LuaSay("行脚商人：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

	end
else
	LuaSay("提示：该任务需要组队才能进行下一步")	
end



elseif(answer=="Tsnpc_17")then
	if(LuaQueryTask("Tsnpc_17")==1)then
		LuaSay(""..LuaQueryStr("name").."：我们大人一早给你写的加急信件，上面还一个好看的花花呢")
		LuaSay("行脚商人：额，你有点变态")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_17",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_17")==2)then
		LuaSay("行脚商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_17")then
	if(LuaQueryTask("Tenpc_17")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你说让你什么时候去他那里走一趟")
		LuaSay("行脚商人：我忙完手上的活就过来")
		LuaSetTask("Tenpc_17",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_17")==2)then
		LuaSay("行脚商人：回去找你家主子领赏吧")
	end



---------
end
LuaSendMenu()
return 1
end 
--------------==================
function SelfDefM2Stone(mlv,mm)--材料换灵石mlv材料级别am换取数量
a=LuaItemStatusNormalCount("o_material_"..(10+mlv).."")--皮
b=LuaItemStatusNormalCount("o_material_"..(19+mlv).."")--毛
c=LuaItemStatusNormalCount("o_material_"..(28+mlv).."")--肉
d=LuaItemStatusNormalCount("o_material_"..(37+mlv).."")--木
e=LuaItemStatusNormalCount("o_material_"..(46+mlv).."")--矿
f=LuaItemStatusNormalCount("o_material_"..(55+mlv).."")--晶
shows={}
shows={"一元石","两仪石","三才石","四象石","五行石","六合石","七星石","八卦石","九宫石"}
if(a>=mm and b>=mm and c>=mm and d>=mm and e>=mm and f>=mm)then
DelItem("o_material_"..(10+mlv).."",mm)
DelItem("o_material_"..(19+mlv).."",mm)
DelItem("o_material_"..(28+mlv).."",mm)
DelItem("o_material_"..(37+mlv).."",mm)
DelItem("o_material_"..(46+mlv).."",mm)
DelItem("o_material_"..(55+mlv).."",mm)
LuaGive("o_material_"..(80+mlv).."",mm)
LuaSay("提示:你耗费了@2"..mlv.."级皮毛肉木矿晶@0各@1"..mm.."@0个换取了@2"..mm.."个"..shows[mlv])
else
LuaSay("材料不足!合成@2"..mm.."个"..shows[mlv].."@0需要@2"..mlv.."级皮毛肉木矿晶@0各@1"..mm.."@0个")
end

LuaSendMenu()
return
end
-------------===================
function SelfDefM2M(gm,nm,mlv,mm)--同级材料互换2->1目标gm,需要nm,级别mlv,数量mm
show={}
show={"毛","皮","肉","木","矿","晶"}
if(gm~=nm)then
	if(LuaItemStatusNormalCount("o_material_"..(nm*9+1+mlv).."")>=mm*2)then
		if(LuaFreeBag()>=mm)then
			DelItem("o_material_"..(nm*9+1+mlv).."",mm*2)
			LuaGive("o_material_"..(gm*9+1+mlv).."",mm,"Tchangesame")
			LuaSay("提示:耗费@2"..mlv.."级"..show[nm]..(mm*2).."个@0换取@2"..mlv.."级"..show[gm]..mm.."个")
		else
			LuaSay("@5温馨提示：请保持你的背包至少有"..mm.."个空位，防止奖励物品丢失的情况@!")
		end
	else
	LuaSay("材料不足!兑换@2"..mm.."个"..mlv.."级"..show[gm].."@0需@2"..mlv.."级"..show[nm]..(mm*2).."个")
	end
else
LuaSay("你在开玩笑吧,拿着"..show[nm].."换"..show[gm].."?,这里是同级异种材料的兑换专线")
end
LuaSendMenu()
return
end
------------==================
function SelfDefM2m(nm,mlv,mm)--上级材料换下级材料1->3
show={}
show={"毛","皮","肉","木","矿","晶"}
if(LuaItemStatusNormalCount("o_material_"..(nm*9+1+mlv).."")>=mm)then
DelItem("o_material_"..(nm*9+1+mlv).."",mm)
LuaGive("o_material_"..(nm*9+mlv).."",mm*3,"Tchangelow")
LuaSay("提示:耗费@2"..mlv.."级"..show[nm]..mm.."个@0换取@2"..(mlv-1).."级"..show[nm]..(mm*3).."个")
else
LuaSay("材料不足@2"..mm.."个"..mlv.."级"..show[nm].."@0,请减少兑换数量")
end
LuaSendMenu()
return
end
