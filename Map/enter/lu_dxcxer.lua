ans = {} 	
function OnEnter()
  ans.rtype = 0
  local num1=LuaQueryTask("task_kill/mon_123/Tdxcxyi")-1
  local num2=LuaQueryTask("task_kill/mon_124/Tdxcxyi")-1
 if(num1>99 and num2>99) then   
    LuaSay("��ʾ����Ѩ2�㽫��@330���Ӻ�@0�ر�")
    if(LuaQueryTask("Tfbrw")==0) then
    LuaSetTask("Tfbrw",1)
    LuaSay("��ʾ�����Ѿ�����˸���ÿ�����񣬿��Իظ�����ʹ���ˣ�")
    end
    LuaSetTask("FBTGJL",1)
    ans.rtype=1
 else
    LuaSay("��ʾ�������ڵĶ����Ѿ�����Ķ�ԡ����ֱַ�Ϊ"..num1.."��"..num2.."ֻ")
    LuaSay("��ʾ��������@325������@0�����ԡ�����@3��100ֻ@0���ܽ����Ѩ2��")
 end
 LuaOtherSendMenu()
 return ans.rtype
end