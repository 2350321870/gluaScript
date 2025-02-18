ans = {} 	
function OnEnter()
  ans.rtype = 0
  local num=LuaQueryTask("task_kill/mon_116/Twdspl_2")-1+LuaQueryTask("task_kill/mon_116BT/Twdspl_2")-1
 if(num>=20) then                          -------为了测试方便写成2个  别忘记改回20

    LuaSay("提示：五斗山寨将在40分钟后关闭，请抓紧时间击杀孙恩魔体！")
    if(LuaQueryTask("Tfbrw")==0) then
    LuaSetTask("Tfbrw",1)
    LuaSay("提示：你已经完成了副本每日任务，可以回复副本使者了！")
    end
    LuaSetTask("FBTGJL",1)
    ans.rtype=1
 else
    LuaSay("提示：你所在的队伍已经消灭的叛军精锐@3"..num.."个！")
    LuaSay("提示：必须在@340分钟内@0消灭叛军精锐@320个@0才能进入五斗山寨！")
 end
 LuaOtherSendMenu()
 return ans.rtype
end