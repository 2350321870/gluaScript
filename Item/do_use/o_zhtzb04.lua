--��ħ��װ
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	local r2=LuaRandom(5)
	LuaPrint("1")
        if(r2==0) then
        LuaGive("e_clothes032",1,1,"��ħ��װ��")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�������ħս��")
        elseif(r2==1) then
        LuaGive("e_head032",1,1,"��ħ��װ��")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�������ħս��")
        elseif(r2==2) then
        LuaGive("e_pants032",1,1,"��ħ��װ��")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�������ħ�ּ�")
        elseif(r2==3) then
        LuaGive("e_shoes032",1,1,"��ħ��װ��")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�������ħսѥ")
		elseif(r2==4) then
        LuaGive("e_earring032",1,1,"��ħ��װ��")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�������ħ����")
		elseif(r2==5) then
        LuaGive("e_necklace032",1,1,"��ħ��װ��")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�������ħ����")
        end
LuaOtherSendMenu()
return 1
end