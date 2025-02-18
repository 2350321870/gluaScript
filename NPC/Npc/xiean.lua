NPCINFO = {
serial= "37" ,
base_name="xiean" ,
icon= 2550,
NpcMove=2550,
name= "谢安" ,
iconaddr=1,
butt="10|10|60",
name_color = "CEFFCE" ,
lastsay="交上几个朋友才有更多的乐趣",
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
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("Ttaozhuangjl")==0) then
		AddTopSayMenuItem("@315级领套装奖励","Ttaozhuangjl")
	else
		if(LuaQueryTask("TtaozhuangA")==0 or LuaQueryTask("TtaozhuangB")==0 or LuaQueryTask("TtaozhuangC")==0) then
			AddTopSayMenuItem("@320级套装出处指引","Ttaozhuangjl")
		end
	end
--以上为特殊部分
	if(LuaQueryTask("T263")==1) then
		AddTopSayMenuItem("@2军中潜龙【剧情】","T263")
		--havetask2=1
	end
	if(LuaQueryTask("T368")==2) then
		AddTopSayMenuItem("@2邪术诅咒【剧情】@0","T368")
		havetask2 =1
	end
	if(LuaQueryTask("T850")==1 ) then
		AddTopSayMenuItem("@2免罪【剧情】","T850")
	end
	if(LuaQueryTask("T851") >=1 and LuaQueryTask("T851") < 99)then
		AddTopSayMenuItem("@2冤屈【剧情】","T851")
		if(LuaQueryTask("T851") ==4)then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T21")==1 or LuaQueryTask("T21")==2) then
		AddTopSayMenuItem("@2擎天之柱【剧情】","T21")
		havetask2 =1
		end
------------------------------------------------------------------------------
	if((LuaQueryTask("Txrfuli")==0) or  LuaQueryTask("Txrfuli")<99) then
		AddTopSayMenuItem("@1[热]@0@5新手礼品","Txrfuli")
	end
----------------------------------------------------------------------------


	if(LuaQueryTask("T322")==1 or LuaQueryTask("T322")==2) then
		AddTopSayMenuItem("@2叔侄之情【剧情】","T322")
		if(LuaQueryTask("T322")==1)then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_1")==1 or LuaQueryTask("TfindNPC_1")==2)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask2=1
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_1")==98)then
		AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
	end
	if((LuaQueryTask("Tsnpc_24")==1 or LuaQueryTask("Tsnpc_24")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_24")
		if(LuaQueryTask("Tsnpc_24")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_24")==1 or LuaQueryTask("Tenpc_24")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_24")
		if(LuaQueryTask("Tenpc_24")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T852")==1) then
		AddTopSayMenuItem("@2前往【剧情】","T852")
		--havetask2=1
	end
	if(LuaQueryTask("T423")==1 and LuaQueryTask("T423A")==0) then
		AddTopSayMenuItem("@2速度的考验【剧情】","T423A")
		havetask2 =1
	end
	if(LuaQueryTask("T265")==1) then
		AddTopSayMenuItem("@2初临建康【剧情】","T265")
		if(LuaQueryTask("T265A") == 99 and LuaQueryTask("T265B") == 99 and LuaQueryTask("T265C") == 99 and LuaQueryTask("T265D") == 99 and LuaQueryTask("T265E") == 99) then
		havetask2 =1
		end
	end

--以上为黄色问号部分
	if(LuaQueryTask("T263")==0 and LuaQueryTask("Txrfuli")~=0)  then
		AddTopSayMenuItem("军中潜龙【剧情】","T263")
		havetask1 =1
	end

	if(LuaQueryTask("T850")==0 and LuaQueryTask("T851") == 99) then
		AddTopSayMenuItem("免罪【剧情】","T850")
		havetask1=1
	end
 	if(level>=19 and LuaQueryTask("T851") == 0)then
		AddTopSayMenuItem("冤屈【剧情】","T851")
		havetask1 =1
	end
	if(LuaQueryTask("T852") == 0 and LuaQueryTask("T851") == 99)then
		AddTopSayMenuItem("前往【剧情】","T852")
		havetask1 =1
	end
	if(LuaQueryTask("T302")==8 and LuaQueryTask("T302H")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302H")
		havetask2 =1
	end
	if(LuaQueryTask("T70") ==2) then
		AddTopSayMenuItem("@2每日点兵【每日】@0","T70")
		havetask2 =1
	end
	--AddTopSayMenuItem("测试专用","text111")
	--AddTopSayMenuItem("@5公测礼包激活码领取","Tpubcode")
	--AddTopSayMenuItem("@9公测礼包激活码兑换测试","Tpubcode1")
--以上为黄色感叹还部分

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
--[[elseif(answer=="text111")then
	AddMenuItem("测试","")
	AddMenuItem("50级套装包","11")
	AddMenuItem("1级材料包","12")
	AddMenuItem("2级材料包","13")
	AddMenuItem("3级材料包","14")
	AddMenuItem("4级材料包","15")
	AddMenuItem("5级材料包","16")
	AddMenuItem("6级材料包","17")
elseif(answer=="11")then
	LuaGive("o_present036",1)
elseif(answer=="12")then
	LuaGive("o_present022",1)
elseif(answer=="13")then
	LuaGive("o_present024",1)
elseif(answer=="14")then
	LuaGive("o_present026",1)
elseif(answer=="15")then
	LuaGive("o_present028",1)
elseif(answer=="16")then
	LuaGive("o_present030",1)
elseif(answer=="17")then
	LuaGive("o_present032",1)

]]


elseif(answer=="liaotian") then
		LuaSay("谢安：为国为民，鞠躬尽瘁，死而后已！")
elseif(answer=="Txl_wqsr")then
	AutoGoToNpc("@7是否@0寻路至@4武器商人","wqdhuoji")

elseif(answer=="Ttaozhuangjl")then
	local level= LuaQuery("level")
	if(level>=15)  then
		if(LuaQueryTask("Ttaozhuangjl")==0) then
			if(LuaFreeBag()>=5)then
				LuaSay("谢安：恭喜您！得到@320级极品套装8件套中的5件@0。")
				LuaSay("谢安：剩余的3件，分别将在完成：@216级五斗山桓玄处@0的@3队伍集结@0，@220级建康城司马元显处@0的@3承包土地@0。")
				LuaSay("谢安：@220级山寨地牢王凝之处@0的@3破除邪术BOSS任务@0，就能得到。")
				LuaSay("谢安：收集并@2穿上一套炫酷的极品套装@0，就会有@3华丽的套装效果@0，让别人拜服在英明神武的您脚下吧！@!")
				LuaGive("e_sword165",1,3,"Ttaozhuangjl")
				LuaGive("e_shoes165",1,2,"Ttaozhuangjl")
				LuaGive("e_knife165",1,2,"Ttaozhuangjl")
				LuaGive("e_earring165",1,2,"Ttaozhuangjl")
				LuaGive("e_necklace165",1,2,"Ttaozhuangjl")
				LuaSetTask("Ttaozhuangjl",99)
				UpdateMenu()
			else
				LuaSay("提示：请至少保留5格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！")
			end
		else
			LuaSay("谢安：剩余的3件，分别将在完成：@216级五斗山桓玄处@0的@3队伍集结@0，@220级建康城司马元显处@0的@3承包土地@0。")
			LuaSay("谢安：@220级山寨地牢王凝之处@0的@3破除邪术BOSS任务@0，就能得到。")
			LuaSay("谢安：收集并@2穿上一套炫酷的极品套装@0，就会有@3华丽的套装效果@0，让别人拜服在英明神武的您脚下吧！@!")
		end
	else
		LuaSay("谢安：统一ol@3炫酷极品套装免费赠送@0，只要您达到@215级@0，就可以到我这里来领取@3炫酷拉风的极品套装@0。")
	end
elseif(answer=="T302H") then
	if(LuaQueryTask("T302H")==0) then
		LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
		LuaSay("谢安：唔...有劳少侠!")
		DelItem("o_mission076",1)
		LuaSetTask("T302H",99)
		UpdateMenu()
	end

elseif(answer=="T21") then              ----------------------擎天之柱
	if(LuaQueryTask("T21")==1) then
		local a = LuaQuery("level") * 6 + LuaQuery("extra_skp") - LuaQuery("used_skpoint")
		if(LuaQuery("level")>=10)then
				if(LuaQueryStr("class")=="shen") then      --战士
					SendCommand("call=谢安：你从桃源来？唉，这华夏天下，老夫苦苦支撑多年，真是累了。华夏文明的未来可要依靠你们这些年轻人了。@!|0|12|3|4|2")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("谢安：学习技能能够提升技能的伤害。点击@3菜单@0再点击@2技能键@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!")
					else
						LuaSay("谢安：学习技能能够提升技能的伤害。@3按确定键再按3@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!")
					end
					LuaSay("谢安：现在我为你打开技能界面，选择@3怒斩@0或者@3旋风刀@0便可以学习了哦，成功的学习技能之后来找我@5领取丰厚奖励@0哦")
				elseif(LuaQueryStr("class")=="wu") then       --侠客
					SendCommand("call=谢安：你从桃源来？唉，这华夏天下，老夫苦苦支撑多年，真是累了。华夏文明的未来可要依靠你们这些年轻人了。@!|0|12|3|4|2")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("谢安：学习技能能够提升技能的伤害。点击@3菜单@0再点击@2技能键@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!")
					else
						LuaSay("谢安：学习技能能够提升技能的伤害。@3按确定键再按3@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!")
					end
					LuaSay("谢安：现在我为你打开技能界面，选择@3剑雨@0或者@3半月斩@0便可以学习了哦，成功的学习技能之后来找我@5领取丰厚奖励@0哦")
				elseif(LuaQueryStr("class")=="xian") then       --谋士
					SendCommand("call=谢安：你从桃源来？唉，这华夏天下，老夫苦苦支撑多年，真是累了。华夏文明的未来可要依靠你们这些年轻人了。@!|0|12|3|4|2")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("谢安：学习技能能够提升技能的伤害。点击@3菜单@0再点击@2技能键@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!")
					else
						LuaSay("谢安：学习技能能够提升技能的伤害。@3按确定键再按3@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!")
					end
					LuaSay("谢安：现在我为你打开技能界面，选择@3烈火焚身@0或者@3落雷@0便可以学习了哦，成功的学习技能之后来找我@5领取丰厚奖励@0哦")
				end

		else
			LuaSay("谢安：将你的个人等级提升至10级再来找我吧，能得到@3丰厚的奖励@0哦@!")
		end
		LuaSetTask("T21",2)
		AddLog("擎天之柱【剧情】",21)
		UpdateMenu()
	elseif(LuaQueryTask("T21")==2)then
		if(LuaQuery("used_skpoint")==0)then
			if(LuaQueryStr("class")=="shen") then      --战士
				if(LuaQueryStr("MobieType") ~= "S20")then
					SendCommand("call=谢安：学习技能能够大大提升技能的伤害。点击@3菜单@0再点击@3技能键@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!|0|12|3|4|2")
				else
					SendCommand("call=谢安：学习技能能够大大提升技能的伤害。@3按确定键再按3@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!|0|12|3|4|2")
				end
				LuaSay("谢安：现在我为你打开技能界面，选择@3怒斩@0或者@3旋风刀@0便可以学习了哦，成功的学习技能之后来找我@5领取丰厚奖励@0哦")
			elseif(LuaQueryStr("class")=="wu") then       --侠客
				if(LuaQueryStr("MobieType") ~= "S20")then
					SendCommand("call=谢安：学习技能能够大大提升技能的伤害。点击@3菜单@0再点击@3技能键@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!|0|12|3|4|2")
				else
					SendCommand("call=谢安：学习技能能够大大提升技能的伤害。@3按确定键再按3@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!|0|12|3|4|2")
				end
				LuaSay("谢安：现在我为你打开技能界面，选择@3剑雨@0或者@3半月斩@0便可以学习了哦，成功的学习技能之后来找我@5领取丰厚奖励@0哦")

			elseif(LuaQueryStr("class")=="xian") then       --谋士
				if(LuaQueryStr("MobieType") ~= "S20")then
					SendCommand("call=谢安：学习技能能够大大提升技能的伤害。点击@3菜单@0再点击@3技能键@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!|0|12|3|4|2")
				else
					SendCommand("call=谢安：学习技能能够大大提升技能的伤害。@3按确定键再按3@0就能进入职业技能界面哦。选中需要学习的技能在弹出的菜单中选择升级就能提升技能等级哦@!|0|12|3|4|2")
				end
				LuaSay("谢安：现在我为你打开技能界面，选择@3烈火焚身@0或者@3落雷@0便可以学习了哦，成功的学习技能之后来找我@5领取丰厚奖励@0哦")
			end
		else
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T21jl")
		end
	end
elseif(answer=="T21jl")then
	if(LuaQueryTask("T21")==2)then
		LuaSetTask("T21",99)
		LuaAddJx("combat_exp",27500,"T21")
		LuaAddAchievementSchedule("Task_num",1)
		DelLog("21")
		UpdateMenu()
		AddMenuItem("@7领取任务","")
		AddMenuItem("@1[热]@0@5新手礼品","Txrfuli")

	end
--------------------------------------------------------------------------------------------------------
elseif(answer=="Txrfuli") then
	
		if(LuaQueryTask("Txrfuli")==0)then
				LuaSay("谢安：《统一OL》火爆新手大赠送，你与老夫有缘，今日我就赠送给你@248888经验@0和@21W@0铜币助你走天下")
				LuaSay("谢安：明日你再来找我，我将再赠送你@250金币@0，@2经验188888@0，@3金币@0就是绑定的元宝哦，机会不容错过@!")
				AddMenuItem("@7新手大奖励","")
				AddMenuItem("领取今日新手奖励","Txrfulijl1")
			
		elseif(LuaQueryTask("Txrfuli")==1) then
			if(GetCurrentDay()~=LuaQueryStrTask("xrTaskday1")) then
				LuaSay("谢安：年轻人,欢迎你再次来到这里,我将实现我的承诺。点击菜单就能领取到50金币，@2188888@0经验@!")
				LuaSay("谢安：明日你还可以到老夫这里领取@2经验388888@0，@2铜币58888@0，只要您来，我就送，千万不要忘记哦")
				AddMenuItem("@7新手大奖励","")
				AddMenuItem("领取今日新手奖励","Txrfulijl2")
			else
				LuaSay("谢安：心急吃不了热豆腐,今天已经帮你登记过了,@2明天才能继续领取@0哦,偷偷告诉你，明天会有更高的奖励哦，可别错过哟。@!")
				LuaSay("谢安：明日你还可以到老夫这里领取@2经验388888@0，@2铜币58888@0，只要您来，我就送，千万不要忘记哦")
			end
		elseif(LuaQueryTask("Txrfuli")==2) then
			if(GetCurrentDay()~=LuaQueryStrTask("xrTaskday2")) then
				LuaSay("谢安：不错,老夫就是喜欢有恒心的年轻人,这是给你的奖励。@!")
				AddMenuItem("@7新手大奖励","")
				AddMenuItem("领取今日新手奖励","Txrfulijl3")
			else
				LuaSay("谢安：欲速则不达！今天的福利你已经领取,@2期待你有更多精彩。@!")
			end
		elseif(LuaQueryTask("Txrfuli")==99) then
			LuaSay("谢安：你已经领取过新人福利,赶快走上统一天下之路吧。更多精彩等着你去发现。@!")
			LuaSay("谢安：偷偷的告诉你,@220级@0就可以去@4宫殿@0@3司马道子@0处,领取@3每日登陆奖励@0了。@!")
		
		
		end
	
	
elseif(answer=="Txrfulijl1")then
				if(LuaQueryTask("Txrfuli")==0)then
					LuaAddJx("combat_exp",48888,"Txrfuli")
					LuaGive("coin",10000,"Txrfuli")
					LuaSay("谢安：明日你再来找我，我将再赠送你@250金币@0，@2经验188888@0，@3金币@0就是绑定的元宝哦，机会不容错过@!")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("谢安：再传授你一个实用的技巧，当看到@3界面上有闪动的信件@0时，可以按@3直接点击它@0就可打开信件。@!")
					else
						LuaSay("谢安：再传授你一个实用的技巧，当看到@3界面上有闪动的信件@0时，可以按@3确定键@0再按@38键@0打开信件。@!")
					end
					LuaSetTask("Txrfuli",1)
					LuaSetTask("xrTaskday1",GetCurrentDay())
					UpdateMenu()
					if(LuaQueryTask("T263")==0) then
						AddMenuItem("@7接取任务","")
						AddMenuItem("@7军中潜龙【剧情】","T263")
					end
				end
elseif(answer=="Txrfulijl2")then
				if(LuaQueryTask("Txrfuli")==1)then
					LuaAddJx("combat_exp",188888,"Txrfuli")
					LuaAddYB(2,50)------------金币
					--LuaGive("o_state001j",1,"Txrfuli")
					--LuaGive("o_state012j",1,"Txrfuli")
					LuaSay("谢安：明日你还可以到老夫这里领取@2经验388888@0，铜币5W，只要您来，我就送，千万不要忘记哦")
					LuaSay("谢安：偷偷的告诉你,@220级@0就可以去@4宫殿@0@3司马道子@0处,领取@3每日登陆奖励@0了。@!")
					LuaSetTask("Txrfuli",2)
					LuaSetTask("xrTaskday2",GetCurrentDay())
					UpdateMenu()
					if(LuaQueryTask("T263")<99) then
						AddMenuItem("@7接取任务","")
						AddMenuItem("@7军中潜龙【剧情】","T263")
					end
				end
elseif(answer=="Txrfulijl3")then
				if(LuaQueryTask("Txrfuli")==2)then
					LuaAddJx("combat_exp",388888,"Txrfuli")
					LuaGive("coin",58888,"Txrfuli")
					--LuaAddYB(2,70)------------金币
					--LuaGive("o_state001j",2,"Txrfuli")
					--LuaGive("o_state012j",2,"Txrfuli")
					LuaSay("谢安：偷偷的告诉你,@220级@0就可以去@4宫殿@0@3司马道子@0处,领取@3每日登陆奖励@0了。@!")
					LuaSetTask("Txrfuli",99)
					UpdateMenu()
					if(LuaQueryTask("T263")<99) then
						AddMenuItem("@7接取任务","")
						AddMenuItem("@7军中潜龙【剧情】","T263")
					end
				end








-------------------------------------------------------------------------------------------------
elseif(answer=="T265") then                    ------------初临建康
	if(LuaQueryTask("T265") == 0) then
		LuaSay("谢安：欢迎你来到建康城，建康城是商业繁华的地方，去拜访一下@4建康城南@0的@35位商人@0吧，你会有不小的收获哦。@!")
		LuaSay("谢安：另外多注意头@3顶有叹号的NPC@0哦，他们或许正需要您的帮助。")
		LuaSetTask("T265",1)
		AddLog("初临建康【剧情】",265)
		UpdateMenu()
		UpdateNPCMenu("wqdhuoji")
		UpdateNPCMenu("fjdhuoji")
		UpdateNPCMenu("spdhuoji")
		UpdateNPCMenu("ydhuoji")
		UpdateNPCMenu("zhongzis")
		UpdateTopSay("问候建康城南的5位商人")

	elseif(LuaQueryTask("T265") == 1) then
		if(LuaQueryTask("T265A") == 99 and LuaQueryTask("T265B") == 99 and LuaQueryTask("T265C") == 99 and LuaQueryTask("T265D") == 99 and LuaQueryTask("T265E") == 99) then
			LuaSay("谢安：恩，不错。看来你收获颇丰啊！@!")
			LuaSay("谢安：另外，@2向上@0就可前往@4建康主城@0哦，那里有更多精彩等着你，不过现在你还是在此好好锻炼吧@!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T265jl")
		else
			LuaSay("谢安：@3武器、饰品、防具、药品、种子5位商人@0你还没有拜访完哦？他们就在这@4建康城南@0，快去快回！")
		end
	end
	elseif(answer=="T265jl") then
		if(LuaQueryTask("T265") == 1) then
			LuaDelTask("T265A")
			LuaDelTask("T265B")
			LuaDelTask("T265C")
			LuaDelTask("T265D")
			LuaDelTask("T265E")
			LuaSetTask("T265",99)
			DelLog("265")
			LuaAddJx("combat_exp",27500,"T265")
			LuaGive("coin",500,"T265")
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
		end
elseif(answer=="T263") then                    ------------军中潜龙
		if(LuaQueryTask("T263") == 0) then
			LuaSay("谢安：昔日老夫苦心创建北府军，如今北府军人才济济，正是抗击北方蛮夷之中流砥柱，吾心甚慰。@!")
			LuaSay("谢安：@4建康城南@0的@3刘裕@0乃是老夫军中人才，有更多的朋友才有更强的战斗力，添加一个好友之后，去找刘裕哦@!")
			LuaSetTask("T263",1)
			--local userid = LuaRandomFriend("出门靠朋友，哥们我们做兄弟啊@!")
			--if (userid == 0) then
			LuaSay("@1提示：系统暂时没有找到合适的好友！")
			--else
			--	if(LuaQueryStr("MobieType") ~= "S20")then
			--		LuaSay("提示：你的好友叫" .. LuaOtherQueryStr(userid, "name").."，点击菜单再点击社交键选择好友就能看到你好友了哦。@!")
			--	else
			--		LuaSay("提示：你的好友叫" .. LuaOtherQueryStr(userid, "name").."，按确定键再按9键选择好友就能看到你好友了哦。@!")
			--	end
			--end
			AddLog("军中潜龙【剧情】",263)
			UpdateTopSay("有人的地方就有江湖，人就是江湖")
			UpdateMenu()
			UpdateNPCMenu("liuyu")
			if(LuaQueryTask("T21")==99)then
				AutoGoToNpc("@7是否@0寻路至@4刘裕","liuyu")
			end
		elseif(LuaQueryTask("T263") == 1) then

				LuaSay("谢安：如果没有添加好友，阁下也可自己添加哦，赶快去找刘裕吧，他就在这@4建康城南@0！")
				AutoGoToNpc("@7是否@0寻路至@4刘裕","liuyu")
		end


elseif(answer=="T322") then              ------------------------叔侄之情
		if(LuaQueryTask("T322")==1) then
			LuaSay("谢安：当年桓玄之父逼宫失败，皆因谢某阻扰，谢某虽问心无愧，不过对桓玄侄儿还是心怀歉疚的。")
			LuaSay("谢安：这里有一本@2道德经@0，希望桓玄侄儿好生研读，成为我华夏之栋梁，成就一番功业，莫要步上他父亲的后尘。")
			LuaSay("谢安：请你将道德经速速交给@4建康东郊@0的@3桓冲@0吧。")
			LuaSetTask("T322",2)
			LuaGive("o_mission014",1)
			UpdateTopSay("回复建康东郊的桓冲")
			AddLog("叔侄之情【剧情】",322)
			AddMenuItem("@7传送至桓冲","")
			AddMenuItem("确认传送至桓冲","Tcs_hc")
			UpdateMenu()
		elseif(LuaQueryTask("T322")==2) then
			LuaSay("谢安：将道德经交给@4建康东郊@0的@3桓冲@0吧。")
			AddMenuItem("@7传送至桓冲","")
			AddMenuItem("确认传送至桓冲","Tcs_hc")
		end
	elseif(answer=="Tcs_hc")then
		ChangeMap("lu_jkdj",244,221)

elseif(answer=="T368") then              ----------------------邪术诅咒
		if(LuaQueryTask("T368")==2 ) then
			LuaSay("谢安：怎么如此不小心呀，让我来整治一番就可以解除邪术的诅咒了。@!")
			LuaSay("提示：你身上邪术的诅咒已经解除！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T368jl")
		end
		elseif(answer=="T368jl")then
		       if(LuaQueryTask("T368")==2)then
				LuaSetTask("T368",99)
				LuaAddJx("combat_exp",69000,"T368")
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("coin",500,"T368")
				DelLog("368")
				UpdateMenu()
			end

elseif(answer=="T850")then         ------免罪
	 if(LuaQueryTask("T850") == 0)then
 		LuaSay("谢安：现在世俗里谣言太凶猛了，吾怕殿下被此蒙蔽！望少侠能去@4宫殿@0将吾等的忠心诉与@3陛下@0！")
 		LuaSetTask("T850",1)
 		UpdateTopSay("少侠快去找陛下吧")
		AddLog("免罪【剧情】",850)
		UpdateMenu()
     elseif(LuaQueryTask("T850") == 1)then
 		LuaSay("谢安：@3陛下@0就在@4宫殿@0里！")
 	end
elseif(answer=="T851")then         ------冤屈
	 if(LuaQueryTask("T851") == 0)then
 		LuaSay("谢安：陛下听信谗言，误解老臣，劳烦少侠去@4宫殿@0找到@3司马道子@0为吾澄清组建北府军的事实！")
		LuaSetTask("T851",1)
 		UpdateTopSay("少侠快去找司马道子吧")
		AddLog("冤屈【剧情】",851)
		UpdateMenu()
	elseif(LuaQueryTask("T851") == 1 or LuaQueryTask("T851") == 2 or  LuaQueryTask("T851") == 3)then
 		LuaSay("谢安：快去找@3司马道子@0吧！他就在@4宫殿@0里！")
 	elseif(LuaQueryTask("T851") == 4)then
 		LuaSay("谢安：大敌当前，司马道子这厮还搞内斗，气煞我也！")
 			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T851jl")
	 end
	elseif(answer=="T851jl")then
		if(LuaQueryTask("T851") == 4)then
		    LuaSetTask("T851",99)
		    LuaGive("coin",1000,"T851")
		    LuaAddJx("combat_exp",108000,"T851")
			LuaAddAchievementSchedule("Task_num",1)
		    DelLog(851)
		    UpdateMenu()
		    end
elseif(answer=="T852")then         ------前往
	 if(LuaQueryTask("T852") == 0)then
   		LuaSay("谢安：与其让北府大军落入司马道子之手，还不如为你所用，吾修书一封，交给@4北府军营@0的@3谢玄@0！")
		LuaSetTask("T852",1)
		LuaGive("o_mission363",1)
 		UpdateTopSay("少侠快去找谢玄吧")
 		AddLog("前往【剧情】",852)
		UpdateMenu()
	 elseif (LuaQueryTask("T852") == 1)then
		LuaSay("谢安：把信交给@4北府军营@0的@3谢玄@0！")
	 end


elseif(answer=="T423A") then                       ---------速度的考验
               if(LuaQueryTask("T423A") ==0) then
    			 LuaSay("谢安：不错，如此的速度传递消息，可以让我军更及时的了解前方战况！")
    			 LuaSetTask("T423A",99)
			 UpdateTopSay("去军营前哨回复驿站小吏吧")
     			 UpdateMenu()
                end
elseif(answer=="T70")then		-------------每日点兵
        if(LuaQueryTask("T70")==2)then
	LuaSay(LuaQueryStr("name").."：丞相大人，王恭王大人让我来向你汇报工作。")
	LuaSay("谢安：嗯，好，知道了，让他看紧点。")
	LuaSetTask("T70",3)
	LuaSetTask("T70time",GetCurrentTime())
	UpdateMenu()
	end


--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_1")==1)then
					LuaSay("谢安：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_1",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_1")==2)then
					LuaSay("谢安：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_1",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("谢安：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("谢安：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")
	end

elseif(answer=="Tsnpc_24")then
	if(LuaQueryTask("Tsnpc_24")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("谢安：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_24",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_24")==2)then
		LuaSay("谢安：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_24")then
	if(LuaQueryTask("Tenpc_24")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话表扬你的贡献，希望你再接再厉")
		LuaSay("谢安：这都是大人的功劳啊")
		LuaSetTask("Tenpc_24",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_24")==2)then
		LuaSay("谢安：话已经带到了，快回去领取奖励吧")
	end
elseif(answer=="Tpubcode")then
	if(LuaQuery("level")>=20)then
		if(LuaQueryTask("al_Tpubcode")==0)then
			LuaSet("Tgcjihuoma",2)	--Tgcjihuoma：只有一种激活码，1为公测大礼包
			local a = GetDjCode()
			LuaSay("领取激活码成功!请妥善保管！")
			LuaSay("您的激活码为："..a.."")
			SendMail("激活码领取成功","系统","","您的激活码为"..a.."")
			LuaSetTask("usercode",a)
			LuaSetTask("al_Tpubcode",1)
			UpdateMenu()
		else
			local a = LuaQueryStrTask("usercode")
			LuaSay("你已经领取过激活码了，您的激活码为"..a.."，祝您游戏愉快@!")
		end
	else
		LuaSay("加油升级到20级就能领取激活码，在公测能领取到@3豪华公测大礼包@0哦@!")
	end
--[[elseif(answer=="Tpubcode1")then
	LuaSay("以下是激活码兑换测试")
	if(LuaQuery("Txulie")== 0) then
		SetDjCode()  --成功后返回Txulie=1,该激活码状态设为2,至此激活码失效
	elseif(LuaQuery("Txulie")== 1)then
		LuaSay("测试成功。不给你东西")
		LuaSay("如出现这条领取正常")
		LuaDel("Txulie")
	end]]

end
LuaSendMenu()
return 1
end



