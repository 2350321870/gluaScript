function do_use()
if(LuaCheckBuff("551")==1)then
	LuaShowNotify("你已经具有御龙丹效果，不能重复使用")
	return 0
else
	LuaGiveBuff("551",1)
	FlushMyInfo("1")
	LuaShowNotify("你获得御龙丹效果，一小时之内可以在坐骑上PK")
	return 1 
end
end