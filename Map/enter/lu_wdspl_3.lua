ans = {} 	
function OnEnter()
  ans.rtype = 0
  local num=LuaQueryTask("task_kill/mon_116/Twdspl_2")-1+LuaQueryTask("task_kill/mon_116BT/Twdspl_2")-1
 if(num>=20) then                          -------Ϊ�˲��Է���д��2��  �����ǸĻ�20

    LuaSay("��ʾ���嶷ɽկ����40���Ӻ�رգ���ץ��ʱ���ɱ���ħ�壡")
    if(LuaQueryTask("Tfbrw")==0) then
    LuaSetTask("Tfbrw",1)
    LuaSay("��ʾ�����Ѿ�����˸���ÿ�����񣬿��Իظ�����ʹ���ˣ�")
    end
    LuaSetTask("FBTGJL",1)
    ans.rtype=1
 else
    LuaSay("��ʾ�������ڵĶ����Ѿ�������Ѿ�����@3"..num.."����")
    LuaSay("��ʾ��������@340������@0�����Ѿ�����@320��@0���ܽ����嶷ɽկ��")
 end
 LuaOtherSendMenu()
 return ans.rtype
end