ans = {} 	
function OnEnter()
  ans.rtype = 0
  local num1=LuaQueryTask("task_kill/mon_123/Tdxcxyi")-1
  local num2=LuaQueryTask("task_kill/mon_124/Tdxcxyi")-1
 if(num1>99 and num2>99) then   
    LuaSay("提示：地穴2层将在@330分钟后@0关闭")
    if(LuaQueryTask("Tfbrw")==0) then
    LuaSetTask("Tfbrw",1)
    LuaSay("提示：你已经完成了副本每日任务，可以回复副本使者了！")
    end
    LuaSetTask("FBTGJL",1)
    ans.rtype=1
 else
    LuaSay("提示：你所在的队伍已经消灭的恶霸、打手分别为"..num1.."、"..num2.."只")
    LuaSay("提示：必须在@325分钟内@0消灭恶霸、打手@3各100只@0才能进入地穴2层")
 end
 LuaOtherSendMenu()
 return ans.rtype
end