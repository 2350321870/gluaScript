ans = {} 	
function OnEnter()
ans.rtype = 0
local num=LuaQueryTask("task_kill/mon_110/Tjjbf_1")-1
local num2=LuaQueryTask("task_kill/mon_111/Tjjbf_1")-1
	if(num>=50 and num2>=50) then     --------Ϊ�˲��Է����ݶ�0�� �������ǸĻ�50
		LuaDelTask("task_kill/mon_110/Tjjbf_1")
		LuaDelTask("task_kill/mon_111/Tjjbf_1")
		LuaSetTask("task_kill/mon_112/Tjjbf_2",1)
		LuaSay("��ʾ����ˮ��������40���Ӻ�رգ���ץ��ʱ���ȥ������ɽ��")
		LuaOtherSendMenu()
		ans.rtype=1
	else
		LuaSay("��ʾ�������ڵĶ����Ѿ���������ƹ�@3"..num.."ֻ������"..num2.."ֻ�� ")
		LuaSay("��ʾ��������@340������@0�������ƹ�@350ֻ������50ֻ@0���ܽ�����ˮ������")
	end
LuaOtherSendMenu()
return ans.rtype
end