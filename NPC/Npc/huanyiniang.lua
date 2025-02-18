NPCINFO = { 
serial="16" ,
base_name="huanyiniang",
icon=2515,
NpcMove=2515,
name="浣衣娘" ,
iconaddr=1 ,
butt="5|5|50" ,
name_color="CEFFCE" ,
lastsay="药品也可设置快捷键后使用",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("T60")==0) then
		AddTopSayMenuItem("使用物品【教程】","T60")
		havetask =1
	end

	if(LuaQueryTask("T61") == 0 and LuaQueryTask("T31") ==99)  then
		AddTopSayMenuItem("成长之路2【剧情】","T61")
		havetask =1
	end
	if(LuaQueryTask("T31") ==1)then
		AddTopSayMenuItem("@2成长之路1【剧情】@0","T31")
		havetask =2
	end
	if(LuaQueryTask("T60")==1) then
		AddTopSayMenuItem("@2使用物品【教程】","T60")
		havetask =2
	end
	if((LuaQueryTask("Tsnpc_3")==1 or LuaQueryTask("Tsnpc_3")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_3")
		havetask=2
	end
	if((LuaQueryTask("Tenpc_3")==1 or LuaQueryTask("Tenpc_3")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_3")
		havetask=2
	end

	if(LuaQueryTask("T61") ==1)then
		AddTopSayMenuItem("@2成长之路2【剧情】@0","T61")
	end
	if(LuaQueryTask("T60")==99 and level<20)  then
		AddTopSayMenuItem("@9使用物品【教程】","T60")--保留一段时间提示
	end
	
	if(LuaQueryTask("pettask") ==1) then
			AddTopSayMenuItem("@2送货[每日]","pettask")
			havetask=2
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
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("浣衣娘：使用@2材料合成书@0可以合成材料，材料可在各种@4矿场农场@0采集，合成书可在@2商人NPC@0处购买。") 
	
elseif(answer=="pettask")then--------------送货
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
	LuaSetTask("ptnumber",0)
	LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==1) then
	LuaSay("浣衣娘:很好，耗子不入地狱谁入地狱！")
	LuaSetTask("pettask",0)
	LuaAddTask("ptnumber",2)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()
		       
elseif(answer=="T31") then              ------------------------成长之路 
		if(LuaQueryTask("T31")==1) then
		LuaSay("浣衣娘："..LuaQueryStr("name").."，听说你要离开村子，去打蛮夷了。这双鞋子就送给你吧。@!")
		LuaSay("浣衣娘：蛮夷凶残，听闻，北方整村的人被屠杀，甚至被吃掉，你，你可要多加小心啊。")
		AddMenuItem("@7任务完成","")
	        AddMenuItem("领取奖励","T31jl")
		end 
		elseif(answer=="T31jl")then	            
		       if(LuaQueryTask("T31")==1)then
				LuaSetTask("T31",99) 
				LuaAddJx("combat_exp",3600,"T31") 
				LuaGive("e_shoes001",1,1,"T31")    --3级的鞋子
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("31") 
				UpdateMenu() 
				UpdateNPCMenu("zhanglao")
				end
		       
elseif(answer=="T60") then                     ----------------使用道具
		if(LuaQueryTask("T60") == 0 ) then
				LuaSay("浣衣娘：这里有一张@2初级经验符@0，在我身边使用它吧。使用后一小时内打怪经验翻倍哦。")
				LuaSay("浣衣娘：按@3确定键@0再按@33背包@0可打开背包界面，在背包中选择初级经验符，按@3确定键@0后，选择@3使用@0即可。")
				LuaSetTask("T60",1)
				LuaGive("o_state008j",1)
				jyshu1=LuaItemCount("o_state008j")
				LuaSetTask("T60jyshu",jyshu1)
				UpdateTopSay("在桃源村使用初级经验符")
				AddLog("使用物品【教程】",60)
				UpdateMenu()
		elseif(LuaQueryTask("T60")==1) then
			if(LuaQueryTask("T60jyshu")-LuaItemCount("o_state008j")>=1)then
				LuaSay("浣衣娘：做的好！这是给你的奖励。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T60jl")
			else
				LuaSay("浣衣娘：你还没学会把身上的@2初级经验书使用掉@0噢。@!")
				LuaSay("浣衣娘：按@3确定键@0再按@33背包@0可打开背包界面，在背包中选择初级经验符，按@3确定键@0后，选择@2使用@0即可。")

			end
		elseif(LuaQueryTask("T60")==99) then
				LuaSay("浣衣娘：按@3确定键@0再按@33背包@0可打开背包界面，在背包中选择物品，按@3确定键@0后，选择@3使用@0即可。")
				LuaSay("浣衣娘：顺便告诉你，@3使用装备@0也是@2同样的操作@0哦,很简单吧。@!")
				LuaSay("提示：该任务已完成")
			end
		elseif(answer=="T60jl")then
			if(LuaQueryTask("T60")==1) then
				LuaSetTask("T60",99)
				LuaAddJx("combat_exp",4200,"T60")
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("o_drug_hp1",5)
				LuaGive("o_drug_mp1",5)
				DelLog("60")
				UpdateMenu()
			end

elseif(answer=="T61") then              ------------------------成长之路 
		if(LuaQueryTask("T61")==0) then
		LuaSay("浣衣娘：我确定一定以及肯定技巧和防具都是与蛮夷厮杀所必需的。")
		LuaSay("浣衣娘：你若是想胜人一筹，就去找@4村中@0的@3孟铁匠@0吧。")
                LuaSetTask("T61",1)
		UpdateTopSay("去找村中的孟铁匠谈话")
                AddLog("成长之路2【剧情】",61)
		UpdateMenu()
		UpdateNPCMenu("mengtiejiang")
		elseif(LuaQueryTask("T61")==1) then
		LuaSay("浣衣娘：快去找@3孟铁匠@0吧，会对你有所帮助的，他就在这@4桃源村@0中。")
		end



elseif(answer=="Tsnpc_3")then
	if(LuaQueryTask("Tsnpc_3")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是当朝大人给你的秘密信件，上面还有颗红心呢@!")
		LuaSay("浣衣娘：我一个洗衣娘谁会给我写信啊")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_3",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_3")==2)then
		LuaSay("浣衣娘：：你回去给你们大人说我收到信了@!")
	end
elseif(answer=="Tenpc_3")then
	if(LuaQueryTask("Tenpc_3")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主明鉴，说信件会透露秘密，拖我给你传话，今夜三更时，建康东郊桃树下")
		LuaSay("浣衣娘：汗，这老头干啥啊，这是。。。。。")
		LuaSetTask("Tenpc_3",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_3")==2)then
		LuaSay("浣衣娘：回去告诉你们大人，就说我知道了")
	end

end
LuaSendMenu()
return 1
end 

