ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("tygday")) then
  LuaSetTask("tygintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("tygintime")<3) then
      if(level>=20 and level<30) then
      LuaAddTask("tygintime",1)
      LuaSetTask("tygday",GetCurrentDay())
      ans.rtype=1
      else
      LuaSay("��ʾ���ȼ���@320��29@0֮����ܽ���ø���")
      end
    else
      LuaSay("��ʾ���ø���ÿ�����������ó���@33��")
    end
LuaOtherSendMenu()
return ans.rtype
end