ans = {} 	
function OnEnter()
	if(LuaQueryTask("Tfbrw")==0) then
		LuaSetTask("Tfbrw",1)
		LuaSay("��ʾ�����Ѿ�����˸���ÿ�����񣬿��Իظ�����ʹ���ˣ�")
		 LuaOtherSendMenu()
	end
	LuaSetTask("FBTGJL",1)
	ans.rtype = 1

return ans.rtype
end    