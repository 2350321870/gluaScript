ans = {} 	
function OnEnter()
  ans.rtype = 0
  local num=LuaQueryTask("task_kill/mon_115/Twdspl_1")-1
 if(num>=100) then     --------Ϊ�˲��Է����ݶ�10�� �������ǸĻ�100
    LuaDelTask("task_kill/mon_115/Twdspl_1")
    LuaSetTask("task_kill/mon_116/Twdspl_2",1)
    LuaSetTask("task_kill/mon_116BT/Twdspl_2",1)
    	if(LuaItemCount("o_mission413")>=1) then                  -------������Ѿ����ƾͶ�ɾ�� 
    	DelItem("o_mission413",LuaItemCount("o_mission413"))
    	end
    LuaDelTask("fb40ji_wdspl01")
    LuaSay("��ʾ���嶷ɽ����40���Ӻ�رգ���ץ��ʱ���ȥ�嶷ɽկ")
    ans.rtype=1
 else
    LuaSay("��ʾ�������ڵĶ����Ѿ�������Ѿ�ʿ��@3"..num.."��")
    LuaSay("��ʾ��������@340������@0�����Ѿ�ʿ��@3100��@0���ܽ����嶷ɽկ")
 end
 LuaOtherSendMenu()
 return ans.rtype
end