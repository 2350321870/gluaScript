NPCINFO = {
serial="99" ,
base_name="pkzyy" ,
icon=2558,
NpcMove=2558 ,
name="PK指导员" ,
iconaddr=1 ,
butt="10|10|65" ,
lastsay="体验不同职业的爽快PK" , 
LuaType=1,
}
function do_talk(answer)             
if (answer=="ask") then 	
	AddTopSayMenuItem("@7PK说明","")
	AddTopSayMenuItem("@3不同职业体验","class")
	AddTopSayMenuItem("@3PK保护","guize")
	AddTopSayMenuItem("@3PK惩罚","chengfa")
	AddTopSayMenuItem("@3如何PK","how")
	---PK惩罚
	AddTopSayMenuItem("聊天","liaotian","1")
return 1
    
elseif(answer=="liaotian") then
    LuaSay("PK指导员：爱PK，爱霸王")

elseif(answer=="class") then
	   AddMenuItem("@7不同职业","")
	   if(LuaQueryStr("class")~="wu") then
           AddMenuItem("侠客","xiake")
	   end
	   if(LuaQueryStr("class")~="xian") then
           AddMenuItem("谋士","moushi")
	   end
	   if(LuaQueryStr("class")~="shen") then
           AddMenuItem("战士","zhanshi")
	   end
		
		elseif(answer=="xiake") then
		LuaSet("class","wu")      
		ResetSkill()              
		LuaResetPoint()
		FlushMyInfo("0") 

		elseif(answer=="moushi") then
		LuaSet("class","xian")      
		ResetSkill()              
		LuaResetPoint()
		FlushMyInfo("0")

		elseif(answer=="zhanshi") then
		LuaSet("class","shen")      
		ResetSkill()              
		LuaResetPoint()
		FlushMyInfo("0")

elseif(answer=="chengfa") then
    LuaSay("@3击杀本国人士：将会受到PK惩罚，杀人者PK值低于-20时，将会红名，会被抓入地牢")
    LuaSay("@3击杀他国人士：不会受到任何惩罚")

elseif(answer=="guize") then
    LuaSay("PK指导员：为了保护广大玩家那颗脆弱的心，12级前将不能进行PK")

elseif(answer=="how") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("@7锁定@0：在其他玩家附近@3点击左上角的PK键，这时会弹出数字，选择对应数字后就锁定了该玩家")
		LuaSay("@7锁定后状态@0：为了让玩家感受到爽快的PK，锁定状态下，双方的移动速度都会减慢。直到锁定状态取消或切图后15秒才恢复正常。")
	else	
		LuaSay("@7锁定@0：在其他玩家附近@3按确认键后再按星号键@0，这时会弹出数字，选择对应数字后就锁定了该玩家")
		LuaSay("@7锁定后状态@0：为了让玩家感受到爽快的PK，锁定状态下，双方的移动速度都会减慢。直到锁定状态取消或切图后15秒才恢复正常。")
	end    
    LuaSay("@7攻击@0：锁定玩家后，就尽情的攻击吧，普通攻击、技能一股脑的全放上去")

end
LuaSendMenu()
return 1
end