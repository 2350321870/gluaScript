ans = {} 	
function OnEnter()
  ans.rtype = 0
 local  num=LuaQueryTask("task_kill/mon_126/Tymdxer")-1
 if(num>=200) then  

    LuaSay("��ʾ����ץ��ʱ���ɱboss��3�㽫��@330���Ӻ�@0�ر�")
    if(LuaQueryTask("Tfbrw")==0) then
    LuaSetTask("Tfbrw",1)
    LuaSay("��ʾ�����Ѿ�����˸���ÿ�����񣬿��Իظ�����ʹ���ˣ�")
    end
    LuaSetTask("FBTGJL",1)
    ans.rtype=1
 else
    LuaSay("��ʾ�������ڵĶ����Ѿ����������@3"..num.."ֻ")
    LuaSay("��ʾ��������@330������@0����@3����200ֻ@0���ܽ���3��")
 end
 LuaOtherSendMenu()
 return ans.rtype
end