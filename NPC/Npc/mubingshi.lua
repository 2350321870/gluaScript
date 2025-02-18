NPCINFO = { 
serial="15" ,
base_name="mubingshi",
icon=2521,
NpcMove=2521,
name="募兵使" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="在另一个玩家身边点击该玩家即可交互",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
		if(LuaQueryTask("T44") == 0)  then
			AddTopSayMenuItem("征途【剧情】","T44")
			havetask =1
		end
		if(LuaQueryTask("T51") ==1)then
			AddTopSayMenuItem("@2从军【剧情】@0","T51")
			havetask =2
		end
		if(LuaQueryTask("T44") == 1)  then
			AddTopSayMenuItem("@2征途【剧情】","T44")
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
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("募兵使：站在另一个玩家身边，点击该玩家，即可进入@3交互菜单@0。")
	else
		LuaSay("募兵使：按@2确定键@0可进入@3操作菜单@0，按@2取消键@0可进入@3系统菜单@0。站在另一个玩家身边，按@2确定键@0可进入@3交互菜单@0。") 		       
	end
		      
elseif(answer=="T44") then              ------------------------征途 
		if(LuaQueryTask("T44")==0) then
		LuaSay("募兵使：天下纷乱，连这桃源村附近也有异族之祸了。本官此次正是与军队一起前来剿灭这异族之害的。")
		LuaSay("募兵使：无奈这祸害甚是厉害，如今正是你建功立业的时候。去找@4迷雾之林@0的@3王主簿@0，开始你的征途吧。")
                LuaSetTask("T44",1)
		UpdateTopSay("去找迷雾之林的王主簿吧")
                AddLog("征途【剧情】",44)
                UpdateMenu()
		elseif(LuaQueryTask("T44")==1) then
		       LuaSay("募兵使：去找@4迷雾之林@0的@3王主簿@0，开始你的征途吧，迷雾之林就在右边不远的地方。")
		       UpdateTopSay("问候迷雾之林的王主簿") 
		end 



elseif(answer=="T51") then  
		if(LuaQueryTask("T51")==1) then
		LuaSay("募兵使：好，好，好，年龄不在大小，体形不在胖瘦，只要有一腔热血，都是本官的弟兄。这件战甲就送给你吧。")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("募兵使：点击@3菜单@0再点击@33背包键@0可打开背包界面，@2在背包中选择装备@0，再次@3点击@0后，选择@3使用@0即可穿上了。")
		else
			LuaSay("募兵使：按@3确定键@0再按@33背包@0可打开背包界面，@2在背包中选择装备@0，按@3确定键@0后，选择@3使用@0即可穿上了。")
	        end
		AddMenuItem("@7任务完成","")
	        AddMenuItem("领取奖励","T51jl")
		end 
		elseif(answer=="T51jl")then	            
		       if(LuaQueryTask("T51")==1)then
				LuaSetTask("T51",99) 
				LuaAddJx("combat_exp",6300,"T51") 
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("e_clothes002",1,1,"T51")
				DelLog("51") 
				UpdateMenu() 
				UpdateNPCMenu("mengtiejiang")
				end
end
LuaSendMenu()
return 1
end 

