function do_fdback(id, type, val)
----------------------------------------------------------------带新人部分
if (type=="dairen") then  ------------带人者被呼叫

	if (val == "talk") then
	    LuaSay("提示：@3"..LuaOtherQuery(id,"level").."级的"..LuaOtherQueryStr(id,"name").."@0想请你带带TA！是否立刻传送到建康南郊？")
		AddMenuItem("否","fdback " .. type .. " " .. id .. " " .. "a1", "是否传送组队？")
		AddMenuItem("传送","fdback " .. type .. " " .. id .. " " .. "a2", "")
		AddMenuItem("传送并邀请对方组队","fdback " .. type .. " " .. id .. " " .. "a3", "")
	elseif (val == "a1")  then
  		LuaOtherNotice(id,"你放弃了传送",2)
	elseif (val == "a2") then
  		ChangeMap("lu_jknj")
  	elseif (val == "a3") then
  		ChangeMap("lu_jknj")
  		LuaTeam(id)
	end
	----类型“1” 弹出  “2”滚动  其他看文档
	--LuaOtherNotice(id, "提示内容", "提示类型")
	--//type 1 系统弹出
	--//type 2 系统滚动
	--//type 3 系统		【系统】：3333333333
	--//type 4 匿名		【匿名】某人：4444444444
	--//type 5 公聊		【公聊】：5555555555
	--//type 6 系统		【系统】6666666666
	--//type 7 本地		【本地】：77777777777

elseif (type == "zhaorendai") then ------------找人带者被呼叫

	if (val == "talk") then
	    LuaSay("提示：@3"..LuaOtherQuery(id,"level").."级的"..LuaOtherQueryStr(id,"name").."@0想带带你！是否立刻传送到建康南郊？")
		AddMenuItem("否","fdback " .. type .. " " .. id .. " " .. "b1", "是否传送组队？")
		AddMenuItem("传送","fdback " .. type .. " " .. id .. " " .. "b2", "")
		AddMenuItem("传送并邀请对方组队","fdback " .. type .. " " .. id .. " " .. "b3", "")
	elseif (val == "b1")  then
  		LuaOtherNotice(id,"你放弃了传送",2)
	elseif (val == "b2") then
  		ChangeMap("lu_jknj")
  	elseif (val == "b3") then
  		ChangeMap("lu_jknj")
  		LuaTeam(id)
	end
	--------------------------------------------------------------------
end
LuaOtherSendMenu()
return 1
end