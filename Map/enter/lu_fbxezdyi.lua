ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("fbxezdday")) then
  LuaSetTask("fbxezdintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("fbxezdintime")<3) then
      if(level>=30 and level<40) then
      LuaSay("��ʾ����Զ����@3��Ѫ��ħ@0�����������Ƿ�����צ��������û���������������ܻ��ų���������")
      LuaSay("��ʾ��ֻ�еõ��������@2������@0�����ܱܹ�@3��Ѫ��ħ@0������ɱ@350��а��@0�󣬲��ܴ򿪱�����������ӡ������")
      LuaSetTask("task_kill/mon_180/Tfbxezd",1)
--      LuaAddTask("fbxezdintime",1)
      LuaSetTask("fbxezdday",GetCurrentDay())
      LuaAddJx("combat_exp",level*100,"FB_Lv30")
      ans.rtype=1
      else
      LuaSay("��ʾ���ȼ���@330��39֮��@0���ܽ���ø���")
      end
    else
      LuaSay("��ʾ���ø���ÿ�����������ó���3��")
    end
    LuaOtherSendMenu()
return ans.rtype
end    