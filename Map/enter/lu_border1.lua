ans = {}
function OnEnter()
ans.rtype=1

if(LuaQueryTask("TPaoShang")==1 and LuaCheckBuff("518")==1 ) then
	LuaSay("你身上的跑商保护状态消失了！")
   	LuaDeleteBuff("518")
  	FlushMyInfo("1")
    ans.rtype=1
end
LuaOtherSendMenu()
return ans.rtype
end

