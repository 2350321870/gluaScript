NPCINFO = { 
serial="121" ,
base_name="yanwang",
icon=2504,
NpcMove=2504,
name="燕王" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="唉！寡人手无寸权...一傀儡罢了",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	local level= LuaQuery("level")
	local T690=LuaQueryTask("T690")
	local T691=LuaQueryTask("T691")
	AddTopSayMenuItem("@7任务列表","")
	if(level>=50)then
		AddTopSayMenuItem("@2[新]@0@3小赌怡情","T110")
	elseif(level>=55)then
		AddTopSayMenuItem("@3小赌怡情","T110")
	end
	if((LuaQueryTask("Tsnpc_65")==1 or LuaQueryTask("Tsnpc_65")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_65")
		if(LuaQueryTask("Tsnpc_65")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_65")==1 or LuaQueryTask("Tenpc_65")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_65")
		if(LuaQueryTask("Tenpc_65")==1)then
			havetask2=1
		end
	end
	if(T691==1)then
		AddTopSayMenuItem("@2商榷【剧情】","T691")
	end
	if(LuaQueryTask("T692")==1) then
		AddTopSayMenuItem("@2忠心侍者【剧情】","T692")
	end
	if(LuaQueryTask("T712")==1 or LuaQueryTask("T712")==2)then
		AddTopSayMenuItem("@2战前考验【剧情】","T712")
		if(LuaQueryTask("T712")==1 )then
			havetask2=1
		end
	end
	if(T690==3 or T690==1)then
		AddTopSayMenuItem("@2慕容垂之承诺【剧情】","T690")
		if(T690==1)then
		havetask2=1
		end
	end
	if(LuaQueryTask("Tbprw003")==7 or LuaQueryTask("Tbprw003")==8)then
		AddTopSayMenuItem("@2探听风云【每日】@0","Tbprw003")
		havetask2=1
	end


	if(T690==0 and level>=54)then
		AddTopSayMenuItem("慕容垂之承诺【剧情】","T690")
		havetask1=1
	end
	if(T691==0 and level>=54)then
		AddTopSayMenuItem("商榷【剧情】","T691")
		havetask1=1
	end
	if(LuaQueryTask("T692")==0 and level>=53) then
		AddTopSayMenuItem("忠心侍者【剧情】","T692")
		havetask1=1
	end

	if(LuaQueryTask("T662")==1 or LuaQueryTask("T662")==2)then
		AddTopSayMenuItem("@2冷血生母【剧情】","T662")
		havetask=1
	end

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
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1

-----------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("燕王：母亲为何如此待我!") 
	   --LuaGive("e_xysj2",1,5)
	   --LuaGive("e_pet400",1)

-----------------------------------------------
------------------------------------------------ 冷血生母【剧情】
elseif(answer=="T662")then
	if(LuaQueryTask("T662")==1)then
	    LuaSay(""..LuaQueryStr("name").."：奉太后旨意来取半碗龙血，望燕王赏脸！")
	    LuaSay("燕王面色苍白，打了个冷颤，拿刀划破手，放了半碗血！")
	    LuaGive("o_mission360",1)
	    LuaSetTask("T662",2)
	    AddLog("冷血生母【剧情】",662)
	    UpdateMenu()
	elseif(LuaQueryTask("T662")==2)then
		LuaSay("燕王：把我的血给母亲带去吧！")
		
	end
elseif(answer=="T660") then
	if(LuaQueryTask("T660")==1) then
     		LuaSay("燕王：到中山城的杂货商人处讨要一颗人参给我")
	elseif(LuaQueryTask("T660")==3) then
		LuaSay(""..LuaQueryStr("name").."：浑太后叫我买了一株@3人参@0给你补血气。")
        if(LuaItemCount("o_mission355")>=1) then
			LuaSay("燕王：替我谢谢浑太后")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T660jl")
    	elseif(LuaItemCount("o_mission355")<1) then
    		LuaSay(""..LuaQueryStr("name").."：嗯？怎么我买的@3人参@0不见了，我的1000个铜币啊，我再去买株@3人参@0来")
		LuaSay("燕王：...")
		LuaSetTask("T660",1)
		AddLog("仅存的良知【剧情】",660)-------日志的添加
		UpdateMenu()
		end
	end
elseif(answer=="T660jl") then
	if(LuaQueryTask("T660")==3) then
	    LuaSetTask("T660",99)
	    DelLog("660")                 
	    LuaAddJx("combat_exp",972000,"T660")
		LuaAddAchievementSchedule("Task_num",1)	
	    LuaGive("coin",2000,"T660")
	    UpdateMenu()
	end
-----------------------------------   忠心侍者
elseif(answer=="T692") then
	if(LuaQueryTask("T692")==0) then
		LuaSay(""..LuaQueryStr("name").."：不知燕王你为何见到我会如此惊恐？")
		LuaSay("燕王面露难色的说道：你去问@3侍者@0吧，他会告诉你一切的")
		LuaSetTask("T692",1)      -------日志的添加
		AddLog("忠心侍者【剧情】",692)
		UpdateMenu()
		UpdateNPCMenu("shizhe")
	elseif(LuaQueryTask("T692")==1) then
		LuaSay("燕王：到中山城找侍者")
	end
-------------------------------------  战前考验【剧情】
elseif(answer=="T712")then
	if(LuaQueryTask("T712")==1)then
		LuaSay(""..LuaQueryStr("name").."：地下陵墓让浑太后设了禁止，不知大王有什么妙策。")
		LuaSay("燕王：我兄长的尸骨就在陵墓中，可借祭拜之名，我母亲喜欢吃鱼，你可带一块优质鱼肉去。")
		LuaSetTask("T712",2)
		AddLog("战前考验【剧情】",712)
		UpdateMenu()
		UpdateNPCMenu("huntaihou")
	elseif(LuaQueryTask("T712")==2)then
		LuaSay("燕王：为了我们的胜利，必须先贿赂我母亲，你带一块@2优质鱼肉@0去找我母亲，她就在@4参合坡@0")
	end

elseif(answer=="T690")then                   ---------------------------------慕容垂的承诺【剧情】
	if(LuaQueryTask("T690")==0)then
	LuaSay("燕王：我知道我的母亲将会失败，虽然她很毒，但是还是想请阁下转告@4太行古径@0的@3慕容垂@0，让他网开一面，放我母亲一马！")
	LuaSay(LuaQueryStr("name").."：我也很同情你的母亲，你放心，我会去跟@3慕容垂@0说的！")
	LuaSetTask("T690",1)
	AddLog("慕容垂的承诺【剧情】",690)
	UpdateTopSay("速去转告太行古径的慕容垂")
	UpdateMenu()

	elseif(LuaQueryTask("T690")==1)then
	LuaSay("燕王：速去转告@4太行古径@0的@3慕容垂@0吧")

	elseif(LuaQueryTask("T690")==3)then
	LuaSay("燕王：怎么样，@3慕容垂@0怎么说啊？")
	LuaSay(LuaQueryStr("name").."：放心吧，他承诺过了，他会网开一面的！")
	LuaSay("燕王：多谢阁下，也多谢慕容垂的宽容！")
	AddMenuItem("任务完成","")
	AddMenuItem("领取奖励","T690jl")
	end

	elseif(answer=="T690jl")then          --------------------------------690奖励
	if(LuaQueryTask("T690")==3)then
		LuaSetTask("T690",99)
		DelLog("690")
		LuaAddJx("combat_exp",1211000,"T690")
		LuaAddAchievementSchedule("Task_num",1)	
		UpdateMenu()
	end


elseif(answer=="T691")then                   ----------------------------------商榷【剧情】
	if(LuaQueryTask("T691")==0)then
	LuaSay("燕王：如今战乱以稍微平息，虽然我无权无势，大家都说我是个傀儡，但是毕竟她是我母亲！该是有人出来担当的时候了！")
	LuaSay("燕王：阁下去找@3慕容垂@0商量统一之事吧！")
	LuaSetTask("T691",1)
	AddLog("商榷【剧情】",691)
	UpdateTopSay("找慕容垂商量统一之事")
	UpdateMenu()

	elseif(LuaQueryTask("T691")==1)then
	LuaSay("燕王：赶紧去慕容垂那里！")
	end
	
	
---------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("燕王：浑太后是我母亲，可她为何如此待我!")
       elseif(answer=="jkc") then
       ChangeMap("lu_jkc")
       elseif(answer=="lyc") then
       ChangeMap("lu_lyc")
       elseif(answer=="yzc") then
       ChangeMap("lu_yzc")

elseif(answer=="Tbprw003")then                -------------------------探听风云
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw003")==7)then
			LuaSay(LuaQueryStr("name").."：在下远道而来，虽听说您没掌握实权，但是您心存百姓，是个好君主啊。特想向您请教几个问题，不知可否啊？")
				LuaSay("燕王：难得有人理解寡人，有什么问题尽管说吧！")
			LuaSay(LuaQueryStr("name").."：如今我们帮派势力逐渐扩大，怎样求个稳字？")
			LuaSay("燕王：虽然我没实权，但对于这种情况，我给你的建议就是步步为营！")
			LuaSetTask("Tbprw003",8)
			UpdateMenu()

		elseif(LuaQueryTask("Tbprw003")==8)then
			LuaSay("燕王：快去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
		end
	else
		LuaSay("燕王：由于你昨天的@2探听风云【每日】未完成，现在自动重置，到@4晋帝@0那重新接任务吧！")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaDelTask("Tbprw003")
		UpdateMenu()
	end

elseif(answer=="Tsnpc_65")then
	if(LuaQueryTask("Tsnpc_65")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("燕王：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_65",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_65")==2)then
		LuaSay("燕王：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_65")then
	if(LuaQueryTask("Tenpc_65")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("燕王：这都是大人的功劳啊")
		LuaSetTask("Tenpc_65",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_65")==2)then
		LuaSay("燕王：话已经带到了，快回去领取奖励吧")
	end


--------------------------------------------------------------------------  赌博开始：限制每日赌博次数，压1000铜币的时候，从概率上保证玩家能够赢钱
elseif(answer=="T110") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tduboday")) then
		LuaSetTask("Tdubomoney",0)
	end
        LuaSay("燕王：小赌怡情，大赌发家，闲暇之余何不来玩两手@!，说不定今天就是你的幸运日呢。")
		AddMenuItem("选择列表","","")
		AddMenuItem("压@3100铜币","100T","")
		AddMenuItem("压@31000铜币","1T","")
		AddMenuItem("压@35000铜币","5T","")
		AddMenuItem("压@310000铜币","10T","")

elseif(answer=="100T") then
	if(LuaItemCount("coin")>=1000) then
		LuaSetTask("Tduboday",GetCurrentDay())
		LuaSetTask("money",100)
		LuaSay("燕王：压@3几点@0？")
		AddMenuItem("选择列表","","")       
		AddMenuItem("A   1点","one1","")
		AddMenuItem("B   2点","two2","")
		AddMenuItem("C   3点","three3","")
		AddMenuItem("D   4点","four4","")
		AddMenuItem("E   5点","five5","")
		AddMenuItem("F   6点","six6","")
	else
		LuaSay("温馨提示：您身上连1000铜币都没有，真是太不可思议了！您还是不要压了，好好游戏吧。")
	end
elseif(answer=="1T") then
	if(LuaItemCount("coin")>=10000) then
		LuaSetTask("Tduboday",GetCurrentDay())
		LuaSetTask("money",1000)
		LuaSay("燕王：压@3几点@0？")
		AddMenuItem("选择列表","","")       
		AddMenuItem("A   1点","one1","")
		AddMenuItem("B   2点","two2","")
		AddMenuItem("C   3点","three3","")
		AddMenuItem("D   4点","four4","")
		AddMenuItem("E   5点","five5","")
		AddMenuItem("F   6点","six6","")
	else
		LuaSay("温馨提示：身上铜币不够10000，拥有1万以上才能压1千，您还是压小点吧！")
	end

elseif(answer=="5T") then
	if(LuaItemCount("coin")>=50000) then
		LuaSetTask("Tduboday",GetCurrentDay())
		LuaSetTask("money",5000)                          
		LuaSay("燕王：压@3几点@0？")
		AddMenuItem("选择列表","","")
		AddMenuItem("A   1点","one","")
		AddMenuItem("B   2点","two","")
		AddMenuItem("C   3点","three","")
		AddMenuItem("D   4点","four","")
		AddMenuItem("E   5点","five","")
		AddMenuItem("F   6点","six","")
	else
		LuaSay("温馨提示：身上铜币不够50000，拥有5万以上才能压5千，您还是压小点吧！")
	end

elseif(answer=="10T") then
	if(LuaItemCount("coin")>=100000) then
		LuaSetTask("Tduboday",GetCurrentDay())
		LuaSetTask("money",10000)                          
		LuaSay("燕王：压@3几点@0？")
		AddMenuItem("选择列表","","")
		AddMenuItem("@31点","one")
		AddMenuItem("@32点","two")
		AddMenuItem("@33点","three")
		AddMenuItem("@34点","four")
		AddMenuItem("@35点","five")
		AddMenuItem("@36点","six")
	else
		LuaSay("温馨提示：身上铜币不够100000，拥有10万以上才能压1万，您还是压小点吧！")
	end
-------------------------------------------------------------压1000的情况 

elseif(answer=="one1" and LuaQueryTask("money")>0) then                --------------------压1点
	local r1 = LuaRandom(10)
	local money=LuaQueryTask("money")--压了多少钱
	LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
	if(r1==0 or r1==6)  then
		if(LuaQueryTask("Tdubomoney")<100000) then
			LuaSay("恭喜阁下，真的是@31点@0耶，运气真是好啊@!")
			LuaGive("coin",5*money,"T110")
			LuaAddTask("Tdubomoney",5*money)
			LuaDelTask("money")
			if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
			LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
			LuaSetTask("Thx2B",99)
			end
			end
		else
			if(LuaRandom(5)>1) then
				LuaSay("恭喜阁下，真的是@31点@0耶，运气真是好啊@!")
				LuaGive("coin",5*money,"T110")
				LuaAddTask("Tdubomoney",5*money)
				LuaDelTask("money")
				if(LuaQueryTask("Thx2")==2) then
					if(LuaQueryTask("Thx2B")==0) then
						LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
						LuaSetTask("Thx2B",99)
					end
				end
			else
				LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
				LuaGive("coin",-money,"T110")
				LuaAddTask("Tdubomoney",-money)
				LuaDelTask("money")
				if(LuaQueryTask("Thx2")==2) then
					if(LuaQueryTask("Thx2B")==0) then
						LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
						LuaSetTask("Thx2B",99)
					end
				end
			end
		end
	elseif(r1==1 or r1==2)  then
		LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
				LuaSetTask("Thx2B",99)
			end
		end
	elseif(r1==3 or r1==4)  then
		LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
				LuaSetTask("Thx2B",99)
			end
		end
	elseif(r1==5 or r1==7)  then
		LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
				LuaSetTask("Thx2B",99)
			end
		end
	elseif(r1==8)  then
		LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
				LuaSetTask("Thx2B",99)
			end
		end
	elseif(r1==9)  then
		LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
		LuaGive("coin",-money,"T110")
		LuaAddTask("Tdubomoney",-money)
		LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
			if(LuaQueryTask("Thx2B")==0) then
				LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
				LuaSetTask("Thx2B",99)
			end
		end
	  end
elseif(answer=="two2" and LuaQueryTask("money")>0) then              --------------------压2点
	local r2 = LuaRandom(10)
	local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r2==0 or r2==2)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==1 or r2==6)  then
      if(LuaQueryTask("Tdubomoney")<100000) then
         LuaSay("恭喜阁下，真的是@32点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
       else
         if(LuaRandom(5)>1) then
          LuaSay("恭喜阁下，真的是@32点@0耶，运气真是好啊@!")
          LuaGive("coin",5*money,"T110")
          LuaAddTask("Tdubomoney",5*money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
          LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
          LuaGive("coin",-money,"T110")
          LuaAddTask("Tdubomoney",-money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
       end
      elseif(r2==3 or r2==4)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==5 or r2==7)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
		if(LuaQueryTask("Thx2")==2) then
		if(LuaQueryTask("Thx2B")==0) then
		LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
		LuaSetTask("Thx2B",99)
		end
		end
      elseif(r2==8)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==9)  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
	  end
elseif(answer=="three3" and LuaQueryTask("money")>0) then              --------------------压3点
     local  r3 = LuaRandom(10)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r3==0 or r3==1)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==2 or r3==3)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==4 or r3==5)  then
      if(LuaQueryTask("Tdubomoney")<100000) then
         LuaSay("恭喜阁下，真的是@33点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
       else
         if(LuaRandom(5)>1) then
          LuaSay("恭喜阁下，真的是@33点@0耶，运气真是好啊@!")
          LuaGive("coin",5*money,"T110")
          LuaAddTask("Tdubomoney",5*money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
          LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
          LuaGive("coin",-money,"T110")
          LuaAddTask("Tdubomoney",-money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
       end
      elseif(r3==6 or r3==7)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==8)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==9)  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end

      elseif(answer=="four4" and LuaQueryTask("money")>0) then              --------------------压4点
      local r4 = LuaRandom(10)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r4==0 or r4==7)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==1 or r4==8)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==2)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==3 or r4==6)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
            LuaSay("恭喜阁下，真的是@34点@0耶，运气真是好啊@!")
            LuaGive("coin",5*money,"T110")
            LuaAddTask("Tdubomoney",5*money)
            LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
           if(LuaRandom(5)>1) then
             LuaSay("恭喜阁下，真的是@34点@0耶，运气真是好啊@!")
             LuaGive("coin",5*money,"T110")
             LuaAddTask("Tdubomoney",5*money)
             LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
           else
             LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
             LuaGive("coin",-money,"T110")
             LuaAddTask("Tdubomoney",-money)
             LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
           end
        end
        
      elseif(r4==4 or r4==9)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==5)  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end


      elseif(answer=="five5" and LuaQueryTask("money")>0) then              --------------------压5点
      local r5 = LuaRandom(10)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r5==0 or r5==1)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==2 or r5==3)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==4 or r5==5)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==6)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==7 or r5==8)  then
      if(LuaQueryTask("Tdubomoney")<100000) then
         LuaSay("恭喜阁下，真的是@35点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
       else
         if(LuaRandom(5)>1) then
          LuaSay("恭喜阁下，真的是@35点@0耶，运气真是好啊@!")
          LuaGive("coin",5*money,"T110")
          LuaAddTask("Tdubomoney",5*money)
          LuaDelTask("money")
           if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
          LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
          LuaGive("coin",-money,"T110")
          LuaAddTask("Tdubomoney",-money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
       end
      elseif(r5==9 )  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end

      elseif(answer=="six6" and LuaQueryTask("money")>0) then              --------------------压6点
     local r6 = LuaRandom(10)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r6==1)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==2 or r6==3)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==4 or r6==5)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==6 or r6==7)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==8)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==0 or r6==9)  then
      if(LuaQueryTask("Tdubomoney")<100000) then
         LuaSay("恭喜阁下，真的是@36点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
       else
         if(LuaRandom(5)>1) then
          LuaSay("恭喜阁下，真的是@36点@0耶，运气真是好啊@!")
          LuaGive("coin",5*money,"T110")
          LuaAddTask("Tdubomoney",5*money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
          LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
          LuaGive("coin",-money,"T110")
          LuaAddTask("Tdubomoney",-money)
          LuaAddTask("Tdubomoney",-money)
          LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
       end
      end
      
      
  ----------------------------              压5000和1W的情况 
  elseif(answer=="one" and LuaQueryTask("money")>0) then                --------------------压1点
      local r1 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r1==0)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("恭喜阁下，真的是@31点@0耶，运气真是好啊@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("恭喜阁下，真的是@31点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r1==1)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r1==2)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r1==3)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r1==4)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r1==5)  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
	  end
    elseif(answer=="two" and LuaQueryTask("money")>0) then              --------------------压2点
      local r2 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r2==0)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==1)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("恭喜阁下，真的是@32点@0耶，运气真是好啊@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("恭喜阁下，真的是@32点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
           if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r2==2)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==3)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==4)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r2==5)  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
	  end
    elseif(answer=="three" and LuaQueryTask("money")>0) then              --------------------压3点
      local r3 = LuaRandom(6)
      money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r3==0)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==1)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==2)  then
       if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("恭喜阁下，真的是@33点@0耶，运气真是好啊@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
           if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("恭喜阁下，真的是@33点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r3==3)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==4)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r3==5)  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end

      elseif(answer=="four" and LuaQueryTask("money")>0) then              --------------------压4点
      local r4 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r4==0)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==1)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==2)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==3)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("恭喜阁下，真的是@34点@0耶，运气真是好啊@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("恭喜阁下，真的是@34点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r4==4)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r4==5)  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end


elseif(answer=="five" and LuaQueryTask("money")>0) then              --------------------压5点
      local r5 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r5==0)  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==1)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
     money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==2)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
     money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==3)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r5==4)  then
        if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("恭喜阁下，真的是@35点@0耶，运气真是好啊@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("恭喜阁下，真的是@35点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      elseif(r5==5)  then
      LuaSay("开了啊，哇，可惜是@36点@0，阁下不要灰心，下次再来过@!")
      money=LuaQueryTask("money")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      end

elseif(answer=="six" and LuaQueryTask("money")>0) then              --------------------压6点
      local r6 = LuaRandom(6)
      local money=LuaQueryTask("money")
      LuaSay("我摇啊摇，不知道阁下运气如何啊@!")
      if(r6==0  )  then
      LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==1)  then
      LuaSay("开了啊，哇，可惜是@32点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==2)  then
      LuaSay("开了啊，哇，可惜是@33点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==3)  then
      LuaSay("开了啊，哇，可惜是@34点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==4)  then
      LuaSay("开了啊，哇，可惜是@35点@0，阁下不要灰心，下次再来过@!")
      LuaGive("coin",-money,"T110")
      LuaAddTask("Tdubomoney",-money)
      LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
      elseif(r6==5)  then
       if(LuaQueryTask("Tdubomoney")<100000) then
        LuaSay("恭喜阁下，真的是@36点@0耶，运气真是好啊@!")
        LuaGive("coin",5*money,"T110")
        LuaAddTask("Tdubomoney",5*money)
        LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
        else
         if(LuaRandom(6)>1) then
         LuaSay("恭喜阁下，真的是@36点@0耶，运气真是好啊@!")
         LuaGive("coin",5*money,"T110")
         LuaAddTask("Tdubomoney",5*money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         else
         LuaSay("开了啊，哇，可惜是@31点@0，阁下不要灰心，下次再来过@!")
         LuaGive("coin",-money,"T110")
         LuaAddTask("Tdubomoney",-money)
         LuaDelTask("money")
          if(LuaQueryTask("Thx2")==2) then
           if(LuaQueryTask("Thx2B")==0) then
	      LuaSay("提示：你已经完成环形任务第二环，快去回复拓跋圭吧。@!")
          LuaSetTask("Thx2B",99)
	      end
	      end
         end
		end
      end    



end
LuaSendMenu()
return 1
end 

