function do_use()
if(LuaCheckBuff("551")==1)then
	LuaShowNotify("���Ѿ�����������Ч���������ظ�ʹ��")
	return 0
else
	LuaGiveBuff("551",1)
	FlushMyInfo("1")
	LuaShowNotify("����������Ч����һСʱ֮�ڿ�����������PK")
	return 1 
end
end