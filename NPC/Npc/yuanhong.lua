NPCINFO = {
serial="302" ,
base_name="yuanhong",
icon=2559,
NpcMove=2559 ,
name="袁宏" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="你要是不知道怎么打副本就来问我" ,
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")

	AddTopSayMenuItem("@7操作列表","")
	AddTopSayMenuItem("@5超强力量","SP")
	AddTopSayMenuItem("@1如何进入下一关","FBZDSM")
	AddTopSayMenuItem("@1如何打怪更爽","FBZDSM2")
	AddTopSayMenuItem("@1如何技能打怪","FBZDSM3")
	AddTopSayMenuItem("@1如何找队伍","FBZDSM4")
	AddTopSayMenuItem("@1如何吃药","FBZDSM5")


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
	LuaSay("袁宏：这年头经济萧条，只能当个NPC，还是从军的！")
	
-------------------------------------------
elseif(answer=="FBZDSM") then
	local num=LuaQueryTask("task_kill/mon_110/Tjjbf_1")-1		--旺财狗
	local num2=LuaQueryTask("task_kill/mon_111/Tjjbf_1")-1		--蝙蝠
	LuaSay("袁宏：吾乃北伐军的军师，且容吾为少侠解说一下副本战斗！")
	LuaSay("袁宏：因为伊水一带有妖兽出没，阻碍后续军队前行，劳烦少侠击杀@250只旺财狗和50只蝙蝠！@0注意每个副本都有@1停留时间限制！@0")
	LuaSay("袁宏：达到击杀数量后，少侠可进入下一关@4伊水北岸@0，去支援桓温大都督的先锋部队！大都督会给你下一步的指示！")
	LuaSay("袁宏：当前已击杀旺财狗："..num.."只。蝙蝠"..num2.."只")
elseif(answer=="FBZDSM2") then
	LuaSay("袁宏：在副本中与人组队杀怪，可以提升效率！同时可以使用@3双攻符、双防符、爆击丸等各种物品@0在一定时间内@5大幅度@0提升自己战斗力！")
	LuaSay("袁宏：@3双攻符、双防符、爆击丸等各种物品@0可以在元宝商城或金币商城里购买！请注意：@1这些物品对普通怪物有效，对boss是无效的@0！")
	LuaSay("袁宏：每天进入副本的次数有限制的！务必珍惜！最好在击杀最终boss后离开，boss@5必掉@0装备，装备质量好坏就是看人品了！")
elseif(answer=="FBZDSM3") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("袁宏：首先你点击菜单，再点击技能键，就能进入技能管理界面了！你可以看到你已经学的和没学的技能！")
		LuaSay("袁宏：你可以点击选择技能，再次点击就能学习或升级技能！")
		LuaSay("袁宏：如果你已经将该技能设置快捷键，该技能就会出现在左下方技能快捷栏里了！")
	else
		LuaSay("袁宏：首先你按确定键，再按4键，就能进入技能管理界面了！你可以看到你已经学的和没学的技能！")
		LuaSay("袁宏：你可以按“↑↓←→”来选择技能，按下确定键就能学习或升级技能！")
		LuaSay("袁宏：如果你在某个已学的技能上面按下“3”，该技能就会出现在左下方技能快捷栏里了！")
	end
elseif(answer=="FBZDSM4") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("袁宏：首先你点击界面上的黄颜色聊天泡泡，进入聊天界面，点击公聊选项切换聊天频道为公聊，并进行聊天")
		LuaSay("袁宏：然后打字“20级副本求组啊！”，接着点击确认键，选择发送即可！")
		LuaSay("袁宏：如果有人来找你一起打副本了，你就走到他身边，点击该用户，会弹出交互菜单，选择“组队”，就能邀请他组队了！")
	else	
		LuaSay("袁宏：首先你按两次0键，进入聊天界面，通过“↑↓”移动切换聊天频道为公聊，并按下确定键锁定频道！")
		LuaSay("袁宏：然后通过“↑↓”移动至消息输入框，打字“20级副本求组啊！”，接着按取消键，你会发现右下角弹出个菜单，选择发送即可！")
		LuaSay("袁宏：如果有人来找你一起打副本了，你就走到他身边，按“中间确认键”，会弹出交互菜单，选择“组队”，就能邀请他组队了！")
	end
elseif(answer=="FBZDSM5") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("袁宏：前提是你包裹有红药或蓝药！你点击菜单，再点击背包键，进入包裹界面，选择药品，再次点击会出现菜单，选“使用”，你就吃了一次药！")
		LuaSay("袁宏：当你选择药品后，你点击快捷栏里的任意一个快捷键小格，再次点击，就能吃药了！")
	else
		LuaSay("袁宏：前提是你包裹有红药或蓝药！你按确定键，再按3键，进入包裹界面，按“↑↓←→”选择药品，按确认键就会出现菜单，选“使用”，你就吃了一次药！")
		LuaSay("袁宏：当你按“↑↓←→”选择药品后，可以按下“7”或“9”，药品出现在你右下角的快捷栏里，你按一下，“7”或“9”就能吃药了！")
	end
elseif(answer=="SP") then
	if(GetCurrentTime() - LuaQuery("yuanhong_begin_time") >= 120)     then
		LuaSay("袁宏：这些年妖兽横行，本官也略通法术！此@5超强力量@0乃是为增强士卒战斗力之用！")
		LuaSay("袁宏：见少侠为国为民，且容本官为你施展法门！你将在30秒内增加300点攻击或200点防御，2分钟后可找我再来领取！")
		
		local r = LuaRandom(3)
		if(r==0)then
		LuaGiveBuff("401",1)
		else
		LuaGiveBuff("403",1)
		end
		FlushMyInfo("1")
		LuaSet("yuanhong_begin_time",GetCurrentTime())
	else
	LuaSay("袁宏：还差@5"..(120-(GetCurrentTime() - LuaQuery("yuanhong_begin_time")) ).."秒@0才能领取！")
	end

end 
LuaSendMenu()
return 1
end

