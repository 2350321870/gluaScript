function do_use()

	AddMenuItem("�ϳ�����","nc_combine o_mix_book051 a","��Ҫһ���ߵ������ϣ����Ժϳɳ�����")     



LuaSendMenu()
LuaShowNotify("����ϳ�",1)
return 1
end
function nc_combine(type)

if (type=="a")then
	if (LuaItemStatusNormalCount("o_mission039")>=1) then
	DelItem("o_mission039",1) 
	LuaGive("o_mix_book051",1)
	LuaShowNotify("�ɹ��ϳ�xxx��")
	return 1
	else
	LuaShowNotify("����Ҫ�ҵ�һ�ֽ��ߵ��������ܺϳɡ�")
	end

end

end