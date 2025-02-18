NPCINFO = {
serial="310" ,
base_name="wangmeng" ,
icon=2568,
NpcMove=2568,
name="王猛【装备使者】" ,
iconaddr=1 ,
butt="10|10|60" ,
lastsay="哼哼哈嘿！" ,
LuaType=1,
have_sell_item=1,
}
addBuyitem={
count=14,
{"o_drug_hp3" , 0  , 8 },
{"o_drug_mp3" , 0  , 8 },
{"o_falchionHC" , 0  , 8 },
{"o_shieldHC" , 0  , 8 },
{"o_swordHC" , 0  , 8 },
{"o_knifeHC" , 0  , 8 },
{"o_penfanHC" , 0  , 8 },
{"o_bookHC" , 0  , 8 },
{"o_clothesHC" , 0  , 8 },
{"o_pantsHC" , 0  , 8 },
{"o_headHC" , 0  , 8 },
{"o_shoesHC" , 0  , 8 },
{"o_earringHC" , 0  , 8 },
{"o_necklaceHC" , 0  , 8 },
}
function do_talk(answer)            
if (answer=="ask") then 
	havetask =0		
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7菜单列表","")
	AddTopSayMenuItem("@1副本说明与警告","jieshao")
	AddTopSayMenuItem("@3合成书买卖","buy1")
	AddTopSayMenuItem("@7无双谕令【每日】","Twsyl")
	AddTopSayMenuItem("@7天诛谕令【每日】","Ttzyl")
	AddTopSayMenuItem("@7天降龙玉【每日】","Ttjly")
	AddTopSayMenuItem("@3兑换高级斗玉","dy_SP")
	AddTopSayMenuItem("@3兑换高级龙玉","ly_SP")
	AddTopSayMenuItem("@3离开副本","likai")
	AddTopSayMenuItem("聊天","liaotian")

return 1

elseif(answer=="liaotian") then
    LuaSay("王猛：可惜没双截棍，只好耍大刀了！喝,嘿,哈！")
elseif(answer=="likai") then
	ChangeMap("lu_jkc")
elseif(answer=="jieshao") then
    LuaSay("王猛：小怪有极低的概率掉落40~100级的套装合成书（不绑定）！小怪攻击力很低，但是有很高的血量！")
    LuaSay("王猛：boss无双猛将的等级为79，杀死boss后100%可以获得一定数量斗玉（不绑定），龙玉（绑定）！并且有一定概率掉落套装合成书（不绑定）！")
    LuaSay("王猛：boss的攻防属性一般！拥有300万的超厚血量！boss刷新时间为8小时，在此期间，boss的血量不会恢复的！")
    LuaSay("王猛：@1本地图为可PK地图，不是打宝地图那种安全区！你可能会遭受本国或外国人的恶意攻击和抢夺@0！杀人不会扣PK值！")
    LuaSay("王猛：@1如果你杀死了比自己低很多级的人是无法获得奖励，不能爆他装备（不绑定）和物品（不绑定）的！@0！")
    LuaSay("王猛：@1没有最强、最幸运、最猥琐的人能打到好东西，只有团结的团队才是最强的@0！")
elseif(answer=="buy1") then
	local level=LuaQuery("level")
   if(LuaQuery("level")<10) then
		DoBuy()
   else
	  	if(LuaQueryTask("lendmoney")~=0 and floor(GetCurrentTime()/86400)-LuaQueryTask("lend_day")-floor(LuaQueryTask("credit")/10)*7-7>0)then
		LuaSay("王猛：@1由于你的贷款已过期限未还，商界对你的信誉产生了不满，暂时禁止对你进行买卖。")
		LuaSay("王猛：@1等你去还了钱庄的贷款再来买卖吧，不及时还贷会禁止更多功能的。")
		else
		DoBuy()
		end
  end
elseif(answer=="Twsyl")then    -------------无双谕令
local level=LuaQuery("level")
    if(LuaQueryStrTask("Twsyl_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Twsyl",0)
		LuaSetTask("Twsyl_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("Twsyl") == 0)then
	LuaSay("王猛：杀死@310个无双士兵@0！我会给你一个不错的小玩意！任务要当天完成，否则第二天会被重置的哦！")
	LuaSetTask("Twsyl",1)
	LuaSetTask("task_kill/mon_145/Twsyl",1)
	UpdateMenu()
	elseif(LuaQueryTask("Twsyl") == 1)then
        if(LuaQueryTask("task_kill/mon_145/Twsyl")>=11) then
        AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","Twsyljl")
		else
		LuaSay("王猛：你目前杀死@3无双士兵@0的数量为@3"..(LuaQueryTask("task_kill/mon_145/Twsyl")-1).."个@0！杀够@310@0个才能交任务！")
		end
    elseif(LuaQueryTask("Twsyl") == 99)then
    LuaSay("王猛：你已经完成了今天的任务，明天再来吧！")
    end
elseif(answer=="Twsyljl")then
	local level=LuaQuery("level")
	if(LuaQueryTask("Twsyl")==1) then
  		if(LuaQueryTask("task_kill/mon_145/Twsyl")>=11) then
  			local r=LuaRandom(2)
  			if(r==0)then
  			LuaGive("e_swordT1",1,3,"Twsyl")
			else
			LuaGive("e_swordT2",1,3,"Twsyl")
			end                                        
		LuaDelTask("task_kill/mon_145/Twsyl")
		LuaSetTask("Twsyl",99)
		UpdateMenu()
		end
	end
elseif(answer=="Ttzyl")then                       -----------------天诛谕令
	local level=LuaQuery("level")
    if(LuaQueryStrTask("Ttzyl_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Ttzyl",0)
		LuaSetTask("Ttzyl_Taskday",GetCurrentDay())
	end
	 if(LuaQueryTask("Ttzyl") == 0)then
	 LuaSay("王猛：杀死无双士兵收集@330个天诛谕令@0！我会给你一定数量的@7斗玉@0！任务物品当天没上交，第二天仍然会存在的！")
	 LuaSetTask("Ttzyl",1)
	 UpdateMenu()
	elseif(LuaQueryTask("Ttzyl") == 1)then
        if (LuaItemCount("o_mission419")>=30)then
        AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","Ttzyljl")
		else
		LuaSay("王猛：你目前获得@7天诛谕令@0的数量为@3"..(LuaItemCount("o_mission419")).."个@0！需要@330@0个才能交任务！")
		end
    elseif(LuaQueryTask("Ttzyl") == 99)then
    LuaSay("王猛：你已经完成了今天的任务，明天再来吧！")
    end
elseif(answer=="Ttzyljl")then
	local level=LuaQuery("level")
	if(LuaQueryTask("Ttzyl")==1) then
  		if (LuaItemCount("o_mission419")>=30)then
  		DelItem("o_mission419",30)
		local num
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
  		LuaGive("o_douyu",num,"Ttzyl")                                        
		LuaSetTask("Ttzyl",99)
		UpdateMenu()
		end
	end
elseif(answer=="Ttjly")then
	local level=LuaQuery("level")
    if(LuaQueryStrTask("Ttjly_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Ttjly",0)
		LuaSetTask("Ttjly_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("Ttjly") == 0)then
		if(LuaFreeBag()>=2)then	
	   		if(LuaQuery("onlinetime")>7200)then
			LuaSay("王猛：你已经持续在线@32小时@0，集天地之灵气，成功的获得了龙玉！")
			local num
			if(LuaQuery("level")<30) then    ------表
			num=1
			elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			num=2
			elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			num=5
			elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			num=10
			elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
			num=15
			elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
			num=20
			elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
			num=25
			elseif(LuaQuery("level")>=90) then
			num=30
			end
  			LuaGive("o_longyu",num,"Ttjly")
			LuaSetTask("Ttjly",99)
			UpdateMenu()
			else
		    LuaSay("王猛：你目前在线时间不足@32小时@0，无法领取奖励！")
			end
		else
		LuaSay("提示：请至少保留2格包裹空间，否则会造成损失！")
		end
    elseif(LuaQueryTask("Ttjly") == 99)then
    LuaSay("王猛：你已经完成了今天的任务，明天再来吧！")
    end
elseif(answer=="dy_SP")then
	if(LuaFreeBag()>=2)then	
		if(LuaItemStatusNormalCount("o_douyu")>=100)    then
	    	LuaSay("王猛：你确定要用@3100@0个@7斗玉@0兑换@31@0个@7高级斗玉@0？")
	   		AddMenuItem("@7是否换？","")
			AddMenuItem("@7换","dy_SP_yes","")
		else
	   		 LuaSay("王猛：你身上的斗玉不足@3100@0个！无法兑换！")
		end
	else
	LuaSay("提示：请至少保留2格包裹空间，否则会造成损失！")
	end
elseif(answer=="dy_SP_yes") then
    if(LuaItemStatusNormalCount("o_douyu")>=100)  then
    LuaGive("o_douyuSP",1,"douyu_SP")
    DelItem("o_douyu",100)
    end
elseif(answer=="ly_SP")then
	if(LuaFreeBag()>=2)then	
		if(LuaItemStatusNormalCount("o_longyu")>=50)    then
	   	 	LuaSay("王猛：你确定要用@350@0个@3龙玉@0兑换@31@0个@3高级龙玉@0？")
	    	AddMenuItem("@7是否换？","")
			AddMenuItem("@7换","ly_SP_yes","")
		else
	    	LuaSay("王猛：你身上的龙玉不足@350@0个！无法兑换！")
		end
	else
	LuaSay("提示：请至少保留2格包裹空间，否则会造成损失！")
	end
elseif(answer=="ly_SP_yes") then
    if(LuaItemStatusNormalCount("o_longyu")>=50)  then
    LuaGive("o_longyuSP",1,"longyu_SP")
    DelItem("o_longyu",50)
    end
    
end
LuaSendMenu()
return 1
end
