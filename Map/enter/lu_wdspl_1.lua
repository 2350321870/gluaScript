ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("wdsplday")) then
  LuaSetTask("wdspltime",0)
  end
  if(LuaItemCount("o_mission413")>=1) then                  -------������Ѿ����ƾͶ�ɾ�� 
  DelItem("o_mission413",LuaItemCount("o_mission413"))
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("wdspltime")<2) then  -------���Է���ĳ�2000�Σ������ǸĻ�2��
      if(level>=40 and level<50) then
--       LuaAddTask("wdspltime",1)
       LuaSetTask("wdsplday",GetCurrentDay())
       LuaSetTask("task_kill/mon_115/Twdspl_1",1)
       LuaSay("��ʾ�������ҵ�@3������Ӧ@0���˽������!")
       LuaSay("��ʾ��@4�嶷ɽ��@0��ͼ����@340���Ӻ�@0�ر�!")
       LuaAddJx("combat_exp",level*100,"FB_Lv40")
       ans.rtype=1
      else
      LuaSay("��ʾ���ȼ���@340��49@0֮����ܽ���ø�����")
      end
    else
      LuaSay("��ʾ���ø���ÿ�����������ó���@32�Σ�")
    end
    LuaOtherSendMenu()
return ans.rtype
end