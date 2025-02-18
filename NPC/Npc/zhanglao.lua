NPCINFO = {
serial= "14" ,
base_name="zhanglao",
icon= 2555,
NpcMove=2555,
name= "老村长" ,
iconaddr=1,
butt="10|10|60",
name_color = "CEFFCE" ,
lastsay="有黄色感叹号NPC会给你任务和指导",
LuaType=1,
}
function do_talk(answer)
 if (answer=="ask") then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0	--灰色问号

	local level= LuaQuery("level")
	local T31=LuaQueryTask("T31")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("T11")==1) then
		AddTopSayMenuItem("@2回乡【剧情】","T11")
		havetask2 =1
	end
	if(LuaQueryTask("T30")==1) then
		AddTopSayMenuItem("@2如何聊天【教程】@0","T30")
		havetask2 =1
	end
	if(T31 ==1)then
		AddTopSayMenuItem("@2成长之路1【剧情】@0","T31")
		--AddTopSayMenuItem("@5寻路至浣衣娘@0","Txl_hyn")
		--havetask2 =1
	end
	if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_zl")==0) then
		AddTopSayMenuItem("@2粽子传情","Tduanwu")
		havetask2 =1
	end
	if(LuaQueryTask("T302")==11 and LuaQueryTask("T302K")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302K")
		havetask2 =1
	end
	if((LuaQueryTask("Tsnpc_2")==1 or LuaQueryTask("Tsnpc_2")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_2")
		if(LuaQueryTask("Tsnpc_2")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_2")==1 or LuaQueryTask("Tenpc_2")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_2")
		if(LuaQueryTask("Tenpc_2")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T105") ==1 )   then     -----宠物任务----
		AddTopSayMenuItem("@2祭拜阿猛","T105")
		havetask2 =1
	end
--以上是黄色问号部分

	if(LuaQueryTask("T11")==0) then
		AddTopSayMenuItem("回乡【剧情】","T11")
		havetask1 =1
	end
	if(level<10 and LuaQueryTask("T30")==0 and LuaQueryTask("T11")==99)then
		AddTopSayMenuItem("如何聊天【教程】","T30")
		havetask1=1
	end
	if(T31 == 0 and LuaQueryTask("T30")==99)  then
		AddTopSayMenuItem("成长之路1【剧情】","T31")
		havetask1 =1
	end

--上为黄色感叹号

	--[[if((LuaQueryTask("Txrfuli")==0 and level<11) or  LuaQueryTask("Txrfuli")<99) then
		AddTopSayMenuItem("@3新人福利@0","Txrfuli")
	end]]
	--[[if(LuaQueryTempStr("online")=="cw21" or LuaQueryTempStr("online")=="cw23" or LuaQueryTempStr("online")=="cw24")then
		AddTopSayMenuItem("@3参加新区论坛活动(激活码兑换)","Txqhd")
	end]]

	if(LuaQueryTask("T30")==99 and level<20)  then
		AddTopSayMenuItem("@9如何聊天【教程】","T30")
	end
--无符号


if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end

if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1


elseif(answer=="T302K") then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
	   LuaSay("老村长：谁会记起我给我写信？。@!")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302K",99)
	   UpdateMenu()


elseif(answer=="Txl_hyn")then
	AutoGoToNpc("@7是否@0寻路至@4浣衣娘","huanyiniang")


 elseif(answer=="Txqhd")then
       AddMenuItem("@7请选择论坛活动内容","")
       AddMenuItem("@3兑换激活码(每人限2个,刷新需重登陆)","Tgzhd001")
      -- AddMenuItem("@3帮派我来建建建","Tgzhd002")
     --  AddMenuItem("@3冲级大奖送满天","Tgzhd003")
        AddMenuItem("@3激活码兑换说明","Tgzhd004")
	--[[elseif(answer=="tiyan") then
	if(IsVisitor()=="true")then
	LuaSay("注册后就能体验到@350级的高级地图与超炫的技能@0,按确定键后再按星号键进行注册")
	else
	LuaSay("提示：现在你就能体验到@350级的高级地图与超炫的技能")
	AddMenuItem("@7游戏体验","")
--	AddMenuItem("@350级技能体验","monster")
--	AddMenuItem("@350级PK体验","pkty")
	AddMenuItem("@3高级地图体验","map")
	end]]

    elseif(answer=="pkty") then
    if(IsVisitor()~="true")then
    LuaEnterDream("lu_testpkmap",81,100,1)
    end

 elseif(answer=="map") then
    AddMenuItem("@7地图选择","")
    AddMenuItem("宗庙","zongmiao")
    AddMenuItem("世外桃源","swty")
    AddMenuItem("村庄","cunzhuang")
    AddMenuItem("雁门关","bg")


   elseif(answer=="zongmiao") then
    ChangeMap("lu_tyzm")
   elseif(answer=="swty") then
    ChangeMap("lu_tyswty")
   elseif(answer=="cunzhuang") then
    ChangeMap("lu_tycz")
   elseif(answer=="bg") then
    ChangeMap("lu_tybg")


 elseif(answer=="monster") then
 	if(IsVisitor()~="true")then
	 LuaEnterDream("lu_testmap",141,279,1)
	 end


elseif(answer=="liaotian") then
        	LuaSay("老村长：去帮助村里的人吧,他们会给你很多奖励。@!")
		DelItem("o_mission010",LuaItemCount("o_mission010"))

elseif(answer=="Tduanwu") then
    if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_zl")==0)  then
        if(LuaItemStatusNormalCount("o_mission204")>=4) then
        LuaSay("老村长：难得他想得周到,每年端午都给村里人送粽子。")
		DelItem("o_mission204",4)
		LuaSetTask("Tdwj_zzcq_zl",99)
		UpdateMenu()
		else
  		LuaSay(""..LuaQueryStr("name").."：晚生真是惭愧,竟然空手而来,这就去准备@34个下品粽子。")
        end
	end

elseif(answer == "Tgzhd001") then--激活码
    if(LuaQueryTask("Tgzhdtime")<2)then
	     if(LuaQueryTask("Txulie")== 0) then
               --LuaSetTask("Tgcjihuoma",1)	--Tgcjihuoma：1、2、3、4分别代表公测激活码、为屠夫证、史诗权证、帮主权证
		SetDjCode()  --成功后返回Txulie=1,该激活码状态设为2,至此激活码失效
	      elseif(LuaQueryTask("Txulie")== 1)then
                LuaSetTask("Txulie",0)
	        LuaAddYB(2,50)
		LuaAddTask("Tgzhdtime",1)
	        LuaSay("你成功兑换了激活码！获得50金币,请查看背包中金币数量,(请下线重新上线即可刷新）。按取消键并选择商城中金币商城,即可购买属性较好的装备！")
	     end
     else
       LuaSay("一个角色只能兑换2个激活码的奖励！金币数重新登陆会刷新！")
     end
elseif(answer == "Tgzhd002") then
   if(GetCurrentDay()== "2010-4-15" or GetCurrentDay()== "2010-4-16" or GetCurrentDay()== "2010-4-17" ) then
      if(LuaQueryTask("Tgzhd002")==0)then
         if(LuaPartyLevel()>1 and LuaQueryRank()>=4)then
	   LuaNotice("在"..LuaQueryStr("name")..",的英明领导下,他的帮派在活动时间（8号-17号）内升至2级帮,领取了帮派建帮奖励,大家祝贺他！")
	    LuaSay("帮派等级越高奖励越高！你的帮库将获得50W金钱,请查询帮派银行！")
             LuaSetTask("Tgzhd002",99)
	     AddMoneyToPartyBank(500000)
	  else
	   LuaSay("必须由帮主来领取,并且帮派等级大于等于2级！")
	  end
      else
      LuaSay("该项奖励你已经领过了,")
      end
    else
     LuaSay("你好！本活动奖励开始到截止时间是8号-14号,领奖时间是15,16,17三天,过期无效,其他奖励请联系论坛管理者。")
    end

elseif(answer == "Tgzhd003") then
     if(LuaQueryTask("Tgzhd003")== 0)then
         local r=RangeQuery("experice")
	if(GetCurrentDay()== "2010-4-15" or GetCurrentDay()== "2010-4-16" or GetCurrentDay()== "2010-4-17" ) then
	        if(r==1) then
                     LuaNotice(""..LuaQueryStr("name")..",第一高手领取了冲级大奖,大家祝贺他！")
		     LuaSetTask("Tgzhd003",99)
		     for n1=1,4 do
		          local i3=LuaRandom(8)+1
		          a3,b3=get(i3)
		          LuaGive(b3,1,"Tgzhd003")
		          end
		  elseif(1<r and r <11)then
		    LuaSay("你排名在前10内,获得2件金币道具！")
		     LuaSetTask("Tgzhd003",99)
		     for n1=1,3 do
		          local i3=LuaRandom(8)+1
		          a3,b3=get(i3)
		          LuaGive(b3,1,"Tgzhd003")
		          end
		  elseif(10<r and r <51)then
		    LuaSay("恭喜你排名在前50内,获得1件金币道具！")
		     LuaSetTask("Tgzhd003",99)
		          for n1=1,2 do
		         local i3=LuaRandom(8)+1
		          a3,b3=get(i3)
		          LuaGive(b3,1,"Tgzhd003")
		          end
		else
		  LuaSay("你当前排名不在50内,不能领取奖励哦！查看排名请看高手榜！")
		end
	   else
	     LuaSay("你好！本活动奖励开始到截止时间是8号-14号,领奖时间是15,16,17三天,过期无效,其他奖励请联系论坛管理者。")
	    end
	  else
	   LuaSay("提示：该奖励只能领一次,年轻人不可贪心！。")
	  end
elseif(answer == "Tgzhd004") then
    LuaSay("你好！激活码是参与论坛活动而活动的激活码,每个激活码可换取50金币,具体活动请关注9游论坛！兑换流程从论坛上获得官方奖励激活码,到游戏中按提示输入激活码,注意自己的激活码不要给他人知晓以免被人领取,获得金币可以去金币商城里购买品质较好的装备！")--帮助新人


elseif(answer=="Txinchun") then              -----------------------快乐新春
	 local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("Txinchun")==3 ) then
      			LuaSay(""..LuaQueryStr("name").."：新春佳节,祝您新的一年身体健康。@!")
				LuaSay("老村长：哈哈,看着您一点点的成长,就是我最大的欣慰了,我们能一起过春节真是上天的恩赐啊。@!")
	            AddMenuItem("@7任务完成","")
	            AddMenuItem("领取奖励","Txinchunjl")
		end
			elseif(answer=="Txinchunjl")then
		       if(LuaQueryTask("Txinchun")==3)then
				LuaSetTask("Txinchun",99)
  		    	LuaSetTask("Txinchunday",GetCurrentDay())
				LuaGive("coin",1000,"Txinchun")
				local jingyan=(20000+level^2*75+level*4000)
				LuaAddJx("combat_exp",jingyan,"Txinchun")
				if(stoday=="2010-2-14")then
				LuaGive("e_pants073t1",1,3,"Txinchun")
				LuaGive("e_clothes073t1",1,3,"Txinchun")
				end
				UpdateMenu()
		       end

elseif(answer=="Txrfuli") then       ---------------------------------新人领取福利
        if(LuaQueryTask("Txrfuli")==0) then
			if(LuaQuery("level")<10) then
				LuaSay("老村长：相识便是缘！恩,老夫已经为你做好@2新人登记@0,@2明天和后天@0可以到此来@3领取珍贵道具@0哦。@!")
				AddMenuItem("@7任务第一阶段完成","")
				AddMenuItem("领取第一次奖励","Txrfulijl1")
			else
				LuaSay("老村长：你的等级已经10级以上了,已经是一代大侠了,快去@4建康城@0闯闯吧。更多精彩等着你。@!")
			end
		elseif(LuaQueryTask("Txrfuli")==1) then
			if(GetCurrentDay()~=LuaQueryStrTask("xrTaskday1")) then
				LuaSay("老村长：年轻人,欢迎你再次来到这里,我将实现我的承诺。@2明天@0会有@2更丰厚的珍贵道具@0相送,@2千万不要错过@0。@!")
				AddMenuItem("@7任务第二阶段完成","")
				AddMenuItem("领取第二次奖励","Txrfulijl2")
			else
				LuaSay("老村长：心急吃不了热豆腐,今天已经帮你登记过了,@2明天才能领取珍贵道具@0哦,可别错过哟。@!")
			end
		elseif(LuaQueryTask("Txrfuli")==2) then
			if(GetCurrentDay()~=LuaQueryStrTask("xrTaskday2")) then
				LuaSay("老村长：不错,老夫就是喜欢有恒心的年轻人,这是给你的奖励。@!")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取最终奖励","Txrfulijl3")
			else
				LuaSay("老村长：欲速则不达！今天的福利你已经领取,@2明天会有更丰厚的珍贵道具@0相送,可别错过哟。@!")
			end
		elseif(LuaQueryTask("Txrfuli")==99) then
				LuaSay("老村长：你已经领取过新人福利,赶快走上统一天下之路吧。更多精彩等着你去发现。@!")
				LuaSay("老村长：偷偷的告诉你,@220级@0就可以去@4宫殿@0@3司马道子@0处,领取@3每日登陆奖励@0了。@!")
		end
elseif(answer=="Txrfulijl1")then
				if(LuaQueryTask("Txrfuli")==0)then
					LuaAddJx("combat_exp",8000,"Txrfuli")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("老村长：再传授你一个实用的技巧，当看到@3界面上有闪动的信件@0时，可以按@3直接点击它@0就可打开信件。@!")
					else
						LuaSay("老村长：再传授你一个实用的技巧，当看到@3界面上有闪动的信件@0时，可以按@3确定键@0再按@38键@0打开信件。@!")
					end
					LuaSetTask("Txrfuli",1)
					LuaSetTask("xrTaskday1",GetCurrentDay())
					UpdateMenu()
				end
			elseif(answer=="Txrfulijl2")then
				if(LuaQueryTask("Txrfuli")==1)then
				LuaAddJx("combat_exp",30000,"Txrfuli")
				LuaGive("o_state001j",1,"Txrfuli")
				LuaGive("o_state012j",1,"Txrfuli")
				LuaSay("老村长：偷偷的告诉你,@220级@0就可以去@4宫殿@0@3司马道子@0处,领取@3每日登陆奖励@0了。@!")
				LuaSetTask("Txrfuli",2)
				LuaSetTask("xrTaskday2",GetCurrentDay())
				UpdateMenu()
				end
			elseif(answer=="Txrfulijl3")then
				if(LuaQueryTask("Txrfuli")==2)then
				LuaAddJx("combat_exp",80000,"Txrfuli")
				LuaGive("o_state001j",2,"Txrfuli")
				LuaGive("o_state012j",2,"Txrfuli")
				LuaSay("老村长：偷偷的告诉你,@220级@0就可以去@4宫殿@0@3司马道子@0处,领取@3每日登陆奖励@0了。@!")
				LuaSetTask("Txrfuli",99)
				UpdateMenu()
				end


elseif(answer=="T11") then         -----------------------回乡
	if(LuaQueryTask("T10")==99)then
		if(LuaQueryTask("T11") == 0 or LuaQueryTask("T11") == 1 ) then
		    LuaSay("老村长："..LuaQueryStr("name")..",你终于回来了,村子附近来了一队官兵,你建功立业的机会来了，可速去参军。@!")
		    AddMenuItem("@7任务完成","")
		    AddMenuItem("领取奖励","T11jl")
		end
	else
		LuaSay("老村长：@!为了大侠对《统一OL》操作更加的熟悉和了解，建议大侠先完成@4桃源境@0@5冉闵@0处的@3第一次打怪【教程】@0再进行其他任务哦。")
		LuaSay("@5小贴士：各类教程任务都是介绍游戏的基本操作的任务，不仅完成步骤简单，经验还奖励还很丰富哦@!")
	end

	elseif(answer=="T11jl")then
		if(LuaQueryTask("T11") == 0 or LuaQueryTask("T11") == 1) then
			LuaSetTask("T11",99)
			DelLog("11")
			LuaAddJx("combat_exp",2500,"T11")
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
			AddMenuItem("@7领取新任务","")
			AddMenuItem("如何聊天【教程】","T30")
		end

elseif(answer=="T31") then              ------------------------成长之路
	if(LuaQueryTask("T30")==99)then
		if(LuaQueryTask("T31")==0) then
		LuaSay("老村长：当今之世,蛮夷四起。老夫知道你早有消除蛮夷,一统天下之志,如今从军正是开创一番事业的时机。")
		LuaSay("老村长：孩子,在你离开之前,找村里的人学习一点技巧吧,日后在战场上或许能派上用场。")
		LuaSay("老村长：@4村中@0的@3浣衣娘@0勤劳能干,去找她请教一番吧。@2向右走@0就能见到她了。")
		LuaSay("老村长：@2向右@0走过了小桥看到@3浣衣娘@0了，你可以在我这里@7自动寻路过去@0哦@!")
		--[[if(LuaQueryTask("Txrfuli")==0)then
			LuaSay("老村长：童鞋你的新人奖励还未领取哦，在未来三天你都可以来我这里领取新人奖励哦@!")
		end]]
                LuaSetTask("T31",1)
		UpdateTopSay("去村中的浣衣娘谈话")
                AddLog("成长之路1【剧情】",31)
		UpdateMenu()
		UpdateNPCMenu("huanyiniang")
		if(LuaQueryTask("T30")==99)then
			AutoGoToNpc("@7是否@0寻路至@4浣衣娘","huanyiniang")
		end
		elseif(LuaQueryTask("T31")==1) then
			LuaSay("老村长：快去找@3浣衣娘@0吧,会对你有所帮助的,她就在这@4桃源村@0中,@2向右走@0就能见到她了。")
			if(LuaQueryTask("T30")==99)then
				AutoGoToNpc("@7是否@0寻路至@4浣衣娘","huanyiniang")
			end
		end
	else
		LuaSay("老村长：聊天是与他人进行交互的主要方式哦，大侠需要先完成@3如何聊天【教程】@0才有能力继续探险哦@!")
	end
 --[[if (npcTeachCmd.size() > 0) { // 有教学任务:对白说明1|keyType|key0|..keyn
// keyType:0表示自动模拟调用,1表示必须由用户自己按对应的键 2 3
// 键值：左键12，右键13 数字键0-9，*键:10、#键:11
// 请按左键，再按4键进入技能菜单|0|-6|4&请按左键，再按3键|0|-6|3
]]
elseif(answer=="T30") then
     if(LuaQueryTask("T30")==0) then
		if(LuaQueryStr("MobieType") ~= "S20")then
		        SendCommand("call=老村长：想知道关于聊天的知识吗？让我来告诉你吧,点击界面上的@3黄颜色聊天泡泡@0就可以@2打开聊天@0了，对了点击@3红颜色聊天泡泡@0，即可查看刚才的聊天对话内容！|0|10")
		else
			SendCommand("call=老村长：想知道关于聊天的知识吗？让我来告诉你吧,按@30键@0就可以@2打开聊天@0了。|0|10")
		end
       UpdateTopSay("知道怎样聊天后来告诉我")
       LuaSetTask("T30",1)
       AddLog("如何聊天【教程】",30)
	UpdateMenu()

      elseif(LuaQueryTask("T30")==1) then
	LuaSay("老村长：你应该看清楚了刚才的演示了吧？上面有@3私聊、公聊、任务、系统@0,当你选择不同的选项时,可以看到相关的信息。")
      if(LuaQueryStr("MobieType") ~= "S20")then
	LuaSay("老村长：你可以做许多操作，祝你聊的开心！呵呵呵！！")
      else
	LuaSay("老村长：你@3连续按2次0键@0时,你就可以选择聊天模式,还有一些其他功能了。")
	LuaSay("老村长：现在好了,你可以选择你喜欢的聊天模式了,你也可以给你的朋友发短信等等,很简单吧。")
      end
      AddMenuItem("@7任务完成","")
      AddMenuItem("领取奖励","T30jl","")

      elseif(LuaQueryTask("T30")==99) then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("老村长：你可以做许多操作，祝你聊的开心！呵呵呵！！")
		LuaSay("老村长：注意灵活使用黄颜色聊天泡泡和红颜色聊天泡泡，大家互动才热闹嘛！！！")
	else
		LuaSay("老村长：按0键就可以打开聊天,上面有私聊、公聊、任务、系统,当你选择不同的选项时,可以看到相关的信息。")
		LuaSay("老村长：你连续按2次0键时,你就可以选择聊天模式,还有一些其他功能了。")
		LuaSay("老村长：现在好了,你可以选择你喜欢的聊天模式了,你也可以给你的朋友发短信等等,很简单吧。")
	end
      LuaSay("提示：该任务已完成")
      end
	elseif(answer=="T30jl") then
        if(LuaQueryTask("T30")==1) then
        LuaSetTask("T30",99)
      	DelLog("30")
      	LuaAddJx("combat_exp",3000,"T30")
		LuaAddAchievementSchedule("Task_num",1)
        UpdateMenu()
		end
elseif(answer=="T105")then ------------------------------------宠物任务,祭拜阿猛
    if(LuaItemCount("o_mission373")==0) then
    LuaSay("老村长：想买@3三炷香@0？需要@31000@0铜币。")
    AddMenuItem("@7选择列表","")
	AddMenuItem("@3买","T105_buy")
	AddMenuItem("@3不买","T105_notbuy")
	else
	LuaSay("老村长：你已经买了@3三炷香@0了,快回复@4建康城@0里的@3驯兽师@0吧！")
	UpdateTopSay("快回复建康城里的驯兽师吧！")
	end
elseif(answer=="T105_buy")  then
    if(LuaItemCount("coin")>= 1000) then
    LuaGive("coin",-1000,"T105")
    LuaGive("o_mission373",1)
    LuaSay("老村长：@3三炷香@0拿好了！快去回复@4建康城@0的@3驯兽师@0吧！")
    UpdateTopSay("快回复建康城里的驯兽师吧！")
    else
    LuaSay("老村长：@3三炷香@0卖1000铜币,不贵的！")
    UpdateTopSay("身上携带1000铜币再来找我吧")
    end
elseif(answer=="T105_notbuy")  then
    LuaSay("老村长：没有@3三炷香@0,将无法完成该任务！")



elseif(answer=="Tsnpc_2")then
	if(LuaQueryTask("Tsnpc_2")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是当朝大人给你的机密信件。")
		LuaSay("老村长：我这把老骨头还有谁惦记着的啊")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_2",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_2")==2)then
		LuaSay("老村长：信我已经收到了，你可以回去复命了")
	end
elseif(answer=="Tenpc_2")then
	if(LuaQueryTask("Tenpc_2")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主英明，信件不太安全，拖我给你传话，他只说让你进山去避暑，最近这边新来了很多人，不知道是干嘛的")
		LuaSay("老村长：哦？会发生战事？好吧你先回去，我知道了")
		LuaSetTask("Tenpc_2",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_2")==2)then
		LuaSay("老村长：我已经知道什么情况了，你可以回去复命了")
	end


end
LuaSendMenu()
return 1
end

function get(n) ----------------随机公测物品列表
tab={
{"双攻符","o_state001j"},
{"双防符","o_state012j"},
{"初级经验","o_state008j"},
{"HP助手","o_state071j"},
{"暴击丸","o_state005j"},
{"贪婪金","o_state032j"},
{"怒焰符","o_state038j"},
{"九转还魂丹","o_state016j"},
{"力量符","o_state017j"},
{"锦纹甲","e_clothes011j"},               ----史诗任务奖励黄金
{"锦纹胫甲","e_pants011j"},
}
local a=tab[n][1]
local b=tab[n][2]
return a,b
end

