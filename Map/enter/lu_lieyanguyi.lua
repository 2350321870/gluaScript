ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("lygday")) then
  LuaSetTask("lygintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("lygintime")<2) then
      if(level>=30 and level<40) then
      LuaAddTask("lygintime",1)
      LuaSetTask("lygday",GetCurrentDay())
      LuaSetTask("task_kill/mon_113/Tlygyi",1)
      LuaSay("���ǣ�������������ͷ�죬��Ȼ��ʬ����ɽ��Ҳ������ϧ")
      LuaSay("��ʾ������ƴ������ͷ�죬����@3200ֻ����@0�󣬷��ܽ��������2��")
      LuaSay("��ʾ�������1�㽫��@325���Ӻ�@0�ر�")
      ans.rtype=1
      else
      LuaSay("��ʾ���ȼ���@330��39@0֮����ܽ���ø���")
      end
    else
      LuaSay("��ʾ���ø���ÿ�����������ó���@32��")
    end
LuaOtherSendMenu()
return ans.rtype
end