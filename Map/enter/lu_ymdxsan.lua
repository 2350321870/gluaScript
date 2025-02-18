ans = {} 	
function OnEnter()
  ans.rtype = 0
 local  num=LuaQueryTask("task_kill/mon_126/Tymdxer")-1
 if(num>=200) then  

    LuaSay("提示：请抓紧时间击杀boss，3层将在@330分钟后@0关闭")
    if(LuaQueryTask("Tfbrw")==0) then
    LuaSetTask("Tfbrw",1)
    LuaSay("提示：你已经完成了副本每日任务，可以回复副本使者了！")
    end
    LuaSetTask("FBTGJL",1)
    ans.rtype=1
 else
    LuaSay("提示：你所在的队伍已经消灭的异蛇@3"..num.."只")
    LuaSay("提示：必须在@330分钟内@0消灭@3异蛇200只@0才能进入3层")
 end
 LuaOtherSendMenu()
 return ans.rtype
end