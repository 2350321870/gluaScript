ans = {} 	
function OnEnter()
  ans.rtype = 0
 local  num=LuaQueryTask("task_kill/mon_113/Tlygyi")-1
 if(num>=200) then    
    LuaDelTask("task_kill/mon_113/Tlygyi")
    LuaSetTask("task_kill/mon_114/Tlyger",1)
    LuaSay("��Ӣ���ǣ�������Σ�գ����ƴ������")
    LuaSay("��ʾ�������2�㽫��20���Ӻ�رգ���ץ��ʱ���ȥ3��")
    ans.rtype=1
 else
    LuaSay("��ʾ�������ڵĶ����Ѿ�����Ļ���@3"..num.."ֻ")
    LuaSay("��ʾ��������@325������@0�������@3200ֻ@0���ܽ��������2��")
 end
 LuaOtherSendMenu()
 return ans.rtype
end