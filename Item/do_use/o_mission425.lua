function do_use()
	LuaSay("֥�鿪��..")
	LuaSay("....")
	LuaSay("��ϲ����@2�������ﵰ@0")
	local a=LuaRandom(10)
	LuaGive("o_mission415",2,"dljl") -------�õ�2�����ﵰ  ���ֽ���
	if(a<=4) then
		LuaSay("�ۣ��ⶼ����Ʒ����...����@2400ͭ@0�Ķ��⽱�������������Ʒ��")
		LuaGive("coin",400,"dljl")
	end
	LuaOtherSendMenu()
	return 1 
end