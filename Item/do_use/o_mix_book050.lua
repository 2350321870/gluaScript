function do_use()

AddMenuItem("�ϳ�������","nc_combine o_mix_book050 a","�ϳ�")  



LuaSendMenu()
LuaShowNotify("������ϳ�",1)
return 0
end

function nc_combine(type)

if (type=="a")then
 if (LuaItemCount("o_mission070")==0) then
	DelItem("o_mission071",5)   
    DelItem("o_mission058",5)   
	LuaGive("o_mission070",1)
	LuaShowNotify("�ɹ��ϳ������衣")
	return 1
  else
   LuaShowNotify("�����ټ����ϳ�")
  end
end

end