NPCINFO = { 
serial="38" ,
base_name="liuyu",
icon=2529,
NpcMove=2529,
name="刘裕" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE" ,
lastsay="15级以下可以去建康东郊升级" ,
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
	
	if(LuaQueryTask("T263")==1) then
		AddTopSayMenuItem("@2军中潜龙【剧情】","T263") 
		havetask2 =1
		end
	if(LuaQueryTask("T267")==1)then
		AddTopSayMenuItem("@2贤臣桓冲【剧情】","T267") 
	end 
	--[[if(LuaQueryTask("T275")==1) then
		AddTopSayMenuItem("@2筹措军备【循环】","T275") 
		if(LuaItemStatusNormalCount("o_material_47") >= 1 and LuaItemStatusNormalCount("o_material_38") >= 1 ) then
			havetask2 =1
		else
			havetask4 =1
		end
	end]]
	if((LuaQueryTask("Tsnpc_25")==1 or LuaQueryTask("Tsnpc_25")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_25")
		if(LuaQueryTask("Tsnpc_25")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_25")==1 or LuaQueryTask("Tenpc_25")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_25")
		if(LuaQueryTask("Tenpc_25")==1)then
			havetask2=1
		end
	end
		
	if(LuaQueryTask("Txinchun") == 1 or LuaQueryTask("Txinchun") == 2) then
		AddTopSayMenuItem("@2快乐新春@0","Txinchun")
		havetask2 =1
	end
--以上为黄色问号部分
	if(LuaQueryTask("T276")==1) then
		AddTopSayMenuItem("@2刘裕的考验【剧情】","T276") 
		havetask4 =1
	end
--以上为灰色问号部分
	--[[if(LuaQueryTask("T275")==0 and level>12 and level<17) then
		AddTopSayMenuItem("筹措军备【循环】","T275") 
		havetask1 =1
		end]]
	if(LuaQueryTask("T276")==0 and level>=11 and LuaQueryTask("T263")==99) then
		AddTopSayMenuItem("刘裕的考验【剧情】","T276") 
		havetask1 =1
		end

	if(LuaQueryTask("T267")==0 and LuaQueryTask("T276")==99 and LuaQueryTask("T276")>0)  then
		AddTopSayMenuItem("贤臣桓冲【剧情】","T267")
		havetask1 =1
	end
	
--以上为黄色感叹号部分	
	

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
	LuaSay("刘裕：如果你15级以下，可以去建康东郊升级哦！")
elseif(answer=="Txl_jkdj")then
	AutoGoToNpc("@7是否@0寻路至@4建康东郊","lu_jkcn")
elseif(answer=="Tcs_hc")then
	ChangeMap("lu_jkdj",250,221)

elseif(answer=="T111") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
        if(LuaQueryTask("T111")==0) then                           --------不通过植物，通过探宝器，实现宝物的发现获得 
		if(LuaFreeBag()>0) then
			LuaSay("刘裕：当朝的大地上到处是@2宝藏@0。我这里有一个价值连城的@2探宝器@0，只要你点击使用，就可以@2知道附近有无宝物@0。")
			LuaSay("刘裕：传说，有3个财宝@2分别@0藏在@3建康东郊其中三棵红色的树下@0。如果你运气好的话，还可以挖到极品装备哦。@!")
			LuaSay("刘裕：在@4建康东郊@0的每个@2树下@0都用@2背包中的探宝器@0好好探探吧。找齐@23个宝藏@0后就到我这来领取奖励。@!")
			LuaGive("o_mission013",1)
			LuaSetTask("T111",1)
			AddLog("大晋宝藏【剧情】",111)
			UpdateMenu() 
		else
			LuaSay("提示：你背包已满，请清空背包")
		end
	elseif(LuaQueryTask("T111")==1) then
		if(LuaItemCount("o_mission016") >= 3)then
			LuaSetTask("T111",99)
			LuaSetTask("T111A",0)
			LuaSetTask("T111B",0)
			LuaSetTask("T111C",0)
			DelItem("o_mission013",1)
			DelItem("o_mission016",3)
			LuaSay("刘裕：果然不负我所望，当然我也会兑现我的诺言。")
			LuaGive("coin",2000,"T111")
			local jingyan=20000+level^2*40+level*4000        
			LuaAddJx("combat_exp",jingyan,"T111")
			DelLog("111")
			UpdateMenu() 
		else
			LuaSay("刘裕：你还没有挖到@23个宝物@0呢。它们就在建康东郊的某3棵红色的树下。")
		end
        end 


          
---------------------------------------------------------------------------------------赌博结束



elseif(answer=="T263") then              ----------------------军中潜龙
		if(LuaQueryTask("T263")==1) then  		
			LuaSay(""..LuaQueryStr("name").."：刘将军，谢安前辈引荐我到此，还特地为我添加了好友@!")
			LuaSay("刘裕：有朋友就有江湖，朋友就是江湖")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T263jl")

		end

		elseif(answer=="T263jl")then	            
		       if(LuaQueryTask("T263")==1)then
					LuaSetTask("T263",99) 
					LuaAddJx("combat_exp",25000,"T263")
					LuaAddAchievementSchedule("Task_num",1)
					DelLog("263") 
					UpdateMenu() 
					UpdateNPCMenu("xiean")
					AddMenuItem("@7领取新任务","")
					AddMenuItem("刘裕的考验【剧情】","T276") 
			end

elseif(answer=="T275") then                    -------------------- 筹措军备
	local shijiancha=GetCurrentTime()-LuaQueryTask("275time")
	if(shijiancha>300) then
		if(LuaQueryTask("T275") == 0 ) then
		        LuaSay(""..LuaQueryStr("name").."：听说刘将军正在筹措军备，大量收购@21级矿和1级木@0，不知是真是假。")
		        LuaSay("刘裕：见阁下也是爽快之人，在下也不相瞒。本人确实正在大量收购@21级矿和1级木@0呢。")
		        LuaSay("刘裕：你每收集@21个1级矿@0和@21个1级木@0就可以到我这里领取奖励。")
			LuaSay("刘裕：矿石可以在矿场采集得到，木可以在采集场采集得到，矿场在武器店伙计处进入，采集场在药品商人处进入。")
			LuaSetTask("T275",1)
			UpdateTopSay("收集1个1级矿和1个1级木")
			AddLog("筹措军备【循环】",275)
			UpdateMenu()
		elseif(LuaQueryTask("T275") == 1 ) then
		   if(LuaItemStatusNormalCount("o_material_47") >= 1 and LuaItemStatusNormalCount("o_material_38") >= 1 ) then
				LuaSay(""..LuaQueryStr("name").."：这是我收集到的@21个1级矿@0和@21个1级木@0，奖励在哪里，快快拿来。@!")
				LuaSay("刘裕：我乃一堂堂大丈夫，岂会失信于你呢。拿去吧，还望再接再厉。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T275jl")
			else
				LuaSay("刘裕：阁下既是爽快之人，为何没有收集齐@21个1级矿@0和@21个1级木@0就来，难道在戏弄在下？")
				LuaSay("刘裕：矿石可以在矿场采集得到，木可以在采集场采集得到，矿场在武器店伙计处进入，采集场在药品商人处进入。")
				UpdateTopSay("收集1个1级矿和1个1级木")
			end
		end
	else
		LuaSay("刘裕：该任务需要间隔5分钟后才能继续接取。请耐心等待。@!")
	end
		    elseif(answer=="T275jl")then
			local level= LuaQuery("level")
				if(level>80)then
					level=80
				end
		         if(LuaQueryTask("T275")==1) then
				if(LuaItemStatusNormalCount("o_material_47") >= 1 and LuaItemStatusNormalCount("o_material_38") >= 1 ) then
				 LuaDelTask("T275")
				 DelItem("o_material_47",1)
				 DelItem("o_material_38",1)
				 local jingyan=(31000+level^2*20)
				 LuaAddJx("combat_exp",jingyan,"T275")
				 LuaGive("coin",1000,"T275")
				  if(LuaQueryTask("T275_a")==0) then
				  LuaAddAchievementSchedule("Task_num",1)
				  LuaSetTask("T275_a",99)
				  end
				 DelLog("275")
				 time=GetCurrentTime()
				 LuaSetTask("275time",time)
				 UpdateMenu()
				 end
				 end

elseif(answer=="T276") then         ------------------------刘裕的考验
	if(LuaQueryTask("T276") == 0 ) then
		LuaSay("刘裕：哈哈，如今这是何世道，你这柔弱的身子骨也来充英雄，还不够那凶残的蛮夷塞牙缝的。")
		LuaSay(""..LuaQueryStr("name").."：将军此言差矣，天下人担天下之责，但有一颗奋勇杀敌之心便无所畏惧。")
		LuaSay("刘裕：只说不做，假把式！如此你便去@4建康东郊@0消灭几只@2金蛊@0，取得@210个金蛊之卵@0来给我，以此证明你的勇气吧。")
		LuaSetTask("T276",1)
		UpdateTopSay("杀金蛊收集10个金蛊之卵")
		AddLog("刘裕的考验【剧情】",276)
		UpdateMenu()
		--if(LuaQueryTask("T275")==99)then
			AddMenuItem("@7是否@0寻路至@4建康东郊","")
			AddMenuItem("自动寻路至建康东郊","xl_jkdj")
		--end
	elseif(LuaQueryTask("T276") == 1 ) then
		if(LuaItemCount("o_mission003")>=10) then
			LuaSay("刘裕：好！做的不错。让我来传授你如何@3使用技能和技能点@0吧。")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("刘裕：点击@3菜单@0再点击@3技能键@0进入@2技能界面@0，点击选中技能，这时在点击快捷栏中@3任意一个快捷键小格@0就可以@2设置快捷键@0，再次点击@3该技能@0就会出现@2技能操作选项（例如升级等）@0。")
			else	
				LuaSay("刘裕：按@3确定键@0再按@34键@0进入@2技能界面@0，选中技能，这时按@31/3/7/9键@0就可以@2设置快捷键@0，按@3中间确认键@0就是@2升级技能@0。")
			end
			LuaSay("刘裕：退出技能界面后，@3按快捷键就可以释放技能@0了。简单吧！@!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T276jl")
		else
			LuaSay("刘裕：你还没有得到足够的@2金蛊之卵@0呢，去@4建康东郊@0消灭@2金蛊@0，取得@210个金蛊之卵@0来给我。")
			LuaSay("刘裕：@2向右走@0，就可以到达@4建康东郊@0了。")
			UpdateTopSay("杀金蛊收集10个金蛊之卵")
			--if(LuaQueryTask("T275")==99)then
				AddMenuItem("@7是否@0寻路至@4建康东郊","")
				AddMenuItem("自动寻路至建康东郊","xl_jkdj")
			--end
		end
	end
	elseif(answer=="xl_jkdj")then
		AutoPathByTaskStep("T276",1)
	elseif(answer=="T276jl")then
		if(LuaQueryTask("T276")==1 and LuaItemCount("o_mission003")>=10) then
			--local a = LuaQueryItemID(3,"o_mission003")
			--SendCommand("call=与怪物战斗，自身生命最重要，我赠与你一个血池，没当你血量下降到30%以下血池会将你血量自动补满！|2|0|0|8|"..a.."")
			LuaSay("刘裕：与怪物战斗，自身生命最重要，我赠与你一个血池，每当你血量下降到30%以下血池会将你血量自动补满，打开背包就能够找到血池了哦！")
			LuaSetTask("T276",99)
			DelLog("276")
			DelItem("o_mission003",LuaItemCount("o_mission003"))
			LuaGive("o_state065j",1,"T276")
			LuaAddJx("combat_exp",29700,"T276")
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
		end

elseif(answer=="T277")then
	if(LuaQueryTask("T277")==0)then
	LuaSay("刘裕：这一路走来，想来你对战斗有所了解了。行军打仗，不是时时能得到别人的治疗的，凡事还是要靠自己。")
	LuaSay("刘裕：帮我收集@21瓶金创散与1瓶回春露@0，再来见我吧。如果没有的话，可以去@4建康城南@0的@3药品商人@0那购买")
	UpdateTopSay("去药品商人处购买金创散回春露")
	LuaSetTask("T277",1)
	AddLog("伤患治疗【剧情】",277)
	UpdateMenu()
	elseif(LuaQueryTask("T277")==1)then
	  if(LuaItemCount("o_drug_hp1")<1 or LuaItemCount("o_drug_mp1")<1) then
	  LuaSay("刘裕：你还没有购买到金创散与回春露各一瓶哦，去@3药品商人@0处购买@2金创散与回春露各一瓶@0再来回复我。")
	  else
	  LuaSay("刘裕：恩，做得好！药物，可以迅速补充血量与能量，实乃居家旅游杀人越货之必备啊。@!")
	  AddMenuItem("@7任务完成","")
	  AddMenuItem("领取奖励","T277jl")
	  end
	  end
	elseif(answer=="T277jl")then
	if(LuaQueryTask("T277")==1) then
	if(LuaItemCount("o_drug_hp1")>=1 and LuaItemCount("o_drug_mp1")>=1) then
	LuaSetTask("T277",99)
	DelLog("277")
	LuaAddJx("combat_exp",29700,"T277")--奖励
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	end
	end


elseif(answer=="T267") then                 ----------------------------- 贤臣桓冲
		if(LuaQueryTask("T267") == 0 ) then
				LuaSay("刘裕：外有蛮夷内有乱军佞臣，我泱泱华夏竟落到如此田地。@3桓冲@0大人奉旨剿灭天师道妖人不知如何了。")
				LuaSay("刘裕：这批军备万分重要，你需亲手交给@4建康东郊@0的@3桓冲@0，切记切记。")
				LuaSetTask("T267",1)
				AddLog("贤臣桓冲【剧情】",267)
				UpdateMenu()
				AddMenuItem("@7是否@0寻路至@4桓冲","")
				AddMenuItem("自动寻路至桓冲","xl_huanchong")	
		elseif(LuaQueryTask("T267") == 1 ) then
			LuaSay("刘裕：快去寻找@4建康东郊@0的@3桓冲@0！")
			AddMenuItem("@7是否@0寻路至@4桓冲","")
			AddMenuItem("自动寻路至桓冲","xl_huanchong")	
				
		end


elseif(answer=="xl_huanchong")then
	AutoPathByTaskStep("T267",1)


elseif(answer=="Tsnpc_25")then
	if(LuaQueryTask("Tsnpc_25")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("刘裕：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_25",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_25")==2)then
		LuaSay("刘裕：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_25")then
	if(LuaQueryTask("Tenpc_25")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话表扬你的贡献，希望你再接再厉")
		LuaSay("刘裕：这都是大人的功劳啊")
		LuaSetTask("Tenpc_25",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_25")==2)then
		LuaSay("刘裕：话已经带到了，快回去领取奖励吧")
	end







end
LuaSendMenu()
return 1
end