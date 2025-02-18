NPCINFO = {
serial="52" ,
base_name="pk" ,
icon=2568,
NpcMove=2568,
name="比武使者" ,
iconaddr=1 ,
butt="10|10|60" ,
lastsay="比武是飞黄腾达的捷径!" , 
LuaType=1,
have_sell_item=1,
}
addBuyitem={
count=6,
{"o_drug_hp1" , 0  , 8 },
{"o_drug_hp2" , 0  , 8 },
{"o_drug_hp3" , 0  , 8 },
{"o_drug_mp1" , 0  , 8 },
{"o_drug_mp2" , 0  , 8 },
{"o_drug_mp3" , 0  , 8 },
}
function do_talk(answer)            
if (answer=="ask") then 
        havetask =0	
	local mapname=MapName()	
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7比武系统","")
	if(mapname=="lu_bfjy") then
		AddTopSayMenuItem("@3买卖","buy1")
	end
	--if(mapname=="lu_bfjy" or mapname=="lu_leitaid") then
	--AddTopSayMenuItem("@3激情擂台","Tleitai2")
	--end
	if(mapname=="lu_leitaid") then
		AddTopSayMenuItem("@3离开擂台","likai2")
		AddTopSayMenuItem("@3清除免战","qcmz2")
	end
	if((LuaQueryTask("Tsnpc_37")==1 or LuaQueryTask("Tsnpc_37")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_37")
		if(LuaQueryTask("Tsnpc_37")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_37")==1 or LuaQueryTask("Tenpc_37")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_37")
		if(LuaQueryTask("Tenpc_37")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T402") == 1)then
		AddTopSayMenuItem("@2报到【剧情】","T402")
		havetask =2
	end  
	if(LuaQueryTask("T395") == 1)then
		AddTopSayMenuItem("@2擂台争霸【剧情】","T395")
		havetask =2
	end  
	if(level>20) then
		
		if(mapname=="lu_bfjy" or mapname=="lu_pk01" or mapname=="lu_pk02") then
		AddTopSayMenuItem("@3比武","T540")
		end
		local week=GetDayOfWeek()
		local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
		local day=idate[3]--每月1号月赛
	end						
	if(mapname=="lu_bfjy" or mapname=="lu_leitai" or mapname=="lu_leitaia" or mapname=="lu_leitaib") then
	AddTopSayMenuItem("@3挑战群雄","Tleitai")
	AddTopSayMenuItem("@7挑战群雄【每日】","tzqx")
	end
	if(mapname=="lu_bfjy") then
	--AddTopSayMenuItem("@3公平决斗","Tthesame") 暂时注销
--	AddTopSayMenuItem("@3参观比武","canguan")
	AddTopSayMenuItem("@3比武积分查看","look")
	end
	if(mapname=="lu_leitaic") then
	AddTopSayMenuItem("@3公平决斗战绩","Tsamepknum")
	end
 	if(mapname=="lu_leitai" or mapname=="lu_leitaia" or mapname=="lu_leitaib" or mapname=="lu_leitaic") then
		AddTopSayMenuItem("@3离开擂台","likai")
		AddTopSayMenuItem("@3清除免战","qcmz")
	end
	if(LuaQueryTask("T302")==5 and LuaQueryTask("T302E")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302E")
		havetask =2
	end 
	if(MapName()=="lu_bfjy")then
		AddTopSayMenuItem("@3PK教学@0","Tpkjx")
	end
	if(MapName()=="lu_bfjy") then
        AddTopSayMenuItem("@2寄存领取@0","Thszk")
	end
	if(mapname=="lu_bfjy") then 		
	AddTopSayMenuItem("聊天","liaotian",""..havetask.."")
	end
	
return 1

elseif(answer=="liaotian") then
	LuaSay("比武使者：所有的恩恩怨怨，都在这比武台上解决吧")

elseif(answer=="zanshiguanbi") then
	LuaSay("比武使者：激情擂台出现了一些问题，技术人员正在寻找问题，给您带来的不便，真的很抱歉，敬请谅解！")
	LuaSay("比武使者：希望在您的帮助下，一起将统一做的更好！")

elseif(answer=="Tpkjx")then
	if(LuaQueryTask("Tpkjx")==0)then
		LuaSay("@1PK谨记：@0@3不要怕死，怕死的人肯定成不了高手。前面死得越多，将来杀得越猛！@0")
		LuaSay("比武使者：知道了PK的要领还不行哦，要成为真正的PK高手还得@2继续点击@0哦！")
		LuaSay("比武使者：30级以前应不应该鼓励PK呢？") 
			AddMenuItem("@7PK教学","")
			AddMenuItem("鼓励","NO_11")
			AddMenuItem("不鼓励","N11_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 1 ) then         
		LuaSay("比武使者：40级前杀比自己低5级的玩家有经验吗？")
			AddMenuItem("@7PK教学","")
			AddMenuItem("有","NO_21")
			AddMenuItem("没有","N21_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 2 ) then         
		LuaSay("比武使者：40级后杀比自己低10级的玩家有经验吗？")
			AddMenuItem("@7PK教学","")
			AddMenuItem("没有","N31_ANSWER")
			AddMenuItem("有","NO_31")		
	elseif(LuaQueryTask("Tpkjx") == 3 ) then         
		LuaSay("比武使者：杀比自己等级高的玩家有经验吗？")
			AddMenuItem("@7PK教学","")
			AddMenuItem("没有","NO_41")
			AddMenuItem("有很多","N41_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 4 ) then         
		LuaSay("比武使者：老杀不死对方你会怎么办呢？")
			AddMenuItem("@7PK教学","")
			AddMenuItem("逃跑","NO_51")
			AddMenuItem("寻人合击","N51_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 5 ) then         
		LuaSay("比武使者：PK时用加速好吗？")
			AddMenuItem("@7PK教学","")
			AddMenuItem("相当不错","NO_61")
			AddMenuItem("不好","N61_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 99)then
		LuaSay("比武使者：有关pk的知识我想你已大致明了，在最后再教你一招吧！")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("比武使者：锁定除了点击左上角的PK键再按数字键之外，然后当箭头选中目标后，按确认锁定。")
		else
			LuaSay("比武使者：锁定除了按星号键再按数字键之外，在人多地地方还可以多按几下#（头顶选中目标小箭头会切换），然后当箭头选中目标后，按确认锁定。")
		end
		LuaSay("比武使者：不要做怕输、输不起的人。不断挑战高手，输得越多你真正得到的pk技巧和经验也就越多！勇士拿起你的武器继续统一征途吧！")
		LuaSetTask("Tpkjx",0)
	
	end
elseif(answer=="NO_11") then                                           
	LuaSay("比武使者：你选错啦！30级以前不鼓励pk，你的等级、装备、技能肯定都还太低，30级的两个人pk就是纯拼药，其实这是统一保护新手的一个手段，血多杀伤力弱；等高级后，完全不给敌人连续吃药的机会。")
	LuaSetTask("Tpkjx",1)
	DoTalk("Tpkjx")
elseif(answer=="N11_ANSWER") then
	if(LuaQueryTask("Tpkjx")<1) then
		LuaSetTask("Tpkjx",1)
		LuaSay("比武使者：恩，你选对了！30级以前不鼓励pk，你的等级、装备、技能肯定都还太低，30级的两个人pk就是纯拼药，其实这是统一保护新手的一个手段，血多杀伤力弱；等高级后，完全不给敌人连续吃药的机会。")
		DoTalk("Tpkjx")
        end	
		
elseif(answer=="NO_21") then                                           
	LuaSay("比武使者：你错啦！记住40级前杀比自己低5级的玩家是没有经验的哦！")
	LuaSetTask("Tpkjx",2)
	DoTalk("Tpkjx")
elseif(answer=="N21_ANSWER") then
	if(LuaQueryTask("Tpkjx")<2) then
		LuaSetTask("Tpkjx",2)
		LuaSay("比武使者：恩，你选对了，40级前杀比自己低5级的玩家是没有经验的。")
		DoTalk("Tpkjx")
        end

elseif(answer=="NO_31") then                                           
	LuaSay("比武使者：你错啦！记住40级后杀比自己低10级的玩家是没有经验的哦！")
	LuaSetTask("Tpkjx",3)
	DoTalk("Tpkjx")
elseif(answer=="N31_ANSWER") then
	if(LuaQueryTask("Tpkjx")<3) then
		LuaSetTask("Tpkjx",3)
		LuaSay("比武使者：恩，你选对了，40级后杀比自己低10级的玩家是没有经验的。")
		DoTalk("Tpkjx")
        end

elseif(answer=="NO_41") then                                           
	LuaSay("比武使者：你错了，@1杀比自己等级高的玩家是有很多经验的哦！@0")
	LuaSetTask("Tpkjx",4)
	DoTalk("Tpkjx")
elseif(answer=="N41_ANSWER") then
	if(LuaQueryTask("Tpkjx")<4) then
		LuaSetTask("Tpkjx",4)
		LuaSay("比武使者：你选对了，@1杀比自己等级高的玩家是有很多经验的。@0")
		DoTalk("Tpkjx")
        end

elseif(answer=="NO_51") then                                           
	LuaSay("比武使者：逃跑有什么用呢？加入帮派，团结起来！一个人杀不死他，两个人杀不死他，你多叫几个朋友，就不信杀不死他！")
	LuaSetTask("Tpkjx",5)
	DoTalk("Tpkjx")
elseif(answer=="N51_ANSWER") then
	if(LuaQueryTask("Tpkjx")<5) then
		LuaSetTask("Tpkjx",5)
		LuaSay("比武使者：你这样做就对啦！团结起来！一个人杀不死他，两个人杀不死他，你多叫几个朋友，就不信杀不死他！")
		DoTalk("Tpkjx")
        end

elseif(answer=="NO_61") then                                           
	LuaSay("比武使者：告诉你吧，用加速的人pk随时会被雷劈，不能移动，还会@1疯狂大出血@0，不信你也用用看。")
	LuaSetTask("Tpkjx",99)
	DoTalk("Tpkjx")
elseif(answer=="N61_ANSWER") then
	if(LuaQueryTask("Tpkjx")<6) then
		LuaSetTask("Tpkjx",99)
		LuaSay("比武使者：你选对了，不要怕加速，用加速的人pk随时会被雷劈，不能移动，还@1疯狂大出血@0呢！")
		DoTalk("Tpkjx")
        end


elseif(answer=="Thszk") then
	if( LuaQueryTask("Tjzcount")>0 or LuaQueryTask("Tyzcount")>0 or LuaQueryTask("Ttzcount")>0 or LuaQueryTask("Tris")>0 or LuaQueryTask("Tzhous")>0 or LuaQueryTask("Tyues")>0 )then
		LuaSay("这是帮你保管的物品！")
		if(LuaQueryTask("Tjzcount")>0)then
			local a = LuaQueryTask("Tjzcount")
			LuaGive("o_mission212",LuaQueryTask("Tjzcount"))
			LuaLogRecord("寄存领取","o_mission212","领取","青砖",a)
			LuaSetTask("Tjzcount",0)
		end
		if(LuaQueryTask("Tyzcount")>0)then
			local a = LuaQueryTask("Tyzcount")
			LuaGive("o_mission213",LuaQueryTask("Tyzcount"))
			LuaLogRecord("寄存领取","o_mission213","领取","银装",a)
			LuaSetTask("Tyzcount",0)
		end
		if(LuaQueryTask("Ttzcount")>0)then
			local a = LuaQueryTask("Ttzcount")
			LuaGive("o_mission214",LuaQueryTask("Ttzcount"))
			LuaLogRecord("寄存领取","o_mission214","领取","金砖",a)
			LuaSetTask("Ttzcount",0)
		end
		if(LuaQueryTask("Tszcount")>0)then
			local a = LuaQueryTask("Tszcount")
			LuaGive("o_mission514",LuaQueryTask("Tszcount"))
			LuaLogRecord("寄存领取","o_mission514","领取","金胚",a)
			LuaSetTask("Tszcount",0)
		end
		if(LuaQueryTask("Tris")>0)then
			local a = LuaQueryTask("Tris")
			LuaGive("o_mission119",LuaQueryTask("Tris"))
			LuaLogRecord("寄存领取","o_mission119","领取","日证",a)
			LuaDelTask("Tris",0)
		end
		if(LuaQueryTask("Tzhous")>0)then
			LuaGive("o_mission120",LuaQueryTask("Tzhous"))
			LuaLogRecord("寄存领取","o_mission120","领取","周证",a)
			LuaDelTask("Tzhous",0)
		end
		if(LuaQueryTask("Tyues")>0)then
			LuaGive("o_mission121",LuaQueryTask("Tyues"))
			LuaLogRecord("寄存领取","o_mission121","领取","月证",a)
			LuaDelTask("Tyues",0)
		end
		UpdateMenu()

--o_mission212	青砖
--o_mission213	银砖
--o_mission214	金砖
--o_mission514	金砖土坯

		
	else
		LuaSay("你暂无任何东西在我这保管，擂台PK是不能携带金砖、金砖土胚、银砖、青砖、日赛、周赛、月赛等挑战令等砖进入，每次进入擂台物我都会自动帮你保管，出来后在找我要回便是了！")
	end
    
elseif(answer=="tzqx") then     -----挑战群雄【每日】
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(level>20) then
    	if(LuaQueryStrTask("Ttzqx_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Ttzqx",0)
		LuaSetTask("Ttzqx_Taskday",GetCurrentDay())
	end

		if(LuaQueryTask("Ttzqx") == 0) then
			LuaSay("比武使者：此任务的奖励与你的挑战群雄的胜利次数有关，胜利次数越多，奖励越多！好好努力吧！")
			LuaSay("比武使者：新手往往杀不了人，想要改变吗？除了等级提高之外，还可试着把纯伤害的技能提高等级，并且给兵器镶嵌和强化。")
			LuaSay("比武使者：只有伤害高了，技能配合熟练，才能体验秒人的快感！@!")
			LuaSay("@5温馨提示：@0当获后@1一定要再次点击挑战群雄领取奖励增加自己的比武积分哦@0，积分越高，奖励就越多哦@!")
			LuaSetTask("Ttzqx",1)
			UpdateMenu()
			elseif(LuaQueryTask("Ttzqx") == 1) then
				local tzqx_exp=20000+level^2*25+level*25
				if(LuaQueryTask("Tleitaitime")>0 and LuaQueryTask("Ttzqx_flag")==0)then --------至少胜利一场擂台才能领奖
					LuaSay("比武使者：你已经获得了今天的@3第"..LuaQueryTask("Tleitaitime").."场胜利！")
					LuaSay("比武使者：你目前可以获得@3"..tzqx_exp.."点经验值！")
					AddMenuItem("@7操作列表","")
					AddMenuItem("@3快给我奖励","tzqx_yes1")
				else
					LuaSay("比武使者：你今天连1场都没赢过，无法获得奖励！")
				end
			elseif(LuaQueryTask("Ttzqx") == 2) then
				local tzqx_exp=40000+level^2*50+level*50
				if(LuaQueryTask("Tleitaitime")>=3)then --------第二次
					LuaSay("比武使者：你已经获得了今天的@3第"..LuaQueryTask("Tleitaitime").."场胜利！")
					LuaSay("比武使者：你目前可以获得@3"..tzqx_exp.."点经验值！")
					AddMenuItem("@7操作列表","")
					AddMenuItem("@3快给我奖励","tzqx_yes2")
				else
				LuaSay("比武使者：你今天没赢过3场，无法获得本次奖励！")
				end
		elseif(LuaQueryTask("Ttzqx") == 3) then
				local tzqx_exp=60000+level^2*75+level*75
				if(LuaQueryTask("Tleitaitime")>=5)then --------第三次
					LuaSay("比武使者：你已经获得了今天的@3第"..LuaQueryTask("Tleitaitime").."场胜利！")
					LuaSay("比武使者：你目前可以获得@3"..tzqx_exp.."点经验值！")
					AddMenuItem("@7操作列表","")
					AddMenuItem("@3快给我奖励","tzqx_yes3")
				else
					LuaSay("比武使者：你今天没赢过5场，无法获得本次奖励！")
				end
		elseif(LuaQueryTask("Ttzqx")==99) then
			LuaSay("比武使者：你今天已经完成了任务，明天再来找我吧！")
		end
	else
		LuaSay("比武使者：你等级太低，此任务要20级以上才能接！")
	end

elseif(answer=="tzqx_yes1") then
    if(LuaQueryTask("Tleitaitime")>0 and LuaQueryTask("Ttzqx_flag")==0)then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	local tzqx_exp=20000+level^2*25+level*25
	LuaAddJx("combat_exp",tzqx_exp,"Ttzqx")
	LuaSay("比武使者：如果你能获得3次以上的擂台胜利，你可以在我这里领取更高的奖励！")
	LuaSetTask("Ttzqx",2)
	LuaSetTask("Ttzqx_flag",99)
	UpdateMenu()
    else
		LuaSay("比武使者：你今天连1场都没赢过，无法获得奖励！")
	end
elseif(answer=="tzqx_yes2") then
    if(LuaQueryTask("Tleitaitime")>=3)then --------第二次
	local level=LuaQuery("level")
	local tzqx_exp=40000+level^2*50+level*50
	LuaAddJx("combat_exp",tzqx_exp,"Ttzqx")
	LuaSay("比武使者：如果你能获得5次以上的擂台胜利，你可以在我这里领取更高的奖励！")
	LuaSetTask("Ttzqx",3)
	UpdateMenu()
    else
        LuaSay("比武使者：你今天没赢过3场，无法获得本次奖励！")
	end
elseif(answer=="tzqx_yes3") then
    if(LuaQueryTask("Tleitaitime")>=5)then --------第三次
	local level=LuaQuery("level")
	local tzqx_exp=60000+level^2*75+level*75
	LuaAddJx("combat_exp",tzqx_exp,"Ttzqx")
	LuaSay("比武使者：你今天的挑战群雄任务已经完成！")
	LuaSetTask("Ttzqx",99)
	UpdateMenu()
    else
        LuaSay("比武使者：你今天没赢过5场，无法获得本次奖励！")
	end
elseif(answer=="buy1") then
	if(LuaQuery("level")<10) then
		DoBuy()   
	else
	  	if(LuaQueryTask("lendmoney")~=0 and floor(GetCurrentTime()/86400)-LuaQueryTask("lend_day")-floor(LuaQueryTask("credit")/10)*7-7>0)then
			LuaSay("比武使者：@1由于你的贷款已过期限未还，商界对你的信誉产生了不满，暂时禁止对你进行买卖。")
			LuaSay("比武使者：@1等你去还了钱庄的贷款再来买卖吧，不及时还贷会禁止更多功能的。")
		else
			DoBuy()
		end
	end 

elseif(answer=="T345") then
	if(LuaQueryTask("T345")==2 and LuaItemStatusNormalCount("o_mission165")>=1)then
		LuaSay("比武使者：恩，不错！年轻人就应该接受来自各方的挑战！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T345jl")
	elseif(LuaQueryTask("T345")==2 and LuaItemStatusNormalCount("o_mission165")==0)then
		LuaSay("比武使者：你必须@2设擂之后@0，身上拥有@2擂台挑战令@0才能领取奖励哦。@!")
	end
elseif(answer=="T345jl")then
	if(LuaQueryTask("T345")==2 and LuaItemStatusNormalCount("o_mission165")>=1)then	 
		  DelLog("345")
		  LuaSetTask("T345",99)
		  LuaAddJx("combat_exp",60000,"T345")
		  UpdateMenu()
	end
	  
elseif(answer=="qcmz") then
	LuaSay("提示：自动给你检索了下是否有免战等造成无法pk的状态！有的话自动帮你清除掉了！")
	if(LuaCheckBuff("520")==1)then
		LuaDeleteBuff("520")
	end
	if(LuaCheckBuff("477")==1)then
		LuaDeleteBuff("477")
	end
	if(LuaCheckBuff("518")==1)then
		LuaDeleteBuff("518")
	end


elseif(answer=="likai") then        ---------获胜者离开 
	local mapname=MapName()
	if(LuaItemCount("o_mission165")==0 or LuaQueryTask("Tflag_pk")==99 or (mapname=="lu_leitai" and LuaQueryPersonInMap("lu_leitai")<=1) or (mapname=="lu_leitaia" and LuaQueryPersonInMap("lu_leitaia")<=1) or (mapname=="lu_leitaib" and LuaQueryPersonInMap("lu_leitaib")<=1) or mapname=="lu_leitaic" ) then
			---身上无证（即输掉那人）分出胜负，或者地图只有一人时，可以不出场地费直接离开                                                                                                                                                                                        --公平比武免费离开
		local a=LuaItemCount("o_mission165")
    		if(a>0) then
   		 	DelItem("o_mission165",a)
  		end
    		ChangeMap("lu_bfjy",580,340)
	else   
   		LuaSay("提示：@3获胜方领取奖励@0后可自由离开！如果双方未分出胜负，先离开的的人视为自动弃权，要付@33000@0铜币场地费才行！获胜方未领奖就离开也视为自动弃权")
		if(LuaItemCount("coin")<3000) then
		LuaSay("提示：你身上的铜币不足@3交场地费@0！无法离开本地图，背水一战吧！")
		end
		AddMenuItem("@7选择列表","")
		AddMenuItem("@3继续比武","goon_no")
		if(LuaItemCount("coin")>=3000) then
			AddMenuItem("@3我要撤退","goon_yes")
		end
		UpdateMenu()
	end
    

elseif(answer=="goon_no") then 
	LuaSay("提示：@3获胜方领取奖励@0后可自由离开！不需要付@33000@0铜币场地费！")
	UpdateMenu()
elseif(answer=="goon_yes") then 
	LuaGive("coin",-3000,"Tpk_chetui")
	local a=LuaItemCount("o_mission165")
	if(a>0) then
		DelItem("o_mission165",a)
	end
	ChangeMap("lu_bfjy",580,340)

elseif(answer=="Tthesame") then   
	LuaSay("提示：公平决斗的双方会被设置成为@3相同等级、相同装备、相同职业@0，保证绝对公平！")
	AddMenuItem("@7公平比武","")
	AddMenuItem("@3参战","insamepk")
	--技高一筹的xxx在公平决斗取得了胜利，让人心服口服 
	
elseif(answer=="insamepk") then 
	if(LuaQueryPersonInMap("lu_leitaic")<2) then
    		if(LuaQueryStr("MobieType") == "S62")then
    			LuaEnterDream("lu_leitaic",175,256,2)
		elseif(LuaQueryStr("MobieType") == "S20")then
			LuaEnterDream("lu_leitaic",175,256,6)
		else
			LuaEnterDream("lu_leitaic",175,256,5)
		end	
	else
		LuaSay("比武使者：公平比武场已经满人了！")
   	end
   	
elseif(answer=="Tsamepknum") then
	if(LuaItemCount("o_mission165")>1) then
		DelItem("o_mission165",1)
		LuaNotice("技高一筹的@3"..LuaQueryStr("name").."@0在@3公平决斗@0中取得胜利，让人心服口服")
	else
  		LuaSay("比武使者：你没有取得公平比武的胜利")
	end
elseif(answer=="canguan") then    
	AddMenuItem("@7类型选择","")
	AddMenuItem("@3观战20~39级","20level")
	AddMenuItem("@3观战40~59级","40level")
	AddMenuItem("@3观战60级以上","60level")
--	AddMenuItem("@3观战公平决斗","samelevel")
elseif(answer=="20level") then 
	if(LuaQueryPersonInMap("lu_leitai")>=2) then
		ChangeMap("lu_leitai",121,96)
	else
		LuaSay("比武使者：只有等参赛的2位选手入场后，才能参观比武")
	end
    
elseif(answer=="40level") then 
	if(LuaQueryPersonInMap("lu_leitaia")>=2) then
		ChangeMap("lu_leitaia",121,96)
	else
		LuaSay("比武使者：只有等参赛的2位选手入场后，才能参观比武")
	end
    
elseif(answer=="60level") then 
	if(LuaQueryPersonInMap("lu_leitaib")>=2) then
	ChangeMap("lu_leitaib",121,96)
	else
	LuaSay("比武使者：只有等参赛的2位选手入场后，才能参观比武")
	end
    
elseif(answer=="samelevel") then 
	if(LuaQueryPersonInMap("lu_leitaic")>=2) then
   		LuaEnterDream("lu_leitaic",121,96,1)
	else
		LuaSay("比武使者：只有等参赛的2位选手入场后，才能参观比武")
   	end
    


elseif(answer=="Tleitai") then    ---发布擂台挑战：分级别段20~
	local mapname=MapName()
	local level=LuaQuery("level")
	if(level>=20) then
		LuaSay("比武使者：我朝子民好武者众，江湖之中藏龙卧虎。阁下武艺高强，独孤求败？湖中之船正大摆擂台，静待诸位英雄一展身手")
		LuaSay("提示：应战者进入擂台后，有30秒的保护时间，@3在30秒内双方无法PK@0，30秒后自动解除，可以开战！")
		AddMenuItem("@7单挑擂台","")
		AddMenuItem("@5擂台规则","ltgz")
		if(mapname=="lu_bfjy") then
			AddMenuItem("@3设擂","shelei")
			AddMenuItem("@3应战","yingzhan")
		end
		AddMenuItem("@3获胜奖励","hsjl")
		AddMenuItem("@5擂台战绩","ltzj")
	else
		LuaSay("比武使者：你现在的修为太低，等级超过20级再来吧")
	end
elseif(answer=="ltgz") then
	LuaSay("@5时间@0：每一局20分钟为限，由摆设擂台开始计时，超过20分钟，则为平局")
	LuaSay("@5等级@0：擂台分成@320到39级@0，@340到59级@0，@360级以上@0，这3个区间，玩家将被传入对应级别的擂台")
	LuaSay("@5擂台令获得@0：每一个进入擂台挑战的玩家都将获得擂台令，死亡后，将会掉落擂台令，由获胜者获得")
        LuaSay("@5如果你身上有金砖这类砖和日赛周赛月赛这类资格证，那么进入后我会自动帮你保管！记得出来时候再到我这里领回即可！")
--	LuaSay("@5参观@0：比武双方均进入擂台后，其余玩家可以进入观战")
elseif(answer=="ltzj") then
	LuaSay("比武使者：你在擂台战绩为@3"..LuaQueryTask("Tleitaiwin").."胜")


elseif(answer=="shelei") then
	if(LuaQuery("ST")~=3 and LuaQuery("ST")~=4)then
		local level=LuaQuery("level")
		local a = 0
		local aa =0
		local bb = 0
		if(level<40) then
			a=LuaQueryPersonInMap("lu_leitai")
			aa=20
			bb=40
		elseif(level<60) then
			a=LuaQueryPersonInMap("lu_leitaia")
			aa=40
			bb=60
		else
			a=LuaQueryPersonInMap("lu_leitaib")
			aa=60
			bb=80
		end
	    
		if(a==0) then			--检测擂台地图人数
			local country1=GeGJMC()			--GeGJMC()：获取当前线的国家名
			local country2=LuaQueryStr("country")  
			if(country1==country2) then		
				LuaNotice("@3"..LuaQueryStr("name").."@0：今在湖中摆下擂台，恭候天下英雄，只求一败！"..aa.."级至"..bb.."级的英雄可前去北府军营找比武使者挑战。")
			else     
				if(country2=="无") then
					LuaNotice("@5自由国度@0的@3"..LuaQueryStr("name").."@0已经挑衅上门了，我@3"..country1.."@0男儿速去擂台击杀之！"..aa.."级至"..bb.."级的英雄可前去北府军营找比武使者挑战。")
				elseif(country1=="无") then
					LuaNotice("@5"..country2.."@0的@3"..LuaQueryStr("name").."@0已经挑衅上门了，欺负我自由国度无人乎？"..aa.."级至"..bb.."级的英雄可前去北府军营找比武使者挑战。")
				else
					LuaNotice("@5"..country2.."@0的@3"..LuaQueryStr("name").."@0已经挑衅上门了，我@3"..country1.."@0"..aa.."级至"..bb.."级的男儿速去擂台击杀之！")
				end
			end
			
			local b=LuaItemCount("o_mission165")
			if(b>1) then
				DelItem("o_mission165",b-1)
			elseif(b==0) then
				LuaGive("o_mission165",1)
			end
			local c=LuaItemCount("o_mission119")
			if(c>0) then
				LuaSetTask("Tris",c)
				DelItem("o_mission119",c)
			end
			local d=LuaItemCount("o_mission120")
			if(d>0) then
				LuaSetTask("Tzhous",d)
				DelItem("o_mission120",d)
			end
			local e=LuaItemCount("o_mission121")
			if(e>0) then
				LuaSetTask("Tyues",e)
				DelItem("o_mission121",e)
			end
			if(level<40) then
				ChangeMap("lu_leitai",175,256)
			elseif(level<60) then
				ChangeMap("lu_leitaia",175,256)
			else
				ChangeMap("lu_leitaib",175,256)
			end
	      
		elseif(a==1) then
			LuaSay("提示：现在已经有了擂主，你现在可以选择挑战！")
		elseif(a>=2) then
			LuaSay("提示：擂台现在正有2人比武切磋了！")
		end
	else
		LuaSay("提示：你正处于飞行状态，不能进入擂台，请先解除飞行状态")
	end



elseif(answer=="yingzhan") then		--如何应战
	if(LuaQuery("ST")~=3 and LuaQuery("ST")~=4)then
		local level=LuaQuery("level")
		local a = 0
		if(level<40) then
			a=LuaQueryPersonInMap("lu_leitai")
		elseif(level<60) then
			a=LuaQueryPersonInMap("lu_leitaia")
		else
			a=LuaQueryPersonInMap("lu_leitaib")
		end
		if(a==1) then 
			local c=LuaItemCount("o_mission119")
			if(c>0) then
				LuaSetTask("Tris",c)
				DelItem("o_mission119",c)
			end
			local d=LuaItemCount("o_mission120")
			if(d>0) then
				LuaSetTask("Tzhous",d)
				DelItem("o_mission120",d)
			end
			local e=LuaItemCount("o_mission121")
			if(e>0) then
				LuaSetTask("Tyues",e)
				DelItem("o_mission121",e)
			end
			local chngRet = 0
			if(level<40) then
				LuaGiveBuff("529",1)
				chngRet = ChangeMap("lu_leitai",175,256)
			elseif(level<60) then 
				LuaGiveBuff("529",1)
				chngRet = ChangeMap("lu_leitaia",175,256)
			else
				LuaGiveBuff("529",1)
				chngRet = ChangeMap("lu_leitaib",175,256)
			end
			if(chngRet==1)then
				local b=LuaItemCount("o_mission165")
				if(b>1) then
					DelItem("o_mission165",b-1)
				elseif(b==0) then
					LuaGive("o_mission165",1)
				end
				if(LuaQueryTask("Thx2")==7) then
					if(LuaQueryTask("Thx2G")==0) then
					       LuaSay("提示：你已经完成环形任务第六环，快去回复拓跋圭吧。@!")
					       LuaSetTask("Thx2G",99)
					end
				end
			end
			
	      elseif(a==0) then 
			LuaSay("比武使者：现在还没有人设擂台，无人可以挑战")
	      elseif(a>=2) then 
			LuaSay("比武使者：擂台中正有人比武了！")
	      end
	else
		LuaSay("提示：你正处于飞行状态，不能进入擂台，请先解除飞行状态")
	end
    
elseif(answer=="hsjl") then 
	local level=LuaQuery("level")
	local mapname=MapName()
	if(MapName()=="lu_leitai" or MapName()=="lu_leitaia" or MapName()=="lu_leitaib") then
		if(GetCurrentDay()~=LuaQueryStrTask("Tleitaiday")) then   ---每天获胜10场后，不再增加比武积分，但是可以继续比武
			LuaDelTask("Tleitaitime")
			LuaSetTask("Ttzqx_flag",0)  --挑战群雄【每日】的重置
		end	
		local c=LuaItemCount("o_mission165")
		if(c>=2) then
			LuaAddTask("Tleitaiwin",1)
			LuaAddTask("Tleitaitime",1)

			DelItem("o_mission165",c)
			LuaSetTask("Tflag_pk",99)
			 ---------------  成就判断
			LuaAddAchievementSchedule("LeitPK_num",1)------检测参数 +1
			if(LuaQueryTask("Tleitaitime")<10) then
				LuaAddTask("pknum",1)  --获得比武积分1
				LuaSay("提示：比武积分增加1")
				LuaGive("coin",500,"Tleitai")	--如何防止和固定的人比武刷钱
				if(LuaQueryTempStr("online")~=LuaQueryStr("line") and LuaQueryTask("cuontry812")==1)then
					LuaSay("提示：第八环完成")
					LuaSetTask("cuontry812",2)
					UpdateMenu()
				end  
				LuaNotice("@3"..LuaQueryStr("name").."@0在擂台中取得了他今天的@3第"..LuaQueryTask("Tleitaitime").."场胜利")
				LuaSetTask("Tleitaiday",GetCurrentDay())		                           
			else
				if(LuaQueryTempStr("online")~=LuaQueryStr("line") and LuaQueryTask("cuontry812")==1)then
					LuaSay("提示：第八环完成")
					LuaSetTask("cuontry812",2)
					UpdateMenu()
				end  
				LuaSay("提示：由于你今天获胜场次已经超过10场，不再有奖励，不过获胜场次将会累积")
				LuaNotice("@3"..LuaQueryStr("name").."@0在擂台中取得了他今天的@3第"..LuaQueryTask("Tleitaitime").."场胜利")
			end
		else
			LuaSay("比武使者：必须获胜后，并取得2个擂台令，方能领取奖励")
		end
	else
		LuaSay("比武使者：只能在擂台地图里领取奖励")
	end

elseif(answer=="look") then       
	LuaSay("比武使者：你现在的比武积分为@3"..LuaQueryTask("pknum").."@0，以后可以换取神秘奖品哦@!")
       
elseif(answer=="T302E") then
	if(LuaQueryTask("T302E")==0) then
		LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件")
		LuaSay("比武使者：不会又有人想找我单挑吧@!，这人啊，出名后可真是麻烦@!")
		DelItem("o_mission076",1) 
		LuaSetTask("T302E",99)
		UpdateMenu()
	end

elseif(answer=="T402")then
	if(LuaQueryTask("T402")==1)then
		LuaSay("比武使者：看你骨格精奇，是块练武的好材料，多加修炼，假以时日必成大器！")
		LuaSay("比武使者：你我已相识，快到@3驿站小吏@0那里去报到吧！")
		LuaSetTask("T402",2)
		AddLog("报到【剧情】",402)
		UpdateTopSay("到驿站小吏那里去报到")
		UpdateMenu()
		UpdateNPCMenu("yizhanxiaoli")
	end
       
elseif(answer=="T540") then	
	local level=LuaQuery("level")
	local a=LuaItemCount("o_mission119")
	local b=LuaItemCount("o_mission120")
	local c=LuaItemCount("o_mission121")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	if(GetCurrentDay()~=LuaQueryStrTask("T540day") and LuaQueryTask("T540") >0) then
		LuaDelTask("T540")
	end
	local online=LuaQueryTempStr("online")
	if(hour<21) then
		LuaSay("@3提示：比武时间为21：00~22：00")
	end 
		AddMenuItem("@7比武","")
		AddMenuItem("@3比武规则","dzinfo")
	if(LuaQueryTask("T540") == 0) then 
		if(hour == 21) then
			if(day == 1) then 
	       			AddMenuItem("@3每月月赛","yuesai")
	       		elseif(week == 0) then
		   		AddMenuItem("@3每周周赛","zhousai")
		   	else
		   		AddMenuItem("@3每日比武","risai")
		   	end
		end
	elseif(LuaQueryTask("T540") == 88) then
		if(day == 1) then 
			AddMenuItem("@3月赛奖励","yuesaijl")
		elseif(week == 0) then 
			AddMenuItem("@3周赛奖励","zhousaijl")
	        else
			AddMenuItem("@3日赛奖励","risaijl")
	        end	 
	end	
elseif(answer=="dzinfo") then
       		LuaSay("@7参赛日程：日赛[周一至周六],周赛[周日],月赛[每月1号]")
       		LuaSay("@7参赛时间：每日21：00-22：00举行，21：20以后才能在擂台找我领取奖励，出了擂台可不能领取奖励了哦.")
       		LuaSay("@7等级分段：比赛分为2个阶段，40级以下为1个阶段，40级以上为另外一个阶段")
       		LuaSay("@7获胜规则：每人进入时都会获得两个资格证，杀死对方就能获得更多，只要获得6个以上，即可成为获胜者！")
      	 	LuaSay("@7获胜者铜币奖励：日赛2万；周赛8万；月赛40万；经验最高达到500万！更有侯爷国公等拉风称号！")
      	 		
	
elseif(answer=="risai") then
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	if(day == 1) then
		LuaSay("比武使者：对不起，今日是月赛时间，请参加月赛！")
	elseif(week == 0) then
		LuaSay("比武使者：对不起，今日是周赛时间，请参加周赛！")
	else
		LuaSay("规则：每个参赛者有两个@2日赛资格证@0，胜者将得到败者的两个资格证")
		LuaSay("规则：收集6个日赛资格证，可获得声望、经验和金钱嘉奖！并可进入周赛")
		AddMenuItem("@7是否参加比赛","")
		AddMenuItem("参加日赛","RYES","")
		AddMenuItem("不参加了","NO","")
	end

elseif(answer=="zhousai") then
local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	if(day == 1) then
	LuaSay("比武使者：对不起，今日是月赛时间，请参加月赛！")
	elseif(week==0) then
	LuaSay("规则：每个参赛者有两个@2周赛资格证@0，杀死一人，得到一个，被杀，则掉落一个")
	LuaSay("规则：收集6个周赛资格证，可获得高额的声望、经验和金钱嘉奖！并可进入月赛")
	AddMenuItem("@7是否参加比赛","")
	AddMenuItem("参加周赛","ZYES","")
	AddMenuItem("不参加了","NO","")
	else
	LuaSay("比武使者：对不起，今日是日赛时间，请参加日赛！")
	end

    
elseif(answer=="yuesai") then
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	if(day == 1) then
	LuaSay("规则：每个参赛者有两个@2月赛资格证@0，杀死一人，得到一个，被杀，则掉落一个")
	LuaSay("规则：收集6个月赛资格证，可获得海量的声望、经验和金钱嘉奖！")
	AddMenuItem("@7是否参加比赛","")
	AddMenuItem("参加月赛","YYES","")
	AddMenuItem("不参加了","NO","")
	else
	LuaSay("比武使者：对不起，今日不是月赛的时间")
	end
	
elseif(answer=="RYES") then                 --日赛报名 
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	if(week > 0 and LuaQueryTask("T540") == 0 and hour == 21) then
		LuaSetTask("T540day",GetCurrentDay())
		local a=LuaItemCount("o_mission119")
		if(a == 0) then
		LuaGive("o_mission119",2)
		elseif(a == 1) then 
		LuaGive("o_mission119",1)
		elseif(a >2) then 
		DelItem("o_mission119",(a-2))        
		end
		LuaSetTask("T540",88)
		LuaGiveBuff("529",1)
		ChangeMap("lu_pk0"..ld.."",270,140)
		LuaSay("比武使者：祝你日赛马到功成！收集到6个相同参赛资格证即可成为强者进入更高级擂台赛！")
	end
	if(hour < 21) then
	LuaSay("比武使者：对不起，时辰尚早，请晚上9：00来报道吧！")
	elseif(hour > 21) then
	LuaSay("比武使者：对不起，比赛时辰已过，请明天晚上9：00来报道吧！")
	end

	
elseif(answer=="ZYES") then                  --周赛报名 
	local level=LuaQuery("level")
	local ld
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	if(week == 0 and LuaQueryTask("T540") == 0 and hour == 21) then
		LuaSetTask("T540day",GetCurrentDay())
		local b=LuaItemCount("o_mission120")
		if(b == 1) then
			LuaGive("o_mission120",1) 
			LuaSetTask("T540",88)
			ChangeMap("lu_pk0"..ld.."",270,140)
		elseif(b==2) then    
			LuaSetTask("T540",88)
			ChangeMap("lu_pk0"..ld.."",270,140)
		elseif(b>2) then 
			DelItem("o_mission119",(b-2))   
			LuaSetTask("T540",88)
			LuaGiveBuff("529",1)
			ChangeMap("lu_pk0"..ld.."",270,140)
		elseif(b ==0) then
			LuaSay("比武使者：对不起，你没有周赛资格证，不能参加比赛。请通过日赛的胜利获取吧！")
		end
	end
	if(hour < 21) then
	LuaSay("比武使者：对不起，时辰尚早，请晚上9：00来报道吧！")
	elseif(hour > 21) then
	LuaSay("比武使者：对不起，比赛时辰已过，请明天晚上9：00来报道吧！")
	end

elseif(answer=="YYES") then                 --月赛报名 
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
      c=LuaItemCount("o_mission121")
	if(day == 1 and LuaQueryTask("T540") == 0) then
		if(hour == 21) then
			LuaSetTask("T540day",GetCurrentDay())
			if(c == 1) then
				LuaGive("o_mission121",1)
				LuaSetTask("T540",88)
				ChangeMap("lu_pk0"..ld.."",270,140)
			elseif(c==2) then
				LuaSetTask("T540",88)
				ChangeMap("lu_pk0"..ld.."",270,140)
			elseif(c>2) then
				DelItem("o_mission119",(c-2))   
				LuaSetTask("T540",88)
				LuaGiveBuff("529",1)
				ChangeMap("lu_pk0"..ld.."",270,140)
			else
				LuaSay("比武使者：对不起，你没有月赛资格证，不能参加比赛。请通过日赛、周赛的胜利获取吧！")
			end
		end
	end
	if(hour < 21) then
	LuaSay("比武使者：对不起，时辰尚早，请晚上9：00来报道吧！")
	elseif(hour >21) then
	LuaSay("比武使者：对不起，比赛时辰已过，请明天晚上9点来报道吧！")
	end

	
elseif(answer=="qqbs") then        --比赛弃权 
	local a=LuaItemCount("o_mission119")
	local b=LuaItemCount("o_mission120")
	local c=LuaItemCount("o_mission121")
	LuaSay("比武使者：逃避者！乃懦夫，取消一切参赛资格证！")
	if(a > 0) then
	DelItem("o_mission119",a)
	end
	if(b > 0) then
	DelItem("o_mission120",b)
	end
	if(c > 0) then
	DelItem("o_mission121",c)
	end
	LuaSetTask("T540",99)
	LuaGiveBuff("529",1)
	ChangeMap("lu_bfjy",210,438)
	
	
elseif(answer=="risaijl") then       --日赛奖励
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	local mapname=MapName()
	if(mapname=="lu_pk01" or mapname=="lu_pk02") then 
		if(week > 0 and (hour ==21 and minu>20) and LuaQueryTask("T540")<99) then
			local a=LuaItemCount("o_mission119")
			if(a >= 6) then
				DelItem("o_mission119",a)
				if(LuaItemCount("o_mission119")==0) then
					LuaGive("coin",20000,"T540")
					LuaAddJx("combat_exp",a*8000*ld,"T540")
					LuaAddTask("pknum",2)                      --比武积分的积累 
					LuaGive("o_mission120",1)
				end
				LuaNotice("天子诏:今@3"..LuaQueryStr("name").."@0在殿前日赛比赛中胜出,特赐@1铜币2万，周赛参赛资格证，经验声望若干@0，钦此！")
				LuaSay("比武使者：恭喜你获得比武积分2，你现在的比武积分为@3"..LuaQueryTask("pknum").."@0，以后可以换取神秘奖品哦@!")
			elseif(a > 0) then
				DelItem("o_mission119",a)
				if(LuaItemCount("o_mission119")==0) then
				LuaAddJx("combat_exp",a*4000*ld,"T540")
				end
			else
				LuaSay("比武使者：你失败了，给予经验以示嘉奖！")
				LuaAddJx("combat_exp",2000*ld,"T540")
			end
				LuaSetTask("T540",99)
		else
			LuaSay("比武使者：21：20到22：00之间，才能领取奖励")
		end
	else
		LuaSay("比武使者：只有在擂台才能领取奖励，出了擂台不可领取奖励")
	end
		
elseif(answer=="zhousaijl") then      --周赛奖励
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	local mapname=MapName()
	if(mapname=="lu_pk01" or mapname=="lu_pk02") then 
		if(week == 0 and (hour ==21 and minu>20) and LuaQueryTask("T540")<99) then
		b=LuaItemCount("o_mission120")
			if(b >= 6) then
			DelItem("o_mission120",b)
			if(LuaItemCount("o_mission120")==0) then
			LuaGive("coin",80000,"T540")
			LuaAddJx("combat_exp",b*80000*ld,"T540")
			LuaAddTask("pknum",10)
			SetTitleMeg(96)
			LuaGive("o_mission121",1)
			end
			LuaNotice("天子诏:今@2"..LuaQueryStr("name").."@0在殿前周赛比赛中胜出,特赐@1侯爷@0之爵位,告之天下,以示隆恩!")
			LuaSay("比武使者：恭喜你获得比武积分10，你现在的比武积分为@3"..LuaQueryTask("pknum").."@0，以后可以换取神秘奖品哦@!")
			elseif(b < 6 and b > 0) then
			DelItem("o_mission120",b)
			  if(LuaItemCount("o_mission120")==0) then
			  LuaAddJx("combat_exp",b*40000*ld,"T540")
			  end
			else
			 LuaSay("比武使者：你失败了，给予经验以示嘉奖！")
			 if(LuaItemCount("o_mission120")==0) then
			 LuaAddJx("combat_exp",20000*ld,"T540")
			 end
			end
			LuaSetTask("T540",99)
		else
        LuaSay("比武使者：21：20到22：00之间，才能领取奖励")
		end
	else
	LuaSay("比武使者：只有在擂台才能领取奖励，出了擂台不可领取奖励")
	end 
		
elseif(answer=="yuesaijl") then      --月赛奖励
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={年，月，日，时，分，秒}
	local day=idate[3]--每月1号月赛
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	local mapname=MapName()
	 if(mapname=="lu_pk01" or mapname=="lu_pk02") then 
		if(day == 1 and (hour ==21 and minu>20) and LuaQueryTask("T540")<99) then   
		 	c=LuaItemCount("o_mission121")
			if(c >= 6) then
			 DelItem("o_mission121",c)
			 if(LuaItemCount("o_mission121")==0) then
			  LuaGive("coin",400000,"T540")
			  LuaAddJx("combat_exp",c*800000*ld,"T540")
			  LuaAddTask("pknum",30)
			  SetTitleMeg(97)
			 end
			 LuaNotice("天子诏:今@2"..LuaQueryStr("name").."@0在殿前周赛比赛中胜出,特赐@1国公@0之爵位,告之天下,以示隆恩!")
			 LuaSay("比武使者：恭喜你获得比武积分30，你现在的比武积分为@3"..LuaQueryTask("pknum").."@0，以后可以换取神秘奖品哦@!")
			elseif(c > 0) then
			DelItem("o_mission121",c)
			 if(LuaItemCount("o_mission121")==0) then
			   LuaAddJx("combat_exp",c*400000*ld,"T540")
			 end
			else
			LuaSay("比武使者：你失败了，给予经验以示嘉奖！")
			LuaAddJx("combat_exp",200000*ld,"T540")
			end
			LuaSetTask("T540",99)
		else
        LuaSay("比武使者：21：20到22：00之间，才能领取奖励")
		end
	else
	LuaSay("比武使者：只有在擂台才能领取奖励，出了擂台不可领取奖励")
	end

elseif(answer=="T395")then       -----------------------------  擂台争霸
	if(LuaQueryTask("T395") == 1) then
		LuaSay("比武使者：英雄果然已经是一位高手了，如果有信心可以在我这里摆下擂台哦！在特定时间还可以来参加比武大赛。")
		LuaSay("比武使者：如果您需要@2继续提高自己的实力@0，那么就在这@4北府军营@0里历练历练吧，或者可以再@2向左前进@0。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T395jl")
	end 
	elseif(answer=="T395jl")then
		if(LuaQueryTask("T395")==1) then
		LuaAddJx("combat_exp",140000,"T395")
		LuaAddAchievementSchedule("Task_num",1)
		LuaSetTask("T395",99)
		DelLog("395")
		UpdateMenu()
		LuaSay("比武使者：恭喜大侠已经成为江湖中独行一方的大侠，每天只要上线就能到建康城@3宫殿@0的@4司马道子@0处领取巨额奖励，连续登陆还有更丰盛的商城道具赠送哦")
		LuaSay("比武使者：心动不如行动，大侠可进入建康城一直往上走就能进入@3宫殿@0见到@4司马道子@0那厮了，不要说是我告诉你的@D")
		AddMenuItem("@7偷偷传送你到司马道子","")
		AddMenuItem("传送至司马道子","Tcs_smdz")

	end  
	elseif(answer=="Tcs_smdz")then
		ChangeMap("lu_gd",56,290)

elseif(answer=="Tleitai2") then    ---发布擂台挑战
	if ((LuaQueryTempStr("online")=="ew22" or LuaQueryTempStr("online")=="ew20" or LuaQueryTempStr("online")=="ew28") and ( LuaQueryStr("country_id")=="ew21" or LuaQueryStr("country_id")=="ew27" ))then
	LuaSay("提示：您所在的国家与该国不能进行物资流通！")	
	else
		if(LuaQuery("level")>=25) then
		AddMenuItem("@7单挑擂台","")
		AddMenuItem("@1规则说明","GZSM")
			if(MapName()=="lu_bfjy") then
			AddMenuItem("@3设擂","shelei2")
			AddMenuItem("@3应战","yingzhan2")
			end
		AddMenuItem("@3获胜奖励","hsjl2")
		AddMenuItem("@5查看选手资料","CKXSZL")
		AddMenuItem("@5下注","XZ")
		AddMenuItem("@5下注奖励","XZJL")
		else
		LuaSay("提示：你现在的修为太低，还是25级以后再来吧！")
		end
	end

elseif(answer=="GZSM") then
	LuaSay("提示：设擂者可以设置应战者的等级范围，同时可以下一定数量的挑战金！应战者必须支付等量的挑战金才能应战！")
	LuaSay("提示：设擂者若无人应战，20分钟后擂台将自动关闭，不返还挑战金！若主动离开擂台，将返还90%的挑战金！")
	LuaSay("提示：在擂台获胜后，获胜方不但可以拿回原来自己挑战金！还可以得到失败方挑战金的90%！10%作为场地费上缴系统！")
	LuaSay("提示：比武双方也能下注！可以同时下注双方，下注只能增加不能减少，只要不超过下注上限总金额，可以一直下！")
	LuaSay("@1注意@0：如果你要下注，请在看到系统公告后及时下注，超过一定时间就下注不了了！")
	LuaSay("@1注意@0：如果你要下注领奖，请在看到系统公告后及时领取，超过一定时间就领取不了造成损失！")
	LuaSay("@1注意@0：如果比如双方未分出胜负，或者有比武参赛人员故意掉线，会造成下注的钱血本无归！所以最好多下注那些名人")
	LuaSay("@1注意@0：如果比武双方是名人，可以安心下注！如果是名不见经传，要小心他们打假赛！不可轻信！")

elseif(answer=="shelei2") then
	if((GetCurrentTime()-LuaPublicQuery("zhu_over_time"))>=300) 	 then
		local a=LuaQueryPersonInMap("lu_leitaid")
    		if(a==0) then			--检测擂台地图人数
			LuaSetTask("sl_money",0) ---重置为0
			LuaSetTask("sl_level",0)
			-----下注重置 
			LuaPublicSet("zhu1_lv",0)      
			LuaPublicSet("zhu1_money",0)
			LuaPublicSetStr("zhu1_ID","无")
				LuaPublicSet("zhu2_lv",0)
			LuaPublicSet("zhu2_money",0)
			LuaPublicSetStr("zhu2_ID","无")
			LuaPublicSetStr("zhu_win_ID","无")
			------比武双方信息重置 
			LuaPublicSet("shelei2_money",0)
			LuaPublicSet("shelei2_level",0)
			LuaPublicSet("player_lv1",0)
			LuaPublicSetStr("player_ID1","无")
			
			LuaPublicSet("yingzhan2_money",0)
			LuaPublicSet("yingzhan2_level",0)
			LuaPublicSet("player_lv2",0)
			LuaPublicSetStr("player_ID2","无")
    			--------输入要求应战玩家的等级和下的挑战金
			LuaSay("提示：请输入应战者的等级上限，你想跟几级以下的玩家激情一下呢？")
			AddMenuItem("@7请输入","")
			AddMenuItem("@3好","shelei2_level_yes")


  		elseif(a==1) then
			LuaSay("提示：现在已经有了擂主，你现在可以选择挑战！")
   		elseif(a>=2) then
			LuaSay("提示：擂台现在正有2人比武切磋了！")
   		end
   	else
   		LuaSay("提示："..(300-GetCurrentTime()+LuaPublicQuery("zhu_over_time")).."秒后才能设擂！")
   	end
elseif(answer=="shelei2_level_yes") then
    LuaSay("提示：请输入下注的挑战金(100~50000铜币)，你想跟应战玩家用多少挑战金激情一下呢？获胜方可以赢得@3对手九成的挑战金@0，一成就最为场地费上交给系统！")
    AddMenuItem("@7请输入","")
    AddMenuItem("@3好","shelei2_money_yes")
    EnterNumber(25,100) -----输入要求应战的等级，优先级是最低的，在一个if_end是在最后面执行
elseif(answer=="shelei2_money_yes") then
	if(LuaQueryTemp("min_max_num")==0) then
		LuaSay("提示：你上一步输入的数字不符合要求！")
	else
		LuaSetTask("sl_level",LuaQueryTemp("min_max_num"))   -----存入要求应战的等级
    	EnterNumber(100,50000) ----输入挑战金
    	LuaSay("提示：确认下注挑战金！")
    	AddMenuItem("@7确认","")
    	AddMenuItem("@3是","shelei2_money_yes2")
    end
elseif(answer=="shelei2_money_yes2") then
	if(LuaQueryTemp("min_max_num")==0) then
		LuaSay("提示：你上一步输入的数字不符合要求！")
	else
		LuaSetTask("sl_money",LuaQueryTemp("min_max_num"))  --------存入挑战金
   	 	if(LuaItemCount("coin")>=LuaQueryTask("sl_money"))then
    	AddMenuItem("@7再次确认","")
    	AddMenuItem("@3否","shelei2_no")
		AddMenuItem("@3支付挑战金","shelei2_yes")
   	 	else
    	LuaSay("提示：你身上没有那么多的铜币！")
    	end
    end
elseif(answer=="shelei2_yes") then  --设擂成功
	if(LuaQuery("ST")~=3 and LuaQuery("ST")~=4)then
		if(LuaQueryPersonInMap("lu_leitaid")==0) then			--检测擂台地图人数，这里是防止因为网络延迟造成2人+设擂
	    ---公有参数，容易写错的地方

			LuaPublicSet("shelei2_money",LuaQueryTask("sl_money"))
			LuaPublicSet("shelei2_level",LuaQueryTask("sl_level"))
			LuaPublicSet("player_lv1",LuaQuery("level"))
			LuaPublicSetStr("player_ID1",LuaQueryStr("name"))
			LuaGive("coin",-1*LuaQueryTask("sl_money"),"Tleitai2")
			---------
			LuaNotice("@3"..LuaQuery("level").."级@0的@3"..LuaQueryStr("name").."@0向所有@3"..LuaQueryTask("sl_level").."级@0下的玩家发出激情擂台的邀请，获胜方可以赢取对手的九成挑战金@3"..floor(LuaQueryTask("sl_money")*0.9).."铜币@0！")
			local b=LuaItemCount("o_mission165")
			if(b>1) then
				DelItem("o_mission165",b-1)
			elseif(b==0) then
				LuaGive("o_mission165",1)
			end
			local c=LuaItemCount("o_mission119")
			if(c>0) then
				DelItem("o_mission119",c)
			end
			local d=LuaItemCount("o_mission120")
			if(d>0) then
				DelItem("o_mission120",d)
			end
			local e=LuaItemCount("o_mission121")
			if(e>0) then
				DelItem("o_mission121",e)
			end
			-------------------------------- 下注参数配置 
			LuaPublicSet("zhu1_lv",LuaPublicQuery("player_lv1"))
			LuaPublicSet("zhu1_money",0)
			LuaPublicSetStr("zhu1_ID",LuaPublicQueryStr("player_ID1")) 
			LuaSetTask("ZJXZ2_money",0)
		LuaSetTask("ZJXZ1_money",0) 
			----------------------------------
			ChangeMap("lu_leitaid",175,256)
		else
			LuaSay("提示：很遗憾，有玩家比你抢先设擂了，你暂时无法在此擂台上设擂！")
		end
	else
		LuaSay("提示：你正处于飞行状态，不能进入擂台，请先解除飞行状态")
	end

elseif(answer=="shelei2_no") then  --不设擂
    LuaSay("提示：你选择了不设擂！")


----------------------------------------------------------------------------------
elseif(answer=="yingzhan2") then		--如何应战
	if(LuaQuery("level")<=LuaPublicQuery("shelei2_level"))then
		local a=LuaQueryPersonInMap("lu_leitaid")
      		if(a==1 and LuaPublicQueryStr("player_ID1") ~="无" and LuaPublicQueryStr("player_ID2")=="无") then
      			LuaSay("提示：你确定要跟@3"..LuaPublicQuery("player_lv1").."级@0的@3"..LuaPublicQueryStr("player_ID1").."@0一决高下？需要下注@3"..LuaPublicQuery("shelei2_money").."铜币@0为挑战金！")
	  		LuaSetTask("yz_money",0) ---重置为0
    			LuaSetTask("yz_level",0)
			if(LuaItemCount("coin")>=LuaPublicQuery("shelei2_money"))then
				AddMenuItem("@7应战擂台","")
				AddMenuItem("@3否","yingzhan2_no")
				AddMenuItem("@3支付挑战金","yingzhan2_yes")
			else
				LuaSay("提示：你身上没有那么多的铜币！")
			end

    		elseif(a==0) then
			LuaSay("提示：现在还没有人设擂台，无人可以挑战")
      		elseif(a>=2 and LuaPublicQueryStr("player_ID1") ~="无" and LuaPublicQueryStr("player_ID2")~="无") then
			LuaSay("提示：擂台中正有人比武了！")
		elseif(a==1 and LuaPublicQueryStr("player_ID1") ~="无" and LuaPublicQueryStr("player_ID2")~="无") then
			LuaSay("提示：上一轮擂台还没结束，已经有一方出局了！请等获胜方领奖后从擂台中出来！才可以进行下一轮比赛！")
     		end

	else
		LuaSay("提示：设擂者邀请的是@3"..LuaPublicQuery("shelei2_level").."级@0以下的玩家！你不能应战！")
	end
elseif(answer=="yingzhan2_yes") then  --应战成功
	if(LuaQuery("ST")~=3 and LuaQuery("ST")~=4)then
	    if(LuaQueryPersonInMap("lu_leitaid")==0) then			--检测擂台地图人数，这里是防止因为网络延迟造成设擂跑了，应战的人却进了
		LuaSay("提示：擂台中设擂的人逃跑啦！")
		elseif(LuaQueryPersonInMap("lu_leitaid")>=2) then			--检测擂台地图人数，这里是防止因为网络延迟造成两个以上的应战的人进了
		LuaSay("提示：擂台中已经有两个人在比武啦！")
		else
			---公有参数，容易写错的地方
			LuaSetTask("yz_money",LuaPublicQuery("shelei2_money"))
			LuaSetTask("yz_level",LuaQuery("level"))
		LuaPublicSet("player_lv2",LuaQueryTask("yz_level"))
		LuaPublicSet("yingzhan2_money",LuaQueryTask("yz_money"))
		LuaPublicSetStr("player_ID2",LuaQueryStr("name"))
		LuaGive("coin",-1*LuaQueryTask("yz_money"),"Tleitai2")
		--------
			local b=LuaItemCount("o_mission165")
			if(b>1) then
			DelItem("o_mission165",b-1)
			elseif(b==0) then
			LuaGive("o_mission165",1)
			end
			------------------------------------------------  下注的参数配置

			LuaPublicSet("zhu2_lv",LuaPublicQuery("player_lv2"))
		LuaPublicSet("zhu2_money",0)
		LuaPublicSetStr("zhu2_ID",LuaPublicQueryStr("player_ID2"))
		LuaSetTask("ZJXZ2_money",0)
		LuaSetTask("ZJXZ1_money",0)

		LuaPublicSet("zhu_begin_time",GetCurrentTime())
		if(LuaPublicQueryStr("Tjqlt_data")~=GetCurrentDay() )then   -----激情擂台次数，公共参数 
			LuaPublicSet("TPublic_jqlt_times",0)
			LuaPublicSetStr("Tjqlt_data",GetCurrentDay())
			end
			LuaPublicSet("TPublic_jqlt_times",LuaPublicQuery("TPublic_jqlt_times")+1) ----应战成功后次数+1 
			--------------------------------------------------
			LuaNotice("@3"..LuaPublicQuery("player_lv2").."级@0的@3"..LuaPublicQueryStr("player_ID2").."@0应战@3"..LuaPublicQuery("player_lv1").."级@0的@3"..LuaPublicQueryStr("player_ID1").."@0，@35分钟内@0大家可以去@3比武使者@0那里下注，看谁会获胜！")
			LuaGiveBuff("528",1)
			LuaSay("你有擂台保护,一段时间内不参与PK，进入擂台后5分钟会自动解除")
			ResetFBStartTime("lu_leitaid")
			ChangeMap("lu_leitaid",175,256)
		end
	else
		LuaSay("提示：设擂者邀请的是@3"..LuaPublicQuery("shelei2_level").."级@0以下的玩家！你不能应战！")
	end
elseif(answer=="yingzhan2_no") then  --不应战
    LuaSay("提示：你选择了不应战！")
--------------------------------------------------------------------------------------
elseif(answer=="hsjl2") then
      	if(MapName()=="lu_leitaid") then
            if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
            LuaSay("现在是下注时间，距离结束下注还有"..(300-GetCurrentTime()+LuaPublicQuery("zhu_begin_time")).."秒！下注结束后才能领奖")
            else
      			local c=LuaItemCount("o_mission165")
				if(c>=2) then

				DelItem("o_mission165",c)
		 		---------------  打死对手领奖
				LuaAddAchievementSchedule("LeitPK_num",1)------检测参数 +1
				LuaGive("coin",floor(LuaPublicQuery("shelei2_money")*1.9),"Tleitai2")
				LuaPublicSet("zhu_over_time",GetCurrentTime())
					if(LuaQueryStr("name")==LuaPublicQueryStr("player_ID1"))   then
					LuaPublicSetStr("zhu_win_ID",LuaPublicQueryStr("player_ID1"))
					LuaNotice("@3"..LuaPublicQuery("player_lv1").."级@0的@3"..LuaPublicQueryStr("player_ID1").."@0打败了@3"..LuaPublicQuery("player_lv2").."级@0的@3"..LuaPublicQueryStr("player_ID2").."@0，赢得了@3"..floor(LuaPublicQuery("shelei2_money")*0.9).."铜币@0！下注过的玩家请于5分钟内到比武使者那里领奖！")
					else
					LuaPublicSetStr("zhu_win_ID",LuaPublicQueryStr("player_ID2"))
					LuaNotice("@3"..LuaPublicQuery("player_lv2").."级@0的@3"..LuaPublicQueryStr("player_ID2").."@0打败了@3"..LuaPublicQuery("player_lv1").."级@0的@3"..LuaPublicQueryStr("player_ID1").."@0，赢得了@3"..floor(LuaPublicQuery("shelei2_money")*0.9).."铜币@0！下注过的玩家请于5分钟内到比武使者那里领奖！")
					end

				elseif(LuaItemCount("o_mission165")==1 and (MapName()=="lu_leitaid" and LuaQueryPersonInMap("lu_leitaid")==1) and LuaPublicQuery("yingzhan2_money")~=0 and LuaPublicQuery("shelei2_money")~=0) then
				DelItem("o_mission165",c)
				---------------  对手逃跑领奖
				LuaAddAchievementSchedule("LeitPK_num",1)------检测参数 +1
				LuaGive("coin",floor(LuaPublicQuery("shelei2_money")*1.9),"Tleitai2")
				LuaPublicSet("zhu_over_time",GetCurrentTime())
					if(LuaQueryStr("name")==LuaPublicQueryStr("player_ID2"))    then
					LuaPublicSetStr("zhu_win_ID",LuaPublicQueryStr("player_ID2"))
					LuaNotice("@3"..LuaPublicQuery("player_lv1").."级@0的@3"..LuaPublicQueryStr("player_ID1").."@0逃跑了！@3"..LuaPublicQuery("player_lv2").."级@0的@3"..LuaPublicQueryStr("player_ID2").."@0获胜，赢得了@3"..floor(LuaPublicQuery("shelei2_money")*0.9).."铜币@0！下注过的玩家请于5分钟内到比武使者那里领奖！")
					else
					LuaPublicSetStr("zhu_win_ID",LuaPublicQueryStr("player_ID1"))
					LuaNotice("@3"..LuaPublicQuery("player_lv2").."级@0的@3"..LuaPublicQueryStr("player_ID2").."@0逃跑了！@3"..LuaPublicQuery("player_lv1").."级@0的@3"..LuaPublicQueryStr("player_ID1").."@0获胜，赢得了@3"..floor(LuaPublicQuery("shelei2_money")*0.9).."铜币@0！下注过的玩家请于5分钟内到比武使者那里领奖！")
					end
				else
				LuaSay("比武使者：必须获胜后，并取得2个擂台令，方能领取奖励")
				end
			end
     	else
		LuaSay("比武使者：只能在擂台地图里领取奖励")
      	end

elseif(answer=="qcmz2") then
    LuaSay("提示：自动给你检索了下是否有免战等造成无法pk的状态！有的话自动帮你清除掉了！不会清楚擂台倒计时保护！")
    if(LuaCheckBuff("520")==1)then
        LuaDeleteBuff("520")
    end
    if(LuaCheckBuff("477")==1)then
        LuaDeleteBuff("477")
    end
    if(LuaCheckBuff("518")==1)then
        LuaDeleteBuff("518")
    end
elseif(answer=="likai2") then

	if(LuaItemCount("o_mission165")==1 and (MapName()=="lu_leitaid" and LuaQueryPersonInMap("lu_leitaid")==2) ) then   ----有2人时，一人跑了(损失所有挑战金)
   		LuaSay("提示：@3获胜方领取奖励@0后可自由离开！如果双方未分出胜负，先离开的的人视为自动弃权，失去自己下注的挑战金！获胜方未领奖就离开也视为自动弃权")
		AddMenuItem("@7选择列表","")
		AddMenuItem("@3我要撤退","chetui_yes")
		UpdateMenu()
	elseif(LuaItemCount("o_mission165")==1 and (MapName()=="lu_leitaid" and LuaQueryPersonInMap("lu_leitaid")==1) ) then   ----有1人时，离开擂台
   		LuaSay("提示：随意离开擂台，返还90%挑战金到你包裹中，扣除@310%的挑战金@0作为场地费哦！")
		AddMenuItem("@7选择列表","")
		AddMenuItem("@3我要离开","chetui2_yes")
		UpdateMenu()
	else
		if(LuaItemCount("o_mission165")>0) then
   		DelItem("o_mission165",LuaItemCount("o_mission165"))
  		end
		ChangeMap("lu_bfjy",580,340)
	end
elseif(answer=="chetui_yes") then
	if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
		LuaSay("提示：现在是下注时间，距离结束下注还有"..(300-GetCurrentTime()+LuaPublicQuery("zhu_begin_time")).."秒！下注结束后才能撤退！")
	else
		if(LuaItemCount("o_mission165")>0) then
   		DelItem("o_mission165",LuaItemCount("o_mission165"))
  		end
		ChangeMap("lu_bfjy",580,340)
	end
elseif(answer=="chetui2_yes") then
		if(LuaItemCount("o_mission165")>0) then
  	 	DelItem("o_mission165",LuaItemCount("o_mission165"))
  		end
 	 	LuaGive("coin",floor(LuaQueryTask("sl_money")*0.9),"Tleitai2")
 	
 	 	LuaPublicSet("shelei2_money",0)
    	LuaPublicSet("shelei2_level",0)
  	 	LuaPublicSet("player_lv1",0)
    	LuaPublicSetStr("player_ID1",0)  
		ChangeMap("lu_bfjy",580,340)

----------------------------下注------------------------------------------------------------
elseif(answer=="CKXSZL") then
	if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
		LuaSay("擂主：@3"..LuaPublicQuery("player_lv1").."级@0的@3"..LuaPublicQueryStr("player_ID1").."@0，挑战金为@3"..LuaPublicQuery("shelei2_money").."铜币@0！被下注@3"..LuaPublicQuery("zhu1_money").."铜币@0！")
		LuaSay("应战者：@3"..LuaPublicQuery("player_lv2").."级@0的@3"..LuaPublicQueryStr("player_ID2").."@0，挑战金为@3"..LuaPublicQuery("yingzhan2_money").."铜币@0！被下注@3"..LuaPublicQuery("zhu2_money").."铜币@0！")
		LuaSay("提示：距离结束下注还有"..(300-GetCurrentTime()+LuaPublicQuery("zhu_begin_time")).."秒！")
	else
		LuaSay("提示：现在不能查看！比武双方进场后5分钟内才能下注和查看！")
	end
elseif(answer=="XZ") then
	--	LuaSay("提示：下注存在问题，正在修复中，给您带来的不便，敬请谅解！")
	--[[如果存在私人身上的激情擂台次数与公共参数不同，说明不是同一场比赛，已经是第二场甚至是更多场了
	这时候将私人和公共的擂台次数同步，同一场比赛，自己的下注参数不清零。如果不是同一场，自己下注参数 清零。
	如果不及时清零，会造成刷铜币。 
	]]
	if(LuaPublicQuery("TPublic_jqlt_times")~=LuaQueryTask("Tself_jqlt_times")) then
		LuaSetTask("Tself_jqlt_times",LuaPublicQuery("TPublic_jqlt_times"))
		LuaSetTask("ZJXZ1_money",0)
        LuaSetTask("ZJXZ2_money",0)
	end
	if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
		if(LuaPublicQuery("zhu1_money")+LuaPublicQuery("zhu2_money")<100000000) 	 then    ---避免数据溢出 
			AddMenuItem("@7选择列表","")
			AddMenuItem("@3下注"..LuaPublicQueryStr("player_ID1").."","XZ1")
			AddMenuItem("@3下注"..LuaPublicQueryStr("player_ID2").."","XZ2")
		else
			LuaSay("提示：本轮比武双方被下注的总金额加起来已经超过@3一亿铜币@0，达到极限，不能在下注啦！")
		end
	else
		LuaSay("提示：现在不能下注！比武双方进场后5分钟内才是下注时间！")
	end
elseif(answer=="XZ1") then
	EnterNumber(100,1000000) ----
    LuaSay("提示：确认下注金额！")
    AddMenuItem("@7确认","")
    AddMenuItem("@3是","XZ1_yes")
elseif(answer=="XZ1_yes") then
	if(LuaQueryTemp("min_max_num")==0) then
		LuaSay("提示：你上一步输入的数字不符合要求！")
	else
		LuaSetTask("XZ1_money",LuaQueryTemp("min_max_num"))
		if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
   	 		if(LuaItemCount("coin")>=LuaQueryTask("XZ1_money"))then
    		LuaGive("coin",-1*LuaQueryTask("XZ1_money"),"Tzhu")
    		LuaPublicSet("zhu1_money",LuaPublicQuery("zhu1_money")+LuaQueryTask("XZ1_money"))
    		LuaSetTask("ZJXZ1_money",LuaQueryTask("XZ1_money")+LuaQueryTask("ZJXZ1_money"))
   	 		else
    		LuaSay("提示：你身上没有那么多的铜币！")
    		end
    	else
			LuaSay("提示：现在不能下注！比武双方进场后5分钟内才是下注时间！请注意：如果比武双方没有分出胜负就跑了，你将会血本无归！")
		end
    end

    ----------------------------------------------
elseif(answer=="XZ2") then
	EnterNumber(100,1000000) ----
    LuaSay("提示：确认下注金额！")
    AddMenuItem("@7确认","")
    AddMenuItem("@3是","XZ2_yes")
elseif(answer=="XZ2_yes") then
	if(LuaQueryTemp("min_max_num")==0) then
		LuaSay("提示：你上一步输入的数字不符合要求！")
	else
		LuaSetTask("XZ2_money",LuaQueryTemp("min_max_num"))
		if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
			if(LuaItemCount("coin")>=LuaQueryTask("XZ2_money"))then
    		LuaGive("coin",-1*LuaQueryTask("XZ2_money"),"Tzhu")
    		LuaPublicSet("zhu2_money",LuaPublicQuery("zhu2_money")+LuaQueryTask("XZ2_money"))
    		LuaSetTask("ZJXZ2_money",LuaQueryTask("XZ2_money")+LuaQueryTask("ZJXZ2_money"))
   	 		else
    		LuaSay("提示：你身上没有那么多的铜币！")
    		end
			LuaSay("提示：距离结束下注还有"..(300-GetCurrentTime()+LuaPublicQuery("zhu_begin_time")).."秒！")
		else
			LuaSay("提示：现在不能下注！比武双方进场后5分钟内才是下注时间！")
		end

    end

elseif(answer=="XZJL") then
	--[[如果存在私人身上的激情擂台次数与公共参数不同，说明不是同一场比赛，已经是第二场甚至是更多场了
	这时候将私人和公共的擂台次数同步，同一场比赛，自己的下注参数不清零。如果不是同一场，自己下注参数 清零。
	如果不及时清零，会造成刷铜币。 
	]]
	if(LuaPublicQuery("TPublic_jqlt_times")~=LuaQueryTask("Tself_jqlt_times")) then
		LuaSetTask("Tself_jqlt_times",LuaPublicQuery("TPublic_jqlt_times"))
		LuaSetTask("ZJXZ1_money",0)
        LuaSetTask("ZJXZ2_money",0)
	end
	if((GetCurrentTime()-LuaPublicQuery("zhu_over_time"))<=300) 	 then
		AddMenuItem("@7选择列表","")
		AddMenuItem("@3领取"..LuaPublicQueryStr("player_ID1").."的注","XZJL1")
		AddMenuItem("@3领取"..LuaPublicQueryStr("player_ID2").."的注","XZJL2")
	else
		LuaSay("提示：下注比武双方分出胜负后5分钟内，才是领奖时间段！如果比武双方没有分出胜负就跑了，你将会血本无归！")
	end
elseif(answer=="XZJL1") then
	if(LuaPublicQueryStr("zhu_win_ID")==LuaPublicQueryStr("player_ID1"))  then
		local a=LuaPublicQuery("zhu1_money")
		local b=LuaPublicQuery("zhu2_money")
		local c=LuaQueryTask("ZJXZ1_money")
		local d
		if(a>0 and b>0 and c>0) then                                       
		d=floor((c/a)*b*0.9)
		else
		d=0
		end
 		LuaSay("提示：恭喜你，你下注的这一方总计被下注@3"..LuaPublicQuery("zhu1_money").."铜币@0并且获胜了！你可以取回本金@3"..c.."铜币@0！")
		LuaSay("提示：另一方总计被下注@3"..LuaPublicQuery("zhu2_money").."铜币@0！扣除10%的场地费，根据赔率，赚取@3"..d.."铜币@0！")
		LuaGive("coin",d+c,"Tzhu")
		LuaSetTask("ZJXZ1_money",0)
        LuaSetTask("ZJXZ2_money",0)
	else
		LuaSay("提示：很遗憾，你下注的这一方输掉了！")
		LuaSetTask("ZJXZ1_money",0)
	end
elseif(answer=="XZJL2") then
	if(LuaPublicQueryStr("zhu_win_ID")==LuaPublicQueryStr("player_ID2"))  then

		local a=LuaPublicQuery("zhu2_money")
		local b=LuaPublicQuery("zhu1_money")
		local c=LuaQueryTask("ZJXZ2_money")
		local d
		if(a>0 and b>0 and c>0) then
		d=floor((c/a)*b*0.9)
		else
		d=0
		end
		LuaSay("提示：恭喜你，你下注的这一方总计被下注@3"..LuaPublicQuery("zhu2_money").."铜币@0并且获胜了！")
		LuaSay("提示：另一方总计被下注@3"..LuaPublicQuery("zhu1_money").."铜币@0！扣除10%的场地费，根据赔率，赚取@3"..d.."铜币@0！")
		LuaGive("coin",d+c,"Tzhu")
		LuaSetTask("ZJXZ2_money",0)
        LuaSetTask("ZJXZ1_money",0)
	else
		LuaSay("提示：很遗憾，你下注的这一方输掉了！")
		LuaSetTask("ZJXZ2_money",0)
	end

elseif(answer=="Tsnpc_37")then
	if(LuaQueryTask("Tsnpc_37")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("比武使者：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_37",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_37")==2)then
		LuaSay("比武使者：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_37")then
	if(LuaQueryTask("Tenpc_37")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("比武使者：这都是大人的功劳啊")
		LuaSetTask("Tenpc_37",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_37")==2)then
		LuaSay("比武使者：话已经带到了，快回去领取奖励吧")
	end



end
LuaSendMenu()
return 1
end
--/////////秒计时转为年月日时分秒///////////
function SelfDefTime2Date(iTime)--iTime=GetCurrentTime()
local seconds=iTime+3600*8
--//seconds=GetCurrentTime()+3600*8
if(seconds>=3600*8)then
local days=floor(seconds/86400)
local weekday=days-floor(days/7)*7
local iYear=1970
local yearday=365
local iDays=days
while
	iDays>=yearday
do
	iYear=iYear+1
	iDays=iDays-yearday
	if((floor(iYear/4)==iYear/4 and floor(iYear/100)~=iYear/100) or floor(iYear/400)==iYear/400)then
	yearday=366
	else
	yearday=365
	end
end

local monthday=31
local iMonth=1
while
	iDays>=monthday
do
	iMonth=iMonth+1
	iDays=iDays-monthday
	if(iMonth==2)then
		if((floor(iYear/4)==iYear/4 and floor(iYear/100)~=iYear/100) or floor(iYear/400)==iYear/400)then
		monthday=29
		else
		monthday=28
		end
	elseif(iMonth==4 or iMonth==6 or iMonth==9 or iMonth==11)then
		monthday=30
	else
		monthday=31
	end
end
local Year=iYear
local Month=iMonth
local Day=iDays+1
local Hour=floor((seconds-days*86400)/3600)
local Minute=floor((seconds-floor(seconds/3600)*3600)/60)
local Second=floor(seconds-floor(seconds/60)*60)
return Year,Month,Day,Hour,Minute,Second--返回年月日时分秒
else
return 1970,1,1,8,0,0
end
end