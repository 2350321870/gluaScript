ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("dxcxday")) then
  LuaSetTask("dxcxintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("dxcxintime")<2) then
      if(level>=50 and level<60) then
--       LuaAddTask("dxcxintime",1)
       LuaSetTask("dxcxday",GetCurrentDay())
       LuaSetTask("task_kill/mon_123/Tdxcxyi",1)
       LuaSetTask("task_kill/mon_124/Tdxcxyi",1)
       LuaSay("��ʾ����Ҫ����@3���ֺͶ�Ը�100��@0�����ܽ��볲Ѩ2��")
       LuaSay("��ʾ�����³�Ѩ1�㽫��@325���Ӻ�@0�ر�")
       LuaAddJx("combat_exp",level*100,"FB_Lv50")
       ans.rtype=1
      else
      LuaSay("��ʾ���ȼ���@350��59@0֮����ܽ���ø���")
      end
    else
      LuaSay("��ʾ���ø���ÿ�����������ó���@32��")
    end
    LuaOtherSendMenu()
return ans.rtype
end