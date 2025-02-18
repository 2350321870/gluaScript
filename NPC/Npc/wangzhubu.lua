NPCINFO = { 
serial="20" ,
base_name="wangzhubu",
icon=2564,
NpcMove=2564,
name="王主簿" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="本官出售补血补蓝药等各种杂货",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=3,
{"o_drug_hp1" , 0, 8 },
{"o_drug_mp1" , 0  , 8 },
{"o_drug_mhp1" , 0  , 8 },
--{"o_mix_book001" , 2000, 8 },
--{"o_mix_book002" , 2000  , 8 },
--{"o_mix_book003" , 2000  , 8 },
--{"o_mix_book004" , 2000  , 8 },
--{"o_mix_book005" , 2000  , 8 },
--{"e_horse000" , 2000 , 8},
---{"e_horse001" , 2000 , 2},
--{"e_horse002t" , 2000 , 8},
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	local T90= LuaQueryTask("T90")
	local T91= LuaQueryTask("T91")
	local T92= LuaQueryTask("T92")
	local T93= LuaQueryTask("T93")
	AddTopSayMenuItem("@7任务列表","")
		AddTopSayMenuItem("@3买卖@0","buy1")
		if(LuaQueryTask("T51")==0) then
			AddTopSayMenuItem("从军【剧情】","T51")
			havetask =1
		end
		if(T93==0) then
			AddTopSayMenuItem("购买道具【教程】","T93")
			havetask =1
		end
		if(T92==0 and LuaQueryTask("T51") ==99) then
			AddTopSayMenuItem("真正的历练【剧情】","T92")
			havetask =1
		end
--		if(T91==0 and T93==99 and level<10) then
--			AddTopSayMenuItem("消灭匪盗【循环】","T91")
---			havetask =1
--		end
---------------------------------------
		if(T91==1) then
			AddTopSayMenuItem("@2消灭匪盗【循环】","T91")
			havetask =4
		end
		-------------------------------------------------------------

		if(LuaQueryTask("T51") ==1)then
			AddTopSayMenuItem("@2从军【剧情】@0","T51")
			havetask =2
		end
		if(T93==1) then
			AddTopSayMenuItem("@2购买道具【教程】","T93")
			havetask =2
		end
		if(T92==1) then
			AddTopSayMenuItem("@2真正的历练【剧情】","T92")
		end

--		if(LuaQueryTask("T44")==1) then
--			AddTopSayMenuItem("@2征途【剧情】","T44")
--			havetask =2
--		end
		if(T93==99 and level<20) then
			AddTopSayMenuItem("@9购买道具【教程】","T93")
		end
		if((LuaQueryTask("Tsnpc_7")==1 or LuaQueryTask("Tsnpc_7")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_7")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_7")==1 or LuaQueryTask("Tenpc_7")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_7")
			havetask=2
		end
		if(LuaQueryTask("pettask") ==3) then
			AddTopSayMenuItem("@2送货[每日]","pettask")
			havetask=2
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
	LuaSay("王主簿：本主簿这出售补血补蓝药物，另外在各大@4城市@0的@3商人@0处也有出售。") 

elseif(answer=="buy1") then
	DoBuy()		     
	
elseif(answer=="pettask")then--------------送货
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
	LuaSetTask("ptnumber",0)
	LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==3) then
	LuaSay("王主簿:不错，颇有军中猛犬的风范！")
	LuaSetTask("pettask",0)
	LuaAddTask("ptnumber",4)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()
  

elseif(answer=="T93")then
	if(LuaQueryTask("T93")==0)then
	LuaSay("王主簿：生存于乱世，补给是非常重要的，要每时每刻都备好药物。加血和加蓝的药物可在有买卖的NPC处购买。")
	LuaSay("王主簿：选择@2NPC处的买卖@0，选中要购买的@2物品@0，点击@2购买@0，输入@2数量@0后确定就可以了，在@3我这里@0买一个@2小还丹@0试试吧。")
	UpdateTopSay("在我这里买一个小还丹后回复")
	LuaSetTask("T93",1)
	AddLog("购买道具【教程】",93)
	UpdateMenu()
	elseif(LuaQueryTask("T93")==1)then
	  if(LuaItemCount("o_drug_mhp1")<1) then
	  LuaSay("王主簿：你还没有购买到一个@2小还丹@0哦，在@3我这里@0购买一个@2小还丹@0再回复我。")
	LuaSay("王主簿：选择@2NPC处的买卖@0，选中要购买的@2物品@0，点击@2购买@0，输入@2数量@0后确定就可以了。")
	  else
	  LuaSay("王主簿：嗯，做得好！药物是可以@2设置快捷键@0的哦，选中背包中的药物，按一次快捷键就设置完成了。@!")
	  AddMenuItem("@7任务完成","")
	  AddMenuItem("领取奖励","T93jl")
	  end
	elseif(LuaQueryTask("T93")==99)then
	LuaSay("王主簿：选择@2NPC处的买卖@0，选中要购买的@2物品@0，点击@2购买@0，输入@2数量@0后确定就可以了。")
	LuaSay("提示：该任务已经完成")
	  end
	elseif(answer=="T93jl")then
	if(LuaQueryTask("T93")==1) then
	if(LuaItemCount("o_drug_mhp1")>=1) then
	LuaSetTask("T93",99)
	DelLog("93")
	LuaAddJx("combat_exp",6530,"T93")			--奖励
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	end
	end

elseif(answer=="T92") then              ------------------------真正的历练 
		if(LuaQueryTask("T92")==0) then
		LuaSay("王主簿："..LuaQueryStr("name").."何在？")
		LuaSay(LuaQueryStr("name").."：在！")
		LuaSay("王主簿：真正的勇士需经过血与火的历练，去找@3士兵甲@0接受磨练吧，@2向右走@0就可以见到@3士兵甲@0了。")
                LuaSetTask("T92",1)
		UpdateTopSay("去找迷雾之林的士兵甲吧")
                AddLog("真正的历练【剧情】",92)
                UpdateMenu()
		UpdateNPCMenu("shibingjia")
		elseif(LuaQueryTask("T92")==1) then
		       LuaSay("王主簿：在这@4迷雾之林@0中找到@3士兵甲@0，接受血与火的磨练吧。@2向右走@0就可以见到@3士兵甲@0了。")
		end


elseif(answer=="T44") then              ------------------------征途
		if(LuaQueryTask("T44")==0 or LuaQueryTask("T44")==1) then  
		    LuaSay("王主簿：天下兴亡，匹夫有责。既然你来到了本主簿这里，从此便开始你的征途吧。@!")
	            AddMenuItem("@7任务完成","")
	            AddMenuItem("领取奖励","T44jl")
		end 
			elseif(answer=="T44jl")then	            
		       if(LuaQueryTask("T44")==0 or LuaQueryTask("T44")==1)then
				LuaSetTask("T44",99) 
				LuaAddJx("combat_exp",7500,"T44")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("44") 
				UpdateMenu() 
			end


elseif(answer=="T91")then
	if(LuaQueryTask("T91")==0)then
	LuaSay("王主簿：千锤百炼方能磨练出英雄本色，汝若想要有功名成就，不仅需要除恶扬善，更需不断修炼自身。")
	LuaSay("王主簿：@4迷雾之林@0匪盗成患，去消灭@26只匪盗@0吧。完成之后再来找本主簿。")
	LuaSay("王主簿：按@2确认键@0后再按@24键@0，在技能界面中选择要使用的技能，再按@21379@0中的一个键，就将@2攻击技能@0放入@2快捷键@0了。")
	LuaSay("王主簿：点击快捷键，就可以使用技能消灭怪物了哦。另外，快捷键有三栏，可用@3星号键@0切换。@!快试试吧。")
	UpdateTopSay("杀6只匪盗后来找我")
	LuaSetTask("T91",1)
	AddLog("消灭匪盗【剧情】",91)
	LuaSetTask("task_kill/mon_003/T91",1)
	UpdateMenu()
	elseif(LuaQueryTask("T91")==1)then
	  local a=LuaQueryTask("task_kill/mon_003/T91")-1
	  if(a<6) then
	  LuaSay("王主簿：你才消灭了@2"..a.."个匪盗@0，快去消灭@26个匪盗@0，消除隐患吧。")
	LuaSay("王主簿：按@2确认键@0后再按@24键@0，在技能界面中选择要使用的技能，再按@21379@0中的一个键，就将@2攻击技能@0放入@2快捷键@0了。")
	LuaSay("王主簿：点击快捷键，就可以使用技能消灭怪物了哦。另外，快捷键有三栏，可用@3星号键@0切换。@!快试试吧。")
	  else
	  LuaSay("王主簿：做的好！宝剑尚需千日磨，你就更不能懈怠了。")
	  AddMenuItem("@7任务完成","")
	  AddMenuItem("领取奖励","T91jl")
	  end
	end

	elseif(answer=="T91jl")then
	if(LuaQueryTask("T91")==1) then
	if(LuaQueryTask("task_kill/mon_003/T91") >= 7 ) then
	LuaDelTask("T91")
	DelLog("91")
	LuaDelTask("task_kill/mon_003/T91")
	LuaAddJx("combat_exp",6000,"T91")--奖励
	if(LuaQueryTask("T91_a")==0) then
		LuaAddAchievementSchedule("Task_num",1)
		LuaSetTask("T91_a",99)
	end
	UpdateMenu() 
	end
	end



elseif(answer=="T51") then   --从军
		if(LuaQueryTask("T51")==0 or LuaQueryTask("T51")==1) then
			LuaSay("王主簿：好，年龄不在大小，体形不在胖瘦，只要有一腔热血、立志从军的，都是本官的弟兄。这件战甲就送给你吧。")
			LuaSay("王主簿：按@3确定键@0再按@33背包@0可打开背包界面，@2在背包中选择装备@0，按@3确定键@0后，选择@3使用@0即可穿上了。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T51jl")
		end 
		elseif(answer=="T51jl")then	            
		       if(LuaQueryTask("T51")==0 or LuaQueryTask("T51")==1)then
				LuaSetTask("T51",99) 
				LuaAddJx("combat_exp",6300,"T51") 
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("e_clothes002",1,1,"T51")
				DelLog("51") 
				UpdateMenu() 
				UpdateNPCMenu("mengtiejiang")
			end
elseif(answer=="Tsnpc_7")then
	if(LuaQueryTask("Tsnpc_7")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的秘密信件，我只是个马夫，不要杀我")
		LuaSay("王主簿：都说我是冷面书生，但是我也是不会随便杀一个人的啊")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_7",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_7")==2)then
		LuaSay("王主簿：信我看到了，你回去复命吧")
	end
elseif(answer=="Tenpc_7")then
	if(LuaQueryTask("Tenpc_7")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主明鉴，说信件可能会被抢劫，拖我给你带话，人民需要力量啊@!")
		LuaSay("王主簿：他个死老头就知道说风凉话")
		LuaSetTask("Tenpc_7",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_7")==2)then
		LuaSay("王主簿：回去告诉你们大人，就说我知道了")
	end


end
LuaSendMenu()
return 1
end 

