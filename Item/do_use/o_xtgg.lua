
function do_use()
	EnterStr(3,30)
	AddMenuItem("系统公告","nc_combine o_xtgg fs","发送")
	
LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="fs")then
	local a=LuaQueryTempStr("enter_str")
	LuaNotice("@1"..a)
elseif(type=="fs2")then

end
LuaOtherSendMenu()
--return 0
end