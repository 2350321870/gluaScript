NPCINFO = { 
serial="141" ,
base_name="migongshizhe" ,
icon=2576,
NpcMove=2576 ,
name="迷宫使者" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE",
lastsay="宝藏总是默默的在角落里发光",               
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0
        local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
	fail = LuaQueryTask("fail")	--全局变量
	xiuxi = LuaQueryTask("xiuxi")	--全局变量
        Txmg1= LuaQueryTask("Txmg1")	--全局变量
	award= LuaQueryTask("award")	--全局变量，奖励标记（防止被刷）
        AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("Txmg1")<15 and LuaQueryTask("fail")==0 and LuaQueryTask("xiuxi")==0)then
		AddTopSayMenuItem("@3进入下一层","next")
	end
	if(LuaQueryTask("fail")==1)then
		AddTopSayMenuItem("@3再回使者","wenti")
	end
	if(LuaQueryTask("IsNo1")==1)then
		AddTopSayMenuItem("@3领取称号","lqchyes")
		AddTopSayMenuItem("@3不领","lqchno")
	end
	if(LuaQueryTask("xiuxi")==1)then
		AddTopSayMenuItem("@3休息充分","xiuxi")
	end
	if(LuaQueryTask("Txmg1")==15 and LuaQueryTask("award")==3)then
		AddTopSayMenuItem("@3凯旋而归","over")
	end
	if(LuaQueryTask("Txmg1")<15)then
		AddTopSayMenuItem("@3购买钥匙","buykey")
	end
	if(LuaQueryTask("Txmg1")==5 or LuaQueryTask("Txmg1")==10 or LuaQueryTask("Txmg1")==15)then
		AddTopSayMenuItem("@3领取奖励","xmgjl")
	end
	if(LuaQueryTask("award")~=3)then
		AddTopSayMenuItem("@3查看当前层数","look")
		AddTopSayMenuItem("@3送我出去","out")
	end
 return 1


  
elseif(answer=="next")then
	if((GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5) and GetCurrentHour()~=23)then
		if(LuaQueryTask("Txmg1")<5)then
			LuaAddTask("Txmg1",1)
			LuaDelTask("alopen")
			LuaDelTask("albuy")
			if(LuaQueryTask("Txmg1")==5)then
				if(LuaPublicQuery("publicSum")==0)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第五层，勇闯迷宫【活动】第一名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==1)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第五层，勇闯迷宫【活动】第二名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==2)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第五层，勇闯迷宫【活动】第三名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==3)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第五层，勇闯迷宫【活动】第四名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==4)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第五层，勇闯迷宫【活动】第五名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==5)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第五层，勇闯迷宫【活动】第五名已经产生，后续玩家可以放慢脚步，寻找让你心动的宝贝！")
				end
			end
			local r=LuaRandom(12)
			if    (r==0)then   ChangeMap("lu_xmigong1")
			elseif(r==1)then   ChangeMap("lu_xmigong2")
			elseif(r==2)then   ChangeMap("lu_xmigong3")
			elseif(r==3)then   ChangeMap("lu_xmigong4")
			elseif(r==4)then   ChangeMap("lu_xmigong5")
			elseif(r==5)then   ChangeMap("lu_xmigong6")
			elseif(r==6)then   ChangeMap("lu_xmigong7")
			elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("恭喜大侠来到幸运层，在这里你打开宝箱将会获得更多的收益！")
			elseif(r==8)then   ChangeMap("lu_xmigong9") 
			elseif(r==9)then   ChangeMap("lu_xmigong10")
			elseif(r==10)then  ChangeMap("lu_xmigong11")
			elseif(r==11)then  ChangeMap("lu_xmigong12")
			end 
			
			UpdateMenu()
		elseif(LuaQueryTask("Txmg1")<=10)then
			if(LuaQueryTask("Txmg1")==5)then
				LuaSay("迷宫使者：年轻人你，刚才你已经通过了耐心考验下面将是对你耐心和智力的双重考验，当然你可以考虑退出，如果你害怕的话。")
				LuaSay("迷宫使者：好，现在来开始回答我的问题，回答正确你才有资格进入下一关。")
			elseif(LuaQueryTask("Txmg1")==10)then
				LuaSay("迷宫使者：年轻人看你这么有勇有谋，偷偷的提前告诉你，在下一关将是计时过关，只有十分钟，珍惜时间哦")
				LuaSay("迷宫使者：现在来回答我的最后一个问题吧")
			else		
				LuaSay("迷宫使者：好，现在来开始回答我的问题，回答正确你才有资格进入下一关。")
			end
				local r=LuaRandom(14)
				if(r==0)then
					LuaSay("迷宫使者：在哪里可以进行@3材料兑换和每日挖宝@0？")
					AddMenuItem("@7答案选项","")
					AddMenuItem("在桃源村的铁匠处","NO_6","")--NO_6
					AddMenuItem("建康城南的武器店伙计处","NO_6","")
					AddMenuItem("建康城的行脚商人处","NO6_ANSWER","")--NO6_ANSWER
				elseif(r==1)then
					LuaSay("迷宫使者：在哪里可以进行@3每日跑商任务@0？")
					AddMenuItem("@7答案选项","")
					AddMenuItem("桃源村的迷宫使者处","NO_6","")
					AddMenuItem("建康城的马夫处","NO_6","")
					AddMenuItem("建康城的行脚商人处","N06_ANSWER","")
				elseif(r==2)then
					LuaSay("迷宫使者：孔曰成仁，孟曰说法，韩非取义中那一句是正确的？")
					AddMenuItem("@7答案选项","")
					AddMenuItem("孔曰成仁","NO6_ANSWER")
					AddMenuItem("孟曰说法","NO_6")
					AddMenuItem("韩非取义","NO_6")
				elseif(r==3)then
					LuaSay("迷宫使者：哪里可以存取钱财和贷款借钱？")
					AddMenuItem("@7答案选项","")
					AddMenuItem("建康城的渔翁处","NO_6","")
					AddMenuItem("建康城南的当铺伙计处","NO_6","")
					AddMenuItem("建康城南的钱庄老板处","NO6_ANSWER","")				
				elseif(r==4)then
					LuaSay("迷宫使者：哪里可以买到宠物与坐骑？","")
					AddMenuItem("@7答案选项","")
					AddMenuItem("建康城的渔翁处","NO_6","")
					AddMenuItem("建康城南的钱庄老板处","NO_6","")
					AddMenuItem("建康城的驯兽师处","NO6_ANSWER","")
				elseif(r==5)then
					LuaSay("迷宫使者：哪里可以进行寄卖？","")
					AddMenuItem("@7答案选项","")
					AddMenuItem("建康城的渔翁处","NO_6","")
					AddMenuItem("建康城南的当铺伙计处","NO6_ANSWER","")
					AddMenuItem("建康城南的钱庄老板处","NO_6","")
				elseif(r==6)then
					LuaSay("迷宫使者：进入统一你看到的第一个NPC叫什么名字？")
					AddMenuItem("@7答案选项","")
					AddMenuItem("老村长","NO_6")
					AddMenuItem("狂军需官","NO_6")
					AddMenuItem("南宫若兰","NO6_ANSWER")
				elseif(r==7)then---------------------------------------
					LuaSay("迷宫使者：哪里可以购买装备与补血补篮药物？","")
					AddMenuItem("@7答案选项","")
					AddMenuItem("建康城南的各个商店伙计处","NO6_ANSWER","")
					AddMenuItem("建康城的行脚商人处","NO_6","")
					AddMenuItem("宫殿的田禾雨处","NO_6","")
				elseif(r==8)then
					LuaSay("迷宫使者：在哪里可以@3进行钓鱼@0？")
					AddMenuItem("@7答案选项","")
					AddMenuItem("建康城的渔翁处","NO6_ANSWER","")
					AddMenuItem("建康城的副本管理员处","NO_6","")
					AddMenuItem("宫殿的晋帝处","NO_6","")
				elseif(r==9)then
					LuaSay("迷宫使者：在哪里可以进行@3帮派国家的相关操作@0？")
					AddMenuItem("@7答案选项","")
					AddMenuItem("宫殿的晋帝处","NO6_ANSWER","")
					AddMenuItem("建康城的孔子处","NO_6","")
					AddMenuItem("建康城的迷宫使者处","NO_6","")			
				elseif(r==10)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("迷宫使者：如何@3打开背包？")
						AddMenuItem("@7答案选项","")
						AddMenuItem("点击系统再点击背包键","NO_6","")
						AddMenuItem("点击菜单再点击背包键","NO6_ANSWER","")
						AddMenuItem("点击系统再点击指南键","NO_6","")
					else
						LuaSay("迷宫使者：如何@3打开背包？")
						AddMenuItem("@7答案选项","")
						AddMenuItem("按取消键再按3键","NO_6","")
						AddMenuItem("按确认键再按3键","NO6_ANSWER","")
						AddMenuItem("按取消键再按星号键","NO_6","")
					end
				elseif(r==11)then
					LuaSay("迷宫使者：在哪里可以进行@3每日跑商任务@0？")
					AddMenuItem("@7答案选项","")
					AddMenuItem("桃源村的迷宫使者处","NO_6","")
					AddMenuItem("建康城的孔子处","NO_6","")
					AddMenuItem("建康城的行脚商人处","NO6_ANSWER","")
				elseif(r==12)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("迷宫使者：如何@3获取帮助信息？")
						AddMenuItem("@7答案选项","")
						AddMenuItem("点击菜单再点击指南键","NO_6")
						AddMenuItem("点击菜单再点击寻路键","NO_6")
						AddMenuItem("点击系统再点击指南键","NO6_ANSWER")
					else
						LuaSay("迷宫使者：如何@3获取帮助信息？")
						AddMenuItem("@7答案选项","")
						AddMenuItem("按取消键后再按星号键","NO_6")
						AddMenuItem("需要使用采集技能","NO_6")
						AddMenuItem("按取消键后再按7指南","NO6_ANSWER")
					end
				elseif(r==13)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("迷宫使者：人物角色在地图中卡住了,正确而且又不用花铜币的做法是？") 
						AddMenuItem("@7答案选项","")
						AddMenuItem("无法解决","NO_6")
						AddMenuItem("可以使用自动寻路","NO6_ANSWER")
					else
						LuaSay("迷宫使者：人物角色在地图中卡住了,正确而且又不用花铜币的做法是？")            
						AddMenuItem("@7答案选项","")
						AddMenuItem("无法解决","NO_6")
						AddMenuItem("按取消键后再按5复位键","NO6_ANSWER")
						AddMenuItem("飞世界离开","NO_6")
					end
				end
		elseif(LuaQueryTask("Txmg1")==11)then
				local shijiancha=(GetCurrentTime()-LuaQueryTask("Txmg1time_11"))
				if(shijiancha<=600)then
					LuaAddTask("Txmg1",1)
					LuaDelTask("albuy")
					LuaDelTask("alopen")
					LuaShowNotify("从迷宫幽魂身上收集5个迷宫银锭找到NPC方能进入13层")
					local r=LuaRandom(12)
					if    (r==0)then   ChangeMap("lu_xmigong1")
					elseif(r==1)then   ChangeMap("lu_xmigong2")
					elseif(r==2)then   ChangeMap("lu_xmigong3")
					elseif(r==3)then   ChangeMap("lu_xmigong4")
					elseif(r==4)then   ChangeMap("lu_xmigong5")
					elseif(r==5)then   ChangeMap("lu_xmigong6")
					elseif(r==6)then   ChangeMap("lu_xmigong7")
					elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("恭喜大侠来到幸运层，在这里你打开宝箱将会获得更多的收益！")
					elseif(r==8)then   ChangeMap("lu_xmigong9")
					elseif(r==9)then   ChangeMap("lu_xmigong10")
					elseif(r==10)then  ChangeMap("lu_xmigong11")
					elseif(r==11)then  ChangeMap("lu_xmigong12")
					end
					UpdateMenu()
				else
					LuaShowNotify("迷宫使者：超时，任务失败！")
					LuaSetTask("Txmg",99)
					ChangeMap("lu_jkc")
					LuaDelTask("award")--删除奖励标记
				end
		elseif(LuaQueryTask("Txmg1")==12)then --打怪收集材料
			if(LuaItemCount("o_mission218")>=5)then
				LuaAddTask("Txmg1",1)
				LuaDelTask("albuy")
				LuaDelTask("alopen")
				LuaShowNotify("找到NPC，运气好直接进下一层，反之等一分钟")
				local r=LuaRandom(12)
				if    (r==0)then   ChangeMap("lu_xmigong1")
				elseif(r==1)then   ChangeMap("lu_xmigong2")
				elseif(r==2)then   ChangeMap("lu_xmigong3")
				elseif(r==3)then   ChangeMap("lu_xmigong4")
				elseif(r==4)then   ChangeMap("lu_xmigong5")
				elseif(r==5)then   ChangeMap("lu_xmigong6")
				elseif(r==6)then   ChangeMap("lu_xmigong7")
				elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("恭喜大侠来到幸运层，在这里你打开宝箱将会获得更多的收益！")
				elseif(r==8)then   ChangeMap("lu_xmigong9")
				elseif(r==9)then   ChangeMap("lu_xmigong10")
				elseif(r==10)then  ChangeMap("lu_xmigong11")
				elseif(r==11)then  ChangeMap("lu_xmigong12")
				end 
				DelItem("o_mission218",5)
				UpdateMenu()
			else
				LuaSay("迷宫使者：我需要的5个@3迷宫银锭@0给我带来了么，他们就在@3迷宫幽魂@0身上")
			end
		elseif(LuaQueryTask("Txmg1")==13)then
			local r13=LuaRandom(2)
			if(r13==0)then
				LuaAddTask("Txmg1",1)
				LuaDelTask("alopen")
				LuaDelTask("albuy")
				LuaShowNotify("从迷宫幽魂身上收集10个迷宫金锭找到NPC方能进入15层")
				local r=LuaRandom(12)
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
				UpdateMenu()
			else
				LuaSay("迷宫使者：大侠寻宝过于积极，在这里歇息一分钟再继续前进吧")
				time13=GetCurrentTime()
				LuaSetTask("Txmg1time_13",time13)
				LuaSetTask("xiuxi",1)
				UpdateMenu()
			end
			

		elseif(LuaQueryTask("Txmg1")==14)then
			if(LuaItemCount("o_mission219")>=10)then
				LuaAddTask("Txmg1",1)
				LuaDelTask("alopen")
				LuaDelTask("albuy")
				ChangeMap("lu_xmigongbx")
				DelItem("o_mission219",10)
				UpdateMenu()
			else
				LuaSay("迷宫使者：我需要的10个@3迷宫金锭@0给我带来了么，他们就在@3迷宫幽魂@0身上")
			end	
		end
	else
		LuaSay("迷宫使者：现在勇闯迷宫活动已经结束了哦，不能进行进入下一层的操作，你可以在我这里选择@3送我出去@0将你传送至建康城哦@!")
	end
	elseif(answer=="NO_6")then
		if(LuaQueryTask("fail")==1)then
			LuaSay("迷宫使者：你又答错了，想一分钟之后再来找我吧")
			time=GetCurrentTime()
			LuaSetTask("Txmg1time_f",time)
		else
			LuaSay("迷宫使者：或许你真的不是我想象中的那么有才，等一分钟之后我再来问你一个问题吧！")
			LuaSetTask("fail",1)
			time=GetCurrentTime()
			LuaSetTask("Txmg1time_f",time)
			UpdateMenu()
		end

	elseif(answer=="NO6_ANSWER")then
			--LuaSay("迷宫使者：年轻人，恭喜你获得进入下一层的资格")   此句只有在随机到当前层的时候才会出来，其他情况均不出现
			if(LuaQueryTask("fail")==1)then
				LuaDelTask("fail")
			end
			if(LuaQueryTask("Txmg1")==10)then
				local time=GetCurrentTime()
				LuaSetTask("Txmg1time_11",time)
			--[[elseif(LuaQueryTask("Txmg1")==9)then
				if(LuaPublicQuery("publicSum")==0)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第十层，勇闯迷宫【活动】第一名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==1)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第十层，勇闯迷宫【活动】第二名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==2)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第十层，勇闯迷宫【活动】第三名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==3)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第十层，勇闯迷宫【活动】第四名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==4)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第十层，勇闯迷宫【活动】第五名还未产生，大家快追啊。")
				elseif(LuaPublicQuery("publicSum")==5)then
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0已经通过了第十层，勇闯迷宫【活动】第五名已经产生，后续玩家可以放慢脚步，寻找让你心动的宝贝！")
				end]]
			end
			LuaAddTask("Txmg1",1)
			LuaDelTask("alopen")
			LuaDelTask("albuy")
			r=LuaRandom(12)
			if    (r==0)then   ChangeMap("lu_xmigong1")
			elseif(r==1)then   ChangeMap("lu_xmigong2")
			elseif(r==2)then   ChangeMap("lu_xmigong3")
			elseif(r==3)then   ChangeMap("lu_xmigong4")
			elseif(r==4)then   ChangeMap("lu_xmigong5")
			elseif(r==5)then   ChangeMap("lu_xmigong6")
			elseif(r==6)then   ChangeMap("lu_xmigong7")
			elseif(r==7)then   ChangeMap("lu_xmigong8") LuaSetTask("luck",1) LuaShowNotify("恭喜大侠来到幸运层，在这里你打开宝箱将会获得更多的收益")
			elseif(r==8)then   ChangeMap("lu_xmigong9")
			elseif(r==9)then   ChangeMap("lu_xmigong10")
			elseif(r==10)then  ChangeMap("lu_xmigong11")
			elseif(r==11)then  ChangeMap("lu_xmigong12")
			end 
			UpdateMenu()
elseif(answer=="xmgjl")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if((GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5) and GetCurrentHour()~=23)then
		if(LuaQueryTask("Txmg1")==5)then
			if(LuaQueryTask("award")==0)then
				LuaSay("迷宫使者：勇敢的年轻人，你已经通过前五层的考验")
				local exp=level^2*10+level*2000                                
				LuaAddJx("combat_exp",exp,"Txmg1")
				local r1=LuaRandom(10)
				LuaSay("迷宫使者：天降奇光，这个@3幸运宝盒@0就是你努力的成果")
						LuaNotice("玩家@3"..LuaQueryStr("name").."@0在勇闯迷宫【活动】中垂头丧气正准备离开的时候被一只@2幸运宝盒@0砸晕了头")
						LuaGive("o_box002",1,"Txmg1")
				if(r1==0)then
					LuaSay("迷宫使者：这张@3藏宝图@0就作为奖励送给你吧")
					LuaGive("o_cangbaotu",1,"Txmg1")
				elseif(r1==1 or r1==2)then
					LuaSay("迷宫使者：这块@3双倍经验书[1小时]@0就作为奖励送给你吧")
					LuaGive("o_state008j",1,"Txmg1")
				end
				LuaSetTask("award",1)
				UpdateMenu()

			else
				LuaSay("迷宫使者：你已经领取过前五层的奖励了")
			end
		elseif(LuaQueryTask("Txmg1")==10)then
			if(LuaQueryTask("award")~=2)then
				LuaSay("迷宫使者：勇敢的年轻人，你已经通过前十层的考验")
				local exp=level^2*10+level*3000                                
				LuaAddJx("combat_exp",exp,"Txmg1")
				local r2=LuaRandom(15)
				if(r2>=0 and r2<5)then
					LuaSay("迷宫使者：这块@3双倍经验书[1小时]@0就作为奖励送给你吧")
					LuaGive("o_state008j",1,"Txmg1")
				elseif(r2>=5 and r2<10)then
					LuaSay("迷宫使者：这块@3双防符@0就作为奖励送给你吧")
					LuaGive("o_state012j",1,"Txmg1")
				elseif(r2>=10 and r2<15)then
					LuaSay("迷宫使者：这块@3双攻符@0就作为奖励送给你吧")
					LuaGive("o_state001j",1,"Txmg1")
				elseif(r2==15)then
					LuaSay("迷宫使者：天降奇光，这个@3幸运宝盒@0为你努力的成果")
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0在勇闯迷宫【活动】寻宝时被一只幸运宝盒砸晕了头")
					LuaGive("o_box002",1,"Txmg1")
				end
				LuaSetTask("award",2)
				UpdateMenu()
			else
				LuaSay("迷宫使者：你已经领取过第十层的奖励")
			end
		elseif(LuaQueryTask("Txmg1")==15)then
			if(LuaQueryTask("award")~=3)then
				LuaSay("迷宫使者：勇敢的人，你顺利的全部通过了迷宫")
				if(LuaPublicQuery("publicSum")==0)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number1",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0在今天的勇闯迷宫【活动】活动中夺得第一名")
					LuaSay("迷宫使者：你在本次勇闯迷宫【活动】寻宝活动中获得第"..LuaPublicQuery("publicSum").."名并且获得@3飞毛腿@0称号，领取当前称号将会覆盖你原有的称号。")
					LuaSetTask("IsNo1",1)                                               --第一名标记，领取称号
					LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Txmg1")	--5级材料随其一
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1")	--4级材料随其一
					LuaGive("coin",60000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0在勇闯迷宫【活动】活动中获得@3第一名@0，获得大量奖励，并荣获【@3飞毛腿@0】称号")
					LuaSetTask("award",3)
					UpdateMenu()
				elseif(LuaPublicQuery("publicSum")==1)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number2",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0在今天的勇闯迷宫【活动】活动中夺得第二名")
					LuaSay("迷宫使者：你在本次勇闯迷宫【活动】寻宝活动中获得第"..LuaPublicQuery("publicSum").."名")
					LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Txmg1")	--5级材料随其一
					LuaGive("coin",50000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0在勇闯迷宫【活动】活动中获得@3第二名@0，获得大量奖励，大家快去抢啊！")
					LuaSetTask("award",3)
					UpdateMenu()
				elseif(LuaPublicQuery("publicSum")==2)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number3",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0在今天的勇闯迷宫【活动】活动中夺得第三名")
					LuaSay("迷宫使者：你在本次勇闯迷宫【活动】寻宝活动中获得第"..LuaPublicQuery("publicSum").."名")
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4级材料随其一
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4级材料随其一
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4级材料随其一
					LuaGive("coin",40000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0在勇闯迷宫【活动】活动中获得@3第三名@0，获得大量奖励，大家快去抢啊！")
					LuaSetTask("award",3)
					UpdateMenu()
				elseif(LuaPublicQuery("publicSum")==3)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number4",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0在今天的勇闯迷宫【活动】活动中夺得第四名")
					LuaSay("迷宫使者：你在本次勇闯迷宫【活动】寻宝活动中获得第"..LuaPublicQuery("publicSum").."名")
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4级材料随其一、
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4级材料随其一
					LuaGive("coin",30000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0在勇闯迷宫【活动】活动中获得@3第四名@0，获得大量奖励，大家快去抢啊！")
					LuaSetTask("award",3)
					UpdateMenu()
				elseif(LuaPublicQuery("publicSum")==4)then
					LuaPublicAdd("publicSum",1)
					LuaPublicSetStr("number5",LuaQueryStr("name"))
					--LuaNotice("@2"..LuaQueryStr("name").."@0在今天的勇闯迷宫【活动】活动中夺得第五名")
					LuaSay("迷宫使者：你在本次勇闯迷宫【活动】寻宝活动中获得第"..LuaPublicQuery("publicSum").."名")
					LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Txmg1") 	--4级材料随其一
					LuaGive("coin",20000,"Txmg1")
					LuaNotice("@2"..LuaQueryStr("name").."@0在勇闯迷宫【活动】活动中获得@3第五名@0，获得大量奖励，大家快去抢啊！")
					LuaSetTask("award",3)
					UpdateMenu()
				else
					LuaPublicAdd("publicSum",1)
					LuaSay("迷宫使者：你是第"..LuaPublicQuery("publicSum").."个通过今天的勇闯迷宫【活动】活动")
					local exp=level^2*100+level*5000                                
					LuaAddJx("combat_exp",exp,"Txmg1")
					local r=LuaRandom(10)
					if(r==0 or r==1)then
						LuaSay("迷宫使者：这块@3双倍经验书[1小时]@0就作为奖励送给你吧")
						LuaGive("o_state008j",1,"Txmg1")	
					elseif(r==2 or r==3 or r==8)then
						LuaSay("迷宫使者：这块@3双防符@0就作为奖励送给你吧")
						LuaGive("o_state012j",1,"Txmg1")
					elseif(r==4 or r==5 or r==9)then
						LuaSay("迷宫使者：这块@3双攻符@0就作为奖励送给你吧")
						LuaGive("o_state001j",1,"Txmg1")
					elseif(r==6)then
						LuaSay("迷宫使者：这张@3藏宝图@0就作为奖励送给你吧")
						LuaGive("o_cangbaotu",1,"Txmg1")
					elseif(r==7)then
						LuaSay("迷宫使者：天降奇光，这个@3幸运宝盒@0就是你努力的成果")
						LuaNotice("玩家@3"..LuaQueryStr("name").."@0在勇闯迷宫【活动】中垂头丧气正准备离开的时候被一只@2幸运宝盒@0砸晕了头")
						LuaGive("o_box002",1,"Txmg1")
					end
					LuaSetTask("award",3)
					UpdateMenu()
				end
				LuaSetTask("Txmigong",99)

			else
				LuaSay("迷宫使者：你已经领取过第十五层的奖励了")
			end
		end
	else
		LuaSay("迷宫使者：你已经超过领取奖励的时间了哦，勇闯迷宫活动每周星期一、三、五定期举行，欢迎下次参加@!")
	end
-------------称号领取----------------
elseif(answer=="lqchyes")then
	if((GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5) and GetCurrentHour()~=23)then
		LuaSay("迷宫使者：领取【@3飞毛腿@0】称号成功！")
		SetTitleMeg(102)	
		LuaNotice("玩家@3"..LuaQueryStr("name").."@0为今天勇闯迷宫【活动】的第一名，成功领取称号@2飞毛腿@0")
		LuaDelTask("IsNo1")
		UpdateMenu()
	else
		LuaSay("迷宫使者：你已经超过领取奖励的时间了哦，勇闯迷宫活动每周星期一、三、五定期举行，欢迎下次参加@!")
	end
elseif(answer=="lqchno")then
	LuaSay("迷宫使者：你选择了保留以前称号，将不会得到勇闯迷宫【活动】第一名【@3飞毛腿@0】的称号")
				

elseif(answer=="wenti")then
	local shijiancha=(GetCurrentTime() - LuaQueryTask("Txmg1time_f"))
	if(shijiancha<=60)then
		LuaSay("迷宫使者：时间还没到一分钟呢")
	else
		LuaSay("迷宫使者：开始回答我的问题吧")
		LuaSay("迷宫使者：不要错了哦")
		local r=LuaRandom(14)
		if(r==0)then
			LuaSay("迷宫使者：在哪里可以进行@3材料兑换和每日挖宝@0？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("在桃源村的铁匠处","NO_6","")--NO_6
			AddMenuItem("建康城南的武器店伙计处","NO_6","")
			AddMenuItem("建康城的行脚商人处","NO6_ANSWER","")--NO6_ANSWER
		elseif(r==1)then
			LuaSay("迷宫使者：在哪里可以进行@3宠物操作@0？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("桃源村的迷宫使者处","NO_6","")
			AddMenuItem("建康城的马夫处","NO_6","")
			AddMenuItem("建康城的驯兽师处","N06_ANSWER","")
		elseif(r==2)then
			LuaSay("迷宫使者：孔曰成仁，孟曰说法，韩非取义中那一句是正确的？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("孔曰成仁","NO6_ANSWER")
			AddMenuItem("孟曰说法","NO_6")
			AddMenuItem("韩非取义","NO_6")
		elseif(r==3)then
			LuaSay("迷宫使者：哪里可以存取钱财和贷款借钱？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("建康城南的渔翁处","NO_6","")
			AddMenuItem("建康城的当铺伙计处","NO_6","")
			AddMenuItem("建康城的钱庄老板处","NO6_ANSWER","")				
		elseif(r==4)then
			LuaSay("迷宫使者：哪里可以买到宠物与坐骑？","")
			AddMenuItem("@7答案选项","")
			AddMenuItem("建康城南的渔翁处","NO_6","")
			AddMenuItem("建康城的钱庄老板处","NO_6","")
			AddMenuItem("建康城的驯兽师处","NO6_ANSWER","")
		elseif(r==5)then
			LuaSay("迷宫使者：哪里可以进行寄卖？","")
			AddMenuItem("@7答案选项","")
			AddMenuItem("建康城南的渔翁处","NO_6","")
			AddMenuItem("建康城的当铺伙计处","NO6_ANSWER","")
			AddMenuItem("建康城的钱庄老板处","NO_6","")
		elseif(r==6)then
			LuaSay("迷宫使者：进入统一你看到的第一个NPC叫什么名字？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("老村长","NO_6")
			AddMenuItem("冉闵","NO_6")
			AddMenuItem("南宫若兰","NO6_ANSWER")
		elseif(r==7)then---------------------------------------
			LuaSay("迷宫使者：哪里可以购买装备与补血补篮药物？","")
			AddMenuItem("@7答案选项","")
			AddMenuItem("建康城南的各个商店伙计处","NO6_ANSWER","")
			AddMenuItem("建康城的行脚商人处","NO_6","")
			AddMenuItem("宫殿的司马道子处","NO_6","")
		elseif(r==8)then
			LuaSay("迷宫使者：在哪里可以@3进行钓鱼@0？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("建康城的渔翁处","NO6_ANSWER","")
			AddMenuItem("建康城的副本管理员处","NO_6","")
			AddMenuItem("宫殿的晋帝处","NO_6","")
		elseif(r==9)then
			LuaSay("迷宫使者：在哪里可以进行@3帮派国家的相关操作@0？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("宫殿的晋帝处","NO6_ANSWER","")
			AddMenuItem("建康城的晋清处","NO_6","")
			AddMenuItem("建康城的迷宫使者处","NO_6","")			
		elseif(r==10)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("迷宫使者：如何@3打开背包？")
						AddMenuItem("@7答案选项","")
						AddMenuItem("点击系统再点击背包键","NO_6","")
						AddMenuItem("点击菜单再点击背包键","NO6_ANSWER","")
						AddMenuItem("点击系统再点击指南键","NO_6","")
					else
						LuaSay("迷宫使者：如何@3打开背包？")
						AddMenuItem("@7答案选项","")
						AddMenuItem("按取消键再按3键","NO_6","")
						AddMenuItem("按确认键再按3键","NO6_ANSWER","")
						AddMenuItem("按取消键再按星号键","NO_6","")
					end
		elseif(r==11)then
			LuaSay("迷宫使者：在哪里可以进行@3每日跑商任务@0？")
			AddMenuItem("@7答案选项","")
			AddMenuItem("桃源村的孟铁匠处","NO_6","")
			AddMenuItem("建康城南的种子商人处","NO_6","")
			AddMenuItem("建康城的行脚商人处","NO6_ANSWER","")
		elseif(r==12)then
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("迷宫使者：如何@3获取帮助信息？")
						AddMenuItem("@7答案选项","")
						AddMenuItem("点击菜单再点击指南键","NO_6")
						AddMenuItem("点击菜单再点击寻路键","NO_6")
						AddMenuItem("点击系统再点击指南键","NO6_ANSWER")
					else
						LuaSay("迷宫使者：如何@3获取帮助信息？")
						AddMenuItem("@7答案选项","")
						AddMenuItem("按取消键后再按星号键","NO_6")
						AddMenuItem("需要使用采集技能","NO_6")
						AddMenuItem("按取消键后再按7指南","NO6_ANSWER")
					end
		elseif(r==13)then
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("迷宫使者：人物角色在地图中卡住了,正确而且又不用花铜币的做法是？") 
				AddMenuItem("@7答案选项","")
				AddMenuItem("无法解决","NO_6")
				AddMenuItem("可以使用自动寻路","NO6_ANSWER")
			else
				LuaSay("迷宫使者：人物角色在地图中卡住了,正确而且又不用花铜币的做法是？")            
				AddMenuItem("@7答案选项","")
				AddMenuItem("无法解决","NO_6")
				AddMenuItem("按取消键后再按5复位键","NO6_ANSWER")
				AddMenuItem("飞世界离开","NO_6")
			end
		end
		UpdateMenu()
	end

		
elseif(answer=="xiuxi")then
	local shijiancha=(GetCurrentTime() - LuaQueryTask("Txmg1time_13"))
	if(shijiancha<=60)then
		LuaSay("迷宫使者：时间还没到一分钟呢")
	else

		local r13=LuaRandom(2)
		if(r13==0)then
			LuaAddTask("Txmg1",1)
			LuaDelTask("alopen")
			LuaDelTask("albuy")
			local r=LuaRandom(12)
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
			LuaDelTask("xiuxi")
			UpdateMenu()
		else
			LuaSay("迷宫使者：看大侠的样子还是需要多多休息，才能继续前进，再等一分钟之后来找我吧")
			time13=GetCurrentTime()
			LuaSetTask("Txmg1time_13",time13)
			UpdateMenu()
		end

	end

	--------------------------------------------------------

	
elseif(answer=="out")then
	AddMenuItem("@3你确认离开？","")
	LuaSay("@1提示：请谨慎操作，一旦离开今天将不能继续参加@0@3勇闯迷宫【活动】@0@1了。@0")
	AddMenuItem("@3否","no")
	AddMenuItem("@1是","yes")
	elseif(answer=="yes")then
		LuaShowNotify("三十六计，走为上策！")
		ChangeMap("lu_jkc")
		LuaSetTask("Txmg1",99)
		UpdateMenu()
	elseif(answer=="no")then
		LuaSay("迷宫使者：勇敢的向前走吧，更多的宝物在等着你！")

elseif(answer=="buykey")then
	LuaSay("迷宫使者：当年我偷偷的带出一把钥匙，如今铸了很多把，我年老无力也不能去寻宝了便宜卖给你一把吧")
	LuaSay("迷宫使者：你愿意花500铜币来购买@3迷宫钥匙@0吗？")
	AddMenuItem("@7购买选项","")
	AddMenuItem("不买","nobuy")
	AddMenuItem("买","yesbuy")

	elseif(answer=="nobuy")then
		LuaSay("迷宫使者：省吃俭用固然是好，但是也许大侠你错过了一次寻宝的机会")
	elseif(answer=="yesbuy")then
		if(LuaQueryTask("albuy")==1) then
			LuaSay("迷宫使者：大侠你已经在此买过一次钥匙了,进入下一层才能再次购买")
		else 
			if(LuaItemCount("coin")>=500) then
				LuaSay("迷宫使者：拿着钥匙去追你的寻宝梦吧@!")
	    			LuaGive("o_mission217",1,"Txmg1")
				LuaGive("coin",-500,"Txmg1")
				LuaSetTask("albuy",1)
				UpdateMenu()
			else
				LuaSay("迷宫使者：大侠你的铜币不足")
			end
		end

elseif(answer=="look")then
	LuaSay("迷宫使者：你当前所在的层数为@3"..LuaQueryTask("Txmg1").."@0")
	--LuaSay("测试用：当前地图脚本编号"..MapName().."")

elseif(answer=="over")then
	if((GetDayOfWeek()==1 or GetDayOfWeek()==3 or GetDayOfWeek()==5) and GetCurrentHour()~=23)then
		LuaSay("迷宫使者：千古英雄，传诵其间")
		ChangeMap("lu_jkc")
		LuaSetTask("Txmg1",99)
		UpdateMenu()
	else
		LuaSay("迷宫使者：你已经超过领取奖励的时间了哦，勇闯迷宫活动每周星期一、三、五定期举行，欢迎下次参加@!")
		ChangeMap("lu_jkc")
	end
end

LuaSendMenu()
return 1
end 