function do_use()

local mapname=MapName()

if(mapname=="lu_chp") then

	if(LuaQueryTask("T661")==1)then
		LuaSay(""..LuaQueryStr("name").."�������绹�Ǻ���ǰһ����")
 		LuaOtherSendMenu()
 		LuaSetTask("T661",2)
		AddLog("ʧ�ܵ��׼������顿",661)
 		UpdateNPCMenu("huntaihou")
 		return 1  
	end
else
    LuaShowNotify("����Ʒֻ���ڲκ��²���ʹ�á�")
end


if(mapname=="lu_chp") then
	if(LuaQueryTask("T662")==3)then
        LuaSay("��ʾ�����Ѿ��ɹ�ʹ����а����ٻ����ᣬ��ȥ�ظ�@3��̫��@0�ɡ�")
     	LuaOtherSendMenu()
		LuaSetTask("T662",4)
		AddLog("��Ѫ��ĸ�����顿",662)
		UpdateNPCMenu("huntaihou")
		return 1
    end
else
    LuaShowNotify("����Ʒֻ���ڲκ��²���ʹ�á�")

end

 
	

end                                                

