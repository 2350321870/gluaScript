ans = {} 	
function OnEnter()
ans.rtype = 1
LuaSetTask("Tflag_pk",1)
  if(LuaQueryTask("Thx2")==6) then
	       if(LuaQueryTask("Thx2G")==0) then
	       LuaSay("提示：你已经完成环形任务第六环，快去回复拓跋圭吧。@!")
	       LuaSetTask("Thx2G",99)
	       end
      end
   
 -- if(LuaItemStatusNormalCount("o_mission165")>0)then
  local a=LuaItemStatusNormalCount("o_mission212")
  local b=LuaItemStatusNormalCount("o_mission213")
  local c=LuaItemStatusNormalCount("o_mission214")
   local d=LuaItemStatusNormalCount("o_mission514")
if(a>0)then
	DelItem("o_mission212",a)
	LuaLogRecord("进入擂台","o_mission212","删除","青转",a)
	LuaAddTask("Tjzcount",a)
end
if(b>0)then
	DelItem("o_mission213",b)
	LuaLogRecord("进入擂台","o_mission213","删除","银转",b)
	LuaAddTask("Tyzcount",b)
end
if(c>0)then
	LuaPrint("上次数目 "..LuaQueryTask("Ttzcount").." 本次数目"..c.."")
	DelItem("o_mission214",c)
	LuaLogRecord("进入擂台","o_mission214","删除","金转",c)
	LuaAddTask("Ttzcount",c)
end
if(d>0)then
	DelItem("o_mission514",d)
	LuaLogRecord("进入擂台","o_mission514","删除","金胚",d)
	LuaAddTask("Tszcount",d)
end
 -- end
LuaOtherSendMenu()
return ans.rtype
end
