ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("ymdxday")) then
  LuaSetTask("ymdxintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("ymdxintime")<2) then
      if(level>=60 ) then
      LuaSay("��ʾ�����������@330������@0����@3��ڤ���200��@0�������޷�����2��")
      LuaSay("��ʾ��һ�㽫��@330����@0��رգ���ץ��ʱ�����2�㣬����ʱ��ӵ�һ�����ѽ���ʱ��ʼ����")
      LuaSetTask("task_kill/mon_125/Tymdxyi",1)
--      LuaAddTask("ymdxintime",1)
      LuaSetTask("ymdxday",GetCurrentDay())
      LuaAddJx("combat_exp",level*100,"FB_Lv60")
      ans.rtype=1
      else
      LuaSay("��ʾ���ȼ���60���ϲ��ܽ���ø���")
      end
    else
      LuaSay("��ʾ���ø���ÿ�����������ó���@32��")
    end
    LuaOtherSendMenu()
return ans.rtype
end