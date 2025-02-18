function do_use()

if(LuaQueryStrTask("blessday")~=GetCurrentDay())then
	LuaDelTask("num")
end
--30000+level^2*60+level*60原经验
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
local jingyan=100000+level^2*60+level*90
if(LuaQueryTask("num")==0)then --第一个
	LuaSay("亲爱的朋友，这是你朋友对你衷心的祝福")
	LuaAddJx("combat_exp",100000+level^2*60+level*90,"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
elseif(LuaQueryTask("num")==1)then--第二个
	LuaSay("亲爱的朋友，这是你朋友对你衷心的祝福，这是你今天第二次收到朋友的祝福哦，所得的经验只有第一次的@2一半@0哦。")
	LuaAddJx("combat_exp",((100000+level^2*60+level*90)/2),"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
elseif(LuaQueryTask("num")==2)then--第三个
	LuaSay("亲爱的朋友，这是你朋友对你衷心的祝福，这是你今天第三次收到朋友的祝福哦，所得的经验只有第一次的@2三分之一@0哦。")
	LuaAddJx("combat_exp",((100000+level^2*60+level*90)/3),"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
elseif(LuaQueryTask("num")==3)then--第四个
	LuaSay("亲爱的朋友，这是你朋友对你衷心的祝福，这是你今天第四次收到朋友的祝福哦，所得的经验只有第一次的@2四分之一@0哦。")
	LuaAddJx("combat_exp",((100000+level^2*60+level*90)/4),"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
elseif(LuaQueryTask("num")==4)then--第五个
	LuaSay("亲爱的朋友，这是你朋友对你衷心的祝福，这是你今天第五次收到朋友的祝福哦，所得的经验只有第一次的@2五分之一@0哦。")
	LuaAddJx("combat_exp",((100000+level^2*60+level*90)/5),"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
else
	LuaSay("提示：你今天已经收到五份以上的祝福了，无法继续获得经验哦@!")
	LuaOtherSendMenu()
end
LuaSetTask("blessday",GetCurrentDay())

return 1
end