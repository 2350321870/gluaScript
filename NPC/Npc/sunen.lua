NPCINFO = {
serial="48" ,
base_name="sunen" ,
icon=2585,
NpcMove=2585,
name="孙恩" ,
iconaddr=1 ,
butt="10|10|60" ,
lastsay="适合在地牢升级到20级" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
        havetask =0 
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0

	local level= LuaQuery("level")
	local T100=LuaQueryTask("T100")
	local T101 = LuaQueryTask("T101")
	local T371=LuaQueryTask("T371")
	local T372=LuaQueryTask("T372")
	local T373=LuaQueryTask("T373")
	local T374=LuaQueryTask("T374")
	local T381 = LuaQueryTask("T381")
        AddTopSayMenuItem("@7任务列表","")

	if((LuaQueryTask("Tsnpc_33")==1 or LuaQueryTask("Tsnpc_33")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_33")
		if(LuaQueryTask("Tsnpc_33")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_33")==1 or LuaQueryTask("Tenpc_33")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_33")
		if(LuaQueryTask("Tenpc_33")==1)then
			havetask2=1
		end
	end
	
	if(LuaQueryTask("T116")==1) then
		AddTopSayMenuItem("@2勇士之梦【剧情】@0","T116")
		if(LuaQueryTask("T116A") == 99) then
			havetask2 =1
		else
			havetask4 =1
		end
	end
	if(LuaQueryTask("T375")==1) then
		AddTopSayMenuItem("@2迷宫初体验【剧情】@0","T375")
		if(LuaQueryTask("T375A") == 99) then
		havetask2 =1
		else
		havetask4 =1
		end
	end
	if(LuaQueryTask("T374")==1) then
		AddTopSayMenuItem("@2叛逆之因【剧情】","T374")
		if(LuaItemStatusNormalCount("o_mission020")>=1)then
			havetask2 =1
		else
			havetask4 =1
		end
	end

	if(LuaQueryTask("T371")==1)then
		AddTopSayMenuItem("@2暴露身份【剧情】@0","T371")
	end
	if(T381==1 or LuaQueryTask("T381")==2)then
		AddTopSayMenuItem("@2夫君的下落【剧情】@0","T381")
		if(LuaQueryTask("T381")==1)then
			havetask2=1
		end
	end
--以上是黄色问号部分
	if(LuaQueryTask("T370")==1)then
		AddTopSayMenuItem("@2嗜血狂徒【剧情】","T370")
		havetask4=1
	end
--以上是灰色问号部分
	if(LuaQueryTask("T370")==0 and level>=19)then
		AddTopSayMenuItem("嗜血狂徒【剧情】","T370")
		havetask1= 1
	end
	if(T371==0 and LuaQueryTask("T381")==99)then
		AddTopSayMenuItem("暴露身份【剧情】","T371")
		havetask1=1
	end
	if(LuaQueryTask("T374")==0 and level>=18) then
		AddTopSayMenuItem("叛逆之因【剧情】","T374")
		havetask1 =1
	end
	if(LuaQueryTask("T116")==0 and LuaQueryTask("T375")==99)  then
		AddTopSayMenuItem("勇士之梦【剧情】","T116")
		havetask1 =1
	end
	AddTopSayMenuItem("@9升级指导","Guidelines")

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
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end 
return 1

elseif(answer=="liaotian") then
	LuaSay("孙恩：老夫一心救黎民于水火之中，只要能拯救黎民，修炼邪术又有何妨。")
	
	
elseif(answer=="Tzhiliao02") then
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
		if(LuaQuery("hp")>0) then
              local maxhp=LuaQuery("max_hp")
	      local maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
              FlushMyInfo("0")
	      LuaSay("经过治疗,你已变的生龙活虎。城市中的@3药品商人@0处可以购买补血补蓝的药物哦。")
	      else
		LuaSay("角色已死亡,无法治疗")
	      end
	 else
	LuaSay("你正处于满血满魔状态，不需要治疗。城市中的@3药品商人@0处可以购买补血补蓝的药物哦。")
	end

elseif(answer=="T370")then
	if(LuaQueryTask("T370")==0)then 
		LuaSay("孙恩：既是我天师道的人，就喜欢血，哈哈，你去帮我屠杀20只@2彩鹫@0，老夫重重有赏")
		LuaSetTask("T370",1)
		AddLog("嗜血狂徒【剧情】",370)
		LuaSetTask("task_kill/mon_013/T370",1)
		UpdateTopSay("消灭20只彩鹫后来找我")
		UpdateMenu()
		 
	elseif(LuaQueryTask("T370")==1)then
		local a=LuaQueryTask("task_kill/mon_013/T370")-1
		if(LuaQueryTask("task_kill/mon_013/T370")>=21)then
		LuaSay("孙恩：没看出来你比我还要狠啊，前途无量！")
		AddMenuItem("@7任务完成","")
	  	AddMenuItem("领取奖励","T370jl")
	  	else
	  	LuaSay("孙恩：你才消灭@2"..a.."只@0彩鹫。杀够@220只彩鹫@0再来找我。")
	  	end
	end
	elseif(answer=="T370jl")then
		if(LuaQueryTask("T370")==1)then
		if(LuaQueryTask("task_kill/mon_013/T370")>=21)then
			LuaSetTask("T370",99)
			DelLog("370")
			LuaDelTask("task_kill/mon_013/T370")
			LuaAddJx("combat_exp",99000,"T370")--奖励
			LuaAddAchievementSchedule("Task_num",1)
			LuaGive("coin",1000,"T370")
			UpdateMenu()
			end
			end
		
		
------------------------------------------------------------	巾帼红颜
elseif(answer=="T373")then
	if(LuaQueryTask("T373")==0)then
		LuaSay("孙恩：这些土匪，太猖狂了，@3"..LuaQueryStr("name").."@0你去警告攻上山的@3谢道韫@0不要欺人太甚")
		LuaSay(LuaQueryStr("name").."：这些小徒，我马上去警告") 
		LuaSetTask("T373",1)
		AddLog("巾帼红颜【剧情】",373)
		UpdateTopSay("去警告谢道韫")
		UpdateMenu()
		UpdateNPCMenu("xiedaoyun")
		
		elseif(LuaQueryTask("T373")==1)then
		LuaSay("孙恩：去警告攻上山的@3谢道韫@0不要欺人太甚")
	end 

elseif(answer=="T381")then              ---------------------------------------------夫君的下落【剧情】
		if(LuaQueryTask("T381")==1)then
		LuaSay(LuaQueryStr("name").."：听说@3谢道韫@0的夫君就在山寨，不知关在何处啊，我到要看看他有多厉害！")
		LuaSay("孙恩：没错，他就关在@3山寨地牢@0里面，有死无生了！去看就不必了！")
		LuaSay(LuaQueryStr("name").."：不看也罢，反正是快死的人了!")
		LuaSetTask("T381",2)
		AddLog("夫君的下落【剧情】",381)
		UpdateTopSay("回复谢道韫")
		UpdateMenu()
		AutoGoToNpc("@7是否@0寻路至@4谢道韫","xiedaoyun")
		elseif(LuaQueryTask("T381")==2)then
		LuaSay("孙恩：去回复@3谢道韫@0，还在这里干嘛")
		AutoGoToNpc("@7是否@0寻路至@4谢道韫","xiedaoyun")
		end
		UpdateNPCMenu("xiedaoyun")

elseif(answer=="T371")then                    ----------------------------------暴露身份【剧情】
		if(LuaQueryTask("T371")==0)then
			LuaSay("孙恩：你杀了我那么多的@3天师教徒@0，是何居心！难不成你是别人派来的内奸？")
			LuaSay(LuaQueryStr("name").."：没错，我是！因为我看不惯你们这些邪恶欺负百姓，要杀要剐随你便！")
			LuaSay("孙恩：算了，看在你曾经是我倾诉的对象，你自己去@2山寨地牢@0受罪吧！去和@3王凝之@0一起做阶下囚吧！")
			LuaSetTask("T371",1)
			AddLog("暴露身份【剧情】",371)
			UpdateTopSay("去山寨地牢吧")
			UpdateMenu()
			if(LuaQueryTask("T370")==99)then
					AddMenuItem("@7是否@0寻路至@3王凝之","")
					AddMenuItem("自动寻路至王凝之","xl_wnz")
			end
		elseif(LuaQueryTask("T371")==1)then 
			LuaSay("孙恩：因为跟你讲情面才让你自己去，你怎么不识抬举！去和@3王凝之@0一起做阶下囚吧。")
			if(LuaQueryTask("T370")==99)then
					AddMenuItem("@7是否@0寻路至@3王凝之","")
					AddMenuItem("自动寻路至王凝之","xl_wnz")
			end
		end
		elseif(answer=="xl_wnz")then
		AutoPathByTaskStep("T371",1)

elseif(answer=="T374") then
	if(LuaQueryTask("T374")==0)then
	LuaSay("孙恩：世道纷乱，饥荒遍野，不叛乱也是死，叛乱也许尚有出路。唉，不知多久没进过肉食了。")
	LuaSay("孙恩：阁下能否帮我去弄些@2鱼肉@0来。@4建康城池边@0的@3渔翁@0处可以进行@2钓鱼@0，一块@2劣质鱼肉@0足矣。")
	AddLog("叛逆之因【剧情】",374)
	LuaSetTask("T374",1)
	UpdateMenu()
	if(LuaQueryTask("T381")==99)then
			AddMenuItem("@7传送至建康城渔翁","")
			AddMenuItem("确认传送之建康城渔翁","Tcs_yw")
	end
	elseif(LuaQueryTask("T374")==1 and LuaItemStatusNormalCount("o_mission020")==0)then
	LuaSay("孙恩：你还没有@2劣质鱼肉@0，快去@4建康城池边@0的@3渔翁@0处@2钓鱼@0吧。@!")
	LuaSay("孙恩：什么？你还不知道怎么钓鱼？去向@4建康城池边@0的@3渔翁@0学习吧。")
	if(LuaQueryTask("T381")==99)then
			AddMenuItem("@7传送至建康城渔翁","")
			AddMenuItem("确认传送之建康城渔翁","Tcs_yw")
	end
	elseif(LuaQueryTask("T374")==1 and LuaItemStatusNormalCount("o_mission020")>=1)then
	LuaSay("孙恩：太好了，谢谢阁下帮忙了！@!")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T374jl")
	end
	elseif(answer=="T374jl")then
	if(LuaQueryTask("T374")==1) then	 
	DelItem("o_mission020",1)
	DelLog("374")
 	LuaSetTask("T374",99)
	LuaAddJx("combat_exp",121275,"T374")
	if(LuaRandom(10)==1)then--15级耳环
		LuaGive("e_earring004",1,2,"T374")
	else
		LuaGive("e_earring004",1,1,"T374")
	end       
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	end
elseif(answer=="Tcs_yw")then
	ChangeMap("lu_jkc",205,650)

elseif(answer=="T375") then                    ------------迷宫初体验
	if(LuaQueryTask("T375") == 0) then
         LuaSay("孙恩：嘿嘿，狡兔三窟，自我起义的时候就准备好退路了。我准备了一座很大的迷宫，将我的财宝都放在里面。@!")
         LuaSay("孙恩：可惜啊，只有18级以上的玩家才能进入。去找@4建康城中间@0的@3副本管理员@0吧。@4从建康城南向上@0就可以到达了。")
         LuaSay("孙恩：在@3副本管理员@0的菜单中选择@3迷宫幻境@0，再选@3挑战迷宫@0。只要进入过迷宫，就可以@2到我这里来领取奖励@0了。@!")
	 LuaSay("@7温馨提示@0：@!完成本任务将会有丰厚的奖励哦！")
	 LuaSetTask("T375",1)
         AddLog("迷宫初体验【剧情】",375)
         UpdateMenu()
         UpdateTopSay("去建康城的副本管理员处体验迷宫")
	elseif(LuaQueryTask("T375") == 1) then 
			if(LuaQueryTask("T375A") == 99) then
		        LuaSay("孙恩：恩，真是厉害。努力升到20级吧，迷宫、副本、比武等等很多的玩法等你来体验。@!")
		        if(LuaFreeBag()>=1)then
				AddMenuItem("@7任务完成","")
         		AddMenuItem("领取奖励","T375jl")
         		else
	    		LuaSay("提示：请至少保留1格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    		end
			else
			LuaSay("孙恩：在@3副本管理员@0的菜单中选择@3迷宫幻境@0，再选@3挑战迷宫@0。只要进入过迷宫，就可以@2到我这里来领取奖励@0了。@!")
			LuaSay("孙恩：去找@4建康城中间@0的@3副本管理员@0吧。@4从建康城南向上@0就可以到达了。@!")
			end
		end
		  elseif(answer=="T375jl") then
                if(LuaQueryTask("T375") == 1 and LuaQueryTask("T375A") == 99) then
		        LuaSetTask("T375",99)
		        DelLog("375")
		        LuaAddJx("combat_exp",138600,"T375")
			LuaAddAchievementSchedule("Task_num",1)
			if(LuaQueryTask("TtaozhuangC") == 0) then
			LuaGive("e_head165",1,2,"T375")
			LuaSetTask("TtaozhuangC",99)
			end

			LuaGive("coin",1000,"T375")
		        UpdateMenu()
		        end

elseif(answer=="T116") then                    ------------勇士之梦
	if(LuaQueryTask("T116") == 0) then
         LuaSay("孙恩：昨夜梦见我成了一名勇士，进入一个梦境，去救一位美丽的可人。你想做这样的梦吗？ ")
         LuaSay("孙恩：坚守自己的理想，完成统一大业，与美人一起《统一OL》@!")
	 LuaSay("孙恩：另外当你不知道做什么的时候，你可以到我这里来查看升级指引哦，或许能给你带来不少的帮助@!")
	 AddMenuItem("@7任务完成","")
         AddMenuItem("领取奖励","T116jl")
	elseif(LuaQueryTask("T116") == 1) then 
			if(LuaQueryTask("T116A") == 99) then
		        LuaSay("孙恩：不错，看来你已经进入过梦境了。@3梦境有丰厚的奖励哦，乐趣和升级两不误@0。")
		        LuaSay("孙恩：想体验更多的副本吗？等你达到20级的时候，去@4建康城@0的@3副本使者@0那里吧，@3迷宫打宝@0，个个都精彩。")
			AddMenuItem("@7任务完成","")
         		AddMenuItem("领取奖励","T116jl")
			else
		        LuaSay("孙恩：你还没有进入过梦境呢。去找@4建康城@0的@3梦境使者@0尝试进入梦境吧。")
			end
		end
		  elseif(answer=="T116jl") then
                if(LuaQueryTask("T116") == 1 and LuaQueryTask("T116A") == 99) then
		        LuaSetTask("T116",99)
		        DelLog("116")
		        LuaAddJx("combat_exp",121275,"T116")
		        LuaGive("coin",1000,"T116")
				LuaAddAchievementSchedule("Task_num",1)
		        UpdateMenu()
		        end
elseif(answer=="Tsnpc_33")then
	if(LuaQueryTask("Tsnpc_33")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("孙恩：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_33",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_33")==2)then
		LuaSay("孙恩：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_33")then
	if(LuaQueryTask("Tenpc_33")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("孙恩：这都是大人的功劳啊")
		LuaSetTask("Tenpc_33",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_33")==2)then
		LuaSay("孙恩：话已经带到了，快回去领取奖励吧")
	end


elseif(answer=="Guidelines")then
		local level= LuaQuery("level")
		LuaSay("孙恩：你现在的等级是"..level.."级")
		if(level<10)then
			LuaSay("孙恩：可以在@2桃源村@0、@2迷雾之林@0、@2建康城郊@0做任务、打怪升级。")
		elseif(level<15)then
			LuaSay("孙恩：你适合在@2建康东郊@0、@2五斗山@0升级，在@2建康城@0的@3晋清公主@0还能参加@2建康城@0的@1领主的争夺@0哦！")
			LuaSay("苻坚：@2建康城南@0的@3种子商人@0那里的@1千里行商@0可是一个很好的赚钱机会，@2建康城南@0的@3种子商人@0那里能进入@2种植场@0，@3种子商人@0那里能购买到各式各样的种子，悄悄的告诉你，摘花不算偷@!")
			--LuaSay("孙恩：再罗嗦一句，@2建康城南@0的@3种子商@0能让你体验到极限的@1问答挑战@0，谁更聪明呢，拭目以待哦。")
		elseif(level<20)then
			LuaSay("孙恩：适合在@2五斗山@0、@2山寨@0、@2山寨@0地牢升级！")
			LuaSay("孙恩：每天在@2建康城南@0的@3药品商人@0那里都有@1每日药品派送@0，免费的午餐不得不吃@!")
		elseif(level<25)then
			LuaSay("孙恩：适合在@2北府军营@0、@2军营前哨@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
			LuaSay("孙恩：这时候@2建康城@0@3活动使者@0的@1勇闯迷宫活动@0、@2建康城@0@3行脚商人@0处的@1世界寻宝@0全都展现在你的面前来了哦！")
			LuaSay("孙恩：@2北府军营@0的@3比武使者@0现在可是你大展身手的好地方，挑战群雄、大展你的雄姿，统一指日可待")
			LuaSay("孙恩：还想知道点什么吗，还是告诉你吧，在@2建康城@0的@3防具商人@0那里现在能进行@1绑定装备@0、@2洗装备属性@0、@2降低装备等级需求@0，这些你都懂的哦@!")
		elseif(level<30)then
			LuaSay("孙恩：适合在@2淝水对岸@0、@2洛阳郊外@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
			LuaSay("孙恩：升级的同时也不要忘记去@2建康南郊@0@3守城卫兵@0那里帮助下新人哦，好人必定会有好报，有时候听人唠叨未必不是一件好事哦@!")
		elseif(level<35)then
			LuaSay("孙恩：适合在@2渭水之滨@0、@2西蜀竹林@0升级，在升级的同时不要忘记了还有更多的有趣的玩法等你玩哦@!")
			LuaSay("孙恩：如果你已经找到了你的另一半，那么这个时候你可以带着她（他）一起去@2建康城@0@3晋清公主@0那里结婚了哦，我祝福你们永远幸福@!")
		elseif(level<40)then
			LuaSay("孙恩：适合在@2食人谷@0、@2白骨洞@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
		else
			LuaSay("孙恩：你现在的能力已经足够闯荡江湖了")
		end



end
LuaSendMenu() 
return 1
end

