NPCINFO = {
serial= "44" ,
base_name="zmzl",
icon= 2556,
NpcMove=2556,
name= "宗庙长老" ,
iconaddr=1,
butt="10|10|63",
name_color = "CEFFCE" ,
lastsay="罪恶之人必须洗礼赎罪方可进入建康" ,
LuaType=1,
}

function do_talk(answer)
if (answer=="ask") then
	local level=LuaQuery("level")
	local day=GetCurrentDay()
	AddTopSayMenuItem("@7功能列表","")
	if(day=="2012-6-15" or day=="2012-6-16" or day=="2012-6-17") then
		AddTopSayMenuItem("父亲节祷告仪式","Ac_43")
	else
		DelItem("o_mission525",LuaItemStatusNormalCount("o_mission525"))
        	DelItem("o_seed107",LuaItemStatusNormalCount("o_seed107"))
	end
		if(LuaQueryTask("T601")==1)then
			AddTopSayMenuItem("@2救治亡魂【剧情】","T601")
			havetask=2
		end
            AddTopSayMenuItem("治疗","Tzhiliao01")
	    AddTopSayMenuItem("赎罪","Txili")
	    AddTopSayMenuItem("@3转职","zhuanzhi")
	    AddTopSayMenuItem("@3洗点","Tresetpoint")
	    if(level>=35)then
            AddTopSayMenuItem("进入国战地图(20:00-21:00)","gjbwz")
        else
        	AddTopSayMenuItem("进入国战地图(20:00-21:00)","gjbwz_no")
		end 
	    AddTopSayMenuItem("聊天","liaotian","0")
		return 1
		
elseif(answer=="liaotian") then
	LuaSay("宗庙长老:熊熊圣火，焚我残躯，照我世人")
elseif(answer=="gjbwz")then
	if(LuaQueryTask("Ac14")==0)then
		LuaSay("统一的勇士，欢迎您来参加传说中灰常给力的国战杀人活动，这里非您莫属")
		LuaSetTask("Ac14_gz",LuaQuery("gj_gx"))
		LuaSetTask("Ac14",99)
	end
	GetInCountryProtectFightMap("lu_gzdt_01")
 elseif(answer=="gjbwz_no")then
 	LuaSay("提示：需要35级以上才能参加国战！")

elseif(answer=="Tresetpoint") then
	local level=LuaQuery("level")
	if(level>=10)then
		LuaSay("宗庙长老:如果你感觉自己的力量、敏捷、智力属性点分配的不满意，我可以帮你打通经脉，洗掉已分配的属性点")
		LuaSay("宗庙长老:不过你要交给我一定数@3洗点券@0我才肯帮你，@3洗点券@0在元宝商城其他中可以买到.")
		if(level<=100)then	
		local quan_number=2^(floor(level/10)-1)
		LuaSay("宗庙长老:级别越高需要的数量越多,你现在的级别需要@1"..quan_number.."@0张@3洗点券@0才行。你要洗点吗？")
		AddMenuItem("@7是否洗点","")
		AddMenuItem("@5价目说明","rplist")
		AddMenuItem("洗点","yes_reset")
		AddMenuItem("不洗","no")
		else
		LuaSay("宗庙长老:你的修为都100级以上了，老朽的能力暂时无法打通你的经脉。等老朽保养一段时日回复一下内力你再来吧")
		end
	else
	LuaSay("你现在还不到10级，10级选职业时将会免费洗一次属性点，不需要我来")
	end
elseif(answer=="yes_reset")then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
	if(LuaItemStatusNormalCount("o_resetpoint1y")>=quan_number)then
	LuaResetPoint()
	DelItem("o_resetpoint1y",quan_number)
	LuaSay("宗庙长老:呼呼,好了,耗了我不少内力,你可以重新分配属性点了.这些券可以换些好酒补补,嘿嘿.")
	LuaSay(""..LuaQueryStr("name").."：...")
	else
	LuaSay("宗庙长老:你身上没有足够的洗点券,你现在的级别需要@1"..quan_number.."@0张@3洗点券@0才行.@3洗点券@0元宝商城其它中可以买到.")
	end
	elseif(answer=="rplist")then
	LuaSay("人做事都要付出代价的，如果你级别低时不自己分配好自己的潜能，级别高了才追悔莫及，怨不得别人，所以也别怨我收的券太多")
	LuaSay("10-19级1张,20-29级2张,30-39级4张,40-49级8张,50-59级16张,60-69级32张,70-79级64张,80-89级128张,90级以上256张")


elseif(answer=="Tzhiliao01") then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQuery("hp")>0) then
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
		local jinqian=(level^2 +50)
		if(LuaItemCount("coin")>=jinqian) then
		local maxhp=LuaQuery("max_hp")
		local maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
          FlushMyInfo("0")
          LuaGive("coin",-jinqian,"Tzhiliao01")
          LuaSay("你刚花了"..jinqian.."铜币进行治疗,又恢复了活力")
		 else
		   LuaSay("你的金钱不足,至少需要"..jinqian.."铜币方可治疗")
		  end
	  else
	  LuaSay("你正处于满血满魔状态,不需要治疗")
	   end
	else
		LuaSay("角色已死亡,无法治疗")
	end
elseif(answer=="Txili") then
	local level=LuaQuery("level")
   if(LuaQuery("pk_state")<0)  then
    LuaSay("宗庙长老:佛祖会宽恕你的一切罪过,人性本善嘛,我会给大家洗刷罪恶的机会")
    LuaSay("宗庙长老:你可以选择洗刷1点、5点、10点的pk值")
    AddMenuItem("列表","","")
    AddMenuItem("一点","one","")
    AddMenuItem("五点","five","")
    AddMenuItem("十点","ten","")
   else
    LuaSay("宗庙长老:你不需要洗礼赎罪,施主可要洁身自好")
   end

    elseif(answer=="one") then
	local level=LuaQuery("level")
    local jinqian=(level*10)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",1)
     LuaSay("提示:pk值增加1")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	else
	 LuaSay("宗庙长老:你需要@3"..jinqian.."@0铜币方可洗@31点pk值")
	 end
	

    elseif(answer=="five") then
    local level=LuaQuery("level")
    local jinqian=(level*50)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",5)
     LuaSay("提示:pk值增加5")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	else
	 LuaSay("宗庙长老:你需要@3"..jinqian.."@0铜币方可洗@35点pk值")
	 end

    elseif(answer=="ten") then
    local level=LuaQuery("level")
    local jinqian=(level*100)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",10)
     LuaSay("提示:pk值增加10")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	 else
	 LuaSay("宗庙长老:你需要@3"..jinqian.."@0铜币方可洗@310点pk值")
	 end

elseif(answer=="T601") then
	if(LuaQueryTask("T601")==1) then
		LuaSay("宗庙长老：不知英雄找我何事？")
		LuaSay(""..LuaQueryStr("name").."：在下想压制白骨洞的怨气，不知大师有没有办法？")
		LuaSay("宗庙长老：老夫给你一个@3超生咒@0，你到@4白骨洞@0去使用，或许对那些怨气有些作用。")
		LuaGive("o_mission319",1)
		LuaSetTask("T601",2)
		
		UpdateMenu()		       
	elseif(LuaQueryTask("T601")==2 and LuaItemCount("o_mission319")==0) then
		LuaSay("宗庙长老：这么重要的东西都被你丢了，忍痛割爱，老夫再给你一个吧！")
		LuaGive("o_mission319",1)
	elseif(LuaQueryTask("T601")==2 and LuaItemCount("o_mission319")==1) then
		LuaSay("提示:@3到白骨洞使用超生咒，然后再去找@3乞伏奎@0")
	end


elseif(answer=="zhuanzhi") then
	local level=LuaQuery("level")
   	LuaSay("宗庙长老：如果感觉当前职业不适自己，可以带足够数量的@2转职信物@0给我，我可帮你转职，@2转职信物@0在@3元宝商城@0@4其它@0中可以买到。")
	LuaSay("宗庙长老：转职后，@3技能点自动重置@0，而想要@3重置人物属性点@0得去找宗庙的长老。")
	local level=LuaQuery("level")
	--LuaSay("@1xx级以上转职暂不开放")
	if(level>=10 and level<=100)then	--xx级以上暂不开放
	 if(EquipInfo(1)=="" and EquipInfo(2)=="") then
		local quan_number=2^(floor(level/10)-1)
		LuaSay("宗庙长老：级别越高@2转职信物@0需要的数量越多，你现在的级别需要@1"..quan_number.."@0张@2转职信物@0才行。你要转职吗？")
		AddMenuItem("@7转职","")
		if(level>=30)then
		AddMenuItem("@5价目说明","zzlist")
		end
		if(LuaQueryStr("class")~="wu") then
		AddMenuItem("转职为侠客","xiage_ag","") 
		end
		if(LuaQueryStr("class")~="xian") then
		AddMenuItem("转职为谋士","moushi_ag","")
		end
		if(LuaQueryStr("class")~="shen") then
		AddMenuItem("转职为战士","zhanshi_ag","")
		end
	 else
		LuaSay("宗庙长老：很抱歉！您必须@3将您的主手武器和副手武器都卸下后@0才能进行转职。")
	 end
	else
		LuaSay("很抱歉！10级以上才能转职。")
	end
	elseif(answer=="zzlist")then
	LuaSay("宗庙长老：等级越高需要的转职信物就越多，下面是具体需要的数量")
	LuaSay("宗庙长老：10-19级1张,20-29级2张,30-39级4张,40-49级8张,50-59级16张,60-69级32张,70-79级64张,80-89级128张,90级以上256张。")

elseif(answer=="xiage_ag" and LuaQueryStr("class")~="wu") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
	if(LuaItemStatusNormalCount("o_changeclass1y")>=quan_number)then
	    LuaSet("class","wu")
		ResetSkill()		--重置技能树
		DelItem("o_changeclass1y",quan_number)
		FlushMyInfo(2)	--刷新人物信息
		LuaLogRecord("职业","10","职业","选择",3) --10级 选择职业 0无职业 1战 2谋士 3侠客
		LuaSay("提示：你成功的转职成为了侠客。")
	else
	    LuaSay("宗庙长老：你没有足够的@2转职信物@0，你的级别需要@1"..quan_number.."@0张@2转职信物@0。@2转职信物@0@3元宝商城@0@4其它@0中可以买到。")
	end
elseif(answer=="moushi_ag" and LuaQueryStr("class")~="xian") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
        if(LuaItemStatusNormalCount("o_changeclass1y")>=quan_number)then
        LuaSet("class","xian")
		ResetSkill()
		DelItem("o_changeclass1y",quan_number)
		FlushMyInfo(2)
		LuaLogRecord("职业","10","职业","选择",2)
		LuaSay("提示：你成功的转职成为了谋士。")
        else
	    LuaSay("宗庙长老：你没有足够的@2转职信物@0，你的级别需要@1"..quan_number.."@0张@2转职信物@0。@2转职信物@0@3元宝商城@0@4其它@0中可以买到。")
	    end
elseif(answer=="zhanshi_ag" and LuaQueryStr("class")~="shen") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
        if(LuaItemStatusNormalCount("o_changeclass1y")>=quan_number)then
        LuaSet("class","shen")
		ResetSkill()
		DelItem("o_changeclass1y",quan_number)
		FlushMyInfo(2)
		LuaLogRecord("职业","10","职业","选择",1)
		LuaSay("提示：你成功的转职成为了战士。")
		else
	    LuaSay("宗庙长老：你没有足够的@2转职信物@0，你的级别需要@1"..quan_number.."@0张@2转职信物@0。@2转职信物@0@3元宝商城@0@4其它@0中可以买到。")
	    end
	
elseif(answer=="class") then
	local level=LuaQuery("level")
         if(level>=10)  then
           LuaSay("宗庙长老：为了表彰你作出的贡献，你现在可以选择@3侠客、谋士、战士@0中的任何一种职业了。")
	       if(LuaQueryStr("class")=="zhan")then	       
		   AddMenuItem("@7选择职业","")
           AddMenuItem("侠客","xiake")
           AddMenuItem("谋士","moushi")
           AddMenuItem("战士","zhanshi")
	       end
         else
         LuaSay("宗庙长老：10级后方能选择职业。")
         end
	elseif(answer=="xiake") then
            LuaSay("宗庙长老：侠客追求一击必杀，永远要先人一步。拥有比谋士强的体质HP，比战士高的MP。")
            LuaSay("宗庙长老：但同时，MP比谋士低、体质HP比战士低，拥有3个职业中最高的敏捷。")
            LuaSay("宗庙长老：你确定选择该职业吗？")
	    	AddMenuItem("@7成为侠客","")
            AddMenuItem("再想想，先不决定","wait","")
			AddMenuItem("确定","y_xiake","")
            
    elseif(answer=="moushi") then
            LuaSay("宗庙长老：谋士对于智慧的追求，是他们一生的选择。拥有三个职业中最弱的体质HP、最高的MP。")
            LuaSay("宗庙长老：谋士通常都是一场战斗的支撑者。他们能够恢复自己和朋友健康，也可以直接法术攻击敌人。")
            LuaSay("宗庙长老：你确定选择该职业吗？")
            AddMenuItem("@7成为谋士","")
            AddMenuItem("再想想，先不决定","wait","")
			AddMenuItem("确定","y_moushi","")
            
    elseif(answer=="zhanshi") then
            LuaSay("宗庙长老：战士追求肉身的极致，推崇力量。拥有三个职业中最强的体质HP、最低的MP。")
            LuaSay("宗庙长老：战士通常都是一场战斗中的先锋，勇往直前，义无反顾。")
            LuaSay("宗庙长老：你确定选择该职业吗？")
			AddMenuItem("@7成为战士","")
			AddMenuItem("再想想，先不决定","wait","")
			AddMenuItem("确定","y_zhanshi","")
            
        elseif(answer=="y_xiake" and LuaQueryStr("class")=="zhan") then
	local level=LuaQuery("level")
        LuaSay("宗庙长老：尊贵的"..LuaQueryStr("name").."，你已经选择了@3侠客@0，这几件装备就作为送给你的礼物吧。")
        LuaSay("温馨提示：您已经达到@210级@0，可以第一次@3开新手大礼包@0了哦。@!")
		LuaSet("class","wu")      ---  侠客
		ResetSkill()              ---重置技能树
		LuaResetPoint() --重置属性点
		FlushMyInfo(2)          ---刷新所有人物信息
        LuaAddJx("combat_exp",18000,"T292")
		LuaGive("e_sword003",1,1,"Tclass")
		LuaGive("e_knife001",1,1,"Tclass")
		--LuaGive("e_clothes102",1,2)
		LuaGive("e_pants102",1,2)
		UpdateMenu()
        elseif(answer=="y_moushi" and LuaQueryStr("class")=="zhan") then
	local level=LuaQuery("level")
        LuaSay("宗庙长老：尊贵的"..LuaQueryStr("name").."，你已经选择了@3谋士@0，这几件装备就作为送给你的礼物吧。")
        LuaSay("温馨提示：您已经达到@210级@0，可以第一次@3开新手大礼包@0了哦。@!")
		LuaSet("class","xian")      --谋士
		ResetSkill()
		LuaResetPoint()
		FlushMyInfo(2)
        LuaAddJx("combat_exp",18000,"Tclass")
		LuaGive("e_staff003",1,1,"Tclass")
		LuaGive("e_book016",1,1,"Tclass")
		--LuaGive("e_clothes101",1,2)
		LuaGive("e_pants101",1,2)
		UpdateMenu()
        elseif(answer=="y_zhanshi" and LuaQueryStr("class")=="zhan") then
	local level=LuaQuery("level")
        LuaSay("宗庙长老：尊贵的"..LuaQueryStr("name").."，你已经选择了@3战士@0，这几件装备就作为送给你的礼物吧。")
        LuaSay("温馨提示：您已经达到@210级@0，可以第一次@3开新手大礼包@0了哦。@!")
		LuaSet("class","shen")      --战士
		ResetSkill()
		LuaResetPoint()
		FlushMyInfo(2)
        LuaAddJx("combat_exp",18000,"Tclass")
		LuaGive("e_falchion003",1,1,"Tclass")
		LuaGive("e_shield016",1,1,"Tclass")
		--LuaGive("e_clothes103",1,2)
		LuaGive("e_pants103",1,2)
		UpdateMenu()
		elseif(answer=="wait") then
        LuaSay("宗庙长老：也对，想清楚了再来找我。@!")
        
elseif(answer=="Ac_43") then----父亲节祷告仪式
    LuaSay("活动期间：2012年6月15日-6月17日，只需自己集齐10朵鲜花，帮助宗庙长老完成祈祷，就可获得神的祝福与奖励：大量经验以及高级龙玉！")
    LuaSay("领取20个鲜花种子后，在@4建康城南@0@3种子商人@0处进入初级种植场，种下鲜花等待1小时成熟，每个种子能产出2朵花！只能领取一次奖励哦！")
    LuaSay("注意：完成任务后会删除身上所有种子和鲜花！")
	if(LuaQueryTask("Ac_43")==0)then
		if(LuaFreeBag()>=1)then
			LuaGive("o_seed107",20,"Ac_43")
			LuaSetTask("Ac_43",1)
		else
			LuaSay("请保持至少1格的背包空间")
		end
	elseif(LuaQueryTask("Ac_43")==1)then
		if(LuaItemStatusNormalCount("o_mission525")>=10)then
			LuaSay("恭喜你完成了任务！")
			LuaAddJx("combat_exp",1000000,"Ac_43")
			LuaGive("o_longyuSP",1,"Ac_43")
			DelItem("o_mission525",LuaItemStatusNormalCount("o_mission525"))
			DelItem("o_seed107",LuaItemStatusNormalCount("o_seed107"))
			LuaSetTask("Ac_43",99)
		else
			LuaSay("需要收集10朵鲜花哦，继续加油吧！")
		end
	elseif(LuaQueryTask("Ac_43")==99)then
		LuaSay("你已经完成了本活动，已经领取过大奖啦！")
	end



end
LuaSendMenu()
return 1
end

