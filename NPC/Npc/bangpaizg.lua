NPCINFO = { 
serial="111" ,
base_name="bangpaizg" ,
icon=2567,
NpcMove=2567 ,
name="帮派总管" ,
iconaddr=1 ,
butt="10|15|63" ,
lastsay="帮主万岁万岁万万岁！",
LuaType=1,
have_sell_item=1,
} 
tS_skill={
	--1技能种类  2技能id  3技能名称  4对应1小时buff  5对应6小时buff  
	{1,185,"力量",530,536},
	{2,186,"敏捷",531,537},
	{3,187,"智力",532,538},
	{4,188,"攻击",533,539},
	{5,189,"防御",534,540},
	{6,190,"血上限",535,541},
	}
addBuyitem={
	count=16,
	{"e_head153" , 20  , 9 },
	{"e_clothes153" , 20  , 9 },
	{"e_pants153" , 20  , 9 },
	{"e_shoes153" , 20  , 9 },
	{"e_earring153" , 20  , 9 },
	{"e_necklace153" , 20  , 9 },
	{"e_falchion153" , 20  , 9 },
	{"e_shield153" , 20  , 9 },
	{"e_sword153" , 20  , 9 },
	{"e_knife153" , 20  , 9 },
	{"e_pen153" , 20  , 9 },
	{"e_book153" , 20  , 9 },
	{"o_transmittal_01" , 500  , 9 },
	{"o_transmittal_02" , 500  , 9 },
	{"o_transmittal_03" , 500  ,9 },
	{"o_transmittal_04" , 500  , 9 },
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@7帮派","")
		if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1 or LuaQueryTask("bprx1")==3) then
			AddTopSayMenuItem("@2领取日饷","bp4")
			havetask =2
		end
		if(LuaQueryTask("Tpt1")==1) then
			AddTopSayMenuItem("@2每日报道","Tpt1")
			havetask =2
		end
		if(LuaQueryTask("Tpt4")==1) then
			AddTopSayMenuItem("@2护帮使者","Tpt4")
			havetask =2
		end
		if(LuaQueryTask("Tpt3")==1) then
			AddTopSayMenuItem("@2每日合成","Tpt3")
			havetask =2
		end
		if(LuaQueryTask("Tpt5")==1 or LuaQueryTask("Tpt5")==2) then
			AddTopSayMenuItem("@2战场巡视(每日)","Tpt5")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_1")==1) then
			AddTopSayMenuItem("@2一级帮会囤积【循环】","Tbptj_1")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_2")==1) then
			AddTopSayMenuItem("@2二级帮会囤积【循环】","Tbptj_2")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_3")==1) then
			AddTopSayMenuItem("@2三级帮会囤积【循环】","Tbptj_3")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_4")==1) then
			AddTopSayMenuItem("@2四级帮会囤积【循环】","Tbptj_4")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_5")==1) then
			AddTopSayMenuItem("@2五级帮会囤积【循环】","Tbptj_5")
			havetask =2
		end
		if(LuaQueryTask("Tbprw002")==1 or LuaQueryTask("Tbprw002")==2 or LuaQueryTask("Tbprw002")==3)then
			AddTopSayMenuItem("@2灵性考验【剧情】@0","Tbprw002")
			havetask=2
		end
		if(LuaQueryTask("Tbprw003")>=1 and LuaQueryTask("Tbprw003")<=9)then
			AddTopSayMenuItem("@2探听风云【每日】@0","Tbprw003")
			havetask=2
		end
		if(LuaQueryTask("Tbprw005")>=1 and LuaQueryTask("Tbprw005")<99)then
			AddTopSayMenuItem("@2无尽趣味【每日】@0","Tbprw005")
			havetask=2
		end
		if(LuaQueryTask("Tbprw1")==1) then
			AddTopSayMenuItem("@2了解帮会【剧情】","Tbprw1")
			havetask=2
		end
		if(LuaQueryTask("Tbprw2")==1) then
			AddTopSayMenuItem("@2强盛之法【剧情】","Tbprw2")
			havetask=2
		end
		if(LuaQueryTask("Tbprw12")==1) then
			AddTopSayMenuItem("@2官威何在【循环】","Tbprw12")
			havetask=2
		end
		if(LuaQueryTask("Tbprw3")==1 or LuaQueryTask("Tbprw3")==2 ) then
			AddTopSayMenuItem("@2洛阳告急【循环】","Tbprw3")
			havetask=2
		end
		if(LuaQueryTask("Tbprw4")==1) then
			AddTopSayMenuItem("@2职责所在【循环】","Tbprw4")
			havetask=2
		end
		if(LuaQueryTask("Tbprw5")==1) then
			AddTopSayMenuItem("@2收集爪子【循环】","Tbprw5")
			havetask=2
		end
		if(LuaQueryTask("Tbprw6")==1 ) then
			AddTopSayMenuItem("@2除魔卫道【循环】","Tbprw6")
			havetask=2
		end
		if(LuaQueryTask("Tbprw7")==1 ) then
			AddTopSayMenuItem("@2扶摇直上【循环】","Tbprw7")
			havetask=2
		end
		if(LuaQueryTask("Tbprw8")==1) then
			AddTopSayMenuItem("@2@2派送物资【每日】","Tbprw8")
			havetask=2
		end
		if(LuaQueryTask("Tbprw9")==1 or LuaQueryTask("Tbprw9")==2) then
			AddTopSayMenuItem("@2购买物资【每日】","Tbprw9")
			havetask=2
		end
		if(LuaQueryTask("Tbprw10")==1 or LuaQueryTask("Tbprw10")==2) then
			AddTopSayMenuItem("@2运送粮食【每日】","Tbprw10")
			havetask=2
		end
		if(LuaQueryTask("Tbprw11_1")==1) then
			AddTopSayMenuItem("@2解决邪恶【环一】","Tbprw11_1")
			havetask=2
		end
		if(LuaQueryTask("Tbprw11_3")==2) then
			AddTopSayMenuItem("@2无奈办法【环三】","Tbprw11_3")
			havetask=2
		end
		AddTopSayMenuItem("@5帮派建设","bp7")
		AddTopSayMenuItem("@3帮派声望","dhsw")
		AddTopSayMenuItem("@3帮库银行","bp3")
		AddTopSayMenuItem("@7帮派任务福利","partytask")
		AddTopSayMenuItem("@5帮派技能","partyskill")
		AddTopSayMenuItem("@3帮派战争","bpgl")
		AddTopSayMenuItem("@5帮派任务经验分享","pTkfx")
		AddTopSayMenuItem("@3帮贡","partyoffer")
		AddTopSayMenuItem("@1弹劾帮主","thbz")
		AddTopSayMenuItem("@5地牢行刑","dlxx")
		AddTopSayMenuItem("帮派权利与数量说明","partysm")
	else
		LuaSay("非本国人不能进行帮派操作")
	end
	return 1
--------------------------------------------------------------------------------------------------------------------		
------------------帮派建设
elseif(answer=="bp7") then
    AddMenuItem("@7帮派建设","")
	AddMenuItem("@3帮派升级@0","sjbp")
	AddMenuItem("@5扩大帮派人数上限","bp2")
	if(LuaQueryRank() > 2) then
		AddMenuItem("@3帮派地图","dtsm")
		--AddMenuItem("修改入帮条件","bp6")
		AddMenuItem("帮派宣言","xgxy")
	end
--------帮派声望
elseif(answer=="dhsw")then  
	AddMenuItem("@7帮派声望","")
	AddMenuItem("@5帮派声望说明","sw_sm")
	AddMenuItem("@3兑换声望","sw_dh")
elseif(answer=="sw_sm")then		--帮派声望说明  
	LuaSay("@2帮派声望的多少是评定一个帮派是否强盛的标准@0，@1决定帮派升降、帮会的等级和排名@0")
	LuaSay("@3帮派升级所需声望@0：@2建帮初始声望值@0：@510声望@0；@22级[派]@0@5250声望@0；@23级[部]@0@51000声望@0；@24级[侯]@0@54000声望@0；@25级[国]@0@515000声望@0.")
	LuaSay("@3帮派声望上限@0：@21级帮@0：@51000声望@0；@22级派@0：@53000声望@0；@23级部@0：@515000声望@0；@24级侯@0：@530000声望@0；@25级国@0：@540000声望@0；")
	LuaSay("帮派声望来源：很多！比如@2帮派任务@0、@2帮战@0！")
elseif(answer=="sw_dh")then		--兑换帮派声望
	AddMenuItem("@7兑换声望","")
	AddMenuItem("@3铜币换声望1W:1","Tdh1")
	AddMenuItem("@3铜币换声望10W:11","Tdh5")
	AddMenuItem("@3铜币换声望100w:115","Tdh6")
	AddMenuItem("@3银票换声望1:1","Tdh2")
	AddMenuItem("@3蓝绸换声望1:120","Tdh3")
elseif(answer=="Tdh1")then		--铜币换声望1W:1
	if(LuaItemCount("coin") >= 10000)then
		LuaGive("coin",-10000,"Tdh1")
		LuaPartyRepute(1,0,"Tdh1")
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaSay("@3"..LuaQueryStr("name").."@0感谢你为帮派做出支持！你的@2帮派声望上升1点@0") 
	else
		LuaSay("你身上@2金钱不足@0，不能购买帮派声望！你可以通过@2帮派任务或帮战@0免费增加帮派声望！")
	end
elseif(answer=="Tdh5")then		--铜币换声望10W:11
	if(LuaItemCount("coin") >= 100000)then
		LuaGive("coin",-100000,"Tdh5")
		LuaPartyRepute(11,0,"Tdh5")
		LuaAddAchievementSchedule("PartyRepute_mun",11)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0花费@510W铜@0，@2提升帮派声望11点@0，真乃爱帮之典范！",0) 
	else
		LuaSay("你身上@2金钱不足@0，不能购买帮派声望！你可以通过@2帮派任务或帮战@0免费增加帮派声望！")
	end
elseif(answer=="Tdh6")then		--铜币换声望100w:115
	if(LuaItemCount("coin")>=1000000)then
		LuaGive("coin",-1000000,"Tdh6")
		LuaPartyRepute(115,0,"Tdh6")
		LuaAddAchievementSchedule("PartyRepute_mun",115)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0花费@5100W铜@0，提升帮派声望115点，真乃爱帮之典范！",0) 
	else
		LuaSay("你身上@2金钱不足@0，不能购买帮派声望！你可以通过@2帮派任务或帮战@0免费增加帮派声望！")
	end
elseif(answer=="Tdh2")then		--银票换声望1:1
	if(LuaItemStatusNormalCount("o_gold2y") >=1) then 
		DelItem("o_gold2y",1)
		LuaPartyRepute(1,0,"Tdh2")
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派兑换@2银票@0一张，@2帮派声望上升1点@0，真乃爱帮之典范！",0)
	else
		LuaSay("你身上@2银票不足@0，一个银票可增加一个帮派声望！银票可在@7[元宝-其他]@0中购买！")
	end
elseif(answer=="Tdh3")then		--蓝绸换声望1:120
	if(LuaItemStatusNormalCount("o_zhaiquan2y") >=1) then 
		DelItem("o_zhaiquan2y",1)
		LuaPartyRepute(120,0,"Tdh3")
		LuaAddAchievementSchedule("PartyRepute_mun",120)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派兑换@2蓝绸卷@0一个，@2帮派声望上升120点@0，真乃爱帮之典范！",0)
	else
		LuaSay("你身上@2蓝绸卷不足@0，一个蓝绸卷可增加100帮派声望！蓝绸卷可在@7[元宝-其他]@0中购买！")
	end
--------帮派升级
elseif(answer=="sjbp") then
	AddMenuItem("@7帮派升级","")
	AddMenuItem("@5帮派升级说明","sjbp_sm")
	AddMenuItem("@3帮派升级","sjbp_y")
elseif(answer=="sjbp_sm") then  --帮派升级说明
	LuaSay("@1帮派自然升级条件@0：@22级[派]@0：@5声望250@0、@5升级费用50w@0(从帮派银行扣除)；@23级[部]@0：@5声望1000@0、@5升级费用200w@0；@24级[侯]@0：@5声望4000@0、@5升级费用450w@0；@25级[国]@0：@5声望15000@0、@5升级费用800w@0")
	LuaSay("@1帮战升级条件@0：帮战中，@2胜方帮派等级<败方而帮派声望>败方@0，并且@2胜方帮派声望达到败方帮派升级所需@0，则双方的等级互换，胜方帮派自动升级")
elseif(answer=="sjbp_y") then  --帮派升级说明	
	if(LuaPartyLevelUp() == 1) then
		LuaSay("英雄真是我帮之栋梁，光辉直逼日月，风华绝代.....")
		LuaPartyMsg("@3帮派升级成功@0，望尔等继续努力！",0)
	else
		LuaSay("不符合帮派升级条件，请返回@2上级菜单@0点击查看@7帮派升级说明@0.")
		AddMenuItem("@7是否返回上级菜单","")
		AddMenuItem("@7返回","sjbp_fh")
		AddMenuItem("@3不返回","")
	end
elseif(answer=="sjbp_fh") then --返回帮派升级菜单
	DoTalk("sjbp")
--------扩大帮派人数上限
elseif(answer=="bp2") then
	LuaSay("帮派总管:皇上虽寄望帮派强盛以匡社稷,然诸侯反对之声日隆,皇上不得不限制帮派名额！哎...")
	LuaSay("帮派总管:皇上日思夜想,让你等做些实事,徐徐图之,亦可不断增加帮派人数限额！可愿意？")	
	AddMenuItem("@7扩大帮派人数上限","")
	AddMenuItem("@7帮派人数上限说明","bp2_sm")
	AddMenuItem("上供@3青纱券增加人数上限","bpme1")
elseif(answer=="bp2_sm") then
	LuaSay("帮派人数最大上限说明：@21级帮派@0：@535人@0；@22级帮派@0：@555人@0；@23级帮派@0：@575人@0；@24级帮派@0：@595人@0；@25级帮派@0：@5115人@0；")
	LuaSay("上供@5青纱券@0能增加@2帮派人数上限20人@0(但不能超过最大人数上限)，给予@1公忠体国@0称号。")
elseif(answer=="bpme1") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>0) then
		if(LuaAddMembers(20) == 1) then
			DelItem("o_zhaiquan1y",1)
			LuaSay("帮派总管：英雄公忠体国,告之天下,以彰其功！")
			LuaNotice("天子诏:今@2"..LuaQueryStr("name").."@0为增加帮派人数上限,向孤王献出@2青纱券@0一张,特赐@1公忠体国@0之称号,告之天下！")  
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0增加了@2帮派人数上限20人@0！",0)
			SetTitleMeg(95)
		end
	else
		LuaSay("帮派总管：尔并无@2[青纱券]@0,可到@7[商城-元宝-其他]@0中购买.！")  
	end
-----------帮派地图
elseif(answer=="dtsm") then
	AddMenuItem("@7帮派地图","")
	AddMenuItem("@7帮派地图说明","partydt_sm")
	AddMenuItem("@3开通帮派地图","partydt_y")
elseif(answer=="partydt_sm") then  --帮派地图说明
	LuaSay("购买帮派地图耗费@2帮派银行资金@0,@1地牢[5万]；农场[5万]；矿山[5万]；BOSS炼狱[5万]；闭关修炼[5万]@0.")
	LuaSay("只能通过拥有主寨后,才能继续向高级的帮派升级,才能拥有帮派仓库,帮派玩家个人工资才会从500增加到每天2000,有职位的才会有各种增值道具免费奖励,才有帮派个人高奖励任务.")	
	LuaSay("@3主寨@0：开通主寨才能继续@2升级帮派@0,有职位的才会有各种增值道具免费奖励,才有帮派个人高奖励任务.")
	LuaSay("@3地牢@0：才能把其他被杀死的玩家“送监牢”；帮派成员才能有随意处决被送监的玩家并一定几率获得其物品的权利；")
	LuaSay("@3农场@0：拥有帮派自己独立的@2种植地图@0；")
	LuaSay("@3矿山@0：拥有帮派自己独立的@2矿场@0.")
	LuaSay("@3闭关修炼@0：40级以下帮派成员可自动获得经验的神仙化外之境.")
	LuaSay("@3BOSS炼狱@0：拥有专属帮派的BOSS")
elseif(answer=="partydt_y") then
	if(LuaPartyLevel() > 1) then
		if(GetPartyMap() == 1) then
			LuaSay("帮主洪福齐天,一统江湖！增加新的地图,一统江湖不远矣！")
		end
	elseif(LuaPartyLevel() == 1) then
		LuaSay("你所在帮派仍然为1级,而1级的帮派繁多,不能赏赐土地.尽快升级到2级帮派吧.")
	end
-----------修改帮派宣言
elseif(answer=="xgxy") then
	AddMenuItem("@7帮派宣言","")
	AddMenuItem("@7帮派宣言说明","partyxy_sm")
	AddMenuItem("@3修改帮派宣言","partyxy_y")
elseif(answer=="partyxy_sm") then
	LuaSay("帮派宣言乃是一帮之体现，代表的是帮派的灵魂，意志。赶快修改出属于自己帮派的宣言吧！")
	LuaSay("修改帮派宣言需要花费@250000铜币@0。")
elseif(answer=="partyxy_y") then
	LuaModifyPartyInfo()
------------------帮派银行
elseif(answer=="bp3") then
	AddMenuItem("@7帮派财产管理","")
	AddMenuItem("@7帮派银行说明","bpyh_sm")
	AddMenuItem("@3存钱进帮派银行","bgsj")
	AddMenuItem("@1帮主取钱","dm")
	AddMenuItem("帮派银行数额查询","bpyh")
elseif(answer=="bpyh_sm") then  --帮派银行说明
	LuaSay("帮派银行是储存帮派财产用于帮派建设，比如@2升级帮派@0......等等")
	LuaSay("帮派银行财产来源：@2帮派任务@0、@2帮派成员直接存入@0、@2帮战胜利增加@0")
	LuaSay("@2帮主每24小时@0可在@4帮派主寨@0@3帮派总管@0处向帮派银行提取@25%铜币(若大于10w则只能取10w)@0,@1注意：提取铜币24小时后才能再次提取@0")
elseif(answer=="bgsj") then  --存钱进帮派银行
	AddMenuItem("@7存入数额","")
	AddMenuItem("1W","sgyw")
	AddMenuItem("10W","sgsw")
	AddMenuItem("50W","sgwsw")
	AddMenuItem("100w","sgybw")
elseif(answer=="sgyw") then  --存1w
	if(LuaItemCount("coin")>=10000) then
		LuaSay("帮派总管：英雄上供@21w铜币@0,哈哈,真乃功臣也")
		LuaAddPartyMoney(10000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派贡献了@21w铜币@0,社稷之栋梁",0)
	else
		LuaSay("帮派总管：英雄@2铜币不足1w@0,但忠心可表,去吧！")
	end
elseif(answer=="sgsw") then  --存10w
	if(LuaItemCount("coin")>=100000) then
		LuaSay("帮派总管：英雄上供铜币@210w@0,哈哈,真是社稷之栋梁！")
		LuaAddPartyMoney(100000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派贡献了@210w铜币@0,真乃功臣也",0)
	else
		LuaSay("帮派总管：英雄@2铜币不足10w@0,但忠心可表,去吧！")
	end
elseif(answer=="sgwsw") then  --存50w
	if(LuaItemCount("coin")>=500000) then
		LuaSay("帮派总管：英雄上供铜币@250w@0,哈哈,真是社稷之栋梁！")
		LuaAddPartyMoney(500000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派贡献了@250w铜币@0,真乃功臣也",0)
	else
		LuaSay("帮派总管：英雄@2铜币不足50w@0,但忠心可表,去吧！")
	end
elseif(answer=="sgybw")then  --存100w
	if(LuaItemCount("coin")>=1000000)then
		LuaSay("帮派总管：英雄上供铜币@2100w@0,哈哈,真是社稷之栋梁！")
		LuaAddPartyMoney(1000000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派贡献了@2100w铜币@0,真乃功臣也",0)
	else
		LuaSay("帮派总管：英雄@2铜币不足100w@0,但忠心可表,去吧！")
	end
elseif(answer=="dm")then	--帮主取钱
	AddMenuItem("@1帮主取钱","")
	AddMenuItem("@7帮主取钱说明","dm_sm")
	AddMenuItem("@3帮主取钱","dm_y")
elseif(answer=="dm_sm")then	--帮主取钱说明
	LuaSay("帮主每隔@224小时@0能从帮派银行取出@15%@0作为个人财产以表彰帮主之大能，@1若领取超过10w，则只能领取10w@0。")
elseif(answer=="dm_y")then	--帮主取钱
	DrawMoney()	
elseif(answer=="bpyh") then  --帮派银行数额查询
	LuaSay("目前贵帮银行的铜币库存为@2"..LuaQueryPartyMoney().."@0！")
	if(LuaQueryRank() > 3)then    --帮主特权 帮主取钱
		LuaSay("若要取出，请点击@7帮主取钱@0选项")
	end
-----------帮派主寨任务福利
elseif(answer=="partytask") then 
	AddMenuItem("@7帮派任务福利","")
	AddMenuItem("@5日常任务福利","partytask_1")
	AddMenuItem("普通帮派任务福利","partytask_2")
elseif(answer=="partytask_1") then
		AddMenuItem("@7日常任务福利","")
		AddMenuItem("@7领取日饷","bp4")
		AddMenuItem("@3每日报到","Tpt1")               -------每天领取任务后在线30分钟，获得奖励，每满10人，开启幸运大奖 
		AddMenuItem("@3领取幸运星大奖","Tpt2")    ------满10人完成每日报到，如有人领取，帮库增加1000 	
		AddMenuItem("每日合成","Tpt3")               ----每日根据要求收集不同的东西，按几率合成好东西 
		AddMenuItem("@5护帮使者@0(每小时)","Tpt4")
		AddMenuItem("战场巡视(每日)","Tpt5")
elseif(answer=="partytask_2") then 
	AddMenuItem("@7普通帮派任务福利","")
		AddMenuItem("@3帮派囤积【循环】","Tbptj")
	if((LuaQueryTask("Tbprw003")==0 or LuaQueryTask("Tbprw003")==99) and LuaQuery("level")>=20)then
		AddMenuItem("@7探听风云【每日】","Tbprw003")
	end
	if(LuaQueryTask("Tbprw005")==0 or LuaQueryTask("Tbprw005")==99 and LuaQueryRank()>2)then
		AddMenuItem("@7无尽趣味【每日】","Tbprw005")
	end
	if(LuaQuery("level")>=20 and LuaQuery("level")<30 and (LuaQueryTask("Tbprw8")==0 or LuaQueryTask("Tbprw8")==99)) then
		AddMenuItem("@7派送物资【每日】","Tbprw8")
	end
	if(LuaQuery("level")>=30 and LuaQuery("level")<40 and (LuaQueryTask("Tbprw9")==0 or LuaQueryTask("Tbprw9")==99)) then			
		AddMenuItem("@7购买物资【每日】","Tbprw9")
	end
	if(LuaQuery("level")>=40 and LuaQuery("level")<50 and (LuaQueryTask("Tbprw10")==0 or LuaQueryTask("Tbprw10")==99)) then
		AddMenuItem("@7运送粮食【每日】","Tbprw10")
	end
	if(LuaQueryTask("Tbprw1")==0) then
		AddMenuItem("了解帮会【剧情】","Tbprw1")
	end
	if(LuaQueryTask("Tbprw002")==0 and LuaQueryTask("Tbprw1")==99)then
		AddMenuItem("灵性考验【剧情】","Tbprw002")
	end
	if(LuaQueryTask("Tbprw2")==0 and  LuaQueryTask("Tbprw1")==99 and LuaQuery("level")>=20) then
		AddMenuItem("强盛之法【剧情】","Tbprw2")
	end
	if(LuaQueryTask("Tbprw12")==0  and LuaQueryRank()>=2) then
		AddMenuItem("@5官威何在【循环】","Tbprw12")
	end
	if(LuaQuery("level")>=20 and LuaQuery("level")<30 and LuaQueryTask("Tbprw3")==0) then
		AddMenuItem("@5洛阳告急【循环】","Tbprw3")
	end
	if(LuaQuery("level")>=30 and LuaQuery("level")<40 and LuaQueryTask("Tbprw4")==0 ) then
		AddMenuItem("@5职责所在【循环】","Tbprw4")
	end
	if(LuaQuery("level")>=40 and LuaQuery("level")<50 and LuaQueryTask("Tbprw5")==0 ) then
		AddMenuItem("@5收集爪子【循环】","Tbprw5")
	end
	if(LuaQuery("level")>=50 and LuaQuery("level")<=60 and LuaQueryTask("Tbprw6")==0 ) then
		AddMenuItem("@5除魔卫道【循环】","Tbprw6")
	end
	if(LuaQuery("level")>60 and LuaQueryTask("Tbprw7")==0 ) then
		AddMenuItem("@5扶摇直上【循环】","Tbprw7")
	end
	if(LuaQuery("level")>=50 and LuaQuery("level")<60 and LuaQueryTask("Tbprw11_1")==0) then
		AddMenuItem("解决邪恶【环一】","Tbprw11_1")
	end
----领取日饷
elseif(answer=="bp4") then
	local sKill_bp4={
		--1地图名  2怪物名  3杀怪计数器  
		{1,"@4建康东郊@0","@3幼貂@0","task_kill/mon_008/Tbp4"},--10-20
		{2,"@4北府军营@0","@3北府斧兵@0","task_kill/mon_017/Tbp4"},--20-30
		{3,"@4淝水对岸@0","@3碧水蛟@0","task_kill/mon_024/Tbp4"},--30-40
		{4,"@4白骨洞@0","@3修罗兵@0","task_kill/mon_034/Tbp4"},--40-50
		{5,"@4太行古径@0","@3绿石人@0","task_kill/mon_037/Tbp4"},--50-60
		{6,"@4地下陵墓@0","@3毒僵尸@0","task_kill/mon_044/Tbp4"},--60以上
		}
	if(GetCurrentDay()~=LuaQueryStrTask("bprxDay")) then--当前天不是接取任务天
		LuaSetTask("bprx",0)  --设置为今天为接任务
		local n=LuaQueryTask("Tbprx_lv")  --杀怪任务计数器未清0
		if(n>0) then
			LuaDelTask(sKill_bp4[n][4])---删除杀怪计数器
		end
		LuaDelTask("Tbprx_lv")
		LuaDelTask("bprx1_1") 
		LuaDelTask("bprx1_2")
		if(LuaQueryTask("bprx1")==3) then
			LuaSetTask("bprx1",0)
			LuaDelTask("Tbprxtime")
		end
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end 
	if(LuaQueryTask("bprxTime")>30) then
		LuaDelTask("bprxTime")  --删除捐献青纱券、10w铜币领取次数
		LuaDelTask("bprx1")  --设置为0   没捐献青纱券、10w铜币
	end
	if(LuaQueryTask("bprx")==0) then   --今天任务没完成 
		if(LuaQueryTask("Tbprx_lv")==0) then  --今天刚开始任务
			local m=floor(LuaQuery("level")/10)
			if(m<=5) then --60级一下(不包括60级)
				LuaSetTask("Tbprx_lv",m)
			else
				LuaSetTask("Tbprx_lv",6)
			end
		end
		if(LuaQueryTask("bprx1")==2) then  --捐限了10w铜币
			local n=LuaQueryTask("Tbprx_lv")
			if(LuaQueryTask("bprx1_1")==0) then
				LuaSay("晋帝:尔等忠勇为国,孤又得卿10万铜币相助,卿可@230天内每天领取8000铜币粮饷一次@0，再给帮派1000铜币,以表孤之爱才之心！")
				LuaSay("晋帝:但是现在国家混乱，需要帮派的支持，现在速速到"..sKill_bp4[n][2].."击杀@550个@0"..sKill_bp4[n][3].."以表忠心")
				LuaSetTask(sKill_bp4[n][4],1)-------开启杀怪计数器
				LuaSetTask("bprx1_1",1)
				LuaSetTask("bprxDay",GetCurrentDay())  --设置当前天为接取任务天
			elseif(LuaQueryTask("bprx1_1")==1) then
				if(LuaQueryTask(sKill_bp4[n][4])>=51) then
					LuaSay("晋帝:好了，让我们一起来感谢帮主吧。")
					LuaAddTask("bprxTime",1)
					LuaGive("coin",8000,"Tbprx")
					AddMoneyToPartyBank(1000)
					LuaSay("提示:你每日领取@58000俸禄@0的天数还有@2"..30-LuaQueryTask("bprxTime").."天@0。")
					if(LuaQueryTask("bprxTime")==30) then
						LuaSay("提示：你每日领取@28000俸禄的时间已经到了@0。")
					end
					LuaPartyMsg("晋帝:孤得爱卿@3"..LuaQueryStr("name").."@0！10万铜币相助,每日领取@28000俸禄@0，特赐贵帮1000铜币！贵帮,万不能轻待之.",0)
					LuaSetTask("bprx",1)  --今天任务已完成
					LuaDelTask(sKill_bp4[n][4])---删除杀怪计数器
					LuaDelTask("Tbprx_lv")
					LuaDelTask("bprx1_1")
					UpdateMenu()
					UpdateNPCMenu("bangpaizg")
				else
					LuaSay("晋帝:年轻人休要糊弄我，你才杀了"..(LuaQueryTask(sKill_bp4[n][4])-1).."个"..sKill_bp4[n][3].."，杀满@550个@0再来找我吧！")
				end
			end		
		elseif(LuaQueryTask("bprx1")==1) then  --捐献青纱券
			LuaSay("晋帝:尔等忠勇为国,孤又得卿[@2青纱券@0]相助,卿可@230天内每天领取8000铜币粮饷一次@0，再给帮派2000铜币,以表孤之爱才之心！")
			LuaAddTask("bprxTime",1)
			LuaGive("coin",8000,"Tbprx")
			AddMoneyToPartyBank(2000)
			rb=LuaRandom(18)
			if(rb == 0) then
				LuaGive("o_state034y",1)
			elseif(rb == 1) then
				LuaGive("o_state008y",1)
			elseif(rb == 2) then
				LuaGive("o_state012y",1)
			elseif(rb == 3) then
				LuaGive("o_state017y",1)
			elseif(rb == 4) then
				LuaGive("o_state022y",1)
			elseif(rb == 5) then
				LuaGive("o_state027y",1)
			elseif(rb == 6) then
				LuaGive("o_state044y",1)
			elseif(rb == 7) then
				LuaGive("o_state047y",1)
			elseif(rb == 8) then
				LuaGive("o_state050y",1)
			elseif(rb == 9) then
				LuaGive("o_state053y",1)
			elseif(rb == 10) then
				LuaGive("o_state056y",1)
			elseif(rb == 11) then
				LuaGive("o_state065y",1)
			elseif(rb == 12) then
				LuaGive("o_state068y",1)
			end
			LuaSay("提示:你每天领取@58000俸禄@0的时间还有@2"..30-LuaQueryTask("bprxTime").."天@0。")
			if(LuaQueryTask("bprxTime")==30) then
				LuaSay("提示：你每日领取@28000俸禄的时间已经到了@0。")
			end
			LuaPartyMsg("晋帝:孤得爱卿@2"..LuaQueryStr("name").."@0！[@2青纱券@0]相助,每日领取@28000俸禄@0，特赐贵帮1000铜币！贵帮,万不能轻待之.",0)
			LuaSetTask("bprx",1)
			LuaSetTask("bprxDay",GetCurrentDay())
		elseif(LuaQueryTask("bprx1")==0) then
			LuaSay("提示:捐献@2青纱券@0或者@210万铜币@0者,可@230天内每天领取8000铜币粮饷一次@0，领取时同时向帮派贡献1000-3000铜币.")
			LuaSay("提示:捐献@2青纱券@0者,每天领取日饷的同时,还有机会获得@2各种道具.")
			LuaSay("除此之外每日日饷@2满足任务条件后@0只能领取@22000铜币@0。")
			AddMenuItem("@7捐献类型","")
		    AddMenuItem("青纱券","dzqs","")
			AddMenuItem("10万铜币","10tb","")
			AddMenuItem("放弃","fql","")
		elseif(LuaQueryTask("bprx1")==3) then
			local t=GetCurrentTime()-LuaQueryTask("Tbprxtime")--领取任务后到现在的时间
			if(t<900)then
				local f=floor((900-t)/60)  --还差多少分钟
				local s=900-t-f*60
				LuaSay("晋帝:等会，@215分钟@0还没到，再等@2"..f.."分钟"..s.."秒钟@0后再来找我吧！")
			else
				local n=LuaQueryTask("Tbprx_lv")
				if(LuaQueryTask("bprx1_2")==0) then
					LuaSay("晋帝:你的忠心忠诚可见，但是现在国家混乱，需要帮派的支持，现在速速到"..sKill_bp4[n][2].."击杀@550个@0"..sKill_bp4[n][3].."以支援国家吧")
					LuaSetTask(sKill_bp4[n][4],1)-------开启杀怪计数器
					LuaSetTask("bprx1_2",1)
				elseif(LuaQueryTask("bprx1_2")==1) then
					if(LuaQueryTask(sKill_bp4[n][4])>=51) then
						LuaSetTask("bprx",1)
						LuaSetTask("bprx1",0)
						LuaSay("晋帝:恭喜你完成@7每日日饷@0任务，获得@22000铜币@0。")
						LuaGive("coin",2000,"Tbprx")
						LuaDelTask(sKill_bp4[n][4])---删除杀怪计数器
						LuaDelTask("Tbprx_lv")
						LuaDelTask("bprx1_2")
						LuaDelTask("Tbprxtime")
						UpdateMenu()
						UpdateNPCMenu("bangpaizg")
					else
						LuaSay("晋帝:年轻人休要糊弄我，你才杀了@5"..(LuaQueryTask(sKill_bp4[n][4])-1).."个"..sKill_bp4[n][3].."，杀满@550个@0再来找我吧！")
					end
				end
			end
		end
	else
		LuaSay("晋帝:你已经领过了今日的帮会日饷@!，可是想捞更多，坏帮主名誉？哦，帮主洪福齐天，一统江湖！")
	end
elseif(answer=="fql") then
	LuaSay("晋帝:帮主洪福齐天，一统江湖！让尔等每日@2满足条件后@0领取@22000铜币@0。还不跟我一起喊？帮主洪福齐天，一统江湖！")
	LuaSay("晋帝:首先，你要表现出对帮派的忠诚，@215分钟后@0再来我这吧。")
	LuaSetTask("bprx1",3)
	LuaSetTask("Tbprxtime",GetCurrentTime())
	LuaSetTask("bprxDay",GetCurrentDay())
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")		
elseif(answer=="dzqs") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>0) then
		DelItem("o_zhaiquan1y",1)
		LuaSetTask("bprx1",1)
		LuaSay("帮派总管:皇上收了你的[青纱券]，甚为自愧,从明日起,即可从我这里处,可@230天内每天领取8000铜币粮饷一次@0，并给予2000帮派贡献，望英雄多多私下传播！")
	else
		LuaSay("帮派总管:你并没有[青纱券],可去[商城-元宝-其他]购买.再若诓骗于我,必斩之！")
	
	end
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="10tb") then
	if(LuaItemCount("coin") >= 100000) then
		LuaSetTask("bprx1",2)
		LuaGive("coin",-100000,"Tbprx")
		LuaSay("帮派总管:皇上收了你的钱财,甚为自愧,从明日起,即可从我这里,可@230天内每天领取8000铜币粮饷一次@0，并给予1000帮派贡献，望英雄多多私下传播！")
	else
		LuaSay("帮派总管:你铜币不足十万,念忠心可表,去吧！")
	end
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
----每日报道
elseif(answer=="Tpt1")then
	local level=LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("Tpt1day") ) then
		Kill={
			--1地图名  2怪物名  3杀怪计数器  
			{1,"@4建康东郊@0","@3金蛊@0","task_kill/mon_007/Tpt1"},--10-20
			{2,"@4北府军营@0","@3北府锤兵@0","task_kill/mon_016/Tpt1"},--20-30
			{3,"@4淝水对岸@0","@3青水虫@0","task_kill/mon_023/Tpt1"},--30-40
			{4,"@4白骨洞@0","@3尸虫@0","task_kill/mon_033/Tpt1"},--40-50
			{5,"@4太行古径@0","@3金纹巨灵@0","task_kill/mon_036/Tpt1"},--50-60
			{6,"@4地下陵墓@0","@3血僵尸@0","task_kill/mon_045/Tpt1"},--60以上
			}
		if(LuaQueryTask("Tpt1")==0)then
			local m=floor(LuaQuery("level")/10)
			if(m<=5) then 
				LuaSetTask("Tpt1_lv",m)
			else
				LuaSetTask("Tpt1_lv",6)
			end
			local n=LuaQueryTask("Tpt1_lv")
			LuaSay("帮派总管：由于现在怪物猖獗，作为国家支柱的帮派也应该为国家尽自己的一份力。")
			LuaSay("帮派总管：现在速速到"..Kill[n][2].."击杀@550个@0"..Kill[n][3].."以表忠心")
			LuaSay("帮派总管：@1每10人完成本任务，我将会额外给帮会奖励。@0")
			LuaSetTask(Kill[n][4],1)-------开启杀怪计数器
			LuaAddTask("Tpt1",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tpt1")==1)then
			local n=LuaQueryTask("Tpt1_lv")
			if(LuaQueryTask(Kill[n][4])>=51) then --怪物杀够了
				local i=GetPartyCurrentRepute()
				LuaSay("帮派总管：年轻人不错！除了经验还能获得帮派声望2倍铜币奖励！帮派声望越高奖励越多！最多6000铜币和海量经验。")	     
				LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tpt1")
				ChangePartyTaskExp(LuaQuery("partyid"),floor(level/5-1)*10000) ---累积本帮今日任务经验
				if(i<=3000)then
					LuaGive("coin",i*2,"Tpt1")                                                     ----活动期间
				else
					LuaGive("coin",6000,"Tpt1")
				end
				ChangePartyTaskExp(LuaQuery("partyid"),floor(level/5-1)*10000) ---累积本帮今日任务经验
				LuaSetTask("Tpt1",99)
				LuaDelTask(Kill[n][4])---删除杀怪计数器
				LuaDelTask("Tpt1_lv")
				LuaPublicAdd("Partytask/"..LuaQuery("partyid").."/tp",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			else
				LuaSay("帮派总管：年轻人休要糊弄我，你才杀了"..(LuaQueryTask(Kill[n][4])-1).."个"..Kill[n][3].."，杀满@550个@0再来找我吧！")
			end
		else
			LuaSay("帮派总管：今天你已经做了该任务了，明天再来吧！完成任务人数也多，获得的回报越高！")
		end
	else

		Kill={
			--1地图名  2怪物名  3杀怪计数器  
			{1,"@4建康东郊@0","@3金蛊@0","task_kill/mon_007/Tpt1"},--10-20
			{2,"@4北府军营@0","@3北府锤兵@0","task_kill/mon_016/Tpt1"},--20-30
			{3,"@4淝水对岸@0","@3青水虫@0","task_kill/mon_023/Tpt1"},--30-40
			{4,"@4白骨洞@0","@3尸虫@0","task_kill/mon_033/Tpt1"},--40-50
			{5,"@4太行古径@0","@3金纹巨灵@0","task_kill/mon_036/Tpt1"},--50-60
			{6,"@4地下陵墓@0","@3血僵尸@0","task_kill/mon_045/Tpt1"},--60以上
			}
		LuaSay("帮派总管：新的一天开始了，你再次跟我对话就可以接这任务了。必须当天完成，过期无效，切记切记！")
		LuaSetTask("Tpt1day",GetCurrentDay())
		local n=LuaQueryTask("Tpt1_lv")
		if(n~=0) then --接了任务未完成
			LuaDelTask(Kill[n][4])---删除杀怪计数器
			LuaDelTask("Tpt1_lv")
		 end                                                          
		LuaSetTask("Tpt1",0)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
----领取幸运星大奖
elseif(answer=="Tpt2")then
	local level=LuaQuery("level")
	Tpt2t=LuaPublicQuery("Partytask/"..LuaQuery("partyid").."/tp")%10
	if(LuaPublicQuery("Partytask/"..LuaQuery("partyid").."/tp")<=100000)then
		if(Tpt2t==0)then
			i=GetPartyCurrentRepute()
			LuaSay("帮派总管：恭喜哥们你中大奖了。每10人完成每日报到！都可以领取一份幸运奖励！")
			LuaSay("帮派总管：帮派声望越高奖励越高，最多可获得5W铜币与海量经验。")
			LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tpt2") 
			ChangePartyTaskExp(LuaQuery("partyid"),floor(level/5-1)*10000) ---累积本帮今日任务经验
			AddMoneyToPartyBank(10000)
			LuaPartyRepute(1,0,"Tpt2")
			LuaAddAchievementSchedule("PartyRepute_mun",1)
		if(i<=5000)then
			LuaGive("coin",i*10,"Tpt2")
		else
			LuaGive("coin",50000,"Tpt2")
		end
			LuaPublicAdd("Partytask/"..LuaQuery("partyid").."/tp",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0领取了帮派幸运奖,帮派银行增加了金钱@21w@0。自己获得@210倍帮派声望的金钱@0。@2声望上升1点@0",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("帮派总管：当前做了@3每日报到任务@3的次数是"..LuaPublicQuery("Partytask/"..LuaQuery("partyid").."/tp").."@0,当该数值为10的倍数时，才能获得奖励！")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	else
		LuaPublicSet("Partytask/"..LuaQuery("partyid").."/tp",1)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
----每日合成
elseif(answer=="Tpt3")then
	if(LuaQuery("level")>=30)then
		if(LuaQueryStrTask("Tpt3day")==GetCurrentDay())then
			if(LuaQueryTask("Tpt3")==0)then
				n1=LuaRandom(3)+1
				n2=LuaRandom(3)+5
				a1,b1=get(n1)
				a2,b2=get(n2)
				LuaSay("帮派总管：今天你要收集的东西是@3"..a1.."@0和@3"..a2.."@0各一个，你如能收集完成，我将给你一些高级材料")
				LuaSetTask("Tpt3a",n1)
				LuaSetTask("Tpt3b",n2)
				LuaSetTask("Tpt3",1)
			elseif(LuaQueryTask("Tpt3")==1)then
				num1=LuaQueryTask("Tpt3a")
				num2=LuaQueryTask("Tpt3b")
				c1,d1=get(num1)
				c2,d2=get(num2)
				c3,d3=get(4+num2)
				if(LuaItemCount(d1)>=1 and LuaItemCount(d2)>=1 )then
					if(LuaFreeBag()>=1)then
						LuaSay("帮派总管：这些材料你都收齐了，真是了不起呀！我也不食言！这是给你的奖励！")
						DelItem(d1,1)
						DelItem(d2,1)
						LuaGive(d3,1,"Tpt3")
						LuaSetTask("Tpt3",99)
						UpdateMenu()
						UpdateNPCMenu("bangpaizg")
					else
						LuaSay("@5温馨提示：请保持你的背包至少有一个空位，防止奖励物品丢失的情况@!")
					end
				else
					LuaSay("帮派总管：你现在有"..LuaItemCount(d1).."个"..c1.."与"..LuaItemCount(d2).."个"..c2.."!材料不足，赶紧去收集吧！")	       		       
				end
			else 
				LuaSay("帮派总管：你今天已经做完了该任务，明天再来吧！")
			end
		else
			LuaSetTask("Tpt3day",GetCurrentDay())
			LuaSetTask("Tpt3",0)
			LuaSay("帮派总管：年年岁岁花相似，岁岁年年人不同，今天的合成机会为你打开，你可以领取合成任务了。")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	else
		LuaSay("帮派总管：该任务只有30级以上的帮派成员才能领取，赶快升级，成为帮派的中流砥柱吧。")
	end
----护帮使者(每小时)
elseif(answer=="Tpt4")then   
	local level=LuaQuery("level")
	local tS_Tpt4_Kill={
			--1地图名  2怪物名  3杀怪计数器  
			{1,"@4建康东郊@0","@3金蛊@0","task_kill/mon_007/Tpt4"},--10-20
			{2,"@4北府军营@0","@3北府锤兵@0","task_kill/mon_016/Tpt4"},--20-30
			{3,"@4淝水对岸@0","@3青水虫@0","task_kill/mon_023/Tpt4"},--30-40
			{4,"@4白骨洞@0","@3尸虫@0","task_kill/mon_033/Tpt4"},--40-50
			{5,"@4太行古径@0","@3金纹巨灵@0","task_kill/mon_036/Tpt4"},--50-60
			{6,"@4地下陵墓@0","@3血僵尸@0","task_kill/mon_045/Tpt4"},--60以上
			}
	if(GetCurrentDay()~=LuaQueryStrTask("Tpt4day")) then
		LuaSetTask("Tpt4day",GetCurrentDay())
		local n=LuaQueryTask("Tpt4_lv")
		if(n~=0) then --接了任务未完成
			LuaDelTask(tS_Tpt4_Kill[n][4])---删除杀怪计数器
			LuaDelTask("Tpt4_lv")
		 end                                                          
		LuaSetTask("Tpt4",0)
		LuaDelTask("Tpt4times")
		LuaDelTask("Tpt4time")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
	if(GetCurrentDay()==LuaQueryStrTask("Tpt4day")) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tpt4time"))
		if(shijiancha>=3600) then
			if(LuaQueryTask("Tpt4")==0) then
				LuaSay("为奖励帮派人员的爱帮之心，@5每小时完成任务后此可领取帮派工资和经验@0，当领取奖励次数为3的倍数时，还会增加额外的@2帮派声望和帮派银行铜币@0")		
				local m=floor(LuaQuery("level")/10)
				if(m<=5) then 
					LuaSetTask("Tpt4_lv",m)
				else
					LuaSetTask("Tpt4_lv",6)
				end
				local n=LuaQueryTask("Tpt4_lv")
				LuaSay("帮派总管：现在速速到"..tS_Tpt4_Kill[n][2].."击杀@550个@0"..tS_Tpt4_Kill[n][3].."来缓解帮派危机")
				LuaSetTask(tS_Tpt4_Kill[n][4],1)-------开启杀怪计数器
				LuaSetTask("Tpt4",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tpt4")==1) then
				local n=LuaQueryTask("Tpt4_lv")
				if(LuaQueryTask(tS_Tpt4_Kill[n][4])<51) then --怪物不够
					LuaSay("帮派总管：年轻人休要糊弄我，你才杀了"..(LuaQueryTask(tS_Tpt4_Kill[n][4])-1).."个"..tS_Tpt4_Kill[n][3].."，杀满@550个@0再来找我吧！")
				elseif(LuaQueryTask(tS_Tpt4_Kill[n][4])>=51) then --怪物杀够了
					LuaSay("帮派总管：任务完成")
					LuaGive("coin",2000,"Tpt4")
					local jinyan
					if(LuaQuery("level")<=10) then  --小于10级
						jinyan=level*150+level*level*15
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*600+level*level*15
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*1200+level*level*15
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*2000+level*level*15
					else
						jinyan=level*3000+level*level*15
					end
					LuaAddJx("combat_exp",jinyan,"Tpt4")
					ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
					LuaSetTask("Tpt4time",GetCurrentTime())
					LuaSetTask("Tpt4day",GetCurrentDay())
					LuaAddTask("Tpt4times",1)
					LuaSetTask("Tpt4",0)
					LuaDelTask(tS_Tpt4_Kill[n][4])---删除杀怪计数器
					LuaDelTask("Tpt4_lv")
					if(LuaQueryTask("Tpt4times")%3==0)then
						LuaPartyRepute(1,0,"Tpt4")
						LuaAddAchievementSchedule("PartyRepute_mun",1)
						AddMoneyToPartyBank(1000)
						LuaPartyMsg("@3"..LuaQueryStr("name").."@0爱护帮派将@2声望上增加1点@0,帮派银行@2增加1000铜币@0",0)
					end
					LuaSay("帮派总管：你@2当前该任务次数是"..LuaQueryTask("Tpt4times").."次@0，每到@53的倍数@0，就可额外增加帮派声望1点和帮派银行1000铜币，每隔一小时可以完成此任务一次！")
					UpdateMenu()
					UpdateNPCMenu("bangpaizg")
				end
			end
		else
			LuaSay("帮派总管：@2此任务需1小时才能接取一次@0.")
			local q=floor(shijiancha/60)-----分钟
			local s=shijiancha-q*60
			LuaSay("帮派总管：现在才过了@2"..q.."分钟"..s.."秒@0，等满@21小时@0再来接这个任务吧！")
		end
	 end
----战场巡视(每日)
elseif(answer=="Tpt5")then
	if(LuaQuery("level")>=30)then
		if(LuaQueryStrTask("Tpt5day")==GetCurrentDay())then    
			if(LuaQueryTask("Tpt5")==0)then
				LuaSay("帮派总管：帮战地图内的兄弟@3德明张@0劳苦功高，你不介意帮跑一趟慰劳下他吧，完后向寡人汇报，帮派声望越高奖励就越高，最高1W铜币和海量经验！")
				LuaSetTask("Tpt5",1)
			elseif(LuaQueryTask("Tpt5")==1)then
				LuaSay("帮派总管：注意要进入帮战地图，必须与别的帮宣战后才能进入！并且在22-23点间进入！帮战只能由帮主发动，并且可以向排名靠前的帮派宣战，你赶快去吧！")
			elseif(LuaQueryTask("Tpt5")==2)then 
				local i=GetPartyCurrentRepute()
				local level=LuaQuery("level")
				LuaSay("帮派总管：这是你的奖励！注意帮派声望越高，获得的金钱越多！")
				LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tpt5") 
				ChangePartyTaskExp(LuaQuery("partyid"),floor(level/5-1)*10000) ---累积本帮今日任务经验
				if(i<=5000)then
					LuaGive("coin",i*2,"Tpt5")
				else
					LuaGive("coin",10000,"Tpt5")
				end 
				LuaSetTask("Tpt5",99)
			else
				LuaSay("帮派总管：今天你已经做完了该任务！明天再来吧！")
			end	 
		else        
			LuaSay("帮派总管：新的一天了,帮战地图内的兄弟@3德明张@0劳苦功高，你不介意帮跑一趟慰劳下他，完后向寡人汇报，你的帮派声望越高，获得的奖励越高！")
			LuaSetTask("Tpt5",1)
			LuaSetTask("Tpt5day",GetCurrentDay()) 
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	else
		LuaSay("帮派总管：该任务只有30级以上的帮派成员才能领取，赶快升级，成为帮派的中流砥柱吧。")
	end
--------------------------------帮派囤积
elseif(answer=="Tbptj") then
	AddMenuItem("@7帮派囤积","")
	if(LuaPartyLevel() == 1) then
		AddMenuItem("@3一级帮会囤积【循环】","Tbptj_1")
	end
	if(LuaPartyLevel() == 2) then
		AddMenuItem("@3二级帮会囤积【循环】","Tbptj_2")
	end
	if(LuaPartyLevel() == 3) then	
		AddMenuItem("@3三级帮会囤积【循环】","Tbptj_3")
	end
	if(LuaPartyLevel() == 4) then	
		AddMenuItem("@3四级帮会囤积【循环】","Tbptj_4")
	end
	if(LuaPartyLevel() == 5) then
		AddMenuItem("@3五级帮会囤积【循环】","Tbptj_5")
	end
elseif(answer=="Tbptj_1") then
	if(LuaQueryTask("Tbptj_1")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_1time"))
		if(shijiancha>=1200) then
			LuaSay("帮派总管：每@210分钟@0可以去收集@31个1级毛@0用以加速帮派建设为@3二级帮会@0！")
			LuaSay("帮派总管：每完成@21次会获得2000帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_1",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("帮派总管：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_1")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1)then
			LuaSay("帮派总管：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_1jl")
		elseif(LuaItemStatusNormalCount("o_material_11")<1) then
			LuaSay("帮派总管：你还没收集够@31个1级毛@0.")
		end
	end
elseif(answer=="Tbptj_2") then
	if(LuaQueryTask("Tbptj_2")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_2time"))
		if(shijiancha>=1200) then
			LuaSay("帮派总管：每@210分钟@0可以去收集@31个1级毛@0和@31个1级肉@0用以加速帮派建设为@3三级帮会@0！")
			LuaSay("帮派总管：每完成@21次会获得2500帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_2",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("帮派总管：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_2")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")>=1 )then
			LuaSay("帮派总管：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_2jl")
		elseif(LuaItemStatusNormalCount("o_material_11")<1 and LuaItemStatusNormalCount("o_material_29")<1) then
			LuaSay("帮派总管：你还没收集够@31个1级毛@0和@31个1级肉@0.")
		elseif(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")<1) then
			LuaSay("帮派总管：@31级毛@0是够了，@31个1级肉@0还不够.")
		elseif(LuaItemStatusNormalCount("o_material_11")<1 and LuaItemStatusNormalCount("o_material_29")>=1) then
			LuaSay("帮派总管：@31级肉@0是够了，@31个1级毛@0还不够.")
		end
	end

elseif(answer=="Tbptj_3") then
	if(LuaQueryTask("Tbptj_3")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_3time"))
		if(shijiancha>=1200) then
			LuaSay("帮派总管：你现所在的帮会为@3三级帮会@0。")
			LuaSay("帮派总管：每@210分钟@0可以去收集@31个2级毛@0用以加速帮派建设为@3四级帮会@0！")
			LuaSay("帮派总管：每完成@21次会获得3000帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_3",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("帮派总管：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_3")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1)then
			LuaSay("帮派总管：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_3jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<1) then
			LuaSay("帮派总管：你还没收集够@31个2级毛.")
		end
	end

elseif(answer=="Tbptj_4") then
	if(LuaQueryTask("Tbptj_4")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_4time"))
		if(shijiancha>=1200) then
			LuaSay("帮派总管：你现所在的帮会为@3四级帮会@0。")
			LuaSay("帮派总管：每@210分钟@0可以去收集@31个2级毛@0和@31个2级肉@0用以加速帮派建设为@3五级帮会@0！")
			LuaSay("帮派总管：每完成@21次会获得3500帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_4",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("帮派总管：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_4")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")>=1 )then
			LuaSay("帮派总管：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_4jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<1 and LuaItemStatusNormalCount("o_material_30")<1) then
			LuaSay("帮派总管：你还没收集够@31个2级毛@0和@31个2级肉@0.")
		elseif(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")<1) then
			LuaSay("帮派总管：@32级毛@0是够了，@31个2级肉@0还不够.")
		elseif(LuaItemStatusNormalCount("o_material_12")<1 and LuaItemStatusNormalCount("o_material_30")>=1) then
			LuaSay("帮派总管：@32级肉@0是够了，@31个2级毛@0还不够.")
		end
	end
elseif(answer=="Tbptj_5") then
	if(LuaQueryTask("Tbptj_5")==0) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_5time"))
		if(shijiancha>=1200) then
			LuaSay("帮派总管：你现所在的帮会为@3五级帮会@0。")
			LuaSay("帮派总管：每@210分钟@0可以去收集@32个2级毛@0和@32个2级肉@0用以加速帮派建设为@3国家@0！")
			LuaSay("帮派总管：每完成@21次会获得4000帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_4",1)
			LuaSetTask("Tbptj_5time",GetCurrentTime())
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("帮派总管：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_5")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")>=2 )then
			LuaSay("帮派总管：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_5jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<2 and LuaItemStatusNormalCount("o_material_30")<2) then
			LuaSay("帮派总管：你还没收集够@32个2级毛@0和@32个2级肉@0.")
		elseif(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")<2) then
			LuaSay("帮派总管：@32个2级毛@0是够了，@32个2级肉@0还不够.")
		elseif(LuaItemStatusNormalCount("o_material_12")<2 and LuaItemStatusNormalCount("o_material_30")>=2) then
			LuaSay("帮派总管：@32个2级肉@0是够了，@32个2级毛@0还不够.")
		end
	end
elseif(answer=="Tbptj_1jl") then
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	if(LuaQueryTask("Tbptj_1")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1)then
			LuaAddTask("Tbptj_cs",1)---------增加任务完成次数
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --小于10级
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_1")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			DelItem("o_material_11",1)
			LuaDelTask("Tbptj_1")
			LuaSetTask("Tbptj_1time",GetCurrentTime())
			AddMoneyToPartyBank(2000)-------增加帮库金钱
			LuaSay("帮派总管：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
elseif(answer=="Tbptj_2jl") then
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	if(LuaQueryTask("Tbptj_2")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")>=1 )then
			LuaAddTask("Tbptj_cs",1)---------增加任务完成次数
			DelItem("o_material_11",1)
			DelItem("o_material_29",1)
			LuaDelTask("Tbptj_2")
			LuaSetTask("Tbptj_2time",GetCurrentTime())
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --小于10级
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_2")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			LuaSay("帮派总管：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			AddMoneyToPartyBank(2500)-------增加帮库金钱
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
elseif(answer=="Tbptj_3jl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbptj_3")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1)then
			LuaAddTask("Tbptj_cs",1)---------增加任务完成次数
			DelItem("o_material_12",1)
			LuaDelTask("Tbptj_3")
			LuaSetTask("Tbptj_3time",GetCurrentTime())
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --小于10级
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_3")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(3000)-------库金钱
			LuaSay("帮派总管：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
elseif(answer=="Tbptj_4jl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbptj_4")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")>=1 )then
			LuaAddTask("Tbptj_cs",1)---------增加任务完成次数
			DelItem("o_material_12",1)
			DelItem("o_material_30",1)
			LuaDelTask("Tbptj_4")
			LuaSetTask("Tbptj_4time",GetCurrentTime())
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --小于10级
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_4")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(3500)-------增加帮库金钱
			LuaSay("帮派总管：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
elseif(answer=="Tbptj_5jl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbptj_5")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")>=2 )then
			LuaAddTask("Tbptj_cs",1)---------增加任务完成次数
			DelItem("o_material_12",2)
			DelItem("o_material_30",2)
			LuaDelTask("Tbptj_5")
			LuaSetTask("Tbptj_5time",GetCurrentTime())
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --小于10级
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_5")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(4000)-------增加帮库金钱
			LuaSay("帮派总管：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end		
--------------------------------了解帮会【剧情】
elseif(answer=="Tbprw1") then
	if(LuaQueryTask("Tbprw1")==0) then
		LuaSay("帮派总管："..LuaQueryStr("name").."，欢迎你的到来。")
		LuaSay("帮派总管：天下百姓民不聊生，孤寄望帮派强盛以匡社稷，故帮派乃国家之希望，汝等建功立业之捷径，越强大的帮会将越得皇上青睐。")
		LuaSetTask("Tbprw1",1)      -------日志的添加
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","Tbprw1jl")
	end
elseif(answer=="Tbprw1jl")then  -----------------给经验
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	local jinyan
	if(LuaQuery("level")<=10) then  --小于10级
		jinyan=level*150+level*level*15
	elseif(LuaQuery("level")<=20) then  --10-20
		jinyan=level*600+level*level*15
	elseif(LuaQuery("level")<=30) then	--20-30
		jinyan=level*1200+level*level*15
	elseif(LuaQuery("level")<=60) then	--30-60
		jinyan=level*2800+level*level*15
	else
		jinyan=level*3200+level*level*15
	end
	if(LuaQueryTask("Tbprw1")==1) then
		LuaSetTask("Tbprw1",99)
		LuaAddJx("combat_exp",jinyan,"Tbprw1")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(1000)-------增加帮库金钱
		LuaPartyRepute(1,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
        UpdateMenu()
		UpdateNPCMenu("bangpaizg")
    end
--------------------------------------------灵性考验
elseif(answer=="Tbprw002")then 
	if(LuaQueryTask("Tbprw002")==0)then
		LuaSay("帮派总管：建帮是小事，但是管理帮派是大事，现在就让我来考考你，看看你对帮派的知识了解有多少！")
		LuaSay("帮派总管：知道如何申请帮派吗？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("有钱就能建帮","NO_11")
		AddMenuItem("有100w铜币，等级达到20级，方可建帮","N11_ANSWER")
		AddMenuItem("有100w铜币就能建帮","NO_11")
		AddMenuItem("等级达到20级就可以建帮","NO_11")
	elseif(LuaQueryTask("Tbprw002")==1)then
		LuaSay("帮派总管：帮怎样升级成派？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("增加帮派声望，声望达到250,就能升级","N21_ANSWER")
		AddMenuItem("打怪就能升级","NO_21")
		AddMenuItem("有铜币就能升级","NO_21")
		AddMenuItem("做帮派任务，完成就能升级","NO_21")
	elseif(LuaQueryTask("Tbprw002")==2)then
		LuaSay("帮派总管：这次来个有难度的问题，知道帮中有哪几个职位吗？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("帮众、堂主、帮主","NO_31")
		AddMenuItem("帮众、部长、元老、帮主","NO_31")
		AddMenuItem("帮众、群主、元老、帮主","NO_31")
		AddMenuItem("帮众、堂主、长老、帮主","N31_ANSWER")
	elseif(LuaQueryTask("Tbprw002")==3)then
		LuaSay("帮派总管：怎样加入帮派？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("缴纳铜币给帮派，即可加入","NO_41")
		AddMenuItem("等级达到10级后，帮派招募报名后，方可加入","N41_ANSWER")
		AddMenuItem("大喊三声帮主洪福齐天即可加入","NO_41")
		AddMenuItem("等级达到10级就可加入帮派","NO_41")
		end
-----------------------------------------------------------------奖励
elseif(answer=="NO_11")then
	LuaSay("帮派总管：不会吧，这么简单的问题都答错，重新来过！")
	LuaSetTask("Tbprw002",0)
	UpdateNPCMenu("jindi")
elseif(answer=="N11_ANSWER")then
	if(LuaQueryTask("Tbprw002")<1)then
		LuaSetTask("Tbprw002",1)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*30+level*level*4
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*110+level*level*4
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*270+level*level*4
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*600+level*level*4
		else
			jinyan=level*800+level*level*4
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw002")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：这么简单的问题你答对了也没什么稀奇的，我再问你")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_21")then
	LuaSay("帮派总管：你答错了，重新再答！")
	LuaSetTask("Tbprw002",1)
	UpdateNPCMenu("jindi")
elseif(answer=="N21_ANSWER")then
	if(LuaQueryTask("Tbprw002")<2)then
		LuaSetTask("Tbprw002",2)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*30+level*level*4
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*110+level*level*4
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*270+level*level*4
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*600+level*level*4
		else
			jinyan=level*800+level*level*4
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw002")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：看来你还是有两下子的嘛，我再问你")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_31")then
	LuaSay("帮派总管：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw002",2)
	UpdateNPCMenu("jindi")
elseif(answer=="N31_ANSWER")then
	if(LuaQueryTask("Tbprw002")<3)then
		LuaSetTask("Tbprw002",3)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
					if(LuaQuery("level")<=10) then  --小于10级
						jinyan=level*30+level*level*4
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*110+level*level*4
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*270+level*level*4
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*600+level*level*4
					else
						jinyan=level*800+level*level*4
					end
		LuaAddJx("combat_exp",jinyan,"Tbprw002")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：你真是聪明啊，这个也知道啊，再问你一个问题。")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_41")then
	LuaSay("帮派总管：这个问题确实很有难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw002",3)
	UpdateNPCMenu("jindi")
elseif(answer=="N41_ANSWER")then
	if(LuaQueryTask("Tbprw002")<99) then
		LuaSetTask("Tbprw002",99)
		LuaSay("帮派总管：你真是太聪明了，居然全部都知道。")
		LuaGive("coin",2000,"Tbprw002")
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
					if(LuaQuery("level")<=10) then  --小于10级
						jinyan=level*30+level*level*4
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*110+level*level*4
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*270+level*level*4
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*600+level*level*4
					else
						jinyan=level*800+level*level*4
					end
		LuaAddJx("combat_exp",jinyan,"Tbprw002")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(3000)
		LuaPartyRepute(1,0)
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库3000铜币@0!",0)
        UpdateMenu()
		UpdateNPCMenu("bangpaizg")
end 
---------------------------------------------------强盛之法【剧情】
elseif(answer=="Tbprw2") then
	if(LuaQueryTask("Tbprw2")==0) then
		LuaSay("帮派总管：@4桃源径@0的@3冉闵@0和@4北府军营@0的@3谢玄@0都乃一代大将，汝等可去请教帮派的强盛之法。")
		LuaSetTask("Tbprw2",1)      -------日志的添加
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw2")==1) then
		if(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==0 ) then
			LuaSay("帮派总管：到@4桃源径@0找@3冉闵@0和到@4北府军营@0找@3谢玄@0吧！")
		elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==0 ) then
			LuaSay("帮派总管：阁下取经才取了一半，再去@4北府军营@0找@3谢玄@0吧！")
		elseif(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==99 ) then 
			LuaSay("帮派总管：阁下取经才取了一半，再去@4桃源径@0找@3冉闵@0吧！")
		else
			LuaSay("帮派总管：现在你应该知道帮派升级的最佳捷径了吧。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw2jl")			
		end
	end
elseif(answer=="Tbprw2jl")then  -----------------给经验
	if(LuaQueryTask("Tbprw2")==1) then
		LuaSetTask("Tbprw2",99)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2000+level*level*15
		else
			jinyan=level*3000+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw2")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(1000)-------增加帮库金钱
		LuaPartyRepute(1,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
		LuaDelTask("Tbprw2A")
		LuaDelTask("Tbprw2B")
        UpdateMenu()
		UpdateNPCMenu("bangpaizg")
    end
---------------------------------------------------探听风云
elseif(answer=="Tbprw003")then
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		-------------20----------29
		if(LuaQuery("level")>=20 and LuaQuery("level")<=29)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("帮派总管：帮派初建，局势不稳，急需寻求习武之道，听说在@4建康东郊@0有个叫@3桓冲@0的，他很有见解！")
				LuaSay("帮派总管：你去探讨探讨，取得真经后回复我！")
				LuaSetTask("Tbprw003",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==1)then
				LuaSay("帮派总管：赶紧去找@4建康东郊@0的@3桓冲@0吧")
			elseif(LuaQueryTask("Tbprw003")==2)then
				LuaSay(LuaQueryStr("name").."：习武需心平气和，循序渐进方可练就奇功！")
				LuaSay("帮派总管：言之有理，辛苦你了，领取奖励吧！")
				AddMenuItem("任务完成","")
				AddMenuItem("领取奖励","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("帮派总管：今天的任务已经做完了，明天再来吧！")
			end
		end
		--------------30---------39
		if(LuaQuery("level")>=30 and LuaQuery("level")<=39)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("帮派总管：光靠武力治帮非智举，听说在@4淝水对岸@0有个叫@3朱序@0的，他对治理之事很有见解！")
				LuaSay("帮派总管：你去探讨探讨，取得真经后回复我！")
				LuaSetTask("Tbprw003",3)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==3)then
				LuaSay("帮派总管：赶紧去找@4淝水对岸@0的@3朱序@0吧！")
			elseif(LuaQueryTask("Tbprw003")==4)then
				LuaSay(LuaQueryStr("name").."：治理需实施仁政，赏罚分明方可兴旺发达！")
				LuaSay("帮派总管：言之有理，辛苦你了，领取奖励吧！")
				AddMenuItem("任务完成","")
				AddMenuItem("领取奖励","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("帮派总管：今天的任务已经做完了，明天再来吧！")
			end
		end
		---------------40---------49
		if(LuaQuery("level")>=40 and LuaQuery("level")<=49)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("帮派总管：帮派势力越大，面临的挑战也就越多，去找@4陷落关口@0的@3汉族老翁@0讨教一下吧!")
				LuaSetTask("Tbprw003",5)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==5)then
				LuaSay("帮派总管：赶紧去@4陷落关口@0找@3汉族老翁@0吧！")
			elseif(LuaQueryTask("Tbprw003")==6)then
				LuaSay(LuaQueryStr("name").."：无论势力多大，最根本的宗旨不能丢啊！")
				LuaSay("帮派总管：言之有理，辛苦了，领取奖励吧")
				AddMenuItem("完成任务","")
				AddMenuItem("领取奖励","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("帮派总管：今天的任务已经做完了，明天再来吧！")
			end
		end
		--------------50----------59
		if(LuaQuery("level")>=50 and LuaQuery("level")<=59)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("帮派总管：帮派力量日趋见增，但是我怕增的快，衰的也快啊，去找@4中山城@0的@3燕王@0请教一下吧！")
					LuaSetTask("Tbprw003",7)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==7)then
				LuaSay("帮派总管：赶紧去找@4中山城@0的@3燕王@0吧！")
			elseif(LuaQueryTask("Tbprw003")==8)then
				LuaSay(LuaQueryStr("name").."：燕王虽不掌权，但是心里却存着对百姓的体谅，要步步为营啊！")
				LuaSay("帮派总管：言之有理，辛苦了，领取奖励吧！")
				AddMenuItem("任务完成","")
				AddMenuItem("领取奖励","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("帮派总管：今天的任务已经做完了，明天再来吧！")
			end
		end
		------------------------60以上
		if(LuaQuery("level")>=60)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("帮派总管：现在帮派药品储存相当紧缺，你速去@4建康城南@0的@3药品商人@0那里购买一些药物！")
				LuaSay("帮派总管：购买@2金创散跟三叶散各10个@0后回复，限时@2五分钟@0哦")
				LuaSetTask("Tbprw003",9)
				LuaSetTask("Tbprw003time",GetCurrentTime())
				UpdateTopSay("在药店商人处购买药品")
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==9)then
				if(LuaItemCount("o_drug_hp1")>=10 and LuaItemCount("o_drug_hp2")>=10)then
					local tgtime=GetCurrentTime()-LuaQueryTask("Tbprw003time")
					if(tgtime<=300)then
						LuaSay("帮派总管：不错不错，值得表扬！快去领奖励吧！")
						AddMenuItem("任务完成","")
						AddMenuItem("领取奖励","Tbprw003jl")
					else
						LuaSay("帮派总管：已经过了@2五分钟@0了，你这速度@！！重新来过吧！")
						LuaSetTask("Tbprw003",0)
						DelItem("o_drug_hp1",10)
						DelItem("o_drug_hp2",10)
					end
				else
					LuaSay("帮派总管：你还没买到@2金创散跟三叶散各10个@0呢，快去@4建康城南@0的@3药品商人@0那买吧！")
				end
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("帮派总管：今天的任务已经做完了，明天再来吧！")
			end
		end
	else
		LuaSay("帮派总管：新的一天，新的开始，继续加油吧！你的帮派声望越高，获得的奖励就越高！")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaSetTask("Tbprw003",0)
		DoTalk("Tbprw003")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
---------------------------------------------------------------------------任务奖励
	elseif(answer=="Tbprw003jl")then
		if(LuaQueryTask("faction920")==1)then
			LuaSay("提示：环形任务第九环完成")
			LuaSetTask("faction920",2)
		end
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2000+level*level*15
		else
			jinyan=level*3000+level*level*15
		end
		if(LuaQuery("level")>=20 and LuaQuery("level")<=59)then
			LuaAddJx("combat_exp",jinyan,"Tbprw003")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			LuaPartyRepute(1,0)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望@0!",0)
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
		elseif(LuaQuery("level")>=60)then
			local tgtime=GetCurrentTime()-LuaQueryTask("Tbprw003time")
			if(tgtime<=300)then
				if(LuaItemCount("o_drug_hp1")>=5 and LuaItemCount("o_drug_hp2")>=5)then
					LuaAddJx("combat_exp",jinyan,"Tbprw003")
					ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
					LuaGive("coin",1000,"Tbprw003")
					LuaPartyRepute(1,0)
					LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望@0!",0)
					LuaAddAchievementSchedule("PartyTask_num",1)	
					LuaAddAchievementSchedule("PartyRepute_mun",1)
					DelItem("o_drug_hp1",10)
					DelItem("o_drug_hp2",10)
				end
			end
		end
		LuaSetTask("Tbprw003",99)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
---------------------------------------------无尽趣味【每日】
elseif(answer=="Tbprw005")then
	if(LuaQueryStrTask("Tbprw005day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw005")==0)then
			LuaSay("帮派总管：活跃一下气氛，来几个有趣的脑筋急转弯考考你的智商吧！听好了哦")
			LuaSay("问题：一头公牛加一头母牛，猜三个字？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("公母牛","NO_01")
			AddMenuItem("两头牛","N01_ANSWER")
			AddMenuItem("牛两头","NO_01")
			AddMenuItem("都是牛","NO_01")
		elseif(LuaQueryTask("Tbprw005")==1)then
			LuaSay("问题：什么样的轮子只转不走？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("自行车的轮子","NO_02")
			AddMenuItem("火车的轮子","NO_02")
			AddMenuItem("风车的轮子","N02_ANSWER")
			AddMenuItem("汽车的轮子","NO_02")
		elseif(LuaQueryTask("Tbprw005")==2)then
			LuaSay("问题：一本书放在什么地方你跨不过去？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("放在桌子上","NO_03")
			AddMenuItem("放在手上","NO_03")
			AddMenuItem("放在墙角里","N03_ANSWER")
			AddMenuItem("放在窗台上","NO_03")
		elseif(LuaQueryTask("Tbprw005")==3)then
			LuaSay("问题： “Kiss”是什么词? ")
			AddMenuItem("@7答案选项","")
			AddMenuItem("动词","NO_04")
			AddMenuItem("形容词","NO_04")
			AddMenuItem("名词","NO_04")
			AddMenuItem("连词","N04_ANSWER")
		elseif(LuaQueryTask("Tbprw005")==4)then
			LuaSay("谜面：孝子要习文，鹅边鸟飞去，饶人必无心，河干人独立，还来还要走，相思只一心，好女愿他旁")
			AddMenuItem("@7答案选项","")
			AddMenuItem("教我如何不想她","N05_ANSWER")
			AddMenuItem("让我如何不想她","NO_05")
			AddMenuItem("教我怎能不想她","NO_05")
			AddMenuItem("让我如何不相思","NO_05")
		elseif(LuaQueryTask("Tbprw005")==5)then
			LuaSay("谜面：天鹅一出鸟不见，一个人在把心牵，双匕割月旁边站，水流几处又落天，一月有别心想你，单身贵族已相连，树木靠十冲天跃，月里嫦娥口最甜")
			AddMenuItem("@7答案选项","")
			AddMenuItem("鸟不能没有你杜娟","NO_06")
			AddMenuItem("我心能失去你杜鹃","NO_06")
			AddMenuItem("我不能没有你杜鹃","N06_ANSWER")
			AddMenuItem("我不能没有你杜娥","NO_06")
		elseif(LuaQueryTask("Tbprw005")==6)then
			LuaSay("谜面：飞蛾扑火虫已逝，学友无子留撇须，偶尔留得一人在")
			AddMenuItem("@7答案选项","")
			AddMenuItem("火灭了","NO_07")
			AddMenuItem("火饶人","NO_07")
			AddMenuItem("我爱尔","NO_07")
			AddMenuItem("我爱你","N07_ANSWER")
		elseif(LuaQueryTask("Tbprw005")==7)then
			LuaSay("谜面：心死两相依，知己所言真，人在尔旁站，饥饿去无食，人故想永共，还来还要走，至死也相随")
			AddMenuItem("@7答案选项","")
			AddMenuItem("忘记你俄做不到","NO_08")
			AddMenuItem("忘记你我做不倒","NO_08")
			AddMenuItem("忘记你我作不倒","NO_08")
			AddMenuItem("忘记你我做不到","N08_ANSWER")
		elseif(LuaQueryTask("Tbprw005")==99)then
			LuaSay("帮派总管：今天的任务已经做完了，明天再来吧！")
		end
	else
		LuaSay("帮派总管：新的一天，新的开始，继续努力吧！")
		LuaSetTask("Tbprw005day",GetCurrentDay())
		LuaSetTask("Tbprw005",0)
		DoTalk("Tbprw005")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
--------------------------------	奖励
elseif(answer=="NO_01")then
		LuaSay("帮派总管：不会吧，这么简单的问题都答错，重新来过！")
		LuaSetTask("Tbprw005",0)
elseif(answer=="N01_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<1)then
		LuaSetTask("Tbprw005",1)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*20+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*80+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*200+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*350+level*level*2
		else
			jinyan=level*450+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：这么简单的问题你答对了也没什么稀奇的，我再问你.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_02")then
	LuaSay("帮派总管：你答错了，重新再答！")
	LuaSetTask("Tbprw005",1)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N02_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<2)then
		LuaSetTask("Tbprw005",2)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*210+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*360+level*level*2
		else
			jinyan=level*460+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：看来你还是有两下子的嘛，我再问你.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_03")then
	LuaSay("帮派总管：这个问题确实有一点难度啊，给你机会重新选择.")
	LuaSetTask("Tbprw005",2)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N03_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<3)then
		LuaSetTask("Tbprw005",3)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*220+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*370+level*level*2
		else
			jinyan=level*470+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：你真是聪明啊，这个也知道啊，再问你一个问题.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_04")then
	LuaSay("帮派总管：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",3)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N04_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<4)then
		LuaSetTask("Tbprw005",4)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*230+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*380+level*level*2
		else
			jinyan=level*480+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：你真是聪明啊，这个也知道啊，再问你几个谜语吧。")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_05")then
	LuaSay("帮派总管：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",4)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N05_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<5)then
		LuaSetTask("Tbprw005",5)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*250+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*390+level*level*2
		else
			jinyan=level*490+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：你真是聪明啊，这个也知道啊，再问你一个谜语。")
		DoTalk("Tbprw005")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="NO_06")then
	LuaSay("帮派总管：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",5)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N06_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<6)then
		LuaSetTask("Tbprw005",6)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*250+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*400+level*level*2
		else
			jinyan=level*500+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：你真是聪明啊，这个也知道啊，再问你一个谜语。")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_07")then
	LuaSay("帮派总管：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",6)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N07_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<7)then
		LuaSetTask("Tbprw005",7)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*250+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*410+level*level*2
		else
			jinyan=level*510+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("帮派总管：你真是聪明啊，这个也知道啊，再问你一个谜语。")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_08")then
	LuaSay("帮派总管：这个问题确实很有难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",7)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N08_ANSWER")then
	if(LuaQueryTask("Tbprw005")<99) then
		if(LuaQueryTask("faction921")==1)then
			LuaSay("提示：环形任务第九环完成")
			LuaSetTask("faction921",2)
		end
        LuaSetTask("Tbprw005",99)
		LuaSay("帮派总管：你真是太聪明了，居然全部都知道。")
		LuaGive("coin",3000,"Tbprw005")
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*250+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*410+level*level*2
		else
			jinyan=level*510+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaPartyRepute(1,0)
		AddMoneyToPartyBank(2000)
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望,帮库2000铜币@0!",0)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end 
---------------------------------官威何在【循环】
elseif(answer=="Tbprw12") then	
	if(LuaQueryTask("Tbprw12")==0) then
		LuaSay("帮派总管：一个帮派要想发展为@3顶级帮会@0最重要的是什么，是帮派的核心成员，是你们。")
		LuaSay("帮派总管：因此，你要做好表率是很重要的。")
		LuaSetTask("Tbprw12_Taskday",GetCurrentDay())
		if(LuaQuery("level")>=20 and LuaQuery("level")<30) then
			LuaSay("帮派总管：去把@4地牢深处@0的@3BOSS孙恩邪体@0身上的@3魔经@0带来给我。")
			LuaSetTask("Tbprw12_1",1)
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			LuaSay("帮派总管：去把@4淝水河底@0的@3BOSS万蛇@0身上的@3蛇胆@0带来给我。")
			LuaSetTask("Tbprw12_2",1)
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			LuaSay("帮派总管：去把@4白骨洞深处@0的@3BOSS修罗魔菇@0身上的@3修罗菌丝@0带来给我。")
			LuaSetTask("Tbprw12_3",1)
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			LuaSay("帮派总管：去把@4太行谷底@0的@3BOSS玄武兽@0身上的@3玄武盾@0带来给我。")
			LuaSetTask("Tbprw12_4",1)
		elseif(LuaQuery("level")>=60) then
			LuaSay("帮派总管：去把@4地下陵穴@0的@3BOSS王陵将军@0身上的@3将军印@0带来给我。")
			LuaSetTask("Tbprw12_5",1)
		end
		LuaSetTask("Tbprw12",1)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw12")==1) then
		if(GetCurrentDay()~=LuaQueryStrTask("Tbprw12_Taskday")) then
			LuaSetTask("Tbprw12",0)
			LuaSetTask("Tbprw12_cs",0)
			if(LuaQueryTask("Tbprw12_1")==1) then
				LuaSetTask("Tbprw12_1",0)
				DelItem("o_mission408",1)
			elseif(LuaQueryTask("Tbprw12_2")==1) then
				LuaSetTask("Tbprw12_2",0)
				DelItem("o_mission409",1)
			elseif(LuaQueryTask("Tbprw12_3")==1) then
				LuaSetTask("Tbprw12_3",0)
				DelItem("o_mission410",1)
			elseif(LuaQueryTask("Tbprw12_4")==1) then
				LuaSetTask("Tbprw12_4",0)
				DelItem("o_mission411",1)
			elseif(LuaQueryTask("Tbprw12_5")==1) then
				LuaSetTask("Tbprw12_5",0)
				DelItem("o_mission412",1)
			end
			LuaSay("帮派总管：由于你@2今天以前@0的任务@3官威何在【循环】@0还未完成，现在自动删除任务。")
			LuaSay("帮派总管：你现在可以接任务@3官威何在【循环】@0了！")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
			DoTalk("Tbprw12")
		end
		if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")<1) then
			LuaSay("帮派总管：快去@4地牢深处@0把@5BOSS孙恩邪体@0杀了把@3魔经@0带来给我。")
		elseif(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")<1) then
			LuaSay("帮派总管：快去@4淝水河底@0把@5BOSS万蛇@0杀了把@3蛇胆@0带来给我。")
		elseif(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")<1) then
			LuaSay("帮派总管：快去@4白骨洞深处@0把@5BOSS修罗魔菇@0杀了把@3修罗菌丝@0带来给我。")
		elseif(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")<1) then
			LuaSay("帮派总管：快去@4太行谷底@0把@5BOSS玄武兽@0杀了把@3玄武盾@0带来给我。")
		elseif(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")<1) then
			LuaSay("帮派总管：快去@4地下陵穴@0把@5BOSS王陵将军@0杀了把@3将军印@0带来给我。")
		end
		if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")>=1) then
			LuaSay("帮派总管：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_1jl")
		elseif(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")>=1) then
			LuaSay("帮派总管：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_2jl")
		elseif(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")>=1) then
			LuaSay("帮派总管：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_3jl")
		elseif(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")>=1) then
			LuaSay("帮派总管：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_4jl")
		elseif(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")>=1) then
			LuaSay("帮派总管：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_5jl")
		end
	end
elseif(answer=="Tbprw12_1jl") then
	if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_1",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_1")
		DelItem("o_mission408",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSay("帮派总管：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("帮派总管：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@7官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_1e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_2jl") then
	if(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_2",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_2")
		DelItem("o_mission409",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSay("帮派总管：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("帮派总管：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@7官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】3次@0。")
			LuaSetTask("Tbprw12_2e",1) -------额外奖励判断参数
			AddMenuItem("领取额外奖励","")
			AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_3jl") then
	if(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_3",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_3")
		DelItem("o_mission410",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSay("帮派总管：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("帮派总管：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@7官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_3e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_4jl") then
	if(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_4",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_4")
		DelItem("o_mission411",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSay("帮派总管：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("帮派总管：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@3官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_4e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_5jl") then
	if(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_5",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_5")
		DelItem("o_mission412",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSay("帮派总管：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("帮派总管：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@3官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_5e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("帮派总管：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_ejl") then
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
	if(LuaQueryTask("Tbprw12_1e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",2000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaDelTask("Tbprw12_1e")
	elseif(LuaQueryTask("Tbprw12_2e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",2000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaDelTask("Tbprw12_2e")
	elseif(LuaQueryTask("Tbprw12_3e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",2000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaDelTask("Tbprw12_3e")
	elseif(LuaQueryTask("Tbprw12_4e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",2000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaDelTask("Tbprw12_4e")
	elseif(LuaQueryTask("Tbprw12_5e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",4000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaDelTask("Tbprw12_5e")
	end
-------------------------------------------------------洛阳告急【循环】
elseif(answer=="Tbprw3") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw3_Taskday")) then
		LuaSetTask("Tbprw3_cs",0)
	end
	if(LuaQueryTask("Tbprw3_cs")<5)then
		if(LuaQueryTask("Tbprw3")==0) then
			LuaSay("帮派总管：英雄终于来了。")
			LuaSay("帮派总管：现在@4军营前哨@0出现大量@3愚民@0，速去消灭@320个愚民@0以定社会和谐。")
			LuaSetTask("Tbprw3",1)      -------日志的添加
			LuaSetTask("task_kill/mon_020/Tbprw3",1)--------开启杀怪计数器
			UpdateTopSay("去军营前哨杀20个愚民")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw3")==1 and LuaQueryTask("task_kill/mon_020/Tbprw3")>=21 ) then
			LuaSay("帮派总管：多谢英雄为国家排忧解难，实乃国家之幸啊。")
			AddMenuItem("@7任务完成","")
			LuaAddTask("Tbprw3_cs",1)---------增加任务完成次数
			AddMenuItem("领取奖励","Tbprw3jl")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw3")==1 and LuaQueryTask("task_kill/mon_020/Tbprw3")<21 ) then
			a=LuaQueryTask("task_kill/mon_020/Tbprw3")-1
			LuaSay("帮派总管：你才杀了@3"..a.."个愚民@0，快去@4军营前哨@0接着杀愚民吧！")
		end
	elseif(LuaQueryTask("Tbprw3_cs")>=5)then
		LuaSay("帮派总管：你今天已经做了五次@3洛阳告急【循环】@0任务了，明天再来做吧！")
	end
elseif(answer=="Tbprw3jl")then  -----------------给经验
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbprw3")==1) then
		if(LuaQueryTask("task_kill/mon_020/Tbprw3")>=21) then
			if(LuaQueryTask("faction911")==1)then
				LuaSay("提示：环形任务第九环完成")
				LuaSetTask("faction911",2)
			end
			LuaSetTask("Tbprw3",99)
			LuaSetTask("Tbprw3_Taskday",GetCurrentDay())
			LuaDelTask("Tbprw3")
			LuaDelTask("task_kill/mon_020/Tbprw3")
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --小于10级
				jinyan=level*150+level*level*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=level*600+level*level*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=level*1200+level*level*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=level*2500+level*level*15
			else
				jinyan=level*3200+level*level*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbprw3")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(2000)-------增加帮库金钱
			LuaPartyRepute(1,0)------------增加帮派声望
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
    end
--------------------------------------------------职责所在【循环】
elseif(answer=="Tbprw4") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw4_Taskday")) then
		LuaSetTask("Tbprw4_cs",0)
	end
	if(LuaQueryTask("Tbprw4_cs")<5)then
		if(LuaQueryTask("Tbprw4")==0) then
			LuaSay("帮派总管：最近妖物怪物横行，孤甚是震怒。")
			if(LuaQuery("level")<=35) then
				local r = LuaRandom(2)                       --------触发几率
				if(r==0)then
					LuaSay("帮派总管：@4渭水之滨@0的@3嚎兽@0横行，速去击杀@325只@0以宽孤的心。")
					LuaSay("帮派总管：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_0",1)
					LuaSetTask("task_kill/mon_028/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到渭水之滨消灭25只嚎兽")
				elseif(r==1)then
					LuaSay("帮派总管：你去@4西蜀竹林@0消灭@325只竹叶妖@0宽慰一下孤的心吧！")
					LuaSay("帮派总管：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_1",1)
					LuaSetTask("task_kill/mon_030/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到西蜀竹林消灭25只竹叶妖")
				end
			elseif(LuaQuery("level")>35) then
				local r = LuaRandom(3)
				if(r==0)then
					LuaSay("帮派总管：你去@4食人谷@0消灭@325只骷髅@0宽慰一下孤的心吧！")
					LuaSay("帮派总管：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_2",1)
					LuaSetTask("task_kill/mon_032/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到食人谷消灭25只骷髅")
				elseif(r==1)then
					LuaSay("帮派总管：你去@4白骨洞@0消灭@325只尸虫@0宽慰一下孤的心吧！")
					LuaSay("帮派总管：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_3",1)
					LuaSetTask("task_kill/mon_033/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到白骨洞消灭25只尸虫")
				elseif(r==2)then
					LuaSay("帮派总管：你去@4食人谷@0消灭@325只噬龙@0宽慰一下孤的心吧！")
					LuaSay("帮派总管：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_4",1)
					LuaSetTask("task_kill/mon_031/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到食人谷消灭25只噬龙")
				end
			end
			LuaSetTask("Tbprw4",1)
			local time=GetCurrentTime()
			LuaSetTask("Tbprw4time",time)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw4")==1) then
			if((LuaQueryTask("task_kill/mon_028/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_030/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_032/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_033/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_031/Tbprw4")-1 )>=25) then
				local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbprw4time"))
				if(shijiancha<=600) then
					LuaSay("帮派总管：这么快就消灭妖怪了，英雄的速度真快，我果真没有看错人。")
					AddMenuItem("@7任务完成","")
					AddMenuItem("领取奖励","Tbprw4jl_1")
				elseif(shijiancha>600) then
					LuaSay("帮派总管：虽说你完成了任务,但是速度太慢了,这下可没有双倍奖励了。")
					AddMenuItem("@7任务完成","")
					AddMenuItem("领取奖励","Tbprw4jl_2")
				end
			else
				if(LuaQueryTask("Tbprw4_0")==1) then
					LuaSay("帮派总管：英雄才杀了@3"..(LuaQueryTask("task_kill/mon_028/Tbprw4")-1).."个嚎兽@0，快去@4渭水之滨@0接着杀吧！")
					UpdateTopSay("到渭水之滨消灭25只嚎兽")
				elseif(LuaQueryTask("Tbprw4_1")==1) then
					LuaSay("帮派总管：英雄才杀了@3"..(LuaQueryTask("task_kill/mon_030/Tbprw4")-1).."个竹叶妖@0，快去@4西蜀竹林@0接着杀吧！")
					UpdateTopSay("到西蜀竹林消灭25只竹叶妖")
				elseif(LuaQueryTask("Tbprw4_2")==1) then
					LuaSay("帮派总管：英雄才杀了@3"..(LuaQueryTask("task_kill/mon_032/Tbprw4")-1).."个骷髅@0，快去@4食人谷@0接着杀吧！")
					UpdateTopSay("到食人谷消灭25只骷髅")
				elseif(LuaQueryTask("Tbprw4_3")==1) then
					LuaSay("帮派总管：英雄才杀了@3"..(LuaQueryTask("task_kill/mon_033/Tbprw4")-1).."个尸虫@0，快去@4白骨洞@0接着杀吧！")
					UpdateTopSay("到白骨洞消灭25只尸虫")
				elseif(LuaQueryTask("Tbprw4_4")==1) then
					LuaSay("帮派总管：英雄才杀了@3"..(LuaQueryTask("task_kill/mon_031/Tbprw4")-1 ).."个噬龙@0，快去@4食人谷@0接着杀吧！")
					UpdateTopSay("到食人谷消灭25只噬龙")
				end
			end
		end
	elseif(LuaQueryTask("Tbprw4_cs")>=5)then
		LuaSay("帮派总管：你今天已经做了五次@3职责所在【循环】@0任务了，明天再来做吧！")
	end
elseif(answer=="Tbprw4jl_1")then  -----------------给经验
	if(LuaQueryTask("Tbprw4")==1) then
		if((LuaQueryTask("task_kill/mon_028/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_030/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_032/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_033/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_031/Tbprw4")-1 )>=25) then
			LuaAddTask("Tbprw4_cs",1)---------增加任务完成次数
			LuaSetTask("Tbprw4_Taskday",GetCurrentDay())
			LuaSetTask("Tbprw4",99)
			LuaDelTask("Tbprw4")
			LuaDelTask("Tbprw4time")
			if(LuaQueryTask("Tbprw4_0")==1) then
				LuaDelTask("task_kill/mon_028/Tbprw4")
				LuaDelTask("Tbprw4_0")
			elseif(LuaQueryTask("Tbprw4_1")==1) then
				LuaDelTask("task_kill/mon_030/Tbprw4")
				LuaDelTask("Tbprw4_1")
			elseif(LuaQueryTask("Tbprw4_2")==1) then
				LuaDelTask("task_kill/mon_032/Tbprw4")
				LuaDelTask("Tbprw4_2")
			elseif(LuaQueryTask("Tbprw4_3")==1) then
				LuaDelTask("task_kill/mon_033/Tbprw4")
				LuaDelTask("Tbprw4_3")
			elseif(LuaQueryTask("Tbprw4_4")==1) then
				LuaDelTask("task_kill/mon_031/Tbprw4")
				LuaDelTask("Tbprw4_4")
			end
			if(LuaQueryTask("faction913")==1)then
				LuaSay("提示：环形任务第九环完成")
				LuaSetTask("faction913",2)
			end
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw4")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			LuaGive("coin",800,"Tbprw4")
			AddMoneyToPartyBank(2000)-------增加帮库金钱
			LuaPartyRepute(1,0)------------增加帮派声望
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
    end
elseif(answer=="Tbprw4jl_2")then  -----------------给经验
	if(LuaQueryTask("Tbprw4")==1) then
		if((LuaQueryTask("task_kill/mon_028/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_030/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_032/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_033/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_031/Tbprw4")-1 )>=25) then
			LuaAddTask("Tbprw4_cs",1)---------增加任务完成次数
			LuaSetTask("Tbprw4_Taskday",GetCurrentDay())
			LuaSetTask("Tbprw4",99)
			LuaDelTask("Tbprw4")
			LuaDelTask("Tbprw4time")
			if(LuaQueryTask("Tbprw4_0")==1) then
				LuaDelTask("task_kill/mon_028/Tbprw4")
				LuaDelTask("Tbprw4_0")
			elseif(LuaQueryTask("Tbprw4_1")==1) then
				LuaDelTask("task_kill/mon_030/Tbprw4")
				LuaDelTask("Tbprw4_1")
			elseif(LuaQueryTask("Tbprw4_2")==1) then
				LuaDelTask("task_kill/mon_032/Tbprw4")
				LuaDelTask("Tbprw4_2")
			elseif(LuaQueryTask("Tbprw4_3")==1) then
				LuaDelTask("task_kill/mon_033/Tbprw4")
				LuaDelTask("Tbprw4_3")
			elseif(LuaQueryTask("Tbprw4_4")==1) then
				LuaDelTask("task_kill/mon_031/Tbprw4")
				LuaDelTask("Tbprw4_4")
			end
			if(LuaQueryTask("faction913")==1)then
				LuaSay("提示：环形任务第九环完成")
				LuaSetTask("faction913",2)
			end
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*80+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*700+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1500+level*level*15
		else
			jinyan=level*2100+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw4")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(1000)-------增加帮库金钱
			LuaPartyRepute(1,0)------------增加帮派声望
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
    end
-------------------------------------------------收集爪子【循环】
elseif(answer=="Tbprw5") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw5_Taskday")) then
		LuaSetTask("Tbprw5_cs",0)
	end
	if(LuaQueryTask("Tbprw5_cs")<10)then
		if(LuaQueryTask("Tbprw5")==0) then
			LuaSay("帮派总管：听说@4陷落关口@0有一种怪物叫@3霸虎@0。")
			LuaSay("帮派总管：现在急需@3霸虎的爪子@0生产一种武器，英雄快去收集@310个霸虎的爪子@0回来交给我。")
			LuaSetTask("Tbprw5",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw5")==1) then
			if(LuaItemCount("o_mission400")>=10) then -------o_mission400    霸虎的爪子
				if(LuaQueryTask("Tbprw5_cs")<5) then
					LuaSay("帮派总管：如果一个人一天收集够@350个霸虎的爪子@0，还有额外奖励哦！")
				elseif(LuaQueryTask("Tbprw5_cs")>=5 and LuaQueryTask("Tbprw5_cs")<10) then
					LuaSay("帮派总管：如果一个人一天收集够@3100个霸虎的爪子@0，有更多丰富的额外奖励哦！")
				end
				AddMenuItem("@7任务完成","")
				LuaAddTask("Tbprw5_cs",1)---------增加任务完成次数
				AddMenuItem("领取奖励","Tbprw5jl")
			elseif(LuaItemCount("o_mission400")<10) then
				LuaSay("帮派总管：你还没有收集够@310个霸虎的爪子@0，快去@4陷落关口@0杀@3霸虎@0吧。")
				UpdateTopSay("收集10个霸虎的爪子再来找我吧！")
			end
		end
	elseif(LuaQueryTask("Tbprw5_cs")>=10)then
		LuaSay("帮派总管：你今天已经做了十次@3收集爪子【循环】@0任务了，明天再来做吧！")
	end
elseif(answer=="Tbprw5jl")then  -----------------给经验
	if(LuaQueryTask("Tbprw5")==1) then
		if(LuaItemCount("o_mission400")>=10) then
			if(LuaQueryTask("faction915")==1)then
				LuaSay("提示：环形任务第九环完成")
				LuaSetTask("faction915",2)
			end
			LuaSetTask("Tbprw5",99)
			LuaSetTask("Tbprw5_Taskday",GetCurrentDay())
			DelItem("o_mission400",10)
			LuaDelTask("Tbprw5")
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw5")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(2000)-------增加帮库金钱
			LuaPartyRepute(1,0)------------增加帮派声望
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
	if(LuaQueryTask("Tbprw5_cs")==5)then
		LuaSay("帮派总管：英雄今天已经收集了@350个霸虎的爪子@0。")
		AddMenuItem("领取额外奖励","")
		AddMenuItem("领取额外奖励","Tbprw5jl_e1")
	elseif(LuaQueryTask("Tbprw5_cs")==10)then
		LuaSay("帮派总管：英雄今天已经收集了@3100个霸虎的爪子@0。")
		AddMenuItem("领取额外奖励","")
		AddMenuItem("领取额外奖励","Tbprw5jl_e2")
	end
elseif(answer=="Tbprw5jl_e1")then  -----------------给经验
	if(LuaQueryTask("Tbprw5_cs")==5) then
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw5")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(1000)-------增加帮库金钱
		LuaPartyRepute(1,0)------------增加帮派声望	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw5jl_e2")then  -----------------给经验
	if(LuaQueryTask("Tbprw5_cs")==10) then
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw5")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
--------------------------------------------------
elseif(answer=="Tbprw6") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbprw6")==0) then
		LuaSay("帮派总管：最近妖气盛行，@4燕王陵@0和@4地下陵墓@0已经出现了@3鬼火@0和@3毒僵尸@0。")
		LuaSay("帮派总管：请英雄速去击杀@4燕王陵@0的@315个鬼火@0和@4地下陵墓@0的@315个毒僵尸@0。")
		LuaSetTask("Tbprw6",1)
		LuaSetTask("task_kill/mon_042/Tbprw6",1)   -----------开启杀怪计数器
		LuaSetTask("task_kill/mon_044/Tbprw6",1)   -----------开启杀怪计数器
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw6")==1) then
		if(LuaQueryTask("task_kill/mon_042/Tbprw6") >= 16 and  LuaQueryTask("task_kill/mon_044/Tbprw6") >= 16) then
			LuaSay("帮派总管：多谢英雄！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw6jl")
		else
			local a1=LuaQueryTask("task_kill/mon_042/Tbprw6")-1
			local a2=LuaQueryTask("task_kill/mon_044/Tbprw6")-1
			if(a1<15 and a2<15) then
				LuaSay("帮派总管：不要忽悠人，你@4燕王陵@0的@315个鬼火@0和@4地下陵墓@0的@315个毒僵尸@0都还没杀够。")
				UpdateTopSay("到燕王陵和地下陵墓分别击杀15个鬼火和15个毒僵尸")
			elseif(a1>=15 and a2<15) then
				LuaSay("帮派总管：@3鬼火@0已经杀够了，但@3毒僵尸@0才杀了"..a2.."个，接着去@4地下陵墓@0杀@3毒僵尸@0吧。")
			elseif(a2>=15 and a1<15) then
				LuaSay("帮派总管：@3毒僵尸@0已经杀够了，但@3鬼火@0才消灭了"..a1.."个，接着去@4燕王陵@0消灭@3鬼火@0吧。")
			end
		end
	end
elseif(answer=="Tbprw6jl")then  -----------------给经验
	if(LuaQueryTask("Tbprw6")==1) then
		if(LuaQueryTask("task_kill/mon_042/Tbprw6") >= 16 and  LuaQueryTask("task_kill/mon_044/Tbprw6") >= 16) then
			if(LuaQueryTask("faction917")==1)then
				LuaSay("提示：环形任务第九环完成")
				LuaSetTask("faction917",2)
			end
			LuaSetTask("Tbprw6",99)
			LuaDelTask("Tbprw6")
			LuaDelTask("task_kill/mon_042/Tbprw6")
			LuaDelTask("task_kill/mon_044/Tbprw6")
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw6")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(2000)-------增加帮库金钱
			LuaPartyRepute(1,0)------------增加帮派声望
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
			UpdateMenu() 
			UpdateNPCMenu("bangpaizg")
		end
	end
--------------------------------------------------扶摇直上【循环】
elseif(answer=="Tbprw7") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw7_Taskday")) then
		LuaSetTask("Tbprw7_cs",0)
	end
	if(LuaQueryTask("Tbprw7_cs")<=30) then
		if(LuaQueryTask("Tbprw7")==0) then
			LuaSay("帮派总管：阁下已经@3"..LuaQuery("level").."级@0了，你所在的帮派等级是@3"..LuaPartyLevel().."@0级，这个任务可以发放给你了。")
			LuaSay("帮派总管：现如今国家内忧外患，寡人需要大型帮会辅佐以安定国家。")
			LuaSay("帮派总管：你速到@4古战场@0击杀@335个鲜卑精锐@0，我将给你很丰厚的@3帮派声望奖励和个人奖励@0哦。")
			LuaSetTask("Tbprw7",1)
			LuaSetTask("task_kill/mon_052/Tbprw7",1)   -----------开启杀怪计数器
			UpdateTopSay("到古战场杀35个鲜卑精锐再来找我吧")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw7")==1) then
			if(LuaQueryTask("task_kill/mon_052/Tbprw7") >= 36 ) then
				LuaSay("帮派总管：多谢英雄为国家尽心尽力。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","Tbprw7jl")
			elseif(LuaQueryTask("task_kill/mon_052/Tbprw7") <36 ) then
				LuaSay("帮派总管：你还没有杀够@235个鲜卑精锐@0，到@4古战场@0接着去杀吧！")
			end
		end
	else
		LuaSay("帮派总管：每天@5扶摇直上@0任务只能完成30次,你已经做完了30次，不能再做了")
	end
elseif(answer=="Tbprw7jl")then  -----------------给经验
	if(LuaQueryTask("Tbprw7")==1) then
		if(LuaQueryTask("task_kill/mon_052/Tbprw7") >= 36) then
			if(LuaQueryTask("faction919")==1)then
				LuaSay("提示：环形任务第九环完成")
				LuaSetTask("faction919",2)
			end
			LuaAddTask("Tbprw7_cs",1)---------增加任务完成次数  30次后经验减半
			LuaDelTask("Tbprw7")
			LuaDelTask("task_kill/mon_052/Tbprw7")
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --小于10级
				jinyan=level*150+level*level*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=level*600+level*level*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=level*1200+level*level*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=level*2500+level*level*15
			else
				jinyan=level*3200+level*level*15
			end
			LuaSay("你当前完成@2扶摇直上【循环】@0任务@3"..LuaQueryTask("Tbprw7_cs").."次@0")
			if(LuaQueryTask("Tbprw7_cs")<=30) then
				LuaAddJx("combat_exp",jinyan,"Tbprw7")
				LuaSetTask("Tbprw7_Taskday",GetCurrentDay())
				ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
				AddMoneyToPartyBank(1000)-------增加帮库金钱
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyTask_num",1)	
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
			end
			UpdateMenu() 
			UpdateNPCMenu("bangpaizg")
		end
	end			
--------------------------------------------------派送物资【每日】
elseif(answer=="Tbprw8") then
	if(LuaQueryStrTask("Tbprw8day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw8")==0) then
		LuaSay("帮派总管：现如今建康城告急，战事吃紧。")
		LuaSay("帮派总管：前线来报说物资紧缺，你速速把这两包@3战争物资@0送往@4北府军营@0的@3谢玄@0处和@4军营前哨@0的@3谢琰@0处。")
		LuaSetTask("Tbprw8",1)
		LuaGive("o_mission401",2)
		LuaSetTask("Tbprw8A",0)
		LuaSetTask("Tbprw8B",0)
		UpdateTopSay("把战争物资送往洛阳郊外的苻融处和军营前哨的谢琰那里")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw8")==1) then
		if(LuaQueryTask("Tbprw8A")==0 and LuaQueryTask("Tbprw8B")==0)then
			LuaSay("帮派总管：阁下怎么还没出发把@3战争物资@0送往@4北府军营@0的@3谢玄@0处和@4军营前哨@0的@3谢琰@0那里。")
			LuaSay("帮派总管：战事刻不容缓，阁下快点启程吧。")
		elseif(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==0)then
			LuaSay("帮派总管：阁下怎么只把@3战争物资@0送往@4北府军营@0的@3谢玄@0处啊。")
			LuaSay("帮派总管：速去把另外一包@3战争物资@0送往@4军营前哨@0的@3谢琰@0那里！")
		elseif(LuaQueryTask("Tbprw8A")==0 and LuaQueryTask("Tbprw8B")==1)then
			LuaSay("帮派总管：阁下怎么只把一包@3战争物资@0送往@4军营前哨@0的@3谢琰@0处啊。")
			LuaSay("帮派总管：速去把另外一包@3战争物资@0送往@4北府军营@0的@3谢玄@0那里！")
		elseif(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==1) then
			LuaSay("帮派总管：还好来得及，多谢英雄关心国家战事！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw8jl")
		end
	elseif(LuaQueryTask("Tbprw8")==99) then
		LuaSay("帮派总管：今天的@3派送物资【每日】@0你已经做完了，明天再来吧！")
	end
else
	LuaSay("帮派总管：新的一天，新的开始，继续加油吧！你的帮派声望越高，获得的奖励就越高！")
	LuaSetTask("Tbprw8day",GetCurrentDay()) 
	LuaSetTask("Tbprw8",0)
	LuaSetTask("Tbprw8A",0)
	LuaSetTask("Tbprw8B",0)
	DelItem("o_mission401",LuaItemCount("o_mission401"))
	DoTalk("Tbprw8")
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
end
elseif(answer=="Tbprw8jl")then  -----------------给经验
	if(LuaQueryTask("Tbprw8")==1) then
		if(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==1) then
			if(LuaQueryTask("faction912")==1)then
				LuaSay("提示：环形任务第九环完成")
				LuaSetTask("faction912",2)
			end
			LuaSetTask("Tbprw8",99)
			LuaSetTask("Tbprw8A",99)
			LuaSetTask("Tbprw8B",99)
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*800+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1600+level*level*15
		else
			jinyan=level*2200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw8")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(1000)-------增加帮库金钱
			LuaPartyRepute(1,0)------------增加帮派声望
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
    end
----------------------------------------------------购买物资【每日】
elseif(answer=="Tbprw9") then
	if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw9")==0) then
			LuaSay("帮派总管：最近国库需要补充物资。")
			local r=LuaRandom(4)
			if(r==0) then
				LuaSay("帮派总管：@4洛阳@0的@3防具商人@0是我们晋国的防具提供商。")
				LuaSay("帮派总管：你在@35分钟内@0去他那与他@3对话@0，然后购买一件@3晋国御用防具@0交给我。")
				LuaSetTask("Tbprw9_0",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(r==1) then
				LuaSay("帮派总管：@4洛阳@0的@3武器商人@0是我晋国的武器提供商。")
				LuaSay("帮派总管：你在@35分钟内@0去他那与他@3对话@0，然后购买一件@3晋国御用武器@0交给我。")
				LuaSetTask("Tbprw9_1",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(r==2) then
				LuaSay("帮派总管：@4洛阳@0的@3饰品商人@0是我晋国的饰品提供商。")
				LuaSay("帮派总管：你在@35分钟内@0去他那与他@3对话@0，然后购买一件@3晋国御用饰品@0交给我。")
				LuaSetTask("Tbprw9_2",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(r==3) then
				LuaSay("帮派总管：@4洛阳@0的@3药品商人@0是我晋国的药品提供商。")
				LuaSay("帮派总管：你在@35分钟内@0去他那与他@3对话@0，然后购买一件@3晋国御用药品@0交给我。")
				LuaSetTask("Tbprw9_3",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			end
			LuaSetTask("Tbprw9",1)
			LuaSetTask("Tbprw9_Taskday",GetCurrentDay())
			time=GetCurrentTime()
			LuaSetTask("Tbprw9time",time)
		elseif(LuaQueryTask("Tbprw9")==1) then
			if(LuaQueryTask("Tbprw9_0")==1) then
				LuaSay("帮派总管：你怎么还没去@4洛阳@0的@3防具商人@0那买@3晋国御用防具@0")
				LuaSay("帮派总管：快去吧，一个国家没有后勤是不行滴！")
			elseif(LuaQueryTask("Tbprw9_1")==1) then
				LuaSay("帮派总管：你怎么还没去@4洛阳@0的@3武器商人@0那买@3晋国御用武器@0")
				LuaSay("帮派总管：快去吧，一个国家没有后勤是不行滴！")
			elseif(LuaQueryTask("Tbprw9_2")==1) then
				LuaSay("帮派总管：你怎么还没去@4洛阳@0的@3饰品商人@0那买@3晋国御用饰品@0")
				LuaSay("帮派总管：快去吧，一个国家没有后勤是不行滴！")
			elseif(LuaQueryTask("Tbprw9_3")==1) then
				LuaSay("帮派总管：你怎么还没去@4洛阳@0的@3药品商人@0那买@3晋国御用药品@0")
				LuaSay("帮派总管：快去吧，一个国家没有后勤是不行滴！")
			end
		elseif(LuaQueryTask("Tbprw9")==2) then
			if(LuaItemCount("o_mission402")>=1 or LuaItemCount("o_mission403")>=1 or LuaItemCount("o_mission404")>=1 or LuaItemCount("o_mission405")>=1 )then
				local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbprw9time"))
				if(shijiancha<=300) then
					LuaSay("帮派总管：多谢英雄！")
					AddMenuItem("@7任务完成","")
					AddMenuItem("领取奖励","Tbprw9jl")
				elseif(shijiancha>300) then
					LuaSay("帮派总管：你已经超过了任务时间，任务失败！")
					if(LuaQueryTask("Tbprw9")==2) then
						if(LuaQueryTask("Tbprw9_0")==99) then					
							DelItem("o_mission402",1)
							LuaDelTask("Tbprw9_0")
						elseif(LuaQueryTask("Tbprw9_1")==99) then
							DelItem("o_mission403",1)
						elseif(LuaQueryTask("Tbprw9_2")==99) then
							DelItem("o_mission404",1)						
						elseif(LuaQueryTask("Tbprw9_3")==99) then
							DelItem("o_mission405",1)
						end
						LuaSetTask("Tbprw9",99)
						UpdateMenu() 
						UpdateNPCMenu("bangpaizg")
					end
				end
			end
		elseif(LuaQueryTask("Tbprw9")==99) then
			LuaSay("帮派总管：今天的@3购买物资【每日】@0你已经做完了，明天再来吧！")
		end
	else
		LuaSay("帮派总管：新的一天，新的开始，继续加油吧！你的帮派声望越高，获得的奖励就越高！")
		LuaSetTask("Tbprw9",0)
		LuaSetTask("Tbprw9_0",0)
		LuaSetTask("Tbprw9_1",0)
		LuaSetTask("Tbprw9_2",0)
		LuaSetTask("Tbprw9_3",0)
		LuaSetTask("Tbprw9day",GetCurrentDay()) 
		if(LuaItemCount("o_mission402") >0) then
			DelItem("o_mission402",LuaItemCount("o_mission402"))
		elseif(LuaItemCount("o_mission403") >0) then
			DelItem("o_mission403",LuaItemCount("o_mission403"))
		elseif(LuaItemCount("o_mission404") >0) then
			DelItem("o_mission404",LuaItemCount("o_mission404"))
		elseif(LuaItemCount("o_mission405") >0) then
			DelItem("o_mission405",LuaItemCount("o_mission405"))
		end
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
		DoTalk("Tbprw9")
	end
elseif(answer=="Tbprw9jl")then  -----------------给经验
	if(LuaQueryTask("Tbprw9")==2) then
		if(LuaQueryTask("Tbprw9_0")==99) then
			DelItem("o_mission402",1)
		elseif(LuaQueryTask("Tbprw9_1")==99) then
			DelItem("o_mission403",1)
		elseif(LuaQueryTask("Tbprw9_2")==99) then
			DelItem("o_mission404",1)
		elseif(LuaQueryTask("Tbprw9_3")==99) then
			DelItem("o_mission405",1)
		end
		if(LuaQueryTask("faction914")==1)then
			LuaSay("提示：环形任务第九环完成")
			LuaSetTask("faction914",2)
		end
		LuaSetTask("Tbprw9",99)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*800+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1600+level*level*15
		else
			jinyan=level*2200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw9")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(1000)-------增加帮库金钱
		LuaPartyRepute(1,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end			
----------------------------------------------------运送粮食【每日】
elseif(answer=="Tbprw10") then
	if(LuaQueryStrTask("Tbprw10day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw10")==0) then
			LuaSay("帮派总管：听说@4陷落关口@0的@3拓拔仪@0经常粥济难民。")
			LuaSay("帮派总管：一个人的力量毕竟有限，晋帝知道后决定@3运送粮食@0给@3拓拔仪@0。")
			LuaSay("帮派总管：你去把这些@3粮食@0送往@4陷落关口@0的@3拓拔仪@0。")
			LuaSetTask("Tbprw10",1)
			LuaGive("o_mission406",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw10")==1) then
			LuaSay("帮派总管：去把@3粮食@0送往@4陷落关口@0的@3拓拔仪@0再来找我吧。")
		elseif(LuaQueryTask("Tbprw10")==2) then
			LuaSay(""..LuaQueryStr("name").."：@3拓拔仪@0叫我代他谢谢你")
			LuaSay("帮派总管：只要难民能过的安稳就行了。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw10jl")
		elseif(LuaQueryTask("Tbprw10")==99) then
			LuaSay("帮派总管：今天的@3运送粮食【每日】@0你已经做完了，明天再来吧！")
		end
	else
		LuaSay("帮派总管：新的一天，新的开始，继续加油吧！你的帮派声望越高，获得的奖励就越高！")
		LuaSetTask("Tbprw10day",GetCurrentDay()) 
		LuaSetTask("Tbprw10",0)
		DelItem("o_mission406",LuaItemCount("o_mission406"))
		DoTalk("Tbprw10")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw10jl")then  -----------------给经验
	if(LuaQueryTask("Tbprw10")==2) then
		if(LuaQueryTask("faction916")==1)then
			LuaSay("提示：环形任务第九环完成")
			LuaSetTask("faction916",2)
		end
		LuaSetTask("Tbprw10",99)
		DelItem("o_mission406",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*800+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1600+level*level*15
		else
			jinyan=level*2200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw10")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		AddMoneyToPartyBank(1000)-------增加帮库金钱
		LuaPartyRepute(1,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
----------------------------------------------------解决邪恶【环一】
elseif(answer=="Tbprw11_1") then
	if(LuaQueryTask("Tbprw11_1")==0) then
		LuaSay("帮派总管：现如今乱世怨念沉积，邪物尽出，听说@4燕王陵@0常年有一位神秘的@3守墓老人@0。")
		LuaSay("帮派总管：阁下速去找他查探有没有解决邪物的办法。")
		LuaSetTask("Tbprw11_1",1)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw11_1")==1) then
		LuaSay("帮派总管：邪物尽出,寻求解决之道刻不容缓，快去找@4燕王陵@0的@3守墓老人@0。")
	end
elseif(answer=="Tbprw11_3") then
	if(LuaQueryTask("Tbprw11_3")==2) then
		LuaSay(""..LuaQueryStr("name").."：我找到@4地下陵墓@0的@3骸骨@0，他说这些邪物都是由怨念组成，只能每天消灭他们直到怨念消失为止。")
		LuaSay("帮派总管：哎，那也只能这样了。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","Tbprw11_3jl")
	end
elseif(answer=="Tbprw11_3jl")then  -----------------给经验
	if(LuaQueryTask("Tbprw11_3")==2) then
		if(LuaQueryTask("faction918")==1)then
			LuaSay("提示：环形任务第九环完成")
			LuaSetTask("faction918",2)
		end
		LuaSetTask("Tbprw11_3",99)
		LuaDelTask("Tbprw11_1")
		LuaDelTask("Tbprw11_2")
		LuaDelTask("Tbprw11_3")
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --小于10级
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*800+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1600+level*level*15
		else
			jinyan=level*2200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw11")		
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			AddMoneyToPartyBank(1000)-------增加帮库金钱
		LuaPartyRepute(1,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
------------------帮派任务经验分享	pTkfx
elseif(answer=="pTkfx") then
	AddMenuItem("@7帮派任务经验","")
	AddMenuItem("@5帮派任务经验说明","pTkfx_sm")
	AddMenuItem("@3领取帮派任务经验分享","pTkfx_Y")
elseif(answer=="pTkfx_sm") then  --帮派任务经验说明
	LuaSay("帮派任务经验为@2每天00:00-24:00时间段@0（时间00:00自动清0）内@5本帮玩家@0做@2帮派任务所累积的经验@0")
	LuaSay("帮派官员（@2帮主、长老、堂主@0）可@5每天一次@0分享一定比例的帮派任务经验，@2帮派职位越高、帮派等级越高，分享的比例也就越高@0。")
	LuaSay("帮派中帮派任务的完成数量越多，帮派任务经验自然也就越多，努力做帮派任务吧@!")
elseif(answer=="pTkfx_Y") then  --领取帮派任务经验分享
	if(LuaQueryRank()==0) then
		LuaSay("你还@2没有加入帮派@0，赶快找个帮派加入吧")
	elseif(LuaQueryRank()==1) then --帮众
		LuaSay("你在本帮的职位是：@2帮众@0，没有分享帮派任务经验的权利")
	elseif(LuaQueryRank()>=2) then --帮派官员
		if(GetCurrentDay()~=LuaQueryStrTask("pTkfx_Day")) then   --防止同一人一天领取2次以上
			local tSpTk={
				--1帮派等级，2堂主比例  3长老比例  4帮主分享比例     
				{1,0.5,1,2,"堂主","长老","帮主"},
				{2,1,1.5,3,"堂主","长老","帮主"},
				{3,1.5,2,4,"堂主","长老","帮主"},
				{4,2,2.5,5,"堂主","长老","帮主"},
				{5,2.5,3,6,"堂主","长老","帮主"},
				}
			if(GetExpCountByRank()==0)  then --说明今天玩家对应的该官职的帮派任务经验领取次数已经完了
				LuaSay("本帮今天@2"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."@0的帮派任务经验已经领完了,请查看今天是否有帮派职位变动")
			else
				LuaSay("本帮现在帮派任务经验为：@2"..GetPartyTaskExp().."经验@0")
				if(GetPartyTaskExp()>0) then  --帮派任务经验>0
					LuaSetTask("pTkfx_jy",floor(GetPartyTaskExp()*tSpTk[LuaPartyLevel()][LuaQueryRank()]/100))
					LuaSay("本帮现在等级为：@2"..LuaPartyLevel().."级@0；你在本帮的职位是：@2"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."@0，现可分享@1"..tSpTk[LuaPartyLevel()][LuaQueryRank()].."%的帮派任务经验@0（@3"..LuaQueryTask("pTkfx_jy").."经验@0）")
					AddMenuItem("@7是否现在领取","")
					AddMenuItem("@3现在领","pTkfx_yes")
					AddMenuItem("@7待会再来领","pTkfx_no")
				else
					LuaSay("本帮现在@2没有人完成帮派任务@0，赶快告诉本帮帮众@2做帮派任务@0吧！")
				end
			end
		elseif(GetCurrentDay()==LuaQueryStrTask("pTkfx_Day")) then  --说明今天本人已经领过了
			LuaSay("今天的帮派任务经验你已经领过了，明天在来吧")
		end
	end
elseif(answer=="pTkfx_yes") then  --领取
	local tSpTk={
		--1帮派等级，2堂主比例  3长老比例  4帮主分享比例     
		{1,0.5,1,2,"堂主","长老","帮主"},
		{2,1,1.5,3,"堂主","长老","帮主"},
		{3,1.5,2,4,"堂主","长老","帮主"},
		{4,2,2.5,5,"堂主","长老","帮主"},
		{5,2.5,3,6,"堂主","长老","帮主"},
		}
	if(ChangeExpCountByRank(1)==1) then --说明次数增加成功了
		LuaAddJx("combat_exp",LuaQueryTask("pTkfx_jy"),"pTkfx")
		LuaSetTask("pTkfx_Day",GetCurrentDay()) 
		if(GetExpCountByRank()~=0) then
			LuaSay("本帮今天@2"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."@0还有@5"..GetExpCountByRank().."位@0可以领取帮派任务经验.赶快通知其他"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."来领经验吧")
		else 
			LuaSay("本帮今天所有@2"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."@0已经都领取完帮派任务经验了.")
		end
		LuaDelTask("pTkfx_jy")
	else
		LuaSay("@2领取失败@0，请重新领取")
	end
------------------帮贡
elseif(answer=="partyoffer") then
	AddMenuItem("@7帮贡","")
	AddMenuItem("@5帮贡说明","offer_sm")
	AddMenuItem("@3查询我的帮贡值","offer_cx")
	AddMenuItem("@6帮贡商店","offer_shop")
elseif(answer=="offer_sm") then--帮贡说明
	LuaSay("帮贡来源：@1帮战@0，规则：@2击杀帮众+1，堂主+2，长老+3，帮主+4，击杀boss+50@0")
	LuaSay("注意：1：@2退出帮派@0将@5清除身上所有的帮贡值@0；2：每天增加帮贡@1上限为100点@0，超过100点则今天的帮贡值不会再增加；")
	LuaSay("帮贡作用：帮贡达到一定数量时可以在@5帮贡商店@0购买@2套装及道具@0（购买只会扣除相应铜币，@2不会扣除帮贡@0）")
elseif(answer=="offer_cx") then--查询我的帮贡值
	if(LuaQueryRank()==0) then
		LuaSay("你还@2没有加入帮派@0，赶快找个帮派加入吧")
	elseif(LuaQueryRank()>=1) then
		LuaSay("你目前的帮贡值为：@3"..GetUserPartyOffer().."@0点")
	end
elseif(answer=="offer_shop") then--帮贡商店
	DoBuy()

--------弹劾帮主	
elseif(answer=="thbz") then
	AddMenuItem("@7弹劾帮主","")
	AddMenuItem("@5弹劾帮主说明","thbz_sm")
	AddMenuItem("@3确定弹劾帮主","thbz_y")
elseif(answer=="thbz_sm")then   -------弹劾帮主说明
	LuaSay("弹劾成功条件：1：@2帮派声望大于100@0；2：@2帮主不在线10天或者10天以上@0；3：帮派中的@3长老@0或@3堂主@0有权利弹劾帮主；@2弹劾成功会扣200W个人铜币@0")
elseif(answer=="thbz_y")then   -------弹劾帮主
	if(LuaQueryRank()==3 or LuaQueryRank()==2)then
		if(GetPartyCurrentRepute()>=100)then
			if(LuaItemCount("coin") >= 2000000) then
				ImpeachMaster()
				if(LuaQueryRank()==4 )then
					LuaGive("coin",-2000000,"thbz")
				else
					LuaSay("@1弹劾失败@0！贵帮@2帮主10天内有上线记录@0")
				end
			else
				LuaSay("@1弹劾失败@0！弹劾帮主需要@2200W个人铜币@0，你可没有那么多钱哦。")
			end
		else
			LuaSay("@1弹劾失败@0！只有@2帮派声望100以上@0的帮派才可以使用弹劾帮主功能。")
		end
	else
		LuaSay("@1弹劾失败@0！只有@2长老或堂主@0才有权利弹劾帮主。")
	end
----地牢行刑
elseif(answer=="dlxx") then
	LuaSay("所有帮派成员，都可以对@2在地牢的非本帮人员行刑@0，获得行刑的好处。")
	GetUserInJail()
------------------帮派说明
elseif(answer=="partysm")then
	AddMenuItem("@7帮派权利与数量说明","") 
	AddMenuItem("帮派数量说明","party_numsm")
	AddMenuItem("@3帮派权力操作说明","bpqlsm")
elseif(answer=="party_numsm") then  --帮派数量说明
	LuaSay("帮派总管：一个国家只能同时存在@21个国、2个侯、4个部、8个派、15个帮@0。")
	LuaSay("如果你想升级到下一等级的帮派，但是下一等级的帮派数量达到饱和，那么你只能通过帮战把其中的一个帮派打降一级，你才有机会升级到下一级的帮派。")
elseif(answer=="bpqlsm")then
     LuaSay("帮派升级后帮主和帮会官员会获得一定的特权，这下牛B了！特权使用次数随帮派等级和职位提高而增加。初级帮一次")
     LuaSay("@1赦免@0：每天可对本帮玩家洗掉一定PK值，选择帮内玩家私聊@3/sm@0，帮派内的玩家红名了怎么办，找帮派官员！")
     LuaSay("@1抓捕@0：可将目标抓捕到本帮地牢，在私聊中输入@3/zb@0，看到仇人怎么办，抓他进牢蹂躏！前提是开通帮派地牢")
     LuaSay("@1行刑@0：抓别人进地牢是不是还不过瘾，行，你可以对玩家私聊@3/xx@0，这样就能将地牢内的敌人咔嚓，还能爆装备哦！此功能需通帮派地牢")
     LuaSay("@1禁言@0：对本帮人闹事者，可净化帮聊环境，对玩家私聊@3/jy@0只能对帮众使用！")
	 LuaSay("@1提示@0：赦免，抓捕，行刑，禁言这四个帮派特权@1恢复使用次数的要求是：使用完一种特权24小时后才可恢复你本人使用此特权的次数@0，才可再次使用此特权，也就是你@2使用完此特权后24小时内不可再免费使用@0，必须要有相应的道具。")

--------帮派技能
elseif(answer=="partyskill")then
	AddMenuItem("@7帮派技能","") 
	AddMenuItem("@5帮派技能说明","partyskill_sm")
	AddMenuItem("@3激活帮派技能","partyskill_y")
elseif(answer=="partyskill_sm")then   --------帮派技能说明
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("@3帮派技能升级@0：@5菜单@0-->@54技能键@0-->@5帮派技能@0，点击升级即可，等级越高，激活后获得的相应属性也就越高。")
	else
		LuaSay("@3帮派技能升级@0：@5确定键@0-->@54技能@0-->@5帮派技能@0，点击升级即可，等级越高，激活后获得的相应属性也就越高。")
	end
	LuaSay("@1注意@0：帮派技能升级后@2不能使用@0，需到帮派主寨@2帮派总管@0处@5激活@0后既可获得相应属性加成")
	LuaSay("@3激活方式@0：@5铜币激活@0，@21小时@0有效时间；@5通宝激活@0：@26小时@0有效时间")
	LuaSay("@3激活数量限制@0：@1最多能激活3个@0帮派技能，激活三个后将@2不能激活或者替换@0帮派技能，请谨慎选择")
elseif(answer=="partyskill_y")then   --------激活帮派技能
	if(LuaQueryRank()==0) then  --没有入帮
		LuaSay("你还@2没有加入帮派@0，不能激活帮派技能")
	else
		local buffnum=0  --定义激活buff数量
		for i=1,6,1 do
			if(LuaCheckBuff(tS_skill[i][4])==1 or LuaCheckBuff(tS_skill[i][5])==1) then
				buffnum=buffnum+1--已激活buff数量
			end
		end
		if(buffnum>=1) then  --说明玩家身上已有激活buff
			local tS_jhbf="你已经激活的技能有@5"..buffnum.."个@0："
			if(LuaCheckBuff("530")==1 or LuaCheckBuff("536")==1) then  --说明玩家身上有力量buff了-->已激活力量
				if(buffnum==1) then  --只激活了一个
					tS_jhbf=tS_jhbf.."@2力量@0"
				else  --激活了两个以上
					tS_jhbf=tS_jhbf.."@2力量@0  "
				end
			end
			if(LuaCheckBuff("531")==1 or LuaCheckBuff("537")==1) then  --说明玩家身上有敏捷buff了-->已激活敏捷
				if(buffnum==1) then  --只激活了一个
					tS_jhbf=tS_jhbf.."@2敏捷@0"
				else  --激活了两个以上
					tS_jhbf=tS_jhbf.."@2敏捷@0  "
				end
			end
			if(LuaCheckBuff("532")==1 or LuaCheckBuff("538")==1) then  --说明玩家身上有智力buff了-->已激活智力
				if(buffnum==1) then  --只激活了一个
					tS_jhbf=tS_jhbf.."@2智力@0"
				else  --激活了两个以上
					tS_jhbf=tS_jhbf.."@2智力@0  "
				end
			end
			if(LuaCheckBuff("533")==1 or LuaCheckBuff("539")==1) then  --说明玩家身上有攻击buff了-->已激活攻击
				if(buffnum==1) then  --只激活了一个
					tS_jhbf=tS_jhbf.."@2攻击@0"
				else  --激活了两个以上
					tS_jhbf=tS_jhbf.."@2攻击@0  "
				end
			end
			if(LuaCheckBuff("534")==1 or LuaCheckBuff("540")==1) then  --说明玩家身上有攻击防御buff了-->已激活防御
				if(buffnum==1) then  --只激活了一个
					tS_jhbf=tS_jhbf.."@2防御@0"
				else  --激活了两个以上
					tS_jhbf=tS_jhbf.."@2防御@0  "
				end
			end
			if(LuaCheckBuff("535")==1 or LuaCheckBuff("541")==1) then  --说明玩家身上有攻击血上限buff了-->已激活血上限
				if(buffnum==1) then  --只激活了一个
					tS_jhbf=tS_jhbf.."@2血上限@0"
				else  --激活了两个以上
					tS_jhbf=tS_jhbf.."@2血上限@0"
				end
			end
			LuaSay(""..tS_jhbf.."")
			if(buffnum>=3) then
				LuaSay("你激活的帮派技能已经@2达到上限@0了，不能再操作帮派技能")
			end
		else
			LuaSay("你还没有@2激活帮派技能@0，赶快激活吧")
		end
		if(buffnum<3) then  --激活数量达到上限  不能操作
			AddMenuItem("@7激活或覆盖帮派技能","") 
			AddMenuItem("@3力量","1")
			AddMenuItem("@3敏捷","2")
			AddMenuItem("@3智力","3")
			AddMenuItem("@3攻击","4")
			AddMenuItem("@3防御","5")
			AddMenuItem("@3血上限","6")
		end
	end
elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4" or answer=="5" or answer=="6")then
	local n=answer+0  --激活技能种类  对应数组第一列
	LuaSetTemp("jnzl",n)
	if(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])>0) then
		AddMenuItem("@7选择激活方式","") 
		AddMenuItem("@5铜币激活（1小时有效）","11")
		AddMenuItem("@3通宝激活（6小时有效）","12")
	else
		LuaSay("你所选择的帮派技能为@10级@0，不能激活")
		AddMenuItem("@7是否返回上级菜单","")
		AddMenuItem("@3返回","partyskill_fh")
		AddMenuItem("不返回","NO")
	end
elseif(answer=="11" or answer=="12")then
	local t=answer+0  --激活方式  11为铜币  12为通宝
	LuaSetTemp("jnfs",t)
	if(LuaQueryTemp("jnfs")==11) then
		LuaSay("激活帮派技能@51小时@0需要花费@25000铜币@0")
	else
		LuaSay("激活帮派技能@56小时@0需要花费@1通宝@0")
	end
	if(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][4])==1 or LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][5])==1) then --说明玩家身上已有所选技能buff
		if(LuaQueryTemp("jnzl")<=5) then
			LuaSay("你身上已有帮派技能所提供的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."加成@0，是否替换为@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."点@0")
		elseif(LuaQueryTemp("jnzl")==6) then
			LuaSay("你身上已有帮派技能所提供的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."加成@0，是否替换为@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."点@0")
		end
		AddMenuItem("@7是否替换","") 
		AddMenuItem("@5确定替换","partyskill_th") 
		AddMenuItem("@3不替换","partyskill_bth") 
		AddMenuItem("@3返回上级菜单","partyskill_fh")
	else
		AddMenuItem("@7是否激活","") 
		AddMenuItem("@5确定激活","partyskill_jh") 
		AddMenuItem("@3不激活","partyskill_bjh") 
		AddMenuItem("@3返回上级菜单","partyskill_fh")
	end
elseif(answer=="partyskill_th")then   --替换
	if(LuaQueryTemp("jnfs")==11) then  --铜币激活
		if(LuaItemCount("coin")>=5000) then
			if(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][4])==1) then  --说明玩家身上有铜币激活buff
				LuaDeleteBuff(tS_skill[LuaQueryTemp("jnzl")][4])
			elseif(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][5])==1) then  --说明玩家身上有通宝激活buff
				LuaDeleteBuff(tS_skill[LuaQueryTemp("jnzl")][5])
			end
			LuaGiveBuff(tS_skill[LuaQueryTemp("jnzl")][4],LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]))  --给buff
			FlushMyInfo(1)	--//刷新攻击、防御、MMP、MHP
			FlushMyInfo(3)	--//刷新力量、智慧、敏捷 
			if(LuaQueryTemp("jnzl")<=5) then
				LuaSay("你成功替换为@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."点@0@61小时@0")
			elseif(LuaQueryTemp("jnzl")==6) then
				LuaSay("你成功替换为@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."点@0@61小时@0")
			end
			LuaGive("coin",-5000,"Tbpjn")
		else
			LuaSay("铜币重新激活帮派技能需要花费@25000铜币@0，你没有这么多钱")
		end
	elseif(LuaQueryTemp("jnfs")==12) then  --通宝激活
		if(LuaItemCount("o_gold1y") >=1) then
			if(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][4])==1) then  --说明玩家身上有铜币激活buff
				LuaDeleteBuff(tS_skill[LuaQueryTemp("jnzl")][4])
			elseif(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][5])==1) then  --说明玩家身上有通宝激活buff
				LuaDeleteBuff(tS_skill[LuaQueryTemp("jnzl")][5])
			end
			LuaGiveBuff(tS_skill[LuaQueryTemp("jnzl")][5],LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]))  --给buff
			FlushMyInfo(1)	--//刷新攻击、防御、MMP、MHP
			FlushMyInfo(3)	--//刷新力量、智慧、敏捷 
			if(LuaQueryTemp("jnzl")<=5) then
				LuaSay("你成功替换为@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."点@0@66小时@0")
			elseif(LuaQueryTemp("jnzl")==6) then
				LuaSay("你成功替换为@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."点@0@66小时@0")
			end
			DelItem("o_gold1y",1,"Tbpjn")
		else
			LuaSay("通宝重新激活帮派技能需要花费@21通宝@0，你没有这么多通宝，可到@5[商城][元宝][其他]@0中购买")
		end
	end
	AddMenuItem("@7是否返回上级菜单","")
	AddMenuItem("@3返回","partyskill_fh")
	AddMenuItem("@3不返回","NO")
elseif(answer=="partyskill_jh")then   --激活
	if(LuaQueryTemp("jnfs")==11) then  --铜币激活
		if(LuaItemCount("coin")>=5000) then
			LuaGiveBuff(tS_skill[LuaQueryTemp("jnzl")][4],LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]))  --给buff
			FlushMyInfo(1)	--//刷新攻击、防御、MMP、MHP
			FlushMyInfo(3)	--//刷新力量、智慧、敏捷 
			if(LuaQueryTemp("jnzl")<=5) then
				LuaSay("你成功激活@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."点@0@61小时@0")
			elseif(LuaQueryTemp("jnzl")==6) then
				LuaSay("你成功激活@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."点@0@61小时@0")
			end
			LuaGive("coin",-5000,"Tbpjn")
		else
			LuaSay("铜币激活帮派技能需要花费@25000铜币@0，你没有这么多钱")
		end
	elseif(LuaQueryTemp("jnfs")==12) then  --通宝激活
		if(LuaItemCount("o_gold1y") >=1) then
			LuaGiveBuff(tS_skill[LuaQueryTemp("jnzl")][5],LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]))  --给buff
			FlushMyInfo(1)	--//刷新攻击、防御、MMP、MHP
			FlushMyInfo(3)	--//刷新力量、智慧、敏捷 
			if(LuaQueryTemp("jnzl")<=5) then
				LuaSay("你成功替换为@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."点@0@66小时@0")
			elseif(LuaQueryTemp("jnzl")==6) then
				LuaSay("你成功替换为@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."级@0的@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0属性加成@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."点@0@66小时@0")
			end
			DelItem("o_gold1y",1,"Tbpjn")
		else
			LuaSay("通宝重新激活帮派技能需要花费@21通宝@0，你没有这么多通宝，可到@5[商城][元宝][其他]@0中购买")
		end
	end
	AddMenuItem("@7是否返回上级菜单","")
	AddMenuItem("@3返回","partyskill_fh")
	AddMenuItem("@3不返回","NO")
elseif(answer=="partyskill_fh")then   --返回
	DoTalk("partyskill_y")

--------帮派战争
elseif(answer=="bpgl")then
	AddMenuItem("@7帮派战争","")
	AddMenuItem("@3本国帮会排名","bhpm")
	if(LuaQueryRank() > 2 and LuaPartyLevel() > 0 and LuaPartyServer() == 1) then   ---LuaPartyServer()  查询玩家帮派是否是在当前服务器创建的
		AddMenuItem("@7帮派战争说明","bzsm")
		AddMenuItem("@3帮派战争操作","ptwar")
	end
elseif(answer=="bhpm") then  ---本国帮会排名
	LuaSay("我给英雄度量下帮派实力.以及@2显示本国实力前10名的帮派@0")
	PartyRanking()  
elseif(answer=="bzsm") then  ---帮战说明
	AddMenuItem("@7帮派战争说明","")
	AddMenuItem("@5发起帮战操作流程","ptwar_fq")
	AddMenuItem("@5被挑战操作流程","ptwar_btz")
	AddMenuItem("@3租用帮战地图说明","ptwar_zdt")
	AddMenuItem("@3宣战、应战或投降说明","ptwar_xyt")
	AddMenuItem("@5帮战胜负设定及奖励或惩罚说明","ptwar_in")
elseif(answer=="ptwar_fq") then  ---发起帮战操作流程
	LuaSay("帮战发起人：@2帮主或堂主@0；发起帮战操作流程：@1租用帮战地图@0-->@1宣战@0（9:00-17:00）-->若对方@2投降@0则@1帮战胜利@0，若对方@2应战@0则@5时间22:00-23:00@0@1进入帮战地图开始帮战@0；其中任何一环失败则不能成功发起帮派战争")
elseif(answer=="ptwar_btz") then  ---被挑战操作流程
	LuaSay("@1应战或投降@0-->若@2投降@0则@1帮战失败@0，若@2应战@0则@522:00-23:00@0@1进入帮战地图开始帮战@0；")
elseif(answer=="ptwar_zdt") then  ---租用帮战地图说明
	LuaSay("租用帮战地图条件：帮派@2声望大于-100@0，消耗帮派银行@25w铜币@0.注意：帮战地图使用权只是@2当天有效@0，@2每个国家每天帮战上限为5次@0，因此若有5个帮派租用帮战地图后其他帮派则不能租用")
elseif(answer=="ptwar_xyt") then  ---宣战、应战或投降说明
	LuaSay("宣战：发起方向要挑战的帮派进行宣战，新建帮派1周内不会被宣但可以宣战其他帮派，申请免战的帮派不能被宣战，宣战费用：@25w@0。")
	LuaSay("被宣战帮派回应宣战帮派的方式：@2应战、投降@0，应战：奖励帮派银行@21w铜币@0；应战后时间@522:00-23:00@0点击@3传送至帮战地图@0（@4建康城@0@5布告牌@0处 @4宫殿@0@5战争使者@0处 @4帮派主寨@0@5帮派总管@0处）开始帮战；投降：被宣方如不在宣战时间内投降(一周内最多1次)，以应战处理。投降处罚：@1扣除帮派银行20w，声望30点@0，如果帮派银行没有足够的钱支付赔款，那么@2额外扣除声望10点@0.")
elseif(answer=="ptwar_in") then  ---帮战结束奖励或惩罚说明
	LuaSay("帮战中@2杀掉BOSS可获得50资源@0，杀对方玩家也会得到资源，最后留在场内@2活着的人每人增加1资源@0。战斗结束以资源获得多少胜利。")
	LuaSay("积分相同，则挑战者胜，双方积分为0挑战者胜，帮战胜利将得到@2(50乘于失败方帮派等级)的帮派声望@0并抢对方帮派银行中一定的铜币。")
	LuaSay("@2帮战期间下线@0再次进入帮战地图将会@2遭到进入时间限制惩罚@0，下线次数越多，等待时间越长，帮战时间@2最后的10分钟不许人再进入帮战地图@0，")
elseif(answer=="ptwar") then  ---帮派战争操作
	AddMenuItem("@7帮派战争操作","")
	AddMenuItem("@3租用帮战地图","fmap")
	AddMenuItem("@5宣战@0(时间9:00-17:00)","faf")
	AddMenuItem("@5应战或投降","foc")
	AddMenuItem("设置帮战进入等级","szjrdj")
	AddMenuItem("@3申请免战@0(需耗费100W，3天时效)","mzp")
	AddMenuItem("@3传送至帮战地图@0(时间22:00-23:00)","ginfm")

elseif(answer=="fmap") then		---租用帮战地图
	if(GetPartyCurrentRepute()>-100)then
		EmployFightMap()
	else 
		LuaSay("帮派总管：@2帮派声望小于-100@0，实力太弱还是不要去送死，不能租借地图！你可以叫帮众们通过任务增加声望！实力上来了再挑战不迟！")
	end
elseif(answer=="faf") then	---宣战
	if(GetCurrentHour()<17)then
		FactionAnnounceFight()
	else
		LuaSay("帮派总管：宣战时间是9：00-17：00,请在规定的时间来我这里申请！")
	end
elseif(answer=="foc") then	---应战或投降
	FightOrCapitulate() 
elseif(answer=="szjrdj") then	---设置帮战进入等级
	if(LuaQueryRank()> 2 )then
		LuaSay("帮派总管：当你设置帮战进入等级后，你帮派的玩家等级必须在@2该等级之上者@0方可以进入帮战地图，参与帮战。")
		AddMenuItem("@7等级列表","")
		AddMenuItem("20级","szjrdj20")
		AddMenuItem("30级","szjrdj30")
		AddMenuItem("40级","szjrdj40")
		AddMenuItem("50级","szjrdj50")
		AddMenuItem("60级","szjrdj60")
		AddMenuItem("70级","szjrdj70")
	else
		LuaSay("帮派总管：只有帮主与长老才有设置帮战进入等级的权利，很抱歉，你没有权利。")
	end
elseif(answer=="szjrdj20") then		--设置帮战进入等级为20级
	LuaSay("帮派总管：您已成功将帮战进入等级设置成20级，只有20级以上的玩家方可进入。")
	SetPFMinLevel(20)
elseif(answer=="szjrdj30") then		--设置帮战进入等级为30级
	LuaSay("帮派总管：您已成功将帮战进入等级设置成30级，只有30级以上的玩家方可进入。")
	SetPFMinLevel(30)
elseif(answer=="szjrdj40") then		--设置帮战进入等级为40级
	LuaSay("帮派总管：您已成功将帮战进入等级设置成40级，只有40级以上的玩家方可进入。")
	SetPFMinLevel(40)
elseif(answer=="szjrdj50") then		--设置帮战进入等级为50级
	LuaSay("帮派总管：您已成功将帮战进入等级设置成50级，只有50级以上的玩家方可进入。")
	SetPFMinLevel(50)
elseif(answer=="szjrdj60") then		--设置帮战进入等级为60级
	LuaSay("帮派总管：您已成功将帮战进入等级设置成60级，只有60级以上的玩家方可进入。")
	SetPFMinLevel(60)
elseif(answer=="szjrdj70") then		--设置帮战进入等级为70级
	LuaSay("帮派总管：您已成功将帮战进入等级设置成70级，只有70级以上的玩家方可进入。")
	SetPFMinLevel(70)	
elseif(answer=="mzp") then	 --申请免战(需耗费100W，3天时效)
	AddMenuItem("@7申请免战","")
	AddMenuItem("@5免战说明","mzp_SM")
	AddMenuItem("@3确定申请免战","mzp_Y")
elseif(answer=="mzp_SM") then	 --免战说明
	LuaSay("免战期间不能被其他帮派宣战，但能宣战其他帮派")
	LuaSay("只有@1帮主@0才能申请免战；免战时间：@23天@0；申请免战限制：@2成功申请免战后的七天内将不能再次申请免战@0")
elseif(answer=="mzp_Y") then	 --确定申请免战
	if(LuaQueryRank()==4) then  --只有帮主能免战
		local shijiancha=604800-(GetCurrentTime()-LuaQueryTask("mzp_time"))
		if(GetCurrentTime()>LuaQueryTask("mzp_time")+604800) then
			if(LuaQueryPartyMoney()>=1000000) then
				LuaSetTask("mzp_time",GetCurrentTime())
				LuaSay("购买免战成功")
				SetPartyProtectTime(259200,1000000)
			else
				LuaSay("申请@2免战失败@0，你帮派银行铜币为@2"..LuaQueryPartyMoney().."@0,不足100w")
			end
		else
			local d=floor(shijiancha/86400)  --天        
			local h=floor((shijiancha-d*86400)/3600)  --小时
			local f=floor((shijiancha-d*86400-h*3600)/60)  --分钟
			if(d~=0) then
				if(h~=0) then
					if(f~=0) then
						LuaSay("申请免战的@2时间限制@0还有@1"..d.."天"..h.."小时零"..f.."分钟@0，请过完时间限制再来申请吧")
					else
						LuaSay("申请免战的@2时间限制@0还有@1"..d.."天零"..h.."小时@0，请过完时间限制再来申请吧")
					end
				else
					if(f~=0) then
						LuaSay("申请免战的@2时间限制@0还有@1"..d.."天零"..f.."分钟@0，请过完时间限制再来申请吧")
					else	
						LuaSay("申请免战的@2时间限制@0还有@1"..d.."天整@0，请过完时间限制再来申请吧")
					end
				end
			else
				if(h~=0) then
					if(f~=0) then
						LuaSay("申请免战的@2时间限制@0还有@1"..h.."小时零"..f.."分钟@0，请过完时间限制再来申请吧")
					else
						LuaSay("申请免战的@2时间限制@0还有@1"..h.."小时整@0，请过完时间限制再来申请吧")
					end
				else
					LuaSay("申请免战的@2时间限制@0还有@1"..f.."分钟整@0，请过完时间限制再来申请吧")
				end
			end
		end	
	else
		LuaSay("你不是帮主，不能申请免战")
	end

elseif(answer=="ginfm") then	--传送至帮战地图(22:00-23:00)
	AddMenuItem("@5进入帮战地图","")
	AddMenuItem("@5进入帮战地图时间惩罚说明","ginfm_SM")
	AddMenuItem("@3进入帮战地图","ginfm_Y")
elseif(answer=="ginfm_SM") then	--进入帮战地图时间惩罚说明
	LuaSay("帮战期间如果下线后上线再次进入帮战地图将会有@2时间限制惩罚@0，下线时间越长，惩罚时间越长")
	LuaSay("下线@2一次限制1分钟，两次4分钟，三次7分钟，四次或四次以上则每次限制10分钟@0不能进入帮战地图，从@5点击传送帮战地图@0开始计时")
elseif(answer=="ginfm_Y") then	--进入帮战地图
	if(GetCurrentMinute()<50) then
		if(LuaQueryStrTask("ginfm_inday")~=GetCurrentDay())then  --进入标记天不为当前天
			LuaDelTask("ginfm_inbj")  --进入标记
			LuaDelTask("ginfm_inday")  --进入时间标记
			LuaDelTask("ginfm_incs")  --进入次数
			LuaDelTask("ginfm_intime")  --进入等待时间
		end
		if(LuaQueryTask("ginfm_inbj")==1) then  --说明进入后下过线  但是第一次点击菜单
			local time=GetCurrentTime()
			LuaSetTask("ginfm_intime",time)
			LuaSetTask("ginfm_inbj",2)  --进入标记
			if(LuaQueryTask("ginfm_incs")<=4) then     --进入时间限制  1  4  7  10  10  ((LuaQueryTask("ginfm_incs")-1)*3+1)
				LuaSay("由于你本次帮战期间@5下线"..LuaQueryTask("ginfm_incs").."次@0，需等待@2"..((LuaQueryTask("ginfm_incs")-1)*3+1).."分钟@0才能再次进入帮战地图") 
			else  
				LuaSay("由于你本次帮战期间@5下线"..LuaQueryTask("ginfm_incs").."次@0，需等待@210分钟@0才能再次进入帮战地图") 
			end
		elseif(LuaQueryTask("ginfm_inbj")==2) then  --说明要等一定时间才能再次进入
			local shijiancha=(GetCurrentTime() - LuaQueryTask("ginfm_intime"))
			if(LuaQueryTask("ginfm_incs")<=4) then
				if(shijiancha>=((LuaQueryTask("ginfm_incs")-1)*3+1)*60) then
					if(LuaQueryTask("Ac13")==0)then
						LuaSetTask("Ac13_bg",GetUserPartyOffer())
						LuaSetTask("Ac13",99)
					end
					GetInFactionMap()
					
				else
					local f=floor((((LuaQueryTask("ginfm_incs")-1)*3+1)*60-shijiancha)/60)  --还差多少分钟
					local s=((LuaQueryTask("ginfm_incs")-1)*3+1)*60-shijiancha-f*60
					LuaSay("等会，@2"..((LuaQueryTask("ginfm_incs")-1)*3+1).."分钟@0还没到，再等@2"..f.."分钟"..s.."秒钟@0后再来找我吧！")
				end
			else
				if(shijiancha>=10*60) then
					if(LuaQueryTask("Ac13")==0)then
						LuaSetTask("Ac13_bg",GetUserPartyOffer())
						LuaSetTask("Ac13",99)
					end
					GetInFactionMap()
				else
					local f=floor((10*60-shijiancha)/60)  --还差多少分钟
					local s=10*60-shijiancha-f*60
					LuaSay("晋帝:等会，@210分钟@0还没到，再等@2"..f.."分钟"..s.."秒钟@0后再来找我吧！")
				end
			end
		else
			if(LuaQueryTask("Ac13")==0)then
				LuaSetTask("Ac13_bg",GetUserPartyOffer())
				LuaSetTask("Ac13",99)
			end
			GetInFactionMap()
		end
	else
		LuaSay("帮派总管：帮战最后10分钟无法再进入帮战地图，相信还在战斗的兄弟，等待胜利亦或者失败吧！")
	end
---------------
end 
LuaSendMenu()
return 1
end 
function get(n) ----------------随机收集物品列表
tab={
{"1级毛","o_material_11"},
{"1级皮","o_material_20"},
{"1级木","o_material_38"},
{"1级矿","o_material_47"},
{"铁钥匙","o_key100"},
{"破旧古董","o_mission018"},
{"2级合成书","o_mix_book021"},
{"3级合成书","o_mix_book022"},
{"3级肉","o_material_31"},
{"3级皮","o_material_22"},
{"3级木","o_material_40"},
{"3级晶","o_material_58"},
}
local a=tab[n][1]
local b=tab[n][2]
return a,b
end
