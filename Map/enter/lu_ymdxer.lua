ans = {} 	
function OnEnter()
  ans.rtype = 0
 local  num=LuaQueryTask("task_kill/mon_125/Tymdxyi")-1
 if(num>=200) then  
    LuaDelTask("task_kill/mon_125/Tymdxyi")
    LuaSetTask("task_kill/mon_126/Tymdxer",1)
    LuaSay("��ʾ����ץ��ʱ�������ڤ��Ѩ3�㣬2�㽫��@330���Ӻ�@0�ر�")
    ans.rtype=1
 else
    LuaSay("��ʾ�������ڵĶ����Ѿ��������ڤ���@3"..num.."ֻ")
    LuaSay("��ʾ��������@330������@0����@3��ڤ���200ֻ@0���ܽ���2��")
 end
 LuaOtherSendMenu()
 return ans.rtype
end