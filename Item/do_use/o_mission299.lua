function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	AddMenuItem("Ԫ������ף��","nc_combine o_mission299 a","ѡ��Ԫ��ף��")
	AddMenuItem("Ԫ������ף��","nc_combine o_mission299 b","ѡ��Ԫ��ף��")
	AddMenuItem("Ԫ������ף��","nc_combine o_mission299 c","ѡ��Ԫ��ף��")
	AddMenuItem("Ԫ��̰��ף��","nc_combine o_mission299 d","ѡ��Ԫ��ף��")
	AddMenuItem("Ԫ����սף��","nc_combine o_mission299 e","ѡ��Ԫ��ף��")


LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_mission292",1,"Tyuanx")
	DelItem("o_mission299",1)
elseif(type=="b")then
	LuaGive("o_mission293",1,"Tyuanx")
	DelItem("o_mission299",1)
elseif(type=="c")then
	LuaGive("o_mission294",1,"Tyuanx")
	DelItem("o_mission299",1)
elseif(type=="d")then
	LuaGive("o_mission295",1,"Tyuanx")
	DelItem("o_mission299",1)
elseif(type=="e")then
	LuaGive("o_mission296",1,"Tyuanx")
	DelItem("o_mission299",1)
else
LuaSay("�������������ռ�,��֤1�����ϵĿ�λ�ٴ�,������ɵĶ�ʧ���и���")
end
LuaOtherSendMenu()

end
