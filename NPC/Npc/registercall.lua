function do_caller(id, type, val)
-------------------------------------------------------------带新人部分
if (type=="dairen") then      -------带人者
 	LuaSay("提示：成功发出邀请，要是TA同意带你，TA会自动传送到建康南郊！")
elseif (type == "zhaorendai") then ----------找人带者
 	LuaSay("提示：成功发出邀请，要是TA同意让你带，TA会自动传送到建康南郊！")
	------------------------------------------------------------------------------
end
LuaOtherSendMenu()
return 1
end