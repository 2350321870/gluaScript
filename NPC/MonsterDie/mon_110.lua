--Tshikuyi_nTotalMonsterNum = 101 
function OnDie()
local num=LuaQueryTask("task_kill/mon_110/Tjjbf_1")-1
local num2=LuaQueryTask("task_kill/mon_111/Tjjbf_1")-1
if(num==50) then     --------为了测试方便暂定0个 ，别忘记改回50
	if(num2>= 50)then
		LuaSay("提示：你已经消灭的旺财狗50只，蝙蝠50只！可以进入伊水北岸")
	else
		LuaSay("提示：你已经消灭的旺财狗50只，蝙蝠"..num2.."只！赶快去消灭蝙蝠吧")
	end
	LuaOtherSendMenu()
elseif(num2==50)then
	if(num>= 50)then
		LuaSay("提示：你已经消灭的旺财狗50只，蝙蝠50只！可以进入伊水北岸")
	else
		LuaSay("提示：你已经消灭的旺财狗"..num.."只，蝙蝠50只！赶快去消灭旺财狗吧")
	end
	LuaOtherSendMenu()
	
end
return 1
end