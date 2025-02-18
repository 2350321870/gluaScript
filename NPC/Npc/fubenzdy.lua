NPCINFO = {
serial="305" ,
base_name="fubenzdy" ,
icon=2563,
NpcMove=2563,
name="副本指导员" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="你要是不会打boss就来问我" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
    havetask =0
	local level= LuaQuery("level")	
	AddTopSayMenuItem("@7操作列表","")
	AddTopSayMenuItem("@1如何锁定boss","FBZDSM")
	AddTopSayMenuItem("@1如何用技能打","FBZDSM2")
	AddTopSayMenuItem("@1如何吃药","FBZDSM3")


if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1

elseif(answer=="liaotian") then
	LuaSay("副本指导员：唉！想我年轻的时候，带个5瓶红单挑80级boss！现在人老了，带50瓶红都打不过20级boss...")
elseif(answer=="FBZDSM") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("副本指导员：点击“左上角的PK键”，然后你会发现boss身上出现一个数字，你就按对应的数字键，就锁定boss了！")
		LuaSay("副本指导员：有时boss主动攻击你，你就会自动锁定他，锁定后会看到屏幕右上角boss头像名字，还有boss的HP和MP！")
	else
		LuaSay("副本指导员：按“星号键”，然后你会发现boss身上出现一个数字，你就按对应的数字键，就锁定boss了！")
		LuaSay("副本指导员：有时boss主动攻击你，你就会自动锁定他，锁定后会看到屏幕右上角boss头像名字，还有boss的HP和MP！")
	end
elseif(answer=="FBZDSM2") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		
		LuaSay("副本指导员：首先你点击菜单，再点击技能键，就能进入技能管理界面了！你可以看到你已经学的和没学的技能！")
		LuaSay("副本指导员：你可以点击选择技能，再次点击就能学习或升级技能！")
		LuaSay("副本指导员：如果你在某个已学的技能上点击一次，然后点击快捷键栏的任意一小格，该技能就会被放到快捷栏里了！")
	
	else
		LuaSay("副本指导员：首先你按确定键，再按4键，就能进入技能管理界面了！你可以看到你已经学的和没学的技能！")
		LuaSay("副本指导员：你可以按“↑↓←→”来选择技能，按下确定键就能学习或升级技能！")
		LuaSay("副本指导员：如果你在某个已学的技能上面按下“3”，该技能就会出现在左下方技能快捷栏里了！")
        end
elseif(answer=="FBZDSM3") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("副本指导员：前提是你包裹有红药或蓝药！你点击菜单，再点击包裹键，进入包裹界面，选择药品，再次点击就会出现菜单，选“使用”，你就吃了一次药！")
		LuaSay("副本指导员：当你选择药品后，可以点击快捷键栏中任意一个快捷键小格，药品则的快捷栏里，你再次点击就能吃药了！")
	else
		LuaSay("副本指导员：前提是你包裹有红药或蓝药！你按确定键，再按3键，进入包裹界面，按“↑↓←→”选择药品，按确认键就会出现菜单，选“使用”，你就吃了一次药！")
		LuaSay("副本指导员：当你按“↑↓←→”选择药品后，可以按下“7”或“9”，药品出现在你右下角的快捷栏里，你按一下，“7”或“9”就能吃药了！")

	end


end
LuaSendMenu()
return 1
end