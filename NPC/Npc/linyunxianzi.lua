NPCINFO = {
serial="108" ,
base_name="linyunxianzi" ,
icon=2561,
NpcMove=2561,
name="林韵仙子" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="月有阴晴圆缺" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
        havetask =0    
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("Tqxzf")>=1 and LuaQueryTask("Tqxzf")<5)then
		AddTopSayMenuItem("@2七夕祝福@0","Tqxzf")				--七夕祝福
		havetask =2
	end 
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1
elseif(answer=="liaotian") then
	LuaSay("林韵仙子：愿有情人终成眷属")

-------------------------------------**七夕祝福**-------------------------------------------------------
elseif(answer=="Tqxzf")then
	if(LuaQueryTask("Tqxzf")==1)then
		LuaSay("林韵仙子：善良的人们都到河里放下河灯，照亮鹊桥之路，让相爱的人早日重逢。每盏河灯都有一段动人的故事，每个故事都有相爱的情侣在守护")
		LuaSay("林韵仙子：少侠真是有情有义之人！让我们一起祝福他们吧！")
		LuaSay("林韵仙子：在祝福之前，请先到@3晋清公主@0处点击@3七夕祝福@0菜单，回答几道有关七夕的问题！")
		LuaSay("提示：答对一道题，有机会获得@3喜鹊翎毛@0，拥有@3喜鹊翎毛@0的玩家在做@3玫瑰花开@0活动的时候有几率获得神秘大奖哦！")
		LuaSay("提示：一直往右走就能去建康城了@!")
		LuaSetTask("Tqxzf",2)
		AddLog("七夕祝福",qxzf)	
		UpdateMenu()
	elseif(LuaQueryTask("Tqxzf")==2) then
	    LuaSay("林韵仙子：你还没有完成回答问题的活动呢！快到@3晋清公主@0处点击七夕祝福菜单回答问题吧！")
	    LuaSay("提示：一直往右走就能去建康城了@!")
	elseif(LuaQueryTask("Tqxzf")==3)then
		LuaSay("林韵仙子：少侠真是睿智，这么快就回答完了！")
		LuaSay("林韵仙子：为了表示少侠的真诚和真心，就请带着河灯去找@4天涯海角@0的@3幸运老人@0吧！把祝福传遍天涯海角，让每个人都来祈祷祝福！共享节日的欢乐！")
		LuaSay("提示：走到@4建康城南@0的@3种子商人@0处点击@2千里行商@0即可进入@4天涯海角@0")
		LuaSetTask("Tqxzf",4)
	elseif(LuaQueryTask("Tqxzf")==4 )then
		LuaSay("林韵仙子：怎么还没有到@4天涯海角@0的@3幸运老人@0那里去啊？")
		LuaSay("提示：走到@4建康城南@0的@3种子商人@0处点击@2千里行商@0即可进@4入天涯海角@0")
	end
	UpdateMenu()
end
LuaSendMenu()
return 1
end