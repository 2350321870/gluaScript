NPCINFO = {
serial="24" ,
base_name="fubengly" ,
icon=2563,
NpcMove=2563,
name="副本使者" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="超强装备尽在副本" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
    havetask =0
	level= LuaQuery("level")	
	if(level>80)then
			level=80
	end
	AddTopSayMenuItem("@7副本系统","")
	AddTopSayMenuItem("@3勇闯迷宫【活动】","Txmigong")	
	AddTopSayMenuItem("@3迷宫幻境【活动】","Tmigong")
	AddTopSayMenuItem("@3打宝副本","dabaofb") 
	AddTopSayMenuItem("@3无双战场","wszc")


--	AddTopSayMenuItem("@3挑战副本","tiaozhanfb")
--	AddTopSayMenuItem("@3升级副本","shengjinfb")
--	AddTopSayMenuItem("@3千里行商","Tqlxs")
	AddTopSayMenuItem("@3世外桃源【婚姻】","taoyuan")
	if((LuaQueryTask("Tsnpc_10")==1 or LuaQueryTask("Tsnpc_10")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_10")
		if(LuaQueryTask("Tsnpc_10")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_10")==1 or LuaQueryTask("Tenpc_10")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_10")
		if(LuaQueryTask("Tenpc_10")==1)then
			havetask2=1
		end
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
	 LuaSay("副本使者：进入副本接受前所未有的挑战吧！")


elseif(answer=="dabaofb") then
    LuaSay("@1提示@0：最后一刀砍死boss的人才算是击杀boss的人。他较大概率绿色装备，一定概率获得蓝色装备，较小概率获得黄金装备！")
    LuaSay("@1提示@0：三人以上的队伍@3一起杀死boss@0，可以进入挖宝地图！可以挖到大量经验！装备！甚至是小概率的元宝道具！")
    LuaSay("@1提示@0：副本有效时间是从第一名进入副本的队友开始计时哦@!")
	AddMenuItem("@7副本列表","")
	if(LuaQuery("level")>=20 ) then
	AddMenuItem("@7副本任务【每日】","fbrw")  -------副本任务 
	end

	if(LuaQuery("level")>=20 ) then
	AddMenuItem("@7副本增值服务","fbtimes")  -------副本增值服务
	end
	AddMenuItem("@3晋军北伐(20~29)","20")
	AddMenuItem("@3邪恶之地(30~39)","30")
    AddMenuItem("@3五斗山平乱(40~49)","40")
    AddMenuItem("@3地下巢穴(50~59)","50")
	AddMenuItem("@3幽冥地穴(60~)","60")
	AddMenuItem("@3寂静岭(70~)","70")


--------------                      -------副本任务 
elseif(answer=="fbrw") then
	if(LuaQueryStrTask("Tfbrw_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Tfbrw",0)
		LuaSetTask("Tfbrw_Taskday",GetCurrentDay())
		UpdateMenu()
	end
	if(LuaQueryTask("Tfbrw")==0) then
		if(LuaQuery("level")>=20 and LuaQuery("level")<30) then    
		LuaSay("副本使者：只要你进入@3晋军北伐(20~29)@0副本的第三张地图，就能完成任务，可以回复我领奖了！")
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		LuaSay("副本使者：只要你进入@3邪恶之地(30~39)@0副本的第三张地图，就能完成任务，可以回复我领奖了！")
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		LuaSay("副本使者：只要你进入@3五斗山平乱(40~49)@0副本的第三张地图，就能完成任务，可以回复我领奖了！")
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		LuaSay("副本使者：只要你进入@3地下巢穴(50~59)@0副本的第二张地图，就能完成任务，可以回复我领奖了！")
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<80) then
		LuaSay("副本使者：只要你进入@3幽冥地穴(60~)@0副本的第三张地图，就能完成任务，可以回复我领奖了！")
		end
		UpdateMenu()
	elseif(LuaQueryTask("Tfbrw")==1) then
		if(LuaQuery("level")<30) then    ------经验表 
		lv_exp=30000
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		lv_exp=70000
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		lv_exp=150000
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		lv_exp=200000
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
		lv_exp=400000
		elseif(LuaQuery("level")>=70 ) then
		lv_exp=1000000
		end
  		Tfbrw_exp=lv_exp+(LuaRandom(20)+20)*level^2
  		LuaAddJx("combat_exp",Tfbrw_exp,"Tfbrw")
  		
  		if(LuaQuery("level")<30) then    ------表
		num=1
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		num=2
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		num=4
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		num=10
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
		num=17
		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
		num=25
		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
		num=35
		elseif(LuaQuery("level")>=90) then
		num=45
		end
  		LuaGive("o_douyu",num,"Tfbrw") 
  		LuaSetTask("Tfbrw",99)
	elseif(LuaQueryTask("Tfbrw")==99) then
		LuaSay("副本使者：你已经完成了该任务，明天在再找我吧。")
	end
--------------                      -------增加进入副本次数
elseif(answer=="fbtimes") then
	local lv_flag		                                                    
    pay={}
	pay[1]={20,30,1,1,"o_gold1y","@9通宝@0",0,0,"o_gold2y","@8银票@0","@3晋军北伐(20~29)@0","jjbf_1time",3}
	--参数：1   2 3 4  5          6         7 8  9          10          11                   12          13
	----1：进入副本的最低等级,2：最高等级,3：进入次数（免费的那部分） ,4：收取YB道具1初始价,5：递增数目,6：YB道具1的id,7：YB道具1的id
	----8：收取YB道具2初始价,9：递增数目,10：YB道具2的id,11：YB道具2的id  ,12：对应地图 ,13：对应地图进入次数
	pay[2]={30,40,2,2,"o_gold1y","@9通宝@0",0,0,"o_gold2y","@8银票@0","@3邪恶之地(30~39)@0","fbxezdintime",3}
	pay[3]={40,50,5,0,"o_gold1y","@9通宝@0",0,1,"o_gold2y","@8银票@0","@3五斗山平乱(40~49)@0","wdspltime",2}
	pay[4]={50,60,0,0,"o_gold1y","@9通宝@0",1,2,"o_gold2y","@8银票@0","@3地下巢穴(50~59)@0","dxcxintime",2}
	pay[5]={60,70,0,0,"o_gold1y","@9通宝@0",2,3,"o_gold2y","@8银票@0","@3幽冥地穴(60~)@0","ymdxintime",2}
	---------------
	if(LuaQuery("level")<30) then    ------经验表
		lv_flag=1
	elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		lv_flag=2
	elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		lv_flag=3
	elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		lv_flag=4
	elseif(LuaQuery("level")>=60 ) then
		lv_flag=5
    end                                                       
    if(LuaQueryStrTask("Tfbtimes_Taskday")~=GetCurrentDay()) then

		LuaSetTask("NUM_TB",pay[lv_flag][3])
		LuaSetTask("NUM_YP",pay[lv_flag][7])       ------- 收费重置必须放这里,否则会造成空值-----------
		LuaSetTask("Tfbtimes_Taskday",GetCurrentDay())
	end    
	local a=LuaQueryTask("NUM_TB")
	local b=LuaQueryTask("NUM_YP")                                       
    if(LuaQuery("level")>=20 ) then
    		if(LuaQueryTask(pay[lv_flag][12])<pay[lv_flag][13]) then
			LuaSay("副本使者：你进入"..(pay[lv_flag][11]).."副本的当天免费次数还没用完,不需要进行增值服务,用完后再来找我吧！")
			else
			LuaSay("副本使者：你还想进入"..(pay[lv_flag][11]).."副本,将消耗@3"..a.."@0个"..(pay[lv_flag][6]).."！@3"..b.."@0个"..(pay[lv_flag][10]).."！")
			LuaSay("@1举例说明@0：比如，你今天已经进了副本3次，增值服务成功后，你今天已经进副本的次数变为2次，等于@3又有一次机会@0进副本了！")
			AddMenuItem("@7请选择","")
        	AddMenuItem("@3否","fbtimes_no")
        	AddMenuItem("@3是","fbtimes_yes")
        	end
    else
    LuaSay("副本使者：非常抱歉,目前只开放了对@320~70级别段@0增值服务！")
    end                
elseif(answer=="fbtimes_no") then
    LuaSay("副本使者：你如果还想进入副本,可以再来找我哦！")
elseif(answer=="fbtimes_yes") then
	local lv_flag
	---------------
	if(LuaQuery("level")<30) then    ------经验表
		lv_flag=1
	elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		lv_flag=2
	elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		lv_flag=3
	elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		lv_flag=4
	elseif(LuaQuery("level")>=60 ) then
		lv_flag=5
	end   
	local a=LuaQueryTask("NUM_TB")
	local b=LuaQueryTask("NUM_YP")
	if(LuaItemStatusNormalCount(pay[lv_flag][5])>=a and LuaItemStatusNormalCount(pay[lv_flag][9])>=b) then
	DelItem(pay[lv_flag][5],a)
	DelItem(pay[lv_flag][9],b)
	local add_tb=(pay[lv_flag][4])
	local add_yp=(pay[lv_flag][8])
	LuaAddJx("combat_exp",a*100+b*1000,"FB_payYB")
	LuaAddTask("NUM_TB",add_tb)
	LuaAddTask("NUM_YP",add_yp)
	LuaAddTask(pay[lv_flag][12],-1)
	LuaSay("副本使者：你现在可以进入"..(pay[lv_flag][11]).."副本了，要是@3留到明天就会造成浪费的@0！")
	else
	LuaSay("副本使者：需要消耗@3"..a.."@0个"..(pay[lv_flag][6]).."！@3"..b.."@0个"..(pay[lv_flag][10]).."！你身上相关道具不够！")
	end
	                     
				   
--------------------
elseif(answer=="tiaozhanfb") then
	if(level>=60) then
	AddMenuItem("@7副本列表","")
	LuaSay("副本使者：挑战副本里的怪物会掉落@3极品装备@0，但是阁下得量力而行，里面的怪物可都是异常凶悍的。")
	AddMenuItem("@3皇陵","Tdzhuangling")
	AddMenuItem("@3勇者之试","Tyongzhezs")
--	AddMenuItem("@3闯天关","Tfbctg")
	else
	 LuaSay("副本使者：你的修为太低，还是60级以后再来吧。")
	end
 --[[ 
	elseif(answer=="xezd") then
	ChangeMap("lu_fbxezdyi")    ]]

elseif(answer=="20") then     ------------20~29级副本
    AddMenuItem("@7操作列表","")
	AddMenuItem("@7介绍与攻略","20SHOW")
	AddMenuItem("@3晋军北伐(20~29)","20ENTER")
elseif(answer=="20SHOW") then
    LuaSay("副本使者：晋军北伐，限制级别20~29。敌我势力：姚襄军VS东晋桓温军（玩家）")
    LuaSay("副本使者：东晋永和年，姚襄（姚苌的兄长）叛变，兵寇建康城，随后又流窜至洛阳一带。晋帝拜桓温（桓玄的父亲）为讨伐大都督，从江陵发兵，出师北伐姚襄。")
    LuaSay("副本使者：1、在40分钟内，根据军师袁宏的指示，击杀50只旺财狗和50只蝙蝠，为晋军扫清道路，才能进入伊水北岸。")
    LuaSay("副本使者：2、进入伊水北岸，根据大都督桓温的指示，在40分钟内，击杀80个姚军士兵，才被允许前行。3、进入洛阳北山，40分钟内击杀姚襄。")
elseif(answer=="20ENTER") then
    ChangeMap("lu_jjbf_1",433,226)
        
        
elseif(answer=="30") then   ---------邪恶之地 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@7介绍与攻略","30SHOW")
	AddMenuItem("@3邪恶之地(30~39)","30ENTER")
elseif(answer=="30SHOW") then
    LuaSay("副本使者：未知领域，妖魔肆虐！杀出一条血路来吧！")
elseif(answer=="30ENTER") then
    ChangeMap("lu_fbxezdyi")
        
elseif(answer=="40") then     ------------40~49级副本
    AddMenuItem("@7操作列表","")
	AddMenuItem("@7介绍与攻略","40SHOW")
	AddMenuItem("@3五斗山平乱(40~49)","40ENTER")
elseif(answer=="40SHOW") then
    LuaSay("副本使者：五斗山平乱，限制级别40~49。敌我势力：孙恩叛军VS东晋援军（玩家）")
    LuaSay("副本使者：孙恩叛军占山为王，祸害千里，谢道韫领军讨伐，久攻不下。晋帝下密诏，希望各路英雄结伴潜入五斗山，刺杀孙恩。")
    LuaSay("副本使者：1、在五斗山入口找到晋军内应了解@1情况@0，40分钟内击杀100个叛军士兵(证明你们的实力)，晋军内应会把玩家传送进入五斗山！")
    LuaSay("副本使者：2、进入五斗山在40分钟内，击杀20个叛军精锐，才被允许前行。 3、进入山寨，40分钟内击杀孙恩。")
    LuaSay("@1郑重提醒@0：第二关的@2叛军令牌@0很有用的！第三关打boss时，@1及时清除孙恩的强力弱甲！@0不然怎么死都不知道！")
elseif(answer=="40ENTER") then
    ChangeMap("lu_wdspl_1")

elseif(answer=="50") then   ---------地下巢穴
	AddMenuItem("@7操作列表","")
	AddMenuItem("@7介绍与攻略","50SHOW")
	AddMenuItem("@3地下巢穴(50~59)","50ENTER")
elseif(answer=="50SHOW") then
    LuaSay("副本使者：未知领域，妖魔肆虐！杀出一条血路来吧！")
    LuaSay("@1郑重提醒@0：打boss时，@1及时清除boss的强力弱甲！@0不然怎么死都不知道！")
elseif(answer=="50ENTER") then
    ChangeMap("lu_dxcxyi")

        
elseif(answer=="60") then   ---------幽冥地穴
	AddMenuItem("@7操作列表","")
	AddMenuItem("@7介绍与攻略","60SHOW")
	AddMenuItem("@3幽冥地穴(60~)","60ENTER")
elseif(answer=="70") then   ---------寂静岭
	AddMenuItem("@7操作列表","")
	--AddMenuItem("@7介绍与攻略","70SHOW")
	AddMenuItem("@3寂静岭(70~)","70ENTER")
elseif(answer=="60SHOW") then
    LuaSay("副本使者：此副本只针对60级以上的玩家开放！60多级的玩家进入此副本一定要小心，因为里面是70多级的怪物和70多级的boss！")
    LuaSay("@1郑重提醒@0：打boss时，@1及时清除boss的强力弱甲！@0不然怎么死都不知道！")
elseif(answer=="60ENTER") then
	ChangeMap("lu_ymdxyi")
elseif(answer=="70ENTER") then
	if(LuaQuery("level")>=70 ) then
		if(GetCurrentDay()~=LuaQueryStrTask("70ENTERday") and LuaQueryTask("jjlcount")<10)then
			ChangeMap("lu_jijingl")	
			LuaSetTask("jjlcount",LuaQueryTask("jjlcount")+1)
		else
			LuaSay("薅羊毛够了,别撸秃噜皮,每天10次,不能再多了!")
			if(GetCurrentDay()~=LuaQueryStrTask("70ENTERday"))then
				local jb=LuaRandom(300)
				LuaAddYB(2,jb)
                if(jb>=150)then
                    LuaGive("o_present116",1,"Tbossta")--白色卡包
                end
				LuaSay("你已完成10次寂静岭,获得随机@6"..jb.."金币@0奖励")
			end
			LuaSetTask("70ENTERday",GetCurrentDay())
			LuaSetTask("jjlcount",0)
		end
	else
		LuaSay("骚年你等级不够70级,努力升级吧!")
	end
elseif(answer=="wszc") then   ---------无双战场
    ChangeMap("lu_wszc")

elseif(answer=="Tyongzhezs") then
      if(GetCurrentDay()~=LuaQueryStrTask("Tyzzsday")) then
	 LuaSetTask("Tyongzhezs",0)
	 LuaSetTask("Tyongzhezsa",0)
      end
      if(TeamCount()<2) then
	if(LuaQueryTask("Tyongzhezs")==0) then
	LuaSay("副本使者：阁下已在江湖历练多时，能力已经大有提高，何不试试你究竟有多大能耐？")
	LuaSay("副本使者：击杀试炼地图的boss有机会获得@3极品武器@0，闯关成功后，还可领取经验奖励。")
	AddMenuItem("@7勇者之试","")
	AddMenuItem("@3进入","yzzsin")
	AddMenuItem("@3放弃","yzzsfq")
	elseif(LuaQueryTask("Tyongzhezs")==1) then
	 a=LuaQueryTask("Tyongzhezsa")
	 if(a>0 and a<99) then
  	  LuaSay("副本使者：你在试炼中击杀了@3"..a.."只怪物@0，没有闯关成功，只能得到部分奖励。")
	 end
	 if(a>0 and a<5) then
	  jingyan=10000+level^2*20+level*1500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<9) then
	  jingyan=10000+level^2*20+level*2500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<14) then
	  jingyan=20000+level^2*30+level*2500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")	
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<19) then
	  jingyan=20000+level^2*30+level*3500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<25) then
	  jingyan=20000+level^2*40+level*3500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a<99) then
	  jingyan=30000+level^2*40+level*4500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 elseif(a==99) then--通关
	  LuaSay("副本使者：阁下乃真豪杰，竟然轻松闯关成功。")
	  jingyan=30000+level^2*60+level*6500
	  LuaAddJx("combat_exp",jingyan,"Tyongzhezs")
	  LuaSetTask("Tyongzhezs",99)
	 else
	 LuaSay("副本使者：任务失败，你没有击杀1个怪，可以再试一次。")
	 LuaSetTask("Tyongzhezs",0)
	 end


	elseif(LuaQueryTask("Tyongzhezs")==99) then
	LuaSay("副本使者：你今天已经挑战过了，明天再来吧。")
	end

      else
	LuaSay("副本使者：该副本不能组队进入。")
      end

	   elseif(answer=="yzzsin") then
		 if(LuaQueryTask("Tyongzhezs")==0) then
	     LuaSetTask("Tyongzhezs",1)
	     LuaSetTask("Tyongzhezsa",0)
	     LuaSetTask("Tyzzsday",GetCurrentDay())
	     ChangeMap("lu_yongzhezsa")
	     end

	   elseif(answer=="yzzsfq") then
	   LuaSay("副本使者：是时候展示你的实力了！")

elseif(answer=="Tdzhuangling") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tdzhlday")) then
	LuaSetTask("Tdzhuangling",0)
	LuaSetTask("Tdzhuanglinga",0)
	end
	if(LuaQueryTask("Tdzhuangling")==0) then
	LuaSay("副本使者：近日龙脉所在之地@4皇陵@0出现一批怪物，还望阁下能够施以援手，阻止那些怪物破坏皇陵。")
	LuaSay("副本使者：皇陵中的@3boss还会掉落极品装备@0，守卫皇陵成功，还可以获得大量奖励。")
	AddMenuItem("@7皇陵","")
	AddMenuItem("进入","jinruhl")
	AddMenuItem("放弃","fangqihl")
	elseif(LuaQueryTask("Tdzhuangling")==1) then
	  if(LuaQueryTask("Tdzhuanglinga")==99) then
	  LuaSetTask("Tdzhuangling",99)
	  LuaSay("副本使者：皇陵免遭破坏，阁下功不可没。")
	  jingyan=20000+level^2*70+level*8000
	  LuaAddJx("combat_exp",jingyan,"Tdzhuangling")
	  else
	  LuaSay("提示：守卫皇陵需要抵挡7种怪物的轮番攻击。")
	  end
	  elseif(LuaQueryTask("Tdzhuangling")==99) then
	  LuaSay("提示：多谢阁下的帮忙，今天皇陵总算免遭破坏。")
	end
  elseif(answer=="jinruhl") then
    if(LuaQueryTask("Tdzhuangling")==0) then
	 if(level<71) then
	 LuaSetTask("Tdzhuangling",1)
	 LuaSetTask("Tdzhlday",GetCurrentDay())
	 ChangeMap("lu_dzhuanglinga")
 	 end
 	end
  elseif(answer=="fangqihl") then
	LuaSay("副本使者：没想到阁下竟然袖手旁观，难道皇陵就这么完了。")

elseif(answer=="Tqlxs") then                     -----------千里行商
            if(GetCurrentDay()~=LuaQueryStrTask("qlxsTaskday")) then
            LuaSetTask("Tqlxs",0)
            LuaSetTask("Tqlxsdotime",0)
	      a=LuaItemCount("o_mission037")
	      if(a>0) then
	      DelItem("o_mission037",a)
              end   
	    end
     if(LuaQueryTask("Tqlxs")==0) then  
	      if(LuaQueryTask("Tqlxsdotime")<3) then   
		    LuaSay("副本使者：听说@4天涯海角@0有一位@3幸运老人@0，他那里有很多奇珍异宝，却愿意换取我们的普通物品。")
		    LuaSay("副本使者：那@4天涯海角@0实在是太过遥远，你只要帮我换回@2夜明珠@0就可以得到高额奖励。")
		    AddMenuItem("@7是否直接传送","")
		    AddMenuItem("自己跑","myself")
		    AddMenuItem("直接传送","chuansong")
	      else
		LuaSay("副本使者：做人可不能太贪心了，今天我已经和幸运老人交换了3次物品，你明天再来帮我吧。")
		LuaSay("副本使者：不过你还可以去天涯海角溜达，你要去天涯海角吗@!")
		AddMenuItem("@7是否去","")
		AddMenuItem("去","goto")
	      end
     
    elseif(LuaQueryTask("Tqlxs")==1) then 	
	       LuaSay("副本使者：传说@3幸运老人@0就在@4天涯海角@0的最右边，考验你毅力的时刻到了。") 
		AddMenuItem("@7是否去","")
		AddMenuItem("去","goto")
	        AddMenuItem("直接传送","chuansong")
		     
     elseif(LuaQueryTask("Tqlxs")==2) then
	
	   if(LuaItemCount("o_mission034")>=5) then
	       LuaSay("副本使者：终于得偿所望，什么时候我能亲眼见到他老人家就好了。")
	       if(LuaRandom(20)==19) then
		   LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
		   LuaGive("o_box002",1,"Tdiaoyutg")
		   end
	       DelItem("o_mission034",LuaItemCount("o_mission034"))
	        if(LuaQueryTask("huan7")==1)then
			LuaSetTask("huan7",2)
			UpdateMenu()
		end
	       jingyan=20000+level^2*24+level*2500
	       if(level<20) then 
	       LuaGive("coin",1500,"Tqlxs")
	       else
	       LuaGive("coin",2500,"Tqlxs")
	       end
	        if(LuaQueryTask("bprszj") == 1 and TeamCount()>= 2) then
		LuaSay("副本使者：原来阁下已得天子密令，恭喜你为贵帮增加了一个名额！")
		LuaAddMembers(1)
		else
		LuaSetTask("bprszj",0)
		end
	        LuaAddJx("combat_exp",jingyan,"Tqlxs")
		LuaSetTask("Tqlxs",0)
		end
	 end   
elseif(answer=="chuansong") then		
	if(LuaItemCount("o_state005j")>0) then
		DelItem("o_state005j",1)
		ChangeMap("lu_tyhj",32556,184)
	elseif(LuaItemCount("o_state005")>0) then
		LuaSay("提示：任务奖励的暴击丸无法使用，我这里只收商城的暴击丸@!")			
	else
		LuaSay("提示：你只需要给我一个@2金币的小暴击丸@0，就可以传送到天涯海角的的老人处。")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("提示：点击菜单后再按商店键就可打开商城，选择金币商城就好了。")
		else
			LuaSay("提示：点击右键后再按2键就可打开商城，选择金币商城就好了。")
		end
	end 

	elseif(answer=="myself") then
		LuaSetTask("Tqlxs",1)             
		    LuaAddTask("Tqlxsdotime",1)     
		    LuaGive("o_mission037",20)
		    LuaSetTask("qlxsTaskday",GetCurrentDay())
		    ChangeMap("lu_tyhj")

	elseif(answer=="goto") then
	 ChangeMap("lu_tyhj")




elseif(answer=="taoyuan") then
	ChangeMap("lu_taohuadao")


elseif(answer=="Tmigong") then
     if(GetCurrentDay()~=LuaQueryStrTask("TmgTaskday")) then
       LuaSetTask("Tmigong",0)
       LuaDelTask("Tmg01")
	   LuaDelTask("Tmg02")
	   LuaDelTask("Tmg03")
	   LuaDelTask("Tmg04")
	   LuaDelTask("Tmg05")
	   LuaDelTask("Tmg06")
	   LuaDelTask("Tmg07")
	   LuaDelTask("Tmg08")
	   LuaDelTask("Tmg09")
	   LuaDelTask("Tmg010")
	   LuaDelTask("Tmg011")
	   LuaDelTask("Tmg012")
	   LuaDelTask("Tmg013")
	   LuaDelTask("Tmg014")
     end
     if(LuaQueryTask("Tmigong")==0) then   
     if(GetCurrentHour()==13 or true)then
	  if(level>=18) then
       if(TeamCount()<2) then
       LuaSay("副本使者：在迷宫的每一层均有@33个迷宫管理员@0，选择到@3正确的管理员@0后，将进入迷宫@3下一层@0。")
       LuaSay("副本使者：如果选择到错误的管理员，将会进入迷宫的更低层，进入迷宫的@315层@0后，挑战迷宫成功。")
       LuaSay("副本使者：在迷宫的@35层，10层，15层@0均可以领取奖励，可不要错过了。@!")
       LuaSay("@1提示：该活动时间期限为一个小时，被传送出迷宫地图将不能再次参与，一天只有一次机会，在迷宫里满一个小时的玩家将会被传送出迷宫地图，请把握好时间。")
       LuaSay("你确定要挑战迷宫吗？")
       AddMenuItem("@7是否挑战迷宫","")
       AddMenuItem("挑战迷宫","yesmigong")
       AddMenuItem("放弃","nomigong")
	   else
	   LuaSay("副本使者：迷宫不可组队进入。")
	   end
	  else
	  LuaSay("副本使者：20级以后才能挑战迷宫。")
	  end
	  else
		LuaSay("副本使者：该活动已结束或还未开始，每日@113：00~14:00@0即可参与！")
	  end
	 else
	 LuaSay("副本使者：你今天已经挑战过迷宫了，不能再进。")
	 end 
       elseif(answer=="yesmigong") then
         if(TeamCount()<2) then
         LuaSetTask("TmgTaskday",GetCurrentDay())
         LuaSetTask("Tmigong",1)
         r=LuaRandom(3)+1	
         LuaSetTask("Tmg03",r)	--产生第3层的正确走法
		if(LuaQueryTask("T375A") == 0) then
		LuaSetTask("T375A",99)
		end
	     ChangeMap("lu_migong03")   
	     else
	     LuaSay("副本使者：组队状态下不可进入迷宫。")
	     end
       elseif(answer=="nomigong") then
         LuaSay("副本使者：挑战迷宫可以获得高额回报的哦。")
      

   
  elseif(answer=="shengjifb") then
   LuaSay("副本使者：在升级副本中，杀怪将获得更高的经验奖励。")
   LuaSay("副本使者：如果在升级副本中使用经验书，升级速度将大大提升哦。@!")
   AddMenuItem("@7升级副本","")
   AddMenuItem("@3进入","in")
   elseif(answer=="in") then 
     if(level<30) then
     ChangeMap("lu_tongyougu01")
     elseif(level<40) then
     ChangeMap("lu_tongyougu02")
     elseif(level<50) then
     ChangeMap("lu_tongyougu03")
     elseif(level<60) then
     ChangeMap("lu_tongyougu04")
     elseif(level<70) then
     ChangeMap("lu_tongyougu05")
     elseif(level<80) then
     ChangeMap("lu_tongyougu06")
     end


-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..勇闯迷宫

elseif(answer=="Txmigong")then
	if(LuaPublicQueryStr("xmg1publicday")~=GetCurrentDay())then
		LuaPublicSetStr("xmg1publicday",GetCurrentDay())
		LuaPublicDel("publicSum")
		LuaPublicDel("number1")
		LuaPublicDel("number2")
		LuaPublicDel("number3")
		LuaPublicDel("number4")
		LuaPublicDel("number5")
		LuaDelTask("Txmigong")
		UpdateMenu()
	end
	AddMenuItem("@3勇闯迷宫【活动】","")
	AddMenuItem("@3进入迷宫","xmgjinru")
	--AddMenuItem("@3迷宫排行榜","xmgphb")
	AddMenuItem("@3迷宫说明","xmgshuoming")
	AddMenuItem("@3迷宫体验","xmgtiyan")
	elseif(answer=="xmgjinru")then
	level = LuaQuery("level")
	if(GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5)then
		if(level>=20)then
			if(TeamCount()<2)then
				LuaDelTask("award") --每隔5层的奖励是否领取标记，防止刷
				LuaDelTask("fail")  --5-10层回答问题错误的标记
				LuaDelTask("xiuxi") --第13层
				LuaDelTask("alopen")--每层宝箱打开标记
				LuaDelTask("albuy") --每层钥匙购买标记
				if(level>=20 and level<30)then      --判断等级是为了怪物掉落的时候来控制物品的掉落率
					LuaSetTask("xmglv",2)
				elseif(level>=30 and level<40)then
					LuaSetTask("xmglv",3)
				elseif(level>=40 and level<50)then
					LuaSetTask("xmglv",4)
				elseif(level>=50 and level<60)then
					LuaSetTask("xmglv",5)
				elseif(level>=60 and level<70)then
					LuaSetTask("xmglv",6)
				elseif(level>=70)then
					LuaSetTask("xmglv",7)
				end
				DelItem("o_mission218",LuaItemCount("o_mission218"))--删除上一次活动物品
				DelItem("o_mission219",LuaItemCount("o_mission219"))
				if(LuaQueryStrTask("xmg1day")~=GetCurrentDay())then  --同一天只能进入一次的限制
					hour=GetCurrentHour()
					if(hour>=13 and hour<23)then --每天固定时间进入的限制
					--if(LuaItemCount("e_horse000")>=1 or LuaItemCount("e_horse010")>=1 or LuaItemCount("e_horse011")>=1 or LuaItemCount("e_horse012")>=1 or LuaItemCount("e_horse013")>=1 or LuaItemCount("e_horse014")>=1 or LuaItemCount("e_horse015")>=1 or LuaItemCount("e_horse016")>=1 or LuaItemCount("e_horse017")>=1 or LuaItemCount("e_horse018")>=1 or LuaItemCount("e_horse019")>=1
					 --or LuaItemCount("e_horse020")>=1 or LuaItemCount("e_horse021")>=1 or LuaItemCount("e_horse022")>=1 or LuaItemCount("e_horse023")>=1 or LuaItemCount("e_horse024")>=1 or LuaItemCount("e_horse025")>=1 or LuaItemCount("e_horse026")>=1 or LuaItemCount("e_horse027")>=1 or LuaItemCount("e_horse028")>=1 or LuaItemCount("e_horse029")>=1
					 --or LuaItemCount("e_horse030")>=1 or LuaItemCount("e_horse031")>=1 or LuaItemCount("e_horse032")>=1 or LuaItemCount("e_horse033")>=1 or LuaItemCount("e_horse034")>=1 or LuaItemCount("e_horse035")>=1 or LuaItemCount("e_horse036")>=1 or LuaItemCount("e_horse037")>=1 or LuaItemCount("e_horse038")>=1 or LuaItemCount("e_horse039")>=1 
					-- or LuaItemCount("e_horse040")>=1 or LuaItemCount("e_horse041")>=1 or LuaItemCount("e_horse042")>=1 or LuaItemCount("e_horse043")>=1 or LuaItemCount("e_horse044")>=1 or LuaItemCount("e_horse045")>=1 or LuaItemCount("e_horse046")>=1 or LuaItemCount("e_horse047")>=1 or LuaItemCount("e_horse048")>=1 or LuaItemCount("e_horse049")>=1 
					-- or LuaItemCount("e_horse050")>=1 or LuaItemCount("e_horse051")>=1 or LuaItemCount("e_horse052")>=1 or LuaItemCount("e_horse053")>=1 or LuaItemCount("e_horse054")>=1 or LuaItemCount("e_horse055")>=1 or LuaItemCount("e_horse056")>=1 or LuaItemCount("e_horse057")>=1 or LuaItemCount("e_horse058")>=1 or LuaItemCount("e_horse059")>=1 
					 --or LuaItemCount("e_horse060")>=1 or LuaItemCount("e_horse061")>=1 or LuaItemCount("e_horse062")>=1 or LuaItemCount("e_horse063")>=1 or LuaItemCount("e_horse064")>=1 or LuaItemCount("e_horse065")>=1 or LuaItemCount("e_horse066")>=1 or LuaItemCount("e_horse067")>=1 or LuaItemCount("e_horse068")>=1 or LuaItemCount("e_horse069")>=1 
					-- or LuaItemCount("e_horse070")>=1 or LuaItemCount("e_horse071")>=1 or LuaItemCount("e_horse072")>=1 or LuaItemCount("e_horse073")>=1 or LuaItemCount("e_horse074")>=1 or LuaItemCount("e_horse075")>=1 or LuaItemCount("e_horse076")>=1 or LuaItemCount("e_horse077")>=1 or LuaItemCount("e_horse078")>=1 or LuaItemCount("e_horse079")>=1 
					 --or LuaItemCount("e_horse080")>=1 or LuaItemCount("e_horse081")>=1 or LuaItemCount("e_horse082")>=1 or LuaItemCount("e_horse083")>=1 or LuaItemCount("e_horse084")>=1 or LuaItemCount("e_horse085")>=1 or LuaItemCount("e_horse086")>=1 or LuaItemCount("e_horse087")>=1 or LuaItemCount("e_horse088")>=1 or LuaItemCount("e_horse089")>=1 
					--  or EquipInfo(7)~="")then
					      --LuaSay("副本使者：为维持活动公平性，勇闯迷宫【活动】不允许携带任何坐骑，请将坐骑存寄放到仓库，钱庄老板就在建康城@!")
					 --else
						LuaSetTask("xmg1day",GetCurrentDay())
						LuaShowNotify("龙年行大运，从迷宫中逃生出去，一切都是未知,更多的宝藏在等待着你去寻找。")
 						r=LuaRandom(12)
						LuaSetTask("Txmg1",1)
						if    (r==0)then   ChangeMap("lu_xmigong1")
						elseif(r==1)then   ChangeMap("lu_xmigong2")
						elseif(r==2)then   ChangeMap("lu_xmigong3")
						elseif(r==3)then   ChangeMap("lu_xmigong4")
						elseif(r==4)then   ChangeMap("lu_xmigong5")
						elseif(r==5)then   ChangeMap("lu_xmigong6")
						elseif(r==6)then   ChangeMap("lu_xmigong7")
						elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("恭喜大侠来到幸运层，在这里你打开迷宫使者身上的宝箱将获得双倍的收益！")
						elseif(r==8)then   ChangeMap("lu_xmigong9")
						elseif(r==9)then   ChangeMap("lu_xmigong10")
						elseif(r==10)then  ChangeMap("lu_xmigong11")
						elseif(r==11)then  ChangeMap("lu_xmigong12")
						end
					--end
					else --清除上一次活动所有的数据
						LuaSay("副本使者：活动时间为每周星期一，三，五的13：- 23：00，现在活动还没开始。")
					end
				else
					LuaSay("副本使者：今天你已经进行过了迷宫探险。")
				end
			else
				LuaSay("副本使者：勇闯迷宫【活动】只能由单人进入。")
			end
		else
			LuaSay("副本使者：大侠还是锻炼到20级之后再来吧！")
		end
	else
		LuaSay("副本使者：活动时间为每周星期一，三，五的13:00- 23:00，现在活动还没开始")
	end

	elseif(answer=="xmgshuoming")then
		LuaSay("副本使者：勇闯迷宫【活动】一共分为十五层，前5层找到NPC进入下一层，6-10层找到NPC且回答问题正确进入下一层，答题错误需等一分钟才能继续作答")
		LuaSay("副本使者：11层限时10分钟找到NPC进入下一层，12层收集5个迷宫银锭交给NPC进入下一层，迷宫银锭由迷宫某个角落的@3迷宫幽魂@0掉落")
		LuaSay("副本使者：13层有一定几率等一分钟或者直接进入下一层，14层收集10个迷宫金锭交给NPC进入下一层，一样由@3迷宫幽魂@0掉落，需要注意的是每次活动开始上一次的迷宫活动物品都会被清除哦@!")
		LuaSay("副本使者：5层,10层,15层都能领取奖励，到达15层之后，以点击@3领取奖励@0选项时间为准，前五名将获得丰厚奖励")
		LuaSay("副本使者：在每层设有宝箱，宝箱钥匙只能在勇闯迷宫【活动】NPC处购买，开宝箱以及通过每5层也能获得不错的收益")
		LuaSay("副本使者：一定记得在每5,10,15都有可以领取奖励的哦，祝你好运！")
	elseif(answer=="xmgtiyan")then
		LuaShowNotify("体验地图，找到出口就可以出来")
		ChangeMap("lu_xmigongty")
	--[[elseif(answer=="xmgphb")then   --排行榜查询未能达到预期效果，暂不开放
		LuaSay("副本使者：排行旁查询时间为10:00-23:00")
		if(GetCurrentHour()>10 and GetCurrentHour()<23)then
			if(LuaPublicQueryStr("number1")==0)then
				no1=n_ull
			else
				no1=LuaPublicQueryStr("number1")
			end
			if(LuaPublicQueryStr("number2")==0)then
				no2=n_ull
			else
				no2=LuaPublicQueryStr("number2")
			end
			if(LuaPublicQueryStr("number3")==0)then
				no3=n_ull
			else
				no3=LuaPublicQueryStr("number3")
			end
			if(LuaPublicQueryStr("number4")==0)then
				no4=n_ull
			else
				no4=LuaPublicQueryStr("number4")
			end
			if(LuaPublicQueryStr("number5")==0)then
				no5=n_ull
			else
				no5=LuaPublicQueryStr("number5")
			end-
				

			LuaSay("副本使者：第一名：@3"..LuaPublicQueryStr("number1").."@0，第二名：@3"..LuaPublicQueryStr("number2").."@0，第三名：@3"..LuaPublicQueryStr("number3").."@0，第四名：@3"..LuaPublicQueryStr("number4").."@0，第五名：@3"..LuaPublicQueryStr("number5").."@0")
		else
			LuaSay("副本使者：现在不能查询排行榜")
		end--]]

elseif(answer=="Tsnpc_10")then
	if(LuaQueryTask("Tsnpc_10")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的秘密信件，他说你看了自然会明白的")
		LuaSay("副本使者：嗯，好的。")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_10",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_10")==2)then
		LuaSay("副本使者：信我看到了，你回去复命吧")
	end
elseif(answer=="Tenpc_10")then
	if(LuaQueryTask("Tenpc_10")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主子这次让我传话给你，说要搞最好的副本，要让玩家玩的爽。")
		LuaSay("副本使者：一直在努力，从未被超越")
		LuaSetTask("Tenpc_10",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_10")==2)then
		LuaSay("副本使者：回去告诉你们大人，我懂的")
	end




end
LuaSendMenu()
return 1
end