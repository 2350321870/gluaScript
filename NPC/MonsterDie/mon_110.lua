--Tshikuyi_nTotalMonsterNum = 101 
function OnDie()
local num=LuaQueryTask("task_kill/mon_110/Tjjbf_1")-1
local num2=LuaQueryTask("task_kill/mon_111/Tjjbf_1")-1
if(num==50) then     --------Ϊ�˲��Է����ݶ�0�� �������ǸĻ�50
	if(num2>= 50)then
		LuaSay("��ʾ�����Ѿ���������ƹ�50ֻ������50ֻ�����Խ�����ˮ����")
	else
		LuaSay("��ʾ�����Ѿ���������ƹ�50ֻ������"..num2.."ֻ���Ͽ�ȥ���������")
	end
	LuaOtherSendMenu()
elseif(num2==50)then
	if(num>= 50)then
		LuaSay("��ʾ�����Ѿ���������ƹ�50ֻ������50ֻ�����Խ�����ˮ����")
	else
		LuaSay("��ʾ�����Ѿ���������ƹ�"..num.."ֻ������50ֻ���Ͽ�ȥ�������ƹ���")
	end
	LuaOtherSendMenu()
	
end
return 1
end