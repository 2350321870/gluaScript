NPCINFO = { 
serial="50" ,
base_name="wangningzhi",
icon=2567,
NpcMove=2567,
name="王凝之" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="清剿邪恶，誓死不屈",
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
	local T371=LuaQueryTask("T371")
	local T391=LuaQueryTask("T391")
	local T392=LuaQueryTask("T392")
	local T393=LuaQueryTask("T393")
	local T394=LuaQueryTask("T394")
	local T395=LuaQueryTask("T395")
	local T384= LuaQueryTask("T384")

	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_35")==1 or LuaQueryTask("Tsnpc_35")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_35")
		if(LuaQueryTask("Tsnpc_35")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_35")==1 or LuaQueryTask("Tenpc_35")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_35")
		if(LuaQueryTask("Tenpc_35")==1)then
			havetask2=1
		end
	end
	if(T371==1)then
		AddTopSayMenuItem("@2暴露身份【剧情】@0","T371")
		havetask2=1
	end
	if(T391==1 or T391==2)then
		AddTopSayMenuItem("@2救治英雄【剧情】@0","T391")
		if(T391==2)then
			havetask2=1
		end
	end

	if(T393==1)then
		AddTopSayMenuItem("@2破除邪术【BOSS】@0","T393")
		if( LuaItemCount("o_mission190")>=1)then
			havetask2=1
		else
			havetask4=1
		end
	end

	if(T384==1 or T384==2)then
		AddTopSayMenuItem("@2千里共婵娟【剧情】@0","T384")
		if(LuaQueryTask("T384")==1)then
		havetask2=1
		end
	end


	if(T392==0 and level>=19)then
		AddTopSayMenuItem("地牢之谜【剧情】","T392")
		havetask1=1
	end
	if(T393==0 and T392==99 and level>=20)then
		AddTopSayMenuItem("破除邪术【BOSS】","T393")
		havetask1=1
	end
	if(T395==0 and T393==99)then
		AddTopSayMenuItem("擂台争霸【剧情】","T395")
		havetask1=1
	end
--	if(T394==0 and level>=18 and level<25)then
--		AddTopSayMenuItem("地牢除恶【循环】","T394")
--		havetask=1
--	end
----------------------------------------------------------------------------------
	if(T392==1)then
		AddTopSayMenuItem("@2地牢之谜【剧情】@0","T392")
		havetask4=1
	end
	if(T394==1)then
		AddTopSayMenuItem("@2地牢除恶【循环】@0","T394")
		havetask4=1
	end
-----------------------------------------------------------
	
	if(T395==1)then
		AddTopSayMenuItem("@2擂台争霸【剧情】@0","T395")
	end
	if(level>=20)then
		AddTopSayMenuItem("进入地牢深处","Tshi")
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
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1
------------------------------------------------
elseif(answer=="liaotian") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("王凝之：@!按左上角的PK键，你可以发现boss身上出现一个数字，按下这个数字对应的建，你就能锁定boss了！")
	else
		LuaSay("王凝之：@!按下星号键，你可以发现boss身上出现一个数字，按下这个数字对应的建，你就能锁定boss了！")
	end

elseif(answer=="Tshi")then
	ChangeMap("lu_dlsc")
	
elseif(answer=="T384")then
	if(LuaQueryTask("T384")==1)then
		LuaSay(LuaQueryStr("name").."：你夫人托我将这块@2玉佩@0交给你，虽然你们不能相见，但是她还是很想念你！")
		LuaSay("王凝之：多谢前来相告，麻烦阁下转告夫人，虽然不能相见，但我相信终有一天会相见的，让她保重身体！")
		LuaSetTask("T384",2)
		AddLog("千里共婵娟【剧情】",384)
		UpdateMenu()
	elseif(LuaQueryTask("T384")==2)then
		LuaSay("王凝之：麻烦少侠转告我夫人我的消息")
	end

elseif(answer=="T371")then         --------------------------------------------暴露身份【剧情】
	if(LuaQueryTask("T371")==1)then
	LuaSay("王凝之：你是？你怎么会在这里？难道也是被邪恶所获？")
	LuaSay(""..LuaQueryStr("name").."：你难道就是@3王凝之@0，@3谢道韫@0的夫君？你还活着啊，老天有眼啊。我就是为了来找你才故意来这地牢的。")
	AddMenuItem("任务完成","")
	AddMenuItem("领取奖励","T371jl")
	UpdateMenu()
	end
	elseif(answer=="T371jl")then      -------------------------------------371奖励
	if(LuaQueryTask("T371")==1)then
	LuaSetTask("T371",99)
	DelLog("371")
	LuaAddJx("combat_exp",121000,"T370")--奖励
	UpdateMenu()
	end
elseif(answer=="T391")then                  ----------------------------------------救治英雄【剧情】
		if(LuaQueryTask("T391")==0)then
		LuaSay("王凝之：我已身中剧毒，生命危在旦夕，现在急需解药救治，烦请阁下在@210分钟内赶回建康城南@0找@3药品商人@0寻求解药！")
		LuaSay(LuaQueryStr("name").."：您一定要坚持住，我速去速回！")
		LuaSetTask("T391",1)
		LuaSetTask("T391time",GetCurrentTime())
		AddLog("救治英雄【剧情】",391)
		LuaSay("王凝之：去@4建康城南@0找@3药品商人@0寻求解药。")
		UpdateTopSay("去建康城南找药品商人寻求解药")
		UpdateMenu()

		elseif(LuaQueryTask("T391")==1)then
		LuaSay("王凝之：吾生命已危在旦夕，还望阁下速去速回啊！")

		elseif(LuaQueryTask("T391")==2)then
		local tgtime=GetCurrentTime()-LuaQueryTask("T391time")
		if(tgtime<=600 and LuaItemCount("o_mission181")==2)then
		LuaSay("王凝之：阁下的救命之恩，我日后报答，如今邪恶作乱，局势动荡啊！")
		AddMenuItem("任务完成","")
		AddMenuItem("领取奖励","T391jl")
		else
		LuaSay("王凝之：你怎么现在才回来，如今毒液已扩散到我五脏六腑，无药可救了！")
		LuaSetTask("T391",99)
		DelLog("391")
		DelItem("o_mission181",2)
		UpdateMenu()
		end
		end

		elseif(answer=="T391jl")then      ------------------------------391奖励
		if(LuaQueryTask("T391")==2 and LuaItemCount("o_mission181")==2)then
		LuaSetTask("T391",99)
		DelLog("391")
		DelItem("o_mission181",2)
		LuaAddJx("combat_exp",99000,"T391")
		if(LuaRandom(10)==1)then  --16级项链 
			LuaGive("e_necklace002",1,2,"T391")--项链
		else
			LuaGive("e_necklace002",1,1,"T391")--项链
		end
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end

elseif(answer=="T392")then                 --------------------------------地牢之谜【剧情】
		if(LuaQueryTask("T392")==0)then
		LuaSay("王凝之：多谢阁下救命之恩，如今是该结束的时候了，烦劳阁下去@4山寨地牢@0击杀@210只赤蛛和10只天师守卫@0后回复！")
		LuaSay("王凝之：学会组队不光会让你事半功倍，还能交到更多的朋友。")
		LuaSetTask("T392",1)
		LuaSetTask("task_kill/mon_014/T392",1)
		LuaSetTask("task_kill/mon_015/T392",1)
		AddLog("地牢之谜【剧情】",392)
		UpdateTopSay("击杀赤蛛和天师守卫各10个")
		UpdateMenu()

		elseif(LuaQueryTask("T392")==1)then
		local a=LuaQueryTask("task_kill/mon_014/T392")-1
		local b=LuaQueryTask("task_kill/mon_015/T392")-1
		if(a>9 and b>9)then
		LuaSay("王凝之：干得漂亮，这些罪大恶极的邪恶之徒终于得到了他们应得的报应！")
		AddMenuItem("任务完成","")
		AddMenuItem("领取奖励","T392jl")
		UpdateMenu()
		else
		LuaSay("王凝之：你才杀了@2"..a.."个赤蛛@0,@2"..b.."个天师守卫@0，快去击杀@210个赤蛛跟10个天师守卫@0吧！")
		end
		end
		elseif(answer=="T392jl")then   --------------------------392奖励
		if(LuaQueryTask("T392")==1)then
		if(LuaQueryTask("task_kill/mon_014/T392")>=11 and LuaQueryTask("task_kill/mon_015/T392")>=11)then
		LuaSetTask("T392",99)
		DelLog("392")
		LuaDelTask("task_kill/mon_014/T392")
		LuaDelTask("task_kill/mon_015/T392")
		if(TeamCount()>=2)then
			LuaAddJx("combat_exp",138800,"T392")
		else
			LuaAddJx("combat_exp",118800,"T392")
		end
		if(LuaRandom(5)==1)then
			LuaGive("e_shoes004",1,2,"T392") --19级鞋子
		else
			LuaGive("e_shoes004",1,1,"T392")
		end
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end

elseif(answer=="T393")then          -------------------------------破除邪术【BOSS】
		if(LuaQueryTask("T393")==0)then
			LuaSay("王凝之：事已至此，事实上外面的孙恩邪体不过是一个受控制的傀儡，而真正控制他的人在这个@4地牢的深处@0，必须破除邪术！")
			if(LuaQueryStr("class")=="shen") then      --战士
				LuaSay("王凝之：杀死@2孙恩邪体@0你就能获得@1天师邪刃@0，这可是一把极其锋利的武器。")
			elseif(LuaQueryStr("class")=="wu") then       --侠客
				LuaSay("王凝之：杀死@2孙恩邪体@0你就能获得@1天师邪刀@0，这可是一把极其锋利的武器。")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
				LuaSay("王凝之：杀死@2孙恩邪体@0你就能获得@1天师邪毫@0，这可是一把极其强大的武器。")
			end
			LuaSay("王凝之：建议你组队前去哦，祝你成功@!")
			LuaSay("@1温馨提示@0：打boss请保留2格以上包裹空间，否则可能拿不到极品装备@!")
			LuaSay("@1温馨提示@0：boss掉落是给最后一刀杀死boss的人！祝你好运！")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("王凝之：@!按左上角的PK键，你可以发现boss身上出现一个数字，按下这个数字对应的建，你就能锁定boss了！")
			else
				LuaSay("@7如何锁定boss@0：@!按下星号键，你可以发现boss身上出现一个数字，按下这个数字对应的建，你就能锁定boss了！")
			end
			LuaSetTask("T393",1)
			LuaGive("o_drug_hp2",10)
			AddLog("破除邪术【BOSS】",393)
			UpdateTopSay("消灭地牢深处的孙恩邪体")
			UpdateMenu()
		elseif(LuaQueryTask("T393")==1)then
			if(LuaItemCount("o_mission190")>=1)then
			LuaSay("王凝之：阁下有勇有谋，真令在下佩服之极啊！如今可以过上一段安宁的日子了!")
			if(LuaQueryStr("class")=="shen") then      --战士
				LuaSay("王凝之：看样子你已经拿到了@1天师邪刃@0了，可惜我现在挥舞不动了，你我有缘我就将他赠送于你吧！")
			elseif(LuaQueryStr("class")=="wu") then       --侠客
				LuaSay("王凝之：看样子你已经拿到了@1天师邪刀@0了，可惜我现在挥舞不动了，你我有缘我就将他赠送于你吧！")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
				LuaSay("王凝之：看样子你已经拿到了@1天师邪毫@0了，可惜我现在挥舞不动了，你我有缘我就将他赠送于你吧！")
			end
			LuaSay("王凝之：我再赠予你一颗强化石，可以用来强化武器，增加武器的各项基础属性，对你所需要强化的装备点击确定键，选择强化，就能进行强化了。")
			LuaSay("王凝之：另外装备还能通过材料的镶嵌来提高装备属性，对你所需要镶嵌的装备点击确定键，选择镶嵌，你就能进行镶嵌了。")
			LuaSay("王凝之：悄悄的告诉你，如果你对自己装备的属性不满意，你可以到建康城南的防具商人那里进行洗属性哦@!")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","T393jl")
			UpdateMenu()
			else
			LuaSay("王凝之：战乱未平，赶紧去@4地牢深处@0消灭@3孙恩邪体@0吧！")
			LuaSay("@7温馨提示@0：@!完成本任务不光有丰厚的奖励，还能得到强力武器哦！")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("王凝之：@!按左上角的PK键，你可以发现boss身上出现一个数字，按下这个数字对应的建，你就能锁定boss了！")
			else
				LuaSay("@7如何锁定boss@0：@!按下星号键，你可以发现boss身上出现一个数字，按下这个数字对应的建，你就能锁定boss了！")
			end
			end
		end
		elseif(answer=="T393jl")then             --------------------------393奖励
			if(LuaQueryTask("T393")==1 and LuaItemCount("o_mission190")>=1)then
				if(LuaFreeBag()>=2)then
					LuaSetTask("T393",99)
					DelItem("o_mission190",1)
					DelLog("393")
					if(TeamCount()>=2)then
						LuaAddJx("combat_exp",350000,"T393")
					else
						LuaAddJx("combat_exp",275000,"T393")
					end
					if(LuaQueryTask("TtaozhuangB") == 0) then
					LuaGive("e_clothes165",1,2,"T393")
					LuaSetTask("TtaozhuangB",99)
					end
					LuaGive("o_ybsc002j",1,"T393")--强化石	
					LuaAddAchievementSchedule("Task_num",1)
					LuaGive("coin",2000,"T393")
					UpdateMenu()
					SendCommand("call=王凝之：刚才您获得了两块强化石，能大幅度的增加装备的能力哦，强化石是可以在@3元宝商城@0中的@4道具店@0中购买到哦@!|0|101")
					LuaSay("我现在为您打开商城，希望能对您有所帮助")

				else
					LuaSay("提示：请保留至少2格的背包空间。")
				end
			end

elseif(answer=="T394")then                      -----------------------------------地牢除恶【循环】
		if(LuaQueryTask("T394")==0)then
		LuaSay("王凝之：听说最近@2山寨地牢的天师守卫@0很是霸道，烦劳阁下去给他们点教训！消灭@320只天师守卫@0后回复我！")
		LuaSetTask("T394",1)
		LuaSetTask("task_kill/mon_015/T394",1)
		AddLog("地牢除恶【循环】",394)
		UpdateTopSay("去山寨地牢消灭20只天师守卫后回复我")
		UpdateMenu()

		elseif(LuaQueryTask("T394")==1)then
		local a=LuaQueryTask("task_kill/mon_015/T394")-1
		if(a>19)then
		LuaSay("王凝之：这下那些天师守卫还敢猖狂吗，哈哈...")
		AddMenuItem("任务完成","")
		AddMenuItem("领取奖励","T394jl")
		UpdateMenu()
		else
		LuaSay("王凝之：你才杀了@2"..a.."只天师守卫@0,快去击杀@220只天师守卫@0吧")
		end
		end

		elseif(answer=="T394jl")then        -------------------------------394奖励
		if(LuaQueryTask("T394")==1)then
		if(LuaQueryTask("task_kill/mon_015/T394")>=21)then
		local money
		if(LuaQuery("level")<20)then
			money=200
		elseif(LuaQuery("level")<30)then
			money=300
		elseif(LuaQuery("level")<40)then
			money=400
		elseif(LuaQuery("level")<40)then
			money=500
		elseif(LuaQuery("level")<100)then
			money=600
		end
		local jinyan
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T394_first")~=1)then
			jinyan=((level^2*20+28000)*1.4)
		else
			jinyan=(level^2*20+28000)
		end
		LuaDelTask("T394")
		DelLog("394")
		LuaDelTask("task_kill/mon_015/T394")
		LuaAddJx("combat_exp",jinyan,"T394")
		LuaGive("coin",money,"T394")
		if(LuaQueryTask("T394_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T394_a",99)
		end

		UpdateMenu()
		end
		end
		      		       
elseif(answer=="T395")then
	if(LuaQueryTask("T395")==0)then
		LuaSay("王凝之：小英雄，您真是太厉害了。如今您已经是可以独当一面的人物了，该有更高的挑战了。")
		LuaSay("王凝之：去找@4北府军营@0的@3比武使者@0吧，在他那里你可以摆下擂台，迎接其他玩家的挑战。还有比武大赛哦。@!")
		LuaSay("王凝之：回到建康城，@4从建康城向左@0就能去@4北府军营@0了。")
		LuaSetTask("T395",1)
		AddLog("擂台争霸【剧情】",395)
		UpdateMenu()
		if(LuaQueryTask("T393")==99)then
				AddMenuItem("传送至北府军营入口","")
				AddMenuItem("确认传送至北府军营入口","Tcs_jck")
		end
	elseif(LuaQueryTask("T395")==1)then
		LuaSay("王凝之：快去@4北府军营@0找@3比武使者@0检验一下自己的实力吧。从@4建康城向左走@0就可以到达了。@!")
		if(LuaQueryTask("T393")==99)then
				AddMenuItem("传送至北府军营入口","")
				AddMenuItem("确认传送至北府军营入口","Tcs_jck")
		end
	end
elseif(answer=="Tcs_jck")then
	ChangeMap("lu_jkc",85,332)
elseif(answer=="Tsnpc_35")then
	if(LuaQueryTask("Tsnpc_35")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("王凝之：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_35",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_35")==2)then
		LuaSay("王凝之：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_35")then
	if(LuaQueryTask("Tenpc_35")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("王凝之：这都是大人的功劳啊")
		LuaSetTask("Tenpc_35",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_35")==2)then
		LuaSay("王凝之：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end 

