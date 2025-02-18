NPCINFO = { 
serial="39" ,
base_name="jindi" ,
icon=2525,
NpcMove=2525 ,
name="晋帝【帮国】" ,
iconaddr=1 ,
butt="10|15|60" ,
name_color="CEFFCE",
LuaType=1,
have_sell_item=1,
} 
addBuyitem={
	count=14,
	{"e_head151" , 20  , 8 },
	{"e_clothes151" , 20  , 8 },
	{"e_pants151" , 20  , 8 },
	{"e_shoes151" , 20  , 8 },
	{"e_earring151" , 20  , 8 },
	{"e_necklace151" , 20  , 8 },
	{"e_falchion151" , 20  , 8 },
	{"e_shield151" , 20  , 8 },
	{"e_sword151" , 20  , 8 },
	{"e_knife151" , 20  , 8 },
	{"e_pen151" , 20  , 8 },
	{"e_book151" , 20  , 8 },
	{"o_drug_hp5" , 800  , 9 },
	{"o_drug_mp5" , 800  , 9 },
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1 or LuaQueryTask("bprx1")==3) then
			AddTopSayMenuItem("@2领取日饷","bp4")
			havetask =2
		end
	if(LuaQueryTask("Tbptj_1")==1) then
		AddTopSayMenuItem("@2一级帮会囤积【循环】","Tbptj_1")
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
	if(LuaQueryTask("T290") ==1 or LuaQueryTask("T290") ==2) then
		AddTopSayMenuItem("@2望子成龙【剧情】@0","T290")
		if(LuaQueryTask("T290")==1) then
			havetask =2
		end
	end
	if(LuaQueryTask("T750") ==2 or LuaQueryTask("T750") ==3)then
		AddTopSayMenuItem("@2最后的挑战【剧情】@0","T750")
		if(LuaQueryTask("T750")==2)then
			havetask=2
		end
	end
	if(LuaQueryTask("T268")==1 or LuaQueryTask("T268")==2) then
		AddTopSayMenuItem("@2帮派国家【剧情】","T268")
		if(LuaQueryTask("T268") == 1 ) then
			havetask =2
		end
	end
	if(LuaQueryTask("cuontry811")==1)then
		AddTopSayMenuItem("@2和平友好","cuontry811")
	end
	if(LuaQueryTask("T280")==0 and LuaQueryTask("T850")==99 ) then
		AddTopSayMenuItem("张贴通告【剧情】","T280")
		havetask =1
	end
	if(LuaQueryTask("T385")==1 and LuaQueryTask("T385")==98)then
		AddTopSayMenuItem("@2半壁江山@0","T385")
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
	if((LuaQueryTask("Tsnpc_26")==1 or LuaQueryTask("Tsnpc_26")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_26")
		if(LuaQueryTask("Tsnpc_26")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_26")==1 or LuaQueryTask("Tenpc_26")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_26")
		if(LuaQueryTask("Tenpc_26")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T850")==1 ) then
		AddTopSayMenuItem("@2免罪【剧情】","T850")
		havetask =2
	end		
	if(LuaQueryTask("T280")==1) then
		AddTopSayMenuItem("@2张贴通告【剧情】","T280")
	end			
	if(LuaQueryTask("T115")==1 and LuaQueryTask("T115B")==0) then
		AddTopSayMenuItem("@2父子相残【剧情】","T115B")
		havetask =2
	end
	if(LuaQueryTask("pettask") ==9) then
		AddTopSayMenuItem("@2送货[每日]","pettask")
		havetask=2
	end
	if(LuaQueryTask("Txinchun") == 2 or LuaQueryTask("Txinchun") == 3) then
		AddTopSayMenuItem("@2快乐新春@0","Txinchun")
		havetask =2
	end
	if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_jind")==0)  then
		   AddTopSayMenuItem("@2粽子传情","Tduanwu")
		   havetask =2
	end
	AddTopSayMenuItem("@3帮派","bpgl")
	AddTopSayMenuItem("@3国籍管理@0(建国、叛国)","gjgl")
	AddTopSayMenuItem("@3成就四大称号","Thdch_cj")
	--AddTopSayMenuItem("@5各种材料兑换","exchange")
	AddTopSayMenuItem("@5修改密码","xgpd")	
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1
---------------------------------------------帮派管理
elseif(answer=="bpgl") then
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
		AddMenuItem("@7帮派管理","")			
		if(LuaPartyLevel() == 0 and LuaQuery("partyid")==0) then --无帮派 
			AddMenuItem("@5创建帮派","bp1")			 
		else
			AddMenuItem("@5帮派建设","bp7")
			AddMenuItem("@3帮派声望","dhsw")
			AddMenuItem("@3帮库银行","bp3")
			AddMenuItem("@7帮派任务福利","partytask")
			AddMenuItem("@5帮派任务经验分享","pTkfx")
			AddMenuItem("@3帮贡","partyoffer")
			if(LuaQueryRank() > 3)then    --帮主特权
				AddMenuItem("@1解散帮派","jsbh")
			else						  --帮主不能自己退帮
				AddMenuItem("@1弹劾帮主","thbz")
				AddMenuItem("退出帮派","bp8")
			end
		end
		AddMenuItem("帮派权利与数量说明","partysm")   
	else
		LuaSay("晋帝:@2非本国人不能进行帮派操作@0")
	end
------------------创建帮派
elseif(answer=="bp1") then     ---开服1月3折
	AddMenuItem("@7创建帮派","")
	AddMenuItem("@5建帮说明","bp1_sm")
	AddMenuItem("@3决定建帮","bp1_y")
	AddMenuItem("点错了","")
elseif(answer=="bp1_sm") then
	LuaSay("条件：1：@120级以上[包括20]@0；2:@130万铜币@0；3：@1无帮派@0；4：@1只能在本国创建帮派@0；")
	LuaSay("@1帮派建立成功初始值@0：@2初始声望@0：@510声望@0；@2初始帮派银行@0：@510w铜币@0；@2初始帮派成员最大数目@0：@515人@0；")
	--LuaSay("@2新建帮派保护期@0：@510天@0内不被系统强制解散；@57天@0内不能被宣战；@2帮主不能退出帮派，只能转让@0")
	LuaSay("开通帮派主寨后，帮主每隔@224小时@0能从帮派银行领取@25%@0作为自己的个人财产。")
elseif(answer=="bp1_y") then
	if(LuaQuery("level")>=20) then                                                                      
		if(LuaItemCount("coin") >=300000) then                        
			LuaSay("晋帝:卿乃人中豪杰,孤准奏建帮,这名,卿可得拿捏好了再取！")  
			LuaCreateParty()
		else
			LuaSay("晋帝:@2你身家不足30W@0,不可建帮.")
		end
	else
		LuaSay("晋帝:@2等级达到20级@0方可建帮.")
	end
------------------帮派建设
elseif(answer=="bp7") then
    AddMenuItem("@7帮派建设","")
	AddMenuItem("@5帮派升级@0","sjbp")
	AddMenuItem("@6扩大帮派人数上限","bp2")
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
	LuaSay("@2建帮初始声望值@0：@510声望@0；@3帮派升级所需声望@0：@22级[派]@0@5250声望@0；@23级[部]@0@51000声望@0；@24级[侯]@0@54000声望@0；@25级[国]@0@515000声望@0.")
	LuaSay("@3帮派声望上限@0：@21级帮@0：@51000声望@0；@22级派@0：@53000声望@0；@23级部@0：@515000声望@0；@24级侯@0：@530000声望@0；@25级国@0：@540000声望@0；")
	LuaSay("帮派声望来源：很多！比如@2帮派任务@0、@2帮战@0！")
elseif(answer=="sw_dh")then		--兑换帮派声望
	AddMenuItem("@7兑换声望","")
	AddMenuItem("@3铜币换声望10W:8","Tdh5")
	AddMenuItem("@3铜币换声望100w:85","Tdh6")
	AddMenuItem("@3蓝绸换声望1:90","Tdh3")
elseif(answer=="Tdh5")then		--铜币换声望10W:8
	if(LuaItemCount("coin") >= 100000)then
		LuaGive("coin",-100000,"Tdh5")
		LuaPartyRepute(8,0,"Tdh5")
		LuaAddAchievementSchedule("PartyRepute_mun",8)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0花费@510W铜@0，@2提升帮派声望8点@0，真乃爱帮之典范！",0) 
	else
		LuaSay("你身上@2金钱不足@0，不能购买帮派声望！你可以通过@2帮派任务或帮战@0免费增加帮派声望！")
	end
elseif(answer=="Tdh6")then		--铜币换声望100w:85
	if(LuaItemCount("coin")>=1000000)then
		LuaGive("coin",-1000000,"Tdh6")
		LuaPartyRepute(85,0,"Tdh6")
		LuaAddAchievementSchedule("PartyRepute_mun",85)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0花费@5100W铜@0，@2提升帮派声望85点@0，真乃爱帮之典范！",0) 
	else
		LuaSay("你身上@2金钱不足@0，不能购买帮派声望！你可以通过@2帮派任务或帮战@0免费增加帮派声望！")
	end
elseif(answer=="Tdh3")then		--蓝绸换声望1:90
	if(LuaItemStatusNormalCount("o_zhaiquan2y") >=1) then 
		DelItem("o_zhaiquan2y",1)
		LuaPartyRepute(90,0,"Tdh3")
		LuaAddAchievementSchedule("PartyRepute_mun",90)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派兑换@2蓝绸卷@0一个，@2帮派声望上升90点@0，真乃爱帮之典范！",0)
	else
		LuaSay("你身上@2蓝绸卷不足@0，可在@7[元宝-其他]@0中购买！")
	end
--------帮派升级
elseif(answer=="sjbp") then
	AddMenuItem("@7帮派升级","")
	AddMenuItem("@5帮派升级说明","sjbp_sm")
	AddMenuItem("@3帮派升级","sjbp_y")
elseif(answer=="sjbp_sm") then  --帮派升级说明
	LuaSay("@1帮派自然升级条件@0：@22级[派]@0：@5声望250@0、@5升级费用50w@0(从帮派银行扣除)；@23级[部]@0：@5声望1000@0、@5升级费用200w@0；@24级[侯]@0：@5声望4000@0、@5升级费用450w@0；@25级[国]@0：@5声望15000@0、@5升级费用800w@0")
	LuaSay("@1帮战升级条件@0：帮战中，@2胜方帮派等级小于败方而帮派声望大于败方@0，并且@2胜方帮派声望达到败方帮派升级所需@0，则双方的等级互换，胜方帮派自动升级。")
elseif(answer=="sjbp_y") then  --帮派升级说明
	if(LuaPartyLevel() == 1) then
		if(LuaPartyLevelUp() == 1) then
			LuaSay("晋帝:爱卿真是国家栋梁,孤之肱骨啊！")
			LuaPartyRepute(50,0)
			LuaAddAchievementSchedule("PartyRepute_mun",50)
			LuaPartyMsg("@3帮派升级成功@0，特赐@2帮派声望50点@0，望尔等继续努力！",0)
		else
			LuaSay("不符合帮派升级条件，请返回@2上级菜单@0点击查看@7帮派升级说明@0.")
			AddMenuItem("@7是否返回上级菜单","")
			AddMenuItem("@7返回","sjbp_fh")
			AddMenuItem("@3不返回","")
		end
	else
		LuaSay("@22级以上帮派@0请回本帮@5帮派主寨@0进行建设，没有帮派主寨,向孤购买即可.")
	end
elseif(answer=="sjbp_fh") then --返回帮派升级菜单
	DoTalk("sjbp")
--------扩大帮派人数上限
elseif(answer=="bp2") then	
	LuaSay("晋帝:孤虽寄望帮派强盛以匡社稷,然诸侯反对之声日隆,孤不得不限制帮派名额！哎...")
	LuaSay("晋帝:孤日思夜想,让卿等做些实事,徐徐图之,亦可不断增加帮派人数限额！可愿意？")
	AddMenuItem("@7扩大帮派人数上限","")
	AddMenuItem("@7帮派人数上限说明","bp2_sm")
	AddMenuItem("上供@3青纱券增加人数上限","bpme1")
elseif(answer=="bp2_sm") then
	LuaSay("帮派人数最大上限说明：@21级帮派@0：@535人@0；@22级帮派@0：@555人@0；@23级帮派@0：@575人@0；@24级帮派@0：@595人@0；@25级帮派@0：@5115人@0；")
	LuaSay("上供@5青纱券@0能增加@2帮派人数上限20人@0(但不能超过最大人数上限)，给予@1公忠体国@0称号。")
		--服务器设定为  a为现在帮派人数  a<本帮派该级人数上线最大值  就能扩充 不管扩充多少人   但是扩充后人数>本帮派该级人数上线最大值  就不能扩充了
elseif(answer=="bpme1") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>0) then
		if(LuaAddMembers(20) == 1) then
			DelItem("o_zhaiquan1y",1)
			LuaSay("晋帝:卿公忠体国,告之天下,以彰其功！")
			LuaNotice("天子诏:今@2"..LuaQueryStr("name").."@0为增加帮派人数上限,向孤王献出@2青纱券@0一张,特赐@1公忠体国@0之称号,告之天下！")  
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0增加了@2帮派人数上限20人@0！",0)
			SetTitleMeg(95)
		end
	else
		LuaSay("晋帝:尔并无@2[青纱券]@0,可到@7[商城-元宝-其他]@0中购买.再若诓骗于孤,必斩之！")  
	end
-----------帮派地图
elseif(answer=="dtsm") then
	AddMenuItem("@7帮派地图","")
	AddMenuItem("@7帮派地图说明","partydt_sm")
	AddMenuItem("@3开通帮派地图","partydt_y")
elseif(answer=="partydt_sm") then  --帮派地图说明
	LuaSay("购买帮派地图耗费@2帮派银行资金@0,@1主寨[5万]；地牢[5万]；农场[5万]；矿山[5万]；BOSS炼狱[5万]；闭关修炼[5万]@0.")
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
			LuaSay("晋帝：帮主洪福齐天,一统江湖！增加新的地图,一统江湖不远矣！")
		end
	elseif(LuaPartyLevel() == 1) then
		LuaSay("晋帝：爱卿帮派仍然为1级,而1级的帮派繁多,不能赏赐土地.尽快升级到2级帮派吧.")
	end
-----------修改入帮条件	  --此功能还未做

-----------修改帮派宣言
elseif(answer=="xgxy") then
	AddMenuItem("@7帮派宣言","")
	AddMenuItem("@7帮派宣言说明","partyxy_sm")
	AddMenuItem("@3修改帮派宣言","partyxy_y")
elseif(answer=="partyxy_sm") then
	LuaSay("帮派宣言乃是一帮之体现，代表的是帮派的灵魂，意志。赶快修改出属于自己帮派的宣言吧！")
	LuaSay("修改帮派宣言需要花费@25000铜币@0。")
elseif(answer=="partyxy_y") then
	LuaModifyPartyInfo()
------------------帮派银行
elseif(answer=="bp3") then
	AddMenuItem("@7帮派财产管理","")
	AddMenuItem("@7帮派银行说明","bpyh_sm")
	AddMenuItem("@3存钱进帮派银行","bgsj")
	AddMenuItem("帮派银行数额查询","bpyh")
elseif(answer=="bpyh_sm") then  --帮派银行说明
	LuaSay("帮派银行是储存帮派财产用于帮派建设，比如@2升级帮派......等等")
	LuaSay("帮派银行财产来源：@2帮派任务@0、@2帮派成员直接存入@0、@2帮战胜利增加@0")
	LuaSay("@2帮主每24小时@0可在@4帮派主寨@0@3帮派总管@0处向帮派银行提取@25%铜币(若大于10w则只能取10w)@0,@1注意：提取铜币24小时后才能再次提取@0")
elseif(answer=="bgsj") then  --存钱进帮派银行
	if(PartyIsBuyMap() ==0) then  --未开通帮派主寨
		AddMenuItem("@7存入数额","")
		AddMenuItem("1W","sgyw")
		AddMenuItem("10W","sgsw")
		AddMenuItem("50W","sgwsw")
		AddMenuItem("100w","sgybw")
	else
		LuaSay("你的帮派已经开启了@2帮派主寨@0，请到帮派主寨中进行操作")
	end
elseif(answer=="sgyw") then  --存1w
	if(LuaItemCount("coin")>=10000) then
		LuaSay("晋帝:卿上供@21w铜币@0,哈哈,真乃功臣也")
		LuaAddPartyMoney(10000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派贡献了@21w铜币@0,社稷之栋梁",0)
	else
		LuaSay("晋帝:卿@2铜币不足1w@0,但忠心可表,去吧！")
	end
elseif(answer=="sgsw") then  --存10w
	if(LuaItemCount("coin")>=100000) then
		LuaSay("晋帝:卿上供铜币@210w@0,哈哈,真是社稷之栋梁！")
		LuaAddPartyMoney(100000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派贡献了@210w铜币@0,真乃功臣也",0)
	else
		LuaSay("晋帝:卿@2铜币不足10w@0,但忠心可表,去吧！")
	end
elseif(answer=="sgwsw") then  --存50w
	if(LuaItemCount("coin")>=500000) then
		LuaSay("晋帝:卿上供铜币@250w@0,哈哈,真是社稷之栋梁！")
		LuaAddPartyMoney(500000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派贡献了@250w铜币@0,真乃功臣也",0)
	else
		LuaSay("晋帝:卿@2铜币不足50w@0,但忠心可表,去吧！")
	end
elseif(answer=="sgybw")then  --存100w
	if(LuaItemCount("coin")>=1000000)then
		LuaSay("晋帝：:卿上供铜币@2100w@0,哈哈,真是社稷之栋梁！")
		LuaAddPartyMoney(1000000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0为帮派贡献了@2100w铜币@0,真乃功臣也",0)
	else
		LuaSay("晋帝:卿@2铜币不足100w@0,但忠心可表,去吧！")
	end
elseif(answer=="bpyh") then  --帮派银行数额查询
	LuaSay("目前贵帮银行的铜币库存为@2"..LuaQueryPartyMoney().."@0！")
	if(LuaQueryRank() > 3)then    --帮主特权 帮主取钱
		LuaSay("若要取出,请回到自己的帮派地图,寻找帮派总管！")
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
	if(PartyIsBuyMap() ==0) then  --未开通帮派主寨
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
	else
		LuaSay("你的帮派已经开启了@2帮派主寨@0，请到帮派主寨中领取吧")
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
	LuaSay("注意：@1帮贡商店的道具每天全服购买有数量上限@0，先到先得，@2购买数量每天四点刷新@0")
elseif(answer=="offer_cx") then--查询我的帮贡值
	if(LuaQueryRank()==0) then
		LuaSay("你还@2没有加入帮派@0，赶快找个帮派加入吧")
	elseif(LuaQueryRank()>=1) then
		LuaSay("你目前的帮贡值为：@3"..GetUserPartyOffer().."@0点")
	end
elseif(answer=="offer_shop") then--帮贡商店
	DoBuy()

------------------帮派任务
elseif(answer=="partytask") then
	if(PartyIsBuyMap() ==1) then  --开通了帮派主寨
		LuaSay("你的帮派已经开启了@2帮派主寨@0，请到帮派主寨中接取任务")
	else
		AddMenuItem("@7每日任务福利","")
		if(LuaQueryTask("SYXT_bangpai_over")~=99)    then
			AddMenuItem("@3入帮誓言","RBSY")
		end
		AddMenuItem("@3领取日饷","bp4")
		if(LuaPartyLevel()>= 1 ) then
			AddMenuItem("@3帮派囤积【循环】","Tbptj")
		end
		if((LuaQueryTask("Tbprw003")==0 or LuaQueryTask("Tbprw003")==99) and LuaPartyLevel() >= 1 and LuaQuery("level")>=20)then
			AddMenuItem("@7探听风云【每日】","Tbprw003")
		end
		if(LuaQueryTask("Tbprw005")==0 or LuaQueryTask("Tbprw005")==99 and LuaQueryRank()>2)then
			AddMenuItem("@7无尽趣味【每日】","Tbprw005")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=20 and LuaQuery("level")<30 and (LuaQueryTask("Tbprw8")==0 or LuaQueryTask("Tbprw8")==99)) then
			AddMenuItem("@7派送物资【每日】","Tbprw8")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=30 and LuaQuery("level")<40 and (LuaQueryTask("Tbprw9")==0 or LuaQueryTask("Tbprw9")==99)) then
			AddMenuItem("@7购买物资【每日】","Tbprw9")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=40 and LuaQuery("level")<50 and (LuaQueryTask("Tbprw10")==0 or LuaQueryTask("Tbprw10")==99)) then
			AddMenuItem("@7运送粮食【每日】","Tbprw10")
		end
		if(LuaPartyLevel()>= 1 and LuaQueryTask("Tbprw1")==0) then
			AddMenuItem("了解帮会【剧情】","Tbprw1")
		end
		if(LuaQueryTask("Tbprw002")==0 and LuaQueryTask("Tbprw1")==99 and LuaQueryRank()>1)then
			AddMenuItem("灵性考验【剧情】","Tbprw002")
		end
		if(LuaPartyLevel()>= 1 and LuaQueryTask("Tbprw2")==0 and  LuaQueryTask("Tbprw1")==99 and LuaQuery("level")>=20) then
			AddMenuItem("强盛之法【剧情】","Tbprw2")
		end
		if(LuaPartyLevel() >= 1 and LuaQueryTask("Tbprw12")==0  and LuaQueryRank()>=2) then
			AddMenuItem("@5官威何在【循环】","Tbprw12")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=20 and LuaQuery("level")<30 and LuaQueryTask("Tbprw3")==0) then
			AddMenuItem("@5洛阳告急【循环】","Tbprw3")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=30 and LuaQuery("level")<40 and LuaQueryTask("Tbprw4")==0 ) then
			AddMenuItem("@5职责所在【循环】","Tbprw4")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=40 and LuaQuery("level")<50 and LuaQueryTask("Tbprw5")==0 ) then
			AddMenuItem("@5收集爪子【循环】","Tbprw5")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=50 and LuaQuery("level")<=60 and LuaQueryTask("Tbprw6")==0 ) then
			AddMenuItem("@5除魔卫道【循环】","Tbprw6")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>60 and LuaQueryTask("Tbprw7")==0 ) then
			AddMenuItem("@5扶摇直上【循环】","Tbprw7")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=50 and LuaQuery("level")<60 and LuaQueryTask("Tbprw11_1")==0) then
			AddMenuItem("解决邪恶【环一】","Tbprw11_1")
		end
	end
--------------------------------领取日饷
elseif(answer=="bp4") then
	local sKill_bp4={
		--1地图名  2怪物名  3杀怪计数器  
		{1,"@4建康东郊@0","@3幼貂@0","task_kill/mon_008/Tbp4"},--10-20
		{2,"@4北府军营@0","@3北府斧兵@0","task_kill/mon_017/Tbp4"},--20-30
		{3,"@4淝水对岸@0","@3碧水蛟@0","task_kill/mon_024/Tbp4"},--30-40
		{4,"@4白骨洞@0","@3修罗兵@0","task_kill/mon_034/Tbp4"},--40-50
		{5,"@4太行山谷@0","@3绿石人@0","task_kill/mon_037/Tbp4"},--50-60
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
		UpdateNPCMenu("jindi")
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
					UpdateNPCMenu("jindi")
				else
					LuaSay("晋帝:年轻人休要糊弄我，你才杀了"..(LuaQueryTask(sKill_bp4[n][4])-1).."个"..sKill_bp4[n][3].."，杀满@550个@0再来找我吧！")
				end
			end		
		elseif(LuaQueryTask("bprx1")==1) then  --捐献青纱券
			LuaSay("晋帝:尔等忠勇为国,孤又得卿[@2青纱券@0]相助,卿可@230天内每天领取8000铜币粮饷一次@0，再给帮派2000铜币,以表孤之爱才之心！")
			LuaAddTask("bprxTime",1)
			LuaGive("coin",8000,"Tbprx")
			AddMoneyToPartyBank(2000)
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
						UpdateNPCMenu("jindi")
					else
						LuaSay("晋帝:年轻人休要糊弄我，你需要杀死"..sKill_bp4[n][2].."的"..sKill_bp4[n][3].."50个，你现在才杀了@5"..(LuaQueryTask(sKill_bp4[n][4])-1).."个，杀满@550个@0再来找我吧！")
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
	UpdateNPCMenu("jindi")		
elseif(answer=="dzqs") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>0) then
		DelItem("o_zhaiquan1y",1)
		LuaSetTask("bprx1",1)
		LuaSay("晋帝:得卿之物,孤甚为自愧,然明日起,即可从孤处,可@230天内每天领取8000铜币粮饷一次@0，并给予2000帮派贡献，望卿多多私下传播！")
	else
		LuaSay("晋帝:尔并无[青纱券],可去[商城-元宝-其他]购买.再若诓骗于孤,必斩之！")
	
	end
	UpdateMenu()
	UpdateNPCMenu("jindi")	
elseif(answer=="10tb") then
	if(LuaItemCount("coin") >= 100000) then
		LuaSetTask("bprx1",2)
		LuaGive("coin",-100000,"Tbprx")
		LuaSay("晋帝:得卿之财,孤甚为自愧,然明日起,即可从孤处,可@230天内每天领取8000铜币粮饷一次@0，并给予1000帮派贡献，望卿多多私下传播！")
	else
		LuaSay("晋帝:卿铜币不足十万,念忠心可表,去吧！")
	end
	UpdateMenu()
	UpdateNPCMenu("jindi")	
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
			LuaSay("晋帝：每@220分钟@0可以去收集@31个1级毛@0用以加速帮派建设为@3二级帮会@0！")
			LuaSay("晋帝：每完成@21次会获得2000帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_1",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("晋帝：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_1")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1)then
			LuaSay("晋帝：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_1jl")
		elseif(LuaItemStatusNormalCount("o_material_11")<1) then
			LuaSay("晋帝：你还没收集够@31个1级毛@0.")
		end
	end
elseif(answer=="Tbptj_2") then
	if(LuaQueryTask("Tbptj_2")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_2time"))
		if(shijiancha>=1200) then
			LuaSay("晋帝：每@220分钟@0可以去收集@31个1级毛@0和@31个1级肉@0用以加速帮派建设为@3三级帮会@0！")
			LuaSay("晋帝：每完成@21次会获得2500帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_2",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("晋帝：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_2")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")>=1 )then
			LuaSay("晋帝：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_2jl")
		elseif(LuaItemStatusNormalCount("o_material_11")<1 and LuaItemStatusNormalCount("o_material_29")<1) then
			LuaSay("晋帝：你还没收集够@31个1级毛@0和@31个1级肉@0.")
		elseif(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")<1) then
			LuaSay("晋帝：@31级毛@0是够了，@31个1级肉@0还不够.")
		elseif(LuaItemStatusNormalCount("o_material_11")<1 and LuaItemStatusNormalCount("o_material_29")>=1) then
			LuaSay("晋帝：@31级肉@0是够了，@31个1级毛@0还不够.")
		end
	end

elseif(answer=="Tbptj_3") then
	if(LuaQueryTask("Tbptj_3")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_3time"))
		if(shijiancha>=1200) then
			LuaSay("晋帝：你现所在的帮会为@3三级帮会@0。")
			LuaSay("晋帝：每@220分钟@0可以去收集@31个2级毛@0用以加速帮派建设为@3四级帮会@0！")
			LuaSay("晋帝：每完成@21次会获得3000帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_3",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("晋帝：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_3")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1)then
			LuaSay("晋帝：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_3jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<1) then
			LuaSay("晋帝：你还没收集够@31个2级毛.")
		end
	end

elseif(answer=="Tbptj_4") then
	if(LuaQueryTask("Tbptj_4")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_4time"))
		if(shijiancha>=1200) then
			LuaSay("晋帝：你现所在的帮会为@3四级帮会@0。")
			LuaSay("晋帝：每@220分钟@0可以去收集@31个2级毛@0和@31个2级肉@0用以加速帮派建设为@3五级帮会@0！")
			LuaSay("晋帝：每完成@21次会获得3500帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_4",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("晋帝：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_4")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")>=1 )then
			LuaSay("晋帝：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_4jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<1 and LuaItemStatusNormalCount("o_material_30")<1) then
			LuaSay("晋帝：你还没收集够@31个2级毛@0和@31个2级肉@0.")
		elseif(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")<1) then
			LuaSay("晋帝：@32级毛@0是够了，@31个2级肉@0还不够.")
		elseif(LuaItemStatusNormalCount("o_material_12")<1 and LuaItemStatusNormalCount("o_material_30")>=1) then
			LuaSay("晋帝：@32级肉@0是够了，@31个2级毛@0还不够.")
		end
	end
elseif(answer=="Tbptj_5") then
	if(LuaQueryTask("Tbptj_5")==0) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_5time"))
		if(shijiancha>=1200) then
			LuaSay("晋帝：你现所在的帮会为@3五级帮会@0。")
			LuaSay("晋帝：每@220分钟@0可以去收集@32个2级毛@0和@32个2级肉@0用以加速帮派建设为@3国家@0！")
			LuaSay("晋帝：每完成@21次会获得4000帮库金钱@0，@2累计10次@0会为帮派贡献@21点帮派声望@0。")
			LuaSetTask("Tbptj_4",1)
			LuaSetTask("Tbptj_5time",GetCurrentTime())
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("晋帝：@220分钟还没过@0，现如今国家宽裕，只要囤积一定一定物资以备不时只需就可以了。")
		end
	elseif(LuaQueryTask("Tbptj_5")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")>=2 )then
			LuaSay("晋帝：多谢英雄为帮派建设出工出力！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbptj_5jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<2 and LuaItemStatusNormalCount("o_material_30")<2) then
			LuaSay("晋帝：你还没收集够@32个2级毛@0和@32个2级肉@0.")
		elseif(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")<2) then
			LuaSay("晋帝：@32个2级毛@0是够了，@32个2级肉@0还不够.")
		elseif(LuaItemStatusNormalCount("o_material_12")<2 and LuaItemStatusNormalCount("o_material_30")>=2) then
			LuaSay("晋帝：@32个2级肉@0是够了，@32个2级毛@0还不够.")
		end
	end
elseif(answer=="Tbptj_1jl") then
	if(LuaQueryTask("Tbptj_1")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1)then
			LuaAddTask("Tbptj_cs",1)---------增加任务完成次数
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --小于10级
				jinyan=LuaQuery("level")*100+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*350+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*800+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*1800+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_1")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			DelItem("o_material_11",1)
			LuaDelTask("Tbptj_1")
			LuaSetTask("Tbptj_1time",GetCurrentTime())
			AddMoneyToPartyBank(2000)-------增加帮库金钱
			LuaSay("晋帝：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
elseif(answer=="Tbptj_2jl") then
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
				jinyan=LuaQuery("level")*900+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2200+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_2")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
			LuaSay("晋帝：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			AddMoneyToPartyBank(2500)-------增加帮库金钱
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
elseif(answer=="Tbptj_3jl") then
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
			LuaSay("晋帝：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
elseif(answer=="Tbptj_4jl") then
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
			LuaSay("晋帝：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
elseif(answer=="Tbptj_5jl") then
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
			LuaSay("晋帝：你现在完成@2帮派囤积【循环】@0任务@2"..LuaQueryTask("Tbptj_cs").."@0次,10次时将贡献@21点帮派声望@0后@2自动清0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------增加帮派声望
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@21点声望，帮库2000铜币@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end		
--------------------------------了解帮会【剧情】
elseif(answer=="Tbprw1") then
	if(LuaQueryTask("Tbprw1")==0) then
		LuaSay("晋帝："..LuaQueryStr("name").."，欢迎你的到来。")
		LuaSay("晋帝：身为乱世之帝，天下百姓民不聊生，孤寄望帮派强盛以匡社稷，故帮派乃寡人之希望，汝等建功立业之捷径，越强大的帮会将越得寡人青睐。")
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
		UpdateNPCMenu("jindi")
    end
--------------------------------------------灵性考验
elseif(answer=="Tbprw002")then 
	if(LuaQueryTask("Tbprw002")==0)then
		LuaSay("晋帝：建帮是小事，但是管理帮派是大事，现在就让我来考考你，看看你对帮派的知识了解有多少！")
		LuaSay("晋帝：知道如何申请帮派吗？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("有钱就能建帮","NO_11")
		AddMenuItem("有100w铜币，等级达到20级，方可建帮","N11_ANSWER")
		AddMenuItem("有100w铜币就能建帮","NO_11")
		AddMenuItem("等级达到20级就可以建帮","NO_11")
	elseif(LuaQueryTask("Tbprw002")==1)then
		LuaSay("晋帝：帮怎样升级成派？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("增加帮派声望，声望达到250,就能升级","N21_ANSWER")
		AddMenuItem("打怪就能升级","NO_21")
		AddMenuItem("有铜币就能升级","NO_21")
		AddMenuItem("做帮派任务，完成就能升级","NO_21")
	elseif(LuaQueryTask("Tbprw002")==2)then
		LuaSay("晋帝：这次来个有难度的问题，知道帮中有哪几个职位吗？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("帮众、堂主、帮主","NO_31")
		AddMenuItem("帮众、部长、元老、帮主","NO_31")
		AddMenuItem("帮众、群主、元老、帮主","NO_31")
		AddMenuItem("帮众、堂主、长老、帮主","N31_ANSWER")
	elseif(LuaQueryTask("Tbprw002")==3)then
		LuaSay("晋帝：怎样加入帮派？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("缴纳铜币给帮派，即可加入","NO_41")
		AddMenuItem("等级达到10级后，帮派招募报名后，方可加入","N41_ANSWER")
		AddMenuItem("大喊三声帮主洪福齐天即可加入","NO_41")
		AddMenuItem("等级达到10级就可加入帮派","NO_41")
		end
-----------------------------------------------------------------奖励
elseif(answer=="NO_11")then
	LuaSay("晋帝：不会吧，这么简单的问题都答错，重新来过！")
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
		LuaSay("晋帝：这么简单的问题你答对了也没什么稀奇的，我再问你")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_21")then
	LuaSay("晋帝：你答错了，重新再答！")
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
		LuaSay("晋帝：看来你还是有两下子的嘛，我再问你")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_31")then
	LuaSay("晋帝：这个问题确实有一点难度啊，给你机会重新选择。")
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
		LuaSay("晋帝：你真是聪明啊，这个也知道啊，再问你一个问题。")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_41")then
	LuaSay("晋帝：这个问题确实很有难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw002",3)
	UpdateNPCMenu("jindi")
elseif(answer=="N41_ANSWER")then
	if(LuaQueryTask("Tbprw002")<99) then
		LuaSetTask("Tbprw002",99)
		LuaSay("晋帝：你真是太聪明了，居然全部都知道。")
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
		UpdateNPCMenu("jindi")
end 
---------------------------------------------------强盛之法【剧情】
elseif(answer=="Tbprw2") then
	if(LuaQueryTask("Tbprw2")==0) then
		LuaSay("晋帝：@4桃源径@0的@3冉闵@0和@4北府军营@0的@3谢玄@0都乃一代大将，汝等可去请教帮派的强盛之法。")
		LuaSetTask("Tbprw2",1)      -------日志的添加
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tbprw2")==1) then
		if(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==0 ) then
			LuaSay("晋帝：到@4桃源径@0找@3冉闵@0和到@4北府军营@0找@3谢玄@0吧！")
		elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==0 ) then
			LuaSay("晋帝：阁下取经才取了一半，再去@4北府军营@0找@3谢玄@0吧！")
		elseif(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==99 ) then 
			LuaSay("晋帝：阁下取经才取了一半，再去@4桃源径@0找@3冉闵@0吧！")
		else
			LuaSay("晋帝：现在你应该知道帮派升级的最佳捷径了吧。")
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
		UpdateNPCMenu("jindi")
    end
---------------------------------------------------探听风云
elseif(answer=="Tbprw003")then
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		-------------20----------29
		if(LuaQuery("level")>=20 and LuaQuery("level")<=29)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("晋帝：帮派初建，局势不稳，急需寻求习武之道，听说在@4建康东郊@0有个叫@3桓冲@0的，他很有见解！")
				LuaSay("晋帝：你去探讨探讨，取得真经后回复我！")
				LuaSetTask("Tbprw003",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==1)then
				LuaSay("晋帝：赶紧去找@4建康东郊@0的@3桓冲@0吧")
			elseif(LuaQueryTask("Tbprw003")==2)then
				LuaSay(LuaQueryStr("name").."：习武需心平气和，循序渐进方可练就奇功！")
				LuaSay("晋帝：言之有理，辛苦你了，领取奖励吧！")
				AddMenuItem("任务完成","")
				AddMenuItem("领取奖励","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("晋帝：今天的任务已经做完了，明天再来吧！")
			end
		end
		--------------30---------39
		if(LuaQuery("level")>=30 and LuaQuery("level")<=39)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("晋帝：光靠武力治帮非智举，听说在@4淝水对岸@0有个叫@3朱序@0的，他对治理之事很有见解！")
				LuaSay("晋帝：你去探讨探讨，取得真经后回复我！")
				LuaSetTask("Tbprw003",3)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==3)then
				LuaSay("晋帝：赶紧去找@4淝水对岸@0的@3朱序@0吧！")
			elseif(LuaQueryTask("Tbprw003")==4)then
				LuaSay(LuaQueryStr("name").."：治理需实施仁政，赏罚分明方可兴旺发达！")
				LuaSay("晋帝：言之有理，辛苦你了，领取奖励吧！")
				AddMenuItem("任务完成","")
				AddMenuItem("领取奖励","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("晋帝：今天的任务已经做完了，明天再来吧！")
			end
		end
		---------------40---------49
		if(LuaQuery("level")>=40 and LuaQuery("level")<=49)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("晋帝：帮派势力越大，面临的挑战也就越多，去找@4陷落关口@0的@3汉族老翁@0讨教一下吧!")
				LuaSetTask("Tbprw003",5)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==5)then
				LuaSay("晋帝：赶紧去@4陷落关口@0找@3汉族老翁@0吧！")
			elseif(LuaQueryTask("Tbprw003")==6)then
				LuaSay(LuaQueryStr("name").."：无论势力多大，最根本的宗旨不能丢啊！")
				LuaSay("晋帝：言之有理，辛苦了，领取奖励吧")
				AddMenuItem("完成任务","")
				AddMenuItem("领取奖励","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("晋帝：今天的任务已经做完了，明天再来吧！")
			end
		end
		--------------50----------59
		if(LuaQuery("level")>=50 and LuaQuery("level")<=59)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("晋帝：帮派力量日趋见增，但是我怕增的快，衰的也快啊，去找@4中山城@0的@3燕王@0请教一下吧！")
					LuaSetTask("Tbprw003",7)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==7)then
				LuaSay("晋帝：赶紧去找@4中山城@0的@3燕王@0吧！")
			elseif(LuaQueryTask("Tbprw003")==8)then
				LuaSay(LuaQueryStr("name").."：燕王虽不掌权，但是心里却存着对百姓的体谅，要步步为营啊！")
				LuaSay("晋帝：言之有理，辛苦了，领取奖励吧！")
				AddMenuItem("任务完成","")
				AddMenuItem("领取奖励","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("晋帝：今天的任务已经做完了，明天再来吧！")
			end
		end
		------------------------60以上
		if(LuaQuery("level")>=60)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("晋帝：现在帮派药品储存相当紧缺，你速去@4建康城南@0的@3药品商人@0那里购买一些药物！")
				LuaSay("晋帝：购买@2金创散跟三叶散各10个@0后回复，限时@2五分钟@0哦")
				LuaSetTask("Tbprw003",9)
				LuaSetTask("Tbprw003time",GetCurrentTime())
				UpdateTopSay("在药店商人处购买药品")
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==9)then
				if(LuaItemCount("o_drug_hp1")>=10 and LuaItemCount("o_drug_hp2")>=10)then
					local tgtime=GetCurrentTime()-LuaQueryTask("Tbprw003time")
					if(tgtime<=300)then
						LuaSay("晋帝：不错不错，值得表扬！快去领奖励吧！")
						AddMenuItem("任务完成","")
						AddMenuItem("领取奖励","Tbprw003jl")
					else
						LuaSay("晋帝：已经过了@2五分钟@0了，你这速度@！！重新来过吧！")
						LuaSetTask("Tbprw003",0)
						DelItem("o_drug_hp1",10)
						DelItem("o_drug_hp2",10)
					end
				else
					LuaSay("晋帝：你还没买到@2金创散跟三叶散各10个@0呢，快去@4建康城南@0的@3药品商人@0那买吧！")
				end
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("晋帝：今天的任务已经做完了，明天再来吧！")
			end
		end
	else
		LuaSay("晋帝：新的一天，新的开始，继续加油吧！你的帮派声望越高，获得的奖励就越高！")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaSetTask("Tbprw003",0)
		DoTalk("Tbprw003")
		UpdateMenu()
		UpdateNPCMenu("jindi")
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
		UpdateNPCMenu("jindi")
---------------------------------------------无尽趣味【每日】
elseif(answer=="Tbprw005")then
	if(LuaQueryStrTask("Tbprw005day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw005")==0)then
			LuaSay("晋帝：活跃一下气氛，来几个有趣的脑筋急转弯考考你的智商吧！听好了哦")
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
			LuaSay("晋帝：今天的任务已经做完了，明天再来吧！")
		end
	else
		LuaSay("晋帝：新的一天，新的开始，继续努力吧！")
		LuaSetTask("Tbprw005day",GetCurrentDay())
		LuaSetTask("Tbprw005",0)
		DoTalk("Tbprw005")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
--------------------------------	奖励
elseif(answer=="NO_01")then
		LuaSay("晋帝：不会吧，这么简单的问题都答错，重新来过！")
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
			jinyan=level*60+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*180+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*320+level*level*2
		else
			jinyan=level*420+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("晋帝：这么简单的问题你答对了也没什么稀奇的，我再问你.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_02")then
	LuaSay("晋帝：你答错了，重新再答！")
	LuaSetTask("Tbprw005",1)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*60+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*190+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*340+level*level*2
		else
			jinyan=level*430+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("晋帝：看来你还是有两下子的嘛，我再问你.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_03")then
	LuaSay("晋帝：这个问题确实有一点难度啊，给你机会重新选择.")
	LuaSetTask("Tbprw005",2)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*200+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*350+level*level*2
		else
			jinyan=level*450+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("晋帝：你真是聪明啊，这个也知道啊，再问你一个问题.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_04")then
	LuaSay("晋帝：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",3)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*210+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*360+level*level*2
		else
			jinyan=level*460+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("晋帝：你真是聪明啊，这个也知道啊，再问你几个谜语吧。")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_05")then
	LuaSay("晋帝：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",4)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*230+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*380+level*level*2
		else
			jinyan=level*480+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("晋帝：你真是聪明啊，这个也知道啊，再问你一个谜语。")
		DoTalk("Tbprw005")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_06")then
	LuaSay("晋帝：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",5)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*240+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*390+level*level*2
		else
			jinyan=level*490+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("晋帝：你真是聪明啊，这个也知道啊，再问你一个谜语。")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_07")then
	LuaSay("晋帝：这个问题确实有一点难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",6)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*245+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*400+level*level*2
		else
			jinyan=level*500+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaSay("晋帝：你真是聪明啊，这个也知道啊，再问你一个谜语。")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_08")then
	LuaSay("晋帝：这个问题确实很有难度啊，给你机会重新选择。")
	LuaSetTask("Tbprw005",7)
	UpdateMenu()
	UpdateNPCMenu("jindi")
elseif(answer=="N08_ANSWER")then
	if(LuaQueryTask("Tbprw005")<99) then
		if(LuaQueryTask("faction921")==1)then
			LuaSay("提示：环形任务第九环完成")
			LuaSetTask("faction921",2)
		end
        LuaSetTask("Tbprw005",99)
		LuaSay("晋帝：你真是太聪明了，居然全部都知道。")
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
		UpdateNPCMenu("jindi")
	end 
---------------------------------官威何在【循环】
elseif(answer=="Tbprw12") then	
	if(LuaQueryTask("Tbprw12")==0) then
		LuaSay("晋帝：一个帮派要想发展为@3顶级帮会@0最重要的是什么，是帮派的核心成员，是你们。")
		LuaSay("晋帝：因此，你要做好表率是很重要的。")
		LuaSetTask("Tbprw12_Taskday",GetCurrentDay())
		if(LuaQuery("level")>=20 and LuaQuery("level")<30) then
			LuaSay("晋帝：去把@4地牢深处@0的@3BOSS孙恩邪体@0身上的@3魔经@0带来给我。")
			LuaSetTask("Tbprw12_1",1)
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			LuaSay("晋帝：去把@4淝水河底@0的@3BOSS万蛇@0身上的@3蛇胆@0带来给我。")
			LuaSetTask("Tbprw12_2",1)
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			LuaSay("晋帝：去把@4白骨洞深处@0的@3BOSS修罗魔菇@0身上的@3修罗菌丝@0带来给我。")
			LuaSetTask("Tbprw12_3",1)
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			LuaSay("晋帝：去把@4太行谷底@0的@3BOSS玄武兽@0身上的@3玄武盾@0带来给我。")
			LuaSetTask("Tbprw12_4",1)
		elseif(LuaQuery("level")>=60) then
			LuaSay("晋帝：去把@4地下陵穴@0的@3BOSS王陵将军@0身上的@3将军印@0带来给我。")
			LuaSetTask("Tbprw12_5",1)
		end
		LuaSetTask("Tbprw12",1)
		UpdateMenu()
		UpdateNPCMenu("jindi")
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
			LuaSay("晋帝：由于你@2今天以前@0的任务@3官威何在【循环】@0还未完成，现在自动删除任务。")
			LuaSay("晋帝：你现在可以接任务@3官威何在【循环】@0了！")
			UpdateMenu()
			UpdateNPCMenu("jindi")
			DoTalk("Tbprw12")
		end
		if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")<1) then
			LuaSay("晋帝：快去@4地牢深处@0把@5BOSS孙恩邪体@0杀了把@3魔经@0带来给我。")
		elseif(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")<1) then
			LuaSay("晋帝：快去@4淝水河底@0把@5BOSS万蛇@0杀了把@3蛇胆@0带来给我。")
		elseif(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")<1) then
			LuaSay("晋帝：快去@4白骨洞深处@0把@5BOSS修罗魔菇@0杀了把@3修罗菌丝@0带来给我。")
		elseif(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")<1) then
			LuaSay("晋帝：快去@4太行谷底@0把@5BOSS玄武兽@0杀了把@3玄武盾@0带来给我。")
		elseif(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")<1) then
			LuaSay("晋帝：快去@4地下陵穴@0把@5BOSS王陵将军@0杀了把@3将军印@0带来给我。")
		end
		if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")>=1) then
			LuaSay("晋帝：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_1jl")
		elseif(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")>=1) then
			LuaSay("晋帝：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_2jl")
		elseif(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")>=1) then
			LuaSay("晋帝：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_3jl")
		elseif(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")>=1) then
			LuaSay("晋帝：帮派能有阁下实之大幸也。")
			LuaAddTask("Tbprw12_cs",1)---------增加任务完成次数
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw12_4jl")
		elseif(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")>=1) then
			LuaSay("晋帝：帮派能有阁下实之大幸也。")
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
		LuaSay("晋帝：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("晋帝：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@7官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_1e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu() 
		UpdateNPCMenu("jindi")
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
		LuaSay("晋帝：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("晋帝：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@7官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_2e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu() 
		UpdateNPCMenu("jindi")
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
		LuaSay("晋帝：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("晋帝：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@7官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_3e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu() 
		UpdateNPCMenu("jindi")
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
		LuaSay("晋帝：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("晋帝：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@3官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_4e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu() 
		UpdateNPCMenu("jindi")
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
		LuaSay("晋帝：英雄今天完成任务@3官威何在【循环】@0的@3次数@0为：@3"..LuaQueryTask("Tbprw12_cs").."@0次。")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("晋帝：英雄只要今天再完成@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0次@3官威何在【循环】@0就能领取额外奖励哦。")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】3次@0。")
				LuaSetTask("Tbprw12_5e",1) -------额外奖励判断参数
				AddMenuItem("领取额外奖励","")
				AddMenuItem("领取额外奖励","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("晋帝：你今天已经完成任务@3官威何在【循环】@3"..LuaQueryTask("Tbprw12_cs").."@0次@0，没有额外奖励了。")
		end
		UpdateMenu()
		UpdateNPCMenu("jindi")
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
		LuaSetTask("Tbprw12_1e",0)
	elseif(LuaQueryTask("Tbprw12_2e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",2000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSetTask("Tbprw12_2e",0)
	elseif(LuaQueryTask("Tbprw12_3e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",2000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSetTask("Tbprw12_3e",0)
	elseif(LuaQueryTask("Tbprw12_4e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",2000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSetTask("Tbprw12_4e",0)
	elseif(LuaQueryTask("Tbprw12_5e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---累积本帮今日任务经验
		LuaGive("coin",4000,"Tbprw12")------给金钱
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(2,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0完成帮派任务，为帮派增加@22点声望，帮库3000铜币@0!",0)
		LuaSetTask("Tbprw12_5e",0)
	end
-------------------------------------------------------洛阳告急【循环】
elseif(answer=="Tbprw3") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw3_Taskday")) then
		LuaSetTask("Tbprw3_cs",0)
	end
	if(LuaQueryTask("Tbprw3_cs")<5)then
		if(LuaQueryTask("Tbprw3")==0) then
			LuaSay("晋帝：爱卿终于来了。")
			LuaSay("晋帝：现在@4军营前哨@0出现大量@3愚民@0，速去消灭@320个愚民@0以定社会和谐。")
			LuaSay("晋帝：寡人对尔有信心，相信汝不会辜负寡人之厚望。")
			LuaSetTask("Tbprw3",1)      -------日志的添加
			LuaSetTask("task_kill/mon_020/Tbprw3",1)--------开启杀怪计数器
			UpdateTopSay("去军营前哨杀20个愚民")
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw3")==1 and LuaQueryTask("task_kill/mon_020/Tbprw3")>=21 ) then
			LuaSay("晋帝：多谢英雄为国家排忧解难，实乃国家之幸啊。")
			AddMenuItem("@7任务完成","")
			LuaAddTask("Tbprw3_cs",1)---------增加任务完成次数
			AddMenuItem("领取奖励","Tbprw3jl")
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw3")==1 and LuaQueryTask("task_kill/mon_020/Tbprw3")<21 ) then
			a=LuaQueryTask("task_kill/mon_020/Tbprw3")-1
			LuaSay("晋帝：你才杀了@3"..a.."个愚民@0，快去@4军营前哨@0接着杀愚民吧！")
		end
	elseif(LuaQueryTask("Tbprw3_cs")>=5)then
		LuaSay("晋帝：你今天已经做了五次@3洛阳告急【循环】@0任务了，明天再来做吧！")
	end
elseif(answer=="Tbprw3jl")then  -----------------给经验

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
			UpdateNPCMenu("jindi")
		end
    end
--------------------------------------------------职责所在【循环】
elseif(answer=="Tbprw4") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw4_Taskday")) then
		LuaSetTask("Tbprw4_cs",0)
	end
	if(LuaQueryTask("Tbprw4_cs")<5)then
		if(LuaQueryTask("Tbprw4")==0) then
			LuaSay("晋帝：最近妖物怪物横行，孤甚是震怒。")
			if(LuaQuery("level")<=35) then
				local r = LuaRandom(2)                       --------触发几率
				if(r==0)then
					LuaSay("晋帝：@4渭水之滨@0的@3嚎兽@0横行，速去击杀@325只@0以宽孤的心。")
					LuaSay("晋帝：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_0",1)
					LuaSetTask("task_kill/mon_028/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到渭水之滨消灭25只嚎兽")
				elseif(r==1)then
					LuaSay("晋帝：你去@4西蜀竹林@0消灭@325只竹叶妖@0宽慰一下孤的心吧！")
					LuaSay("晋帝：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_1",1)
					LuaSetTask("task_kill/mon_030/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到西蜀竹林消灭25只竹叶妖")
				end
			elseif(LuaQuery("level")>35) then
				local r = LuaRandom(3)
				if(r==0)then
					LuaSay("晋帝：你去@4食人谷@0消灭@325只骷髅@0宽慰一下孤的心吧！")
					LuaSay("晋帝：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_2",1)
					LuaSetTask("task_kill/mon_032/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到食人谷消灭25只骷髅")
				elseif(r==1)then
					LuaSay("晋帝：你去@4白骨洞@0消灭@325只尸虫@0宽慰一下孤的心吧！")
					LuaSay("晋帝：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_3",1)
					LuaSetTask("task_kill/mon_033/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到白骨洞消灭25只尸虫")
				elseif(r==2)then
					LuaSay("晋帝：你去@4食人谷@0消灭@325只噬龙@0宽慰一下孤的心吧！")
					LuaSay("晋帝：只要在@310分钟内@0来我这@3完成任务@0,就可以得到@2更丰厚的奖励@0哦！@!")
					LuaSetTask("Tbprw4_4",1)
					LuaSetTask("task_kill/mon_031/Tbprw4",1)   -----------开启杀怪计数器
					UpdateTopSay("到食人谷消灭25只噬龙")
				end
			end
			LuaSetTask("Tbprw4",1)
			local time=GetCurrentTime()
			LuaSetTask("Tbprw4time",time)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw4")==1) then
			if((LuaQueryTask("task_kill/mon_028/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_030/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_032/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_033/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_031/Tbprw4")-1 )>=25) then
				local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbprw4time"))
				if(shijiancha<=600) then
					LuaSay("晋帝:这么快就消灭妖怪了，英雄的速度真快，我果真没有看错人。")
					AddMenuItem("@7任务完成","")
					AddMenuItem("领取奖励","Tbprw4jl_1")
				elseif(shijiancha>600) then
					LuaSay("晋帝:虽说你完成了任务,但是速度太慢了,这下可没有双倍奖励了。")
					AddMenuItem("@7任务完成","")
					AddMenuItem("领取奖励","Tbprw4jl_2")
				end
			else
				if(LuaQueryTask("Tbprw4_0")==1) then
					LuaSay("晋帝:英雄才杀了@3"..(LuaQueryTask("task_kill/mon_028/Tbprw4")-1).."个嚎兽@0，快去@4渭水之滨@0接着杀吧！")
					UpdateTopSay("到渭水之滨消灭25只嚎兽")
				elseif(LuaQueryTask("Tbprw4_1")==1) then
					LuaSay("晋帝:英雄才杀了@3"..(LuaQueryTask("task_kill/mon_030/Tbprw4")-1).."个竹叶妖@0，快去@4西蜀竹林@0接着杀吧！")
					UpdateTopSay("到西蜀竹林消灭25只竹叶妖")
				elseif(LuaQueryTask("Tbprw4_2")==1) then
					LuaSay("晋帝:英雄才杀了@3"..(LuaQueryTask("task_kill/mon_032/Tbprw4")-1).."个骷髅@0，快去@4食人谷@0接着杀吧！")
					UpdateTopSay("到食人谷消灭25只骷髅")
				elseif(LuaQueryTask("Tbprw4_3")==1) then
					LuaSay("晋帝:英雄才杀了@3"..(LuaQueryTask("task_kill/mon_033/Tbprw4")-1).."个尸虫@0，快去@4白骨洞@0接着杀吧！")
					UpdateTopSay("到白骨洞消灭25只尸虫")
				elseif(LuaQueryTask("Tbprw4_4")==1) then
					LuaSay("晋帝:英雄才杀了@3"..(LuaQueryTask("task_kill/mon_031/Tbprw4")-1 ).."个噬龙@0，快去@4食人谷@0接着杀吧！")
					UpdateTopSay("到食人谷消灭25只噬龙")
				end
			end
		end
	elseif(LuaQueryTask("Tbprw4_cs")>=5)then
		LuaSay("晋帝：你今天已经做了五次@3职责所在【循环】@0任务了，明天再来做吧！")
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
			UpdateNPCMenu("jindi")
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
			UpdateNPCMenu("jindi")
		end
    end
-------------------------------------------------收集爪子【循环】
elseif(answer=="Tbprw5") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw5_Taskday")) then
		LuaSetTask("Tbprw5_cs",0)
	end
	if(LuaQueryTask("Tbprw5_cs")<10)then
		if(LuaQueryTask("Tbprw5")==0) then
			LuaSay("晋帝：听说@4陷落关口@0有一种怪物叫@3霸虎@0。")
			LuaSay("晋帝：现在急需@3霸虎的爪子@0生产一种武器，英雄快去收集@310个霸虎的爪子@0回来交给我。")
			LuaSetTask("Tbprw5",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw5")==1) then
			if(LuaItemCount("o_mission400")>=10) then -------o_mission400    霸虎的爪子
				if(LuaQueryTask("Tbprw5_cs")<5) then
					LuaSay("晋帝：如果一个人一天收集够@350个霸虎的爪子@0，还有额外奖励哦！")
				elseif(LuaQueryTask("Tbprw5_cs")>=5 and LuaQueryTask("Tbprw5_cs")<10) then
					LuaSay("晋帝：如果一个人一天收集够@3100个霸虎的爪子@0，有更多丰富的额外奖励哦！")
				end
				AddMenuItem("@7任务完成","")
				LuaAddTask("Tbprw5_cs",1)---------增加任务完成次数
				AddMenuItem("领取奖励","Tbprw5jl")
			elseif(LuaItemCount("o_mission400")<10) then
				LuaSay("晋帝：你还没有收集够@310个霸虎的爪子@0，快去@4陷落关口@0杀@3霸虎@0吧。")
				UpdateTopSay("收集10个霸虎的爪子再来找我吧！")
			end
		end
	elseif(LuaQueryTask("Tbprw5_cs")>=10)then
		LuaSay("晋帝：你今天已经做了十次@3收集爪子【循环】@0任务了，明天再来做吧！")
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
			UpdateNPCMenu("jindi")
		end
	end
	if(LuaQueryTask("Tbprw5_cs")==5)then
		LuaSay("晋帝：英雄今天已经收集了@350个霸虎的爪子@0。")
		AddMenuItem("领取额外奖励","")
		AddMenuItem("领取额外奖励","Tbprw5jl_e1")
	elseif(LuaQueryTask("Tbprw5_cs")==10)then
		LuaSay("晋帝：英雄今天已经收集了@3100个霸虎的爪子@0。")
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
		UpdateNPCMenu("jindi")
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
		UpdateNPCMenu("jindi")
	end
--------------------------------------------------
elseif(answer=="Tbprw6") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbprw6")==0) then
		LuaSay("晋帝：最近妖气盛行，@4燕王陵@0和@4地下陵墓@0已经出现了@3鬼火@0和@3毒僵尸@0。")
		LuaSay("晋帝：请英雄速去击杀@4燕王陵@0的@315个鬼火@0和@4地下陵墓@0的@315个毒僵尸@0。")
		LuaSetTask("Tbprw6",1)
		LuaSetTask("task_kill/mon_042/Tbprw6",1)   -----------开启杀怪计数器
		LuaSetTask("task_kill/mon_044/Tbprw6",1)   -----------开启杀怪计数器
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tbprw6")==1) then
		if(LuaQueryTask("task_kill/mon_042/Tbprw6") >= 16 and  LuaQueryTask("task_kill/mon_044/Tbprw6") >= 16) then
			LuaSay("晋帝：多谢英雄！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw6jl")
		else
			local a1=LuaQueryTask("task_kill/mon_042/Tbprw6")-1
			local a2=LuaQueryTask("task_kill/mon_044/Tbprw6")-1
			if(a1<15 and a2<15) then
				LuaSay("晋帝：不要忽悠人，你@4燕王陵@0的@315个鬼火@0和@4地下陵墓@0的@315个毒僵尸@0都还没杀够。")
				UpdateTopSay("到燕王陵和地下陵墓分别击杀15个鬼火和15个毒僵尸")
			elseif(a1>=15 and a2<15) then
				LuaSay("晋帝：@3鬼火@0已经杀够了，但@3毒僵尸@0才杀了"..a2.."个，接着去@4地下陵墓@0杀@3毒僵尸@0吧。")
			elseif(a2>=15 and a1<15) then
				LuaSay("晋帝：@3毒僵尸@0已经杀够了，但@3鬼火@0才消灭了"..a1.."个，接着去@4燕王陵@0消灭@3鬼火@0吧。")
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
			UpdateNPCMenu("jindi")
		end
	end
--------------------------------------------------扶摇直上【循环】
elseif(answer=="Tbprw7") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw7_Taskday")) then
		LuaSetTask("Tbprw7_cs",0)
	end
	if(LuaQueryTask("Tbprw7_cs")<=30) then
		if(LuaQueryTask("Tbprw7")==0) then
			LuaSay("晋帝：阁下已经@3"..LuaQuery("level").."级@0了，你所在的帮派等级是@3"..LuaPartyLevel().."@0级，这个任务可以发放给你了。")
			LuaSay("晋帝：现如今国家内忧外患，寡人需要大型帮会辅佐以安定国家。")
			LuaSay("晋帝：你速到@4古战场@0击杀@335个鲜卑精锐@0，我将给你很丰厚的@3帮派声望奖励和个人奖励@0哦。")
			LuaSetTask("Tbprw7",1)
			LuaSetTask("task_kill/mon_052/Tbprw7",1)   -----------开启杀怪计数器
			UpdateTopSay("到古战场杀35个鲜卑精锐再来找我吧")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw7")==1) then
			if(LuaQueryTask("task_kill/mon_052/Tbprw7") >= 36 ) then
				LuaSay("晋帝：多谢英雄为国家尽心尽力。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","Tbprw7jl")
			elseif(LuaQueryTask("task_kill/mon_052/Tbprw7") <36 ) then
				LuaSay("晋帝：你还没有杀够@235个鲜卑精锐@0，到@4古战场@0接着去杀吧！")
			end
		end
	else
		LuaSay("晋帝：每天@5扶摇直上@0任务只能完成30次,你已经做完了30次，不能再做了")
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
		LuaSay("晋帝：现如今建康城告急，战事吃紧。")
		LuaSay("晋帝：前线来报说物资紧缺，你速速把这两包@3战争物资@0送往@4北府军营@0的@3谢玄@0处和@4军营前哨@0的@3谢琰@0处。")
		LuaSetTask("Tbprw8",1)
		LuaGive("o_mission401",2)
		LuaSetTask("Tbprw8A",0)
		LuaSetTask("Tbprw8B",0)
		UpdateTopSay("把战争物资送往洛阳郊外的苻融处和军营前哨的谢琰那里")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tbprw8")==1) then
		if(LuaQueryTask("Tbprw8A")==0 and LuaQueryTask("Tbprw8B")==0)then
			LuaSay("晋帝：阁下怎么还没出发把@3战争物资@0送往@4北府军营@0的@3谢玄@0处和@4军营前哨@0的@3谢琰@0那里。")
			LuaSay("晋帝：战事刻不容缓，阁下快点启程吧。")
		elseif(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==0)then
			LuaSay("晋帝：阁下怎么只把@3战争物资@0送往@4北府军营@0的@3谢玄@0处啊。")
			LuaSay("晋帝：速去把另外一包@3战争物资@0送往@4军营前哨@0的@3谢琰@0那里！")
		elseif(LuaQueryTask("Tbprw8A")==0 and LuaQueryTask("Tbprw8B")==1)then
			LuaSay("晋帝：阁下怎么只把一包@3战争物资@0送往@4军营前哨@0的@3谢琰@0处啊。")
			LuaSay("晋帝：速去把另外一包@3战争物资@0送往@4北府军营@0的@3谢玄@0那里！")
		elseif(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==1) then
			LuaSay("晋帝：还好来得及，多谢英雄关心国家战事！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw8jl")
		end
	elseif(LuaQueryTask("Tbprw8")==99) then
		LuaSay("晋帝：今天的@3派送物资【每日】@0你已经做完了，明天再来吧！")
	end
else
	LuaSay("晋帝：新的一天，新的开始，继续加油吧！你的帮派声望越高，获得的奖励就越高！")
	LuaSetTask("Tbprw8day",GetCurrentDay()) 
	LuaSetTask("Tbprw8",0)
	LuaSetTask("Tbprw8A",0)
	LuaSetTask("Tbprw8B",0)
	DelItem("o_mission401",LuaItemCount("o_mission401"))
	DoTalk("Tbprw8")
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			UpdateNPCMenu("jindi")
		end
    end
----------------------------------------------------购买物资【每日】
elseif(answer=="Tbprw9") then
	if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw9")==0) then
			LuaSay("晋帝：最近国库需要补充物资。")
			local r=LuaRandom(4)
			if(r==0) then
				LuaSay("晋帝：@4洛阳@0的@3防具商人@0是我们晋国的防具提供商。")
				LuaSay("晋帝：你在@35分钟内@0去他那与他@3对话@0，然后购买一件@3晋国御用防具@0交给我。")
				LuaSetTask("Tbprw9_0",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(r==1) then
				LuaSay("晋帝：@4洛阳@0的@3武器商人@0是我晋国的武器提供商。")
				LuaSay("晋帝：你在@35分钟内@0去他那与他@3对话@0，然后购买一件@3晋国御用武器@0交给我。")
				LuaSetTask("Tbprw9_1",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(r==2) then
				LuaSay("晋帝：@4洛阳@0的@3饰品商人@0是我晋国的饰品提供商。")
				LuaSay("晋帝：你在@35分钟内@0去他那与他@3对话@0，然后购买一件@3晋国御用饰品@0交给我。")
				LuaSetTask("Tbprw9_2",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(r==3) then
				LuaSay("晋帝：@4洛阳@0的@3药品商人@0是我晋国的药品提供商。")
				LuaSay("晋帝：你在@35分钟内@0去他那与他@3对话@0，然后购买一件@3晋国御用药品@0交给我。")
				LuaSetTask("Tbprw9_3",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			end
			LuaSetTask("Tbprw9",1)
			LuaSetTask("Tbprw9_Taskday",GetCurrentDay())
			time=GetCurrentTime()
			LuaSetTask("Tbprw9time",time)
		elseif(LuaQueryTask("Tbprw9")==1) then
			if(LuaQueryTask("Tbprw9_0")==1) then
				LuaSay("晋帝：你怎么还没去@4洛阳@0的@3防具商人@0那买@3晋国御用防具@0")
				LuaSay("晋帝：快去吧，一个国家没有后勤是不行滴！")
			elseif(LuaQueryTask("Tbprw9_1")==1) then
				LuaSay("晋帝：你怎么还没去@4洛阳@0的@3武器商人@0那买@3晋国御用武器@0")
				LuaSay("晋帝：快去吧，一个国家没有后勤是不行滴！")
			elseif(LuaQueryTask("Tbprw9_2")==1) then
				LuaSay("晋帝：你怎么还没去@4洛阳@0的@3饰品商人@0那买@3晋国御用饰品@0")
				LuaSay("晋帝：快去吧，一个国家没有后勤是不行滴！")
			elseif(LuaQueryTask("Tbprw9_3")==1) then
				LuaSay("晋帝：你怎么还没去@4洛阳@0的@3药品商人@0那买@3晋国御用药品@0")
				LuaSay("晋帝：快去吧，一个国家没有后勤是不行滴！")
			end
		elseif(LuaQueryTask("Tbprw9")==2) then
			if(LuaItemCount("o_mission402")>=1 or LuaItemCount("o_mission403")>=1 or LuaItemCount("o_mission404")>=1 or LuaItemCount("o_mission405")>=1 )then
				local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbprw9time"))
				if(shijiancha<=300) then
					LuaSay("晋帝：多谢英雄！")
					AddMenuItem("@7任务完成","")
					AddMenuItem("领取奖励","Tbprw9jl")
				elseif(shijiancha>300) then
					LuaSay("晋帝：你已经超过了任务时间，任务失败！")
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
						UpdateNPCMenu("jindi")
					end
				end
			end
		elseif(LuaQueryTask("Tbprw9")==99) then
			LuaSay("晋帝：今天的@3购买物资【每日】@0你已经做完了，明天再来吧！")
		end
	else
		LuaSay("晋帝：新的一天，新的开始，继续加油吧！你的帮派声望越高，获得的奖励就越高！")
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
		UpdateNPCMenu("jindi")
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
		UpdateNPCMenu("jindi")
	end			
----------------------------------------------------运送粮食【每日】
elseif(answer=="Tbprw10") then
	if(LuaQueryStrTask("Tbprw10day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw10")==0) then
			LuaSay("晋帝：听说@4陷落关口@0的@3拓拔仪@0经常粥济难民。")
			LuaSay("晋帝：一个人的力量毕竟有限，晋帝知道后决定@3运送粮食@0给@3拓拔仪@0。")
			LuaSay("晋帝：你去把这些@3粮食@0送往@4陷落关口@0的@3拓拔仪@0。")
			LuaSetTask("Tbprw10",1)
			LuaGive("o_mission406",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw10")==1) then
			LuaSay("晋帝：去把@3粮食@0送往@4陷落关口@0的@3拓拔仪@0再来找我吧。")
		elseif(LuaQueryTask("Tbprw10")==2) then
			LuaSay(""..LuaQueryStr("name").."：@3拓拔仪@0叫我代他谢谢你")
			LuaSay("晋帝：只要难民能过的安稳就行了。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbprw10jl")
		elseif(LuaQueryTask("Tbprw10")==99) then
			LuaSay("晋帝：今天的@3运送粮食【每日】@0你已经做完了，明天再来吧！")
		end
	else
		LuaSay("晋帝：新的一天，新的开始，继续加油吧！你的帮派声望越高，获得的奖励就越高！")
		LuaSetTask("Tbprw10day",GetCurrentDay()) 
		LuaSetTask("Tbprw10",0)
		DelItem("o_mission406",LuaItemCount("o_mission406"))
		DoTalk("Tbprw10")
		UpdateMenu()
		UpdateNPCMenu("jindi")
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
		UpdateNPCMenu("jindi")
	end
----------------------------------------------------解决邪恶【环一】
elseif(answer=="Tbprw11_1") then
	if(LuaQueryTask("Tbprw11_1")==0) then
		LuaSay("晋帝：现如今乱世怨念沉积，邪物尽出，听说@4燕王陵@0常年有一位神秘的@3守墓老人@0。")
		LuaSay("晋帝：阁下速去找他查探有没有解决邪物的办法。")
		LuaSetTask("Tbprw11_1",1)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tbprw11_1")==1) then
		LuaSay("晋帝：邪物尽出,寻求解决之道刻不容缓，快去找@4燕王陵@0的@3守墓老人@0。")
	end
elseif(answer=="Tbprw11_3") then
	if(LuaQueryTask("Tbprw11_3")==2) then
		LuaSay(""..LuaQueryStr("name").."：我找到@4地下陵墓@0的@3骸骨@0，他说这些邪物都是由怨念组成，只能每天消灭他们直到怨念消失为止。")
		LuaSay("晋帝：哎，那也只能这样了。")
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
		UpdateNPCMenu("jindi")
	end
------------------------望子成龙 
elseif(answer=="T290") then             
	if(LuaQueryTask("T290")==1) then
		LuaSay("晋帝：恩，司马道子乃孤的叔父，说的不错，司马家的人是该人人都位高权重。孤这便封司马元显为尚书令")
		LuaSay("晋帝：把这个好消息去告诉@4建康城@0的@3司马元显@0吧。")
		LuaSetTask("T290",2)
		AddLog("望子成龙【剧情】",290)
		UpdateMenu()
		UpdateNPCMenu("jindi")
		UpdateNPCMenu("simadaozi")
	elseif(LuaQueryTask("T290")==2) then
		LuaSay("晋帝：把孤封司马元显为尚书令的好消息去告诉@4建康城@0的@3司马元显@0吧。")
	end 
------------------------------最后的挑战【剧情】
elseif(answer=="T750")then                  
	if(LuaQueryTask("T750")==2)then
		LuaSay("晋帝：据说你很有能耐，今日一见果然不凡，想必你一定很清楚现在的局势了，统一之事迫在眉睫，我很支持你，天将降大任与你，我们会鼎力相助的！")
		LuaSay(LuaQueryStr("name").."：皇上对在下的支持在下没齿难忘，不会辜负您的！")
		LuaSetTask("T750",3)
		AddLog("最后的挑战【剧情】",750)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("T750")==3)then
		LuaSay("晋帝：去回复@3崔宏@0吧！")		
	end
------------------------------帮派国家
elseif(answer=="T268") then    
	if(LuaQueryTask("T268") == 1 ) then
		LuaSay("晋帝:寡人这里可以@2进行帮派和国家的管理@0,@3达到11级就可以加入帮派，达到20级就可以建立自己的帮派@0!")
		LuaSay("晋帝:如果你想@3建立自己的帮派@0，那么快点去@4五斗山或者更东边的地方@0提升等级吧。@!")
		LuaSay("晋帝:了解了国家和帮派的知识，去回复@4五斗山@0的@3桓玄@0吧。")
		LuaSetTask("T268",2)
		AddLog("帮派国家【剧情】",268)
		UpdateMenu()
		UpdateNPCMenu("jindi")
		AddMenuItem("@7传送至桓玄","")
		AddMenuItem("确认传送至桓玄","Tcs_hx")
	elseif(LuaQueryTask("T268") == 2 ) then
		LuaSay("晋帝:了解了国家和帮派的知识，去回复@4五斗山@0的@3桓玄@0吧。")
		AddMenuItem("@7传送至桓玄","")
		AddMenuItem("确认传送至桓玄","Tcs_hx")
	end
elseif(answer=="Tcs_hx")then
	ChangeMap("lu_wds",134,339)
------------------------------和平友好
elseif(answer=="cuontry811")then
	if(LuaQueryTempStr("online")~=LuaQueryStr("line"))then
		LuaSay(""..LuaQueryStr("name").."：受我朝之托，来向大王问安")
		LuaSay("晋帝：很好很好，我们两国一向和睦相处")
		LuaSay("提示：第八环完成")
		LuaSetTask("cuontry811",2)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	else
		LuaSay("晋帝：去问候邻国的皇帝，你还在本国呢")
	end
-------------------------张贴通告
elseif(answer=="T280") then                 
	if(LuaQueryTask("T280") == 0 ) then
		LuaSay("晋帝：既然孤答应了你的要求，孤必定会实现，这是圣旨，去张贴于建康主城的布告牌上吧。")
		LuaSay("晋帝：@2与布告牌对话@0，就可以成功张贴告示了。")		
		LuaGive("o_mission361",1)
		LuaSetTask("T280",1)
		AddLog("张贴通告【剧情】",280)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("T280") == 1 ) then
		LuaSay("晋帝：你还没有将@2通告@0贴在建康主城的@3布告牌@0上呢。@2与布告牌对话@0，就可以成功张贴告示了。")
	end
-------------------------半壁江山
elseif(answer=="T385")then
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("T385_A")==1 and LuaQueryTask("T385_B")==0)then
			LuaSay("晋帝：很好，谢谢你给我带来上卷，让我及时的了解到了前方的情况。")
			LuaSetTask("T385",98)
			AddLog("半壁江山【剧情】",385)
			DelItem("o_mission417",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("T385_A")==0 and LuaQueryTask("T385_B")==1)then
			LuaSay("晋帝：很好，谢谢你给我带来下卷，让我及时的了解到了前方的情况。")
			LuaSetTask("T385",98)
			AddLog("半壁江山【剧情】",385)
			DelItem("o_mission418",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	elseif(LuaQueryTask("T385")==98)then
		LuaSay("晋帝：你已经将一半的江山画卷送到了我的手上，获取找谢道韫领取奖励吧。")
	end
-------------------------驿站小吏
elseif(answer=="Tsnpc_26")then
	if(LuaQueryTask("Tsnpc_26")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("晋帝：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_26",2)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tsnpc_26")==2)then
		LuaSay("晋帝：信我看到了，你回去复命吧。")
	end
-------------------------千里传音
elseif(answer=="Tenpc_26")then
	if(LuaQueryTask("Tenpc_26")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("晋帝：这都是大人的功劳啊")
		LuaSetTask("Tenpc_26",2)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tenpc_26")==2)then
		LuaSay("晋帝：话已经带到了，快回去领取奖励吧")
	end
-------------------------免罪【剧情】
elseif(answer=="T850")then        
	if(LuaQueryTask("T850") == 1)then
		LuaSay("晋帝：看在少侠有功于朝廷的份上，就免了谢安的罪！不过还得劳烦你去张贴下通告！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T850jl")
	end
elseif(answer=="T850jl")then
	if(LuaQueryTask("T850") == 1)then
		LuaAddJx("combat_exp",70000,"T850")
		LuaSetTask("T850",99)
		DelLog("850")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
-------------------------父子相残 
elseif(answer=="T115B") then                       
	if(LuaQueryTask("T115B") ==0) then
		LuaSay("晋帝：恩，司马道子卿家年事已高，是该退隐了。孤准许司马元显代替其父的职位。")
		LuaSetTask("T115B",99)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
-------------------------送货
elseif(answer=="pettask")then
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==9) then
		LuaSay("晋帝:嗯好,不用客气")
		LuaSetTask("pettask",10)
		LuaAddTask("ptnumber",1)
		DelItem("o_mission049",LuaItemCount("o_mission049"))
		LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()
	UpdateNPCMenu("jindi")
-------------------------快乐新春 
elseif(answer=="Txinchun") then           
	if(LuaQueryTask("Txinchun")==2) then
		LuaSay("晋帝：哈哈，孤果然还是受欢迎的。为表卿之关心，孤这就赐你些压岁钱吧。")
		LuaSay("晋帝：孤对前朝遗老甚是愧疚，托你去给@4洛水村@0的@3村中长老@0拜个年吧。")
         LuaSetTask("Txinchun",3)
		LuaGive("coin",1000,"Txinchun")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Txinchun")==3) then
		LuaSay("晋帝：孤对前朝遗老甚是愧疚，托你去给@4洛水村@0的@3村中长老@0拜个年吧。")
	end 
-------------------------------端午节
elseif(answer=="Tduanwu") then
    if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_jind")==0)  then
        if(LuaItemStatusNormalCount("o_mission207")>=1) then
        LuaSay("周天子：难得他想得周到，每年端午都给寡人送粽子，这是打赏你的@32000铜币")
		DelItem("o_mission207",1)
		LuaGive("coin",2000,"Tduanwu")
		LuaSetTask("Tdwj_zzcq_jind",99)
		UpdateMenu()
		else
  		LuaSay(""..LuaQueryStr("name").."：草民惶恐，竟然没有准备够@31个极品粽子@0，这就去准备")
        end
	end
--------入帮誓言
elseif(answer=="RBSY")then
	if(LuaQueryRank()~=0)  then
		if(LuaQueryTempStr("last_world_msg")==SYXT(3,1,0))  then
			SYXT(3,0,1)
		else
		    LuaSay("提示：你只要在公聊频道宣誓：“@3"..SYXT(3,1,0).."@0”！然后就能领奖")
		end
	else
		LuaSay("提示：你没有加入帮派！无法进行此任务！")
	end
--------解散帮会 --帮主权利
elseif(answer=="jsbh") then
	AddMenuItem("@7解散帮派","")
	AddMenuItem("@5帮派解散说明","jsbh_sm")
	AddMenuItem("@3确定解散帮派","jsbh_y")
elseif(answer=="jsbh_sm")then   -------帮派解散说明
	LuaSay("解散途径：@1 手动解散帮派@0:@2帮主@0点击@7确定解散帮派@0解散帮派；@12 系统强制解散帮派@0：@2系统每周进行帮派排名检测@0，@3第28/29/30位的帮派自动解散(新建帮派10天保护不被解散)@0，由系统自动执行。")
elseif(answer=="jsbh_y")then
	LuaPublicDel(""..LuaQuery("partyid").."")
	DisBandParty()	
--------弹劾帮主	
elseif(answer=="thbz") then
	AddMenuItem("@7弹劾帮主","")
	AddMenuItem("@5弹劾帮主说明","thbz_sm")
	AddMenuItem("@3确定弹劾帮主","thbz_y")
elseif(answer=="thbz_sm")then   -------弹劾帮主说明
	LuaSay("弹劾成功条件：1：@2帮派声望大于100@0；2：@2帮主不在线10天或者10天以上@0；3：帮派中的@3长老@0或@3堂主@0有权利弹劾帮主；@2弹劾成功会扣200W个人铜币@0")
elseif(answer=="thbz_y")then   -------弹劾帮主
	if(PartyIsBuyMap() ==0) then  --未开通了帮派主寨
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
	else
		LuaSay("你的帮派已经开启了@2帮派主寨@0，请到帮派主寨中进行操作")
	end
--------退出帮派 --帮主不能退出帮派
elseif(answer=="bp8") then
	AddMenuItem("@7退出帮派","")
	AddMenuItem("@5退出帮派说明","bp8_sm")
	AddMenuItem("@3确定退出帮派","bp8_y")
elseif(answer=="bp8_sm")then   -------退出帮派说明	
	LuaSay("退出帮派途径：@11 驱逐@0:@2帮派官员@0可对帮众进行驱逐出帮；@12 自己退出@0：点击@7确定退出帮派@0来退出。")
	--LuaSay("驱逐费用公式：(帮派等级+1)*20000；退帮费用公式： 10000*帮派等级*(帮派等级+1)")
elseif(answer=="bp8_y")then   -------退出帮派	
	if(LuaItemCount("coin")>=10000*LuaPartyLevel()*(LuaQueryRank()+1)) then
		LuaSay("晋帝:退出帮派给本帮带来了极大的声誉损失,而帮中的帮贡亦不存在矣！可愿支付"..10000*LuaPartyLevel()*(LuaQueryRank()+1).."铜币离开帮派？")
		AddMenuItem("@7是否退帮","")
		AddMenuItem("愿意","tb_y","")
		AddMenuItem("不愿意","tb_n","")
	else
		LuaSay("你不够@2"..10000*LuaPartyLevel()*(LuaQueryRank()+1).."@0铜币,不予离开帮派.")
	end
elseif(answer=="tb_y") then
	LuaGive("coin",-(10000*LuaPartyLevel()*(LuaQueryRank()+1)),"bptc")
	LuaLeaveParty()
elseif(answer=="tb_n") then
	LuaSay("提示:想清楚再退出帮派也不迟.@!")
------------------帮派说明
elseif(answer=="partysm")then
	AddMenuItem("@7帮派权利与数量说明","") 
	AddMenuItem("@3帮派数量说明","party_numsm")
	AddMenuItem("@3帮派权力操作说明","bpqlsm")

elseif(answer=="party_numsm") then  --帮派数量说明
	LuaSay("晋帝：一个国家只能同时存在@21个国、2个侯、4个部、8个派、15个帮@0。")
	LuaSay("如果你想升级到下一等级的帮派，但是下一等级的帮派数量达到饱和，那么你只能通过帮战把其中的一个帮派打降一级，你才有机会升级到下一级的帮派。")
elseif(answer=="bpqlsm")then
     LuaSay("帮派升级后帮主和帮会官员会获得一定的特权，这下牛B了！特权使用次数随帮派等级和职位提高而增加。初级帮一次")
     LuaSay("权利积分等于@3帮派等级@0加@3职位@0，帮派级别为：1/2/3/4/5，职权级别为成员1堂主2长老3帮主4")
     LuaSay("@5四大权力使用条件：权利积分大于等于5、小于等于7可对本帮比自己职位等级低的人免费使用；权利积分为8可对在本国且与帮派所在国籍相同的玩家免费使用；权利积分为9可对自己所在线对任何人免费使用")
     LuaSay("@1赦免@0：每天可对本帮玩家洗掉一定PK值，选择帮内玩家私聊@3/sm@0，帮派内的玩家PK值过低了怎么办，找帮派官员！")
     LuaSay("@1抓捕@0：可将目标抓捕到本帮地牢，在私聊中输入@3/zb@0，看到仇人怎么办，抓他进牢蹂躏！前提是开通帮派地牢")
     LuaSay("@1行刑@0：抓别人进地牢是不是还不过瘾，行，你可以对玩家私聊@3/xx@0，这样就能将地牢内的敌人咔嚓，还能爆装备哦！此功能需通帮派地牢")
     LuaSay("@1禁言@0：对本帮人闹事者，可净化帮聊环境，对玩家私聊@3/jy@0只能对帮众使用！")
     LuaSay("@1提示@0：赦免，抓捕，行刑，禁言这四个帮派特权@1恢复使用次数的要求是：使用完一种特权24小时后才可恢复你本人使用此特权的次数@0，才可再次使用此特权，也就是你@2使用完此特权后24小时内不可再免费使用@0，必须要有相应的道具。")
     
----------------------------------国籍管理
elseif(answer=="gjgl")then  
	AddMenuItem("@7国籍管理","") 
	AddMenuItem("@5国籍说明","gj_sm")
	AddMenuItem("@3叛国","qc")
	AddMenuItem("@3建立国家","bc")
	--AddMenuItem("帮主取钱","dm")
	--AddMenuItem("分红","cbmc")
	--AddMenuItem("进入竞技场","ea")
elseif(answer=="gj_sm")then ----------------国籍说明
	LuaSay("@2角色创建所在国@0为@1角色所属国家@0：你当前所在国家为：@3"..GeGJMC().."@0国，所属国家为："..LuaQueryStr("country").."")
	LuaSay("@115级以上、无帮派、有国籍者@0可通过@3叛国@0系统叛入其他国家。")
	LuaSay("@1本国20人以上的五级帮派的帮主，有一定的经济实力@0就能建立国家。")
--------------------------叛国
elseif(answer=="qc")then
	AddMenuItem("@7叛国","")
	--LuaSay("@5温馨提示：叛国之后将不能领取到洛阳城王振恶处的40级升级奖励，要三思而行哦@!")
	AddMenuItem("@5叛国说明","qc_sm")
	AddMenuItem("@3决定叛国","qc_y")
	AddMenuItem("点错了","")
elseif(answer=="qc_sm")then  ----------叛国说明
	LuaSay("条件：@115级以上；只能叛入所在国；无帮派，有国籍0，@2叛国成本将会随着你的叛国次数增加而增加@0。")
elseif(answer=="qc_y")then  ----------叛国
	if(GetCurrentHour()==12 or GetCurrentHour()==11 or GetCurrentHour()==13)then
		LuaSay("@5提示：每天11、12、13点不能叛国！")
	else
		QuisleCountry()
	end
--------------------------建国
elseif(answer=="bc")then
	AddMenuItem("@7建国","")
	AddMenuItem("@5建国说明","bc_sm")
	AddMenuItem("@3决定建国","bc_y")
	AddMenuItem("点错了","")
elseif(answer=="bc_sm")then  ----------建国说明
	LuaSay("条件：@1本国20人以上的五级帮派，有一定的经济实力。")
elseif(answer=="bc_y")then  ----------建国
	BuildCountry()	
----------------------------------------------获得成就称号
elseif(answer=="Thdch_cj")then
	AddMenuItem("@7获得成就称号","")
	AddMenuItem("@3领取@3综合类成就称号@0@4【牛B人士】@0","Tch_zh")
	AddMenuItem("@3领取@3任务类成就称号@0@4【任务王】@0","Tch_rw")
	AddMenuItem("@3领取@3探索类成就称号@0@4【无所不知】@0","Tch_ts")
	AddMenuItem("@3领取@3事迹类成就称号@0@4【盖世英雄】@0","Tch_sj")
	----------------给成就称号
elseif(answer=="Tch_zh") then   ------综合类称号
	if(LuaQueryAchievementType(0)==0) then -----------未全部完成综合类成就
		LuaSay("只有@3完成所有综合类成就@0才能领取该称号哦")
		LuaSay("继续加油，目标就在前方。")
	elseif(LuaQueryAchievementType(0)==1) then
		if(LuaQueryTask("Tch_zh_a")==99) then    -------------判断是否领取过改称号  领取
			LuaSay("你已经领取过称号@3牛B人士@0了")
			AddMenuItem("@7是否替换为称号【牛B人士】","")
			AddMenuItem("替换为该称号","th_zh")
			AddMenuItem("不替换","bth")
		elseif(LuaQueryTask("Tch_zh_a")==0) then    -------------判断是否领取过改称号  未领取
			LuaSay("恭喜你完成所有@3综合类成就@0，获得称号@3牛B人士@0")
			SetTitleMeg(98)
			LuaSetTask("Tch_zh_a",99)     --------设置判断领取称号参数
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
-------------------------------
elseif(answer=="Tch_rw") then   ------任务类称号
	if(LuaQueryAchievementType(1)==0) then -----------未全部完成任务类成就
		LuaSay("只有@3完成所有任务类成就@0才能领取该称号哦")
		LuaSay("继续加油，目标就在前方。")
	elseif(LuaQueryAchievementType(1)==1) then
		if(LuaQueryTask("Tch_rw_a")==99) then    -------------判断是否领取过改称号  领取
			LuaSay("你已经领取过称号@3任务王@0了")
			AddMenuItem("@7是否替换为称号【任务王】","")
			AddMenuItem("替换为该称号","th_rw")
			AddMenuItem("不替换","bth")
		elseif(LuaQueryTask("Tch_rw_a")==0) then    -------------判断是否领取过改称号  未领取
			LuaSay("恭喜你完成所有@3任务类成就@0，获得称号@3任务王@0")
			SetTitleMeg(99)
			LuaSetTask("Tch_rw_a",99)     --------设置判断领取称号参数
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
-----------------------------
elseif(answer=="Tch_ts") then   ------探索类称号
	if(LuaQueryAchievementType(2)==0) then -----------未全部完成探索类成就
		LuaSay("只有@3完成所有探索类成就@0才能领取该称号哦")
		LuaSay("继续加油，目标就在前方。")
	elseif(LuaQueryAchievementType(2)==1) then
		if(LuaQueryTask("Tch_ts_a")==99) then    -------------判断是否领取过改称号  领取
			LuaSay("你已经领取过称号@3无所不知@0了")
			AddMenuItem("@7是否替换为称号【无所不知】","")
			AddMenuItem("替换为该称号","th_ts")
			AddMenuItem("不替换","bth")
		elseif(LuaQueryTask("Tch_ts_a")==0) then    -------------判断是否领取过改称号  未领取
			LuaSay("恭喜你完成所有@3探索类成就@0，获得称号@3无所不知@0")
			SetTitleMeg(100)
			LuaSetTask("Tch_ts_a",99)     --------设置判断领取称号参数
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
---------------------------
elseif(answer=="Tch_sj") then   ------事迹类称号
	if(LuaQueryAchievementType(3)==0) then -----------未全部完成事迹类成就
		LuaSay("只有@3完成所有事迹类成就@0才能领取该称号哦")
		LuaSay("继续加油，目标就在前方。")
	elseif(LuaQueryAchievementType(3)==1) then
		if(LuaQueryTask("Tch_sj_a")==99) then    -------------判断是否领取过改称号  领取
			LuaSay("你已经领取过称号@3盖世英雄@0了")
			AddMenuItem("@7是否替换为称号【盖世英雄】","")
			AddMenuItem("替换为该称号","th_sj")
			AddMenuItem("不替换","bth")
		elseif(LuaQueryTask("Tch_sj_a")==0) then    -------------判断是否领取过改称号  未领取
			LuaSay("恭喜你完成所有@3事迹类成就@0，获得称号@3盖世英雄@0")
			SetTitleMeg(101)
			LuaSetTask("Tch_sj_a",99)     --------设置判断领取称号参数
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
------------------------------替换成就称号
elseif(answer=="th_zh") then  -----替换牛B人士称号
	if(LuaQueryAchievementType(0)==1) then
		SetTitleMeg(98)
		LuaSay("替换@3称号牛B人士@0成功")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="th_rw") then  -----替换任务王称号
	if(LuaQueryAchievementType(1)==1) then
		SetTitleMeg(99)
		LuaSay("替换@3称号任务王@0成功")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="th_ts") then  -----替换无所不知称号
	if(LuaQueryAchievementType(2)==1) then
		SetTitleMeg(100)
		LuaSay("替换@3称号无所不知@0成功")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="th_sj") then  -----替换盖世英雄称号
	if(LuaQueryAchievementType(3)==1) then
		SetTitleMeg(101)
		LuaSay("替换@3称号盖世英雄@0成功")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="bth") then ----不替换
	LuaSay("@3成就可以随时替换的哦！@0")
---------------------------------密码修改 
elseif(answer=="xgpd")then
	LuaSay("提示：为了防止他人恶意修改你的密码，@2修改一次需要耗费10000铜币@0。你确定修改吗？")
	AddMenuItem("@7修改密码","")
	AddMenuItem("@8确定修改","pdYES")
	AddMenuItem("@8暂不修改","pdNO")
elseif(answer=="pdYES")then
		ChangePassWord()
elseif(answer=="pdNO")then
	LuaSay("恩，考虑清楚再修改！修改了密码请注意记录，以免丢失。")
elseif(answer=="sqyz") then
	LuaChangePasswordBind()
elseif(answer=="yzyz") then
	LuaCheckBindPhoneNum2()

elseif(answer=="liaotian") then
	LuaSay("晋帝:普天之下莫非王土,率土之滨莫非王臣！")






elseif(answer=="exchange")then
	LuaSay("晋帝:我这里开放@7青纱券@0兑换@5蓝绸券@0和@3金帛券@0的服务，请问你是要兑换什么呢")
	AddMenuItem("@7兑换选项","")
	AddMenuItem("10个@7青纱券@0兑换1个@5蓝绸券@0","ex_qsj")
	AddMenuItem("100@7青纱券@0兑换1个@3金帛券@0","ex_jbj")

elseif(answer=="ex_qsj")then
	if(LuaItemCount("o_zhaiquan1y")>=10)then
		DelItem("o_zhaiquan1y",10)
		LuaSay("提示：恭喜您成功兑换了一个@5蓝绸券@0")
		LuaGive("o_zhaiquan2y",1,"Texchange")
		
	else
		LuaSay("提示：你身上的@7青纱券@0不足10个不能兑换一个@5蓝绸券@0")
	end
elseif(answer=="ex_jbj")then
	if(LuaItemCount("o_zhaiquan1y")>=100)then
		DelItem("o_zhaiquan1y",100)
		LuaSay("提示：恭喜您成功兑换了一个@3金帛券@0")
		LuaGive("o_zhaiquan3y",1,"Texchange")
	else
		LuaSay("提示：你身上的@7青纱券@0不足100个不能兑换一个@3金帛券@0")
	end
------------------------------------
--[[【活动】帮会招募赛 LuaQueryRank()
elseif(answer=="part3")then
	LuaSay("如果您是帮会帮主，您的帮会发展到一定程度时，我将会给予你们足够的经费来建设帮派！")
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		if(LuaQueryRank()>0)then
			AddMenuItem("@7资金领取","")
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==0)then
				if(LuaQueryMemberCount()>=10)then
					AddMenuItem("帮派已满10人，给我经费","part3_10")
				else
					AddMenuItem("努力建设10人帮派","part3_10")
				end
			elseif(LuaPublicQuery(""..LuaQuery("partyid").."")==10)then
				if(LuaQueryMemberCount()>=40)then
					AddMenuItem("帮派已满40人，给我经费","part3_40")
				else
					AddMenuItem("努力建设40人帮派","part3_40")
				end
			elseif(LuaPublicQuery(""..LuaQuery("partyid").."")==40)then
				if(LuaQueryMemberCount()>=60)then
					AddMenuItem("帮派已满60人，给我经费","part3_60")
				else
					AddMenuItem("努力建设60人帮派","part3_60")
				end
			elseif(LuaPublicQuery(""..LuaQuery("partyid").."")==60)then
				if(LuaQueryMemberCount()>=80)then
					AddMenuItem("帮派已满80人，给我经费","part3_80")
				else
					AddMenuItem("努力建设80人帮派","part3_80")
				end
			elseif(LuaPublicQuery(""..LuaQuery("partyid").."")==80)then
				if(LuaQueryMemberCount()>=100)then
					AddMenuItem("帮派已满100人，给我经费","part3_100")
				else
					AddMenuItem("努力建设100人帮派","part3_100")
				end
			end
		else
			LuaSay("此活动需要加入帮派由帮主带领大家参加哦,赶快组建自己的帮派统一天下吧@!")
		end
	else
		LuaSay("此活动只能本国人参加，你可以回到你自己的国家参加活动哦@!")
	end
	elseif(answer=="part3_10")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==0)then
				if(LuaQueryMemberCount()>=10)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：帮派银行增加铜币1000000")
						AddMoneyToPartyBank(1000000)  
						LuaGive("o_zhaiquan1y",5,"part3")   -- 青纱
						LuaGive("o_zhaiquan2y",3,"part3") -- 蓝绸
						LuaPublicSet(""..LuaQuery("partyid").."",10)
					else
						LuaSay("提示：请保持至少2格的背包空位，防止背包满造成物品丢失！")
					end
				else
					LuaSay("晋帝：您的帮派人数还不足10人，带好你的人马再来找我领取奖励吧！")
					--LuaSay("@9测试专用：您的帮派现在人数为："..LuaQueryMemberCount().."")
				end
			else
				LuaSay("提示：你的帮派已经领取过10人规模的奖励，不能重复领取了哦！")
			end
		else
			LuaSay("晋帝：叫你们老大和我来谈谈，我可是晋帝啊！")
		end
			--if(LuaPublicQuery(""..LuaQuery("partyid").."")==10)then
				
	elseif(answer=="part3_40")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==10)then
				if(LuaQueryMemberCount()>=40)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：帮派银行增加铜币2000000")
						AddMoneyToPartyBank(2000000) --200W
						LuaGive("o_zhaiquan2y",9,"part3") -- 蓝
						LuaPublicSet(""..LuaQuery("partyid").."",40)
					else
						LuaSay("提示：请保持至少2格的背包空位，防止背包满造成物品丢失！")
					end
				else
					LuaSay("晋帝：您的帮派人数还不足40人，带好你的人马再来找我领取奖励吧！")
					--LuaSay("@9测试专用：您的帮派现在人数为："..LuaQueryMemberCount().."")
				end
			else
				LuaSay("提示：你的帮派已经领取过40人规模的奖励，不能重复领取了哦！")
			end
		else
			LuaSay("晋帝：叫你们老大和我来谈谈，我可是晋帝啊！")
		end
	elseif(answer=="part3_60")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==40)then
				if(LuaQueryMemberCount()>=60)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：帮派银行增加铜币4000000")
						AddMoneyToPartyBank(4000000) --400W
						LuaGive("o_zhaiquan2y",34,"part3") -- 蓝
						LuaPublicSet(""..LuaQuery("partyid").."",60)
					else
						LuaSay("提示：请保持至少2格的背包空位，防止背包满造成物品丢失！")
					end
				else
					LuaSay("晋帝：您的帮派人数还不足60人，带好你的人马再来找我领取奖励吧！")
					--LuaSay("@9测试专用：您的帮派现在人数为："..LuaQueryMemberCount().."")
				end
			else
				LuaSay("提示：你的帮派已经领取过60人规模的奖励，不能重复领取了哦！")
			end
		else
			LuaSay("晋帝：叫你们老大和我来谈谈，我可是晋帝啊！")
		end
	elseif(answer=="part3_80")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==60)then
				if(LuaQueryMemberCount()>=60)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：帮派银行增加铜币6000000")
						AddMoneyToPartyBank(6000000) 
						LuaGive("o_zhaiquan2y",123,"part3") -- 蓝
						LuaPublicSet(""..LuaQuery("partyid").."",80)
					else
						LuaSay("提示：请保持至少2格的背包空位，防止背包满造成物品丢失！")
					end
				else
					LuaSay("晋帝：您的帮派人数还不足80人，带好你的人马再来找我领取奖励吧！")
					--LuaSay("@9测试专用：您的帮派现在人数为："..LuaQueryMemberCount().."")
				end
			else
				LuaSay("提示：你的帮派已经领取过80人规模的奖励，不能重复领取了哦！")
			end
		else
			LuaSay("晋帝：叫你们老大和我来谈谈，我可是晋帝啊！")
		end
	elseif(answer=="part3_100")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==80)then
				if(LuaQueryMemberCount()>=60)then
					LuaSay("提示：帮派银行增加铜币10000000")
					AddMoneyToPartyBank(10000000) 
					LuaPublicSet(""..LuaQuery("partyid").."",100)
				else
					LuaSay("晋帝：您的帮派人数还不足100人，带好你的人马再来找我领取奖励吧！")
					--LuaSay("@9测试专用：您的帮派现在人数为："..LuaQueryMemberCount().."")
				end
			else
				LuaSay("提示：你的帮派已经领取过100人规模的奖励，不能重复领取了哦！")
			end
		else
			LuaSay("晋帝：叫你们老大和我来谈谈，我可是晋帝啊！")
		end]]

end 
LuaSendMenu()
return 1
end 

shitu={}
shitu[1]={"一日为师终身为师"}
shitu[2]={"我会跟师父一直玩统一玩下去"}
shitu[3]={"一直跟师父走下去"}
shitu[4]={"永远不离开师父不离开统一"}
shitu[5]={"永远不背叛师父不背叛统一"}
shitu[6]={"我永远敬爱我的师父"}


hunyin={}
hunyin[1]={"我爱你直到永远"}
hunyin[2]={"我会跟你一直玩统一玩下去"}
hunyin[3]={"一直陪你走下去"}
hunyin[4]={"永远不离开你不离开统一"}
hunyin[5]={"永远不放弃你不放弃统一"}
hunyin[6]={"我爱你到海枯石烂"}
hunyin[7]={"我要和你永远在统一里面"}

bangpai={}
bangpai[1]={"我愿追随帮主直到永远"}
bangpai[2]={"我会跟帮主一直玩统一玩下去"}
bangpai[3]={"一直追随帮主走下去"}
bangpai[4]={"永远不离开帮派不离开统一"}
bangpai[5]={"永远不背叛帮派不背叛统一"}
bangpai[6]={"我爱我帮"}
bangpai[7]={"帮派是我家变强靠大家"}

function SYXT(leixing,yuju,jiangli)
	--[[   SYXT(leixing,yuju,jiangli)
	        leixing 1表示调用师徒模块，2表示婚姻 ，3表示帮派
            yuju    1表示返回语句，如果传入0 2或其他数字，则无任何返回
            jiangli 1表示调用奖励函数，直接执行，无任何返回。如果传入0 2或其他数字，则无任何返回
	]]
	--[[   LuaQueryStr("lassie")配偶
			LuaQueryStr("master")师父
			LuaQueryRank() > 2，默认帮众=1，堂主=2，长老=3，帮主=4；如果为LuaQueryRank()==0，就是没加帮派

			注意：若更新此模块，要更新相关的npc，只要复制黏贴下即可
			目前用到此模块的npc：1、田伍长 tianwuzhan  ---师徒
			                     2、晋清公主jinqing   -婚姻
			                     3、晋帝jindi      ----帮派

	]]
	if(leixing==1)then ----------------------------------------------------------------------------师徒部分
	    if(LuaQueryTask("SYXT_shitu_r")==0) then
			local r=LuaRandom(6) +1
			LuaSetTask("SYXT_shitu_r",r)
		end

		local num=LuaQueryTask("SYXT_shitu_r")
		if(yuju==1) then------ 传入参数为1时返回出语句
		    return shitu[num][1]
		end

		------------------师徒部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_shitu_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_shitu_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_shitu")
			LuaSetTask("SYXT_shitu_over",99)
		end
		--------------------------
	elseif(leixing==2)then ------------------------------------------------------------------------------------婚姻部分
		if(LuaQueryTask("SYXT_hunyin_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_hunyin_r",r)
		end

		local num=LuaQueryTask("SYXT_hunyin_r")
		if(yuju==1) then------ 传入参数为1时返回出语句
		    return hunyin[num][1]
		end

		------------------婚姻部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_hunyin_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_hunyin_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_hunyin")
			LuaSetTask("SYXT_hunyin_over",99)
		end
		--------------------------
	elseif(leixing==3)then --------------------------------------------------------------------帮派部分
			if(LuaQueryTask("SYXT_bangpai_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_bangpai_r",r)
		end

		local num=LuaQueryTask("SYXT_bangpai_r")
		if(yuju==1) then------ 传入参数为1时返回出语句
		    return bangpai[num][1]
		end

		------------------帮派部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_bangpai_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_bangpai_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_bangpai")
			LuaSetTask("SYXT_bangpai_over",99)
		end
		--------------------------
	end
end