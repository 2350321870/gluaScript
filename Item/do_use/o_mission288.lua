function do_use()
      if(LuaFreeBag()<4)then	LuaShowNotify("�����ٱ���@24@0�񱳰��ռ�")	return 0 end
             
			 LuaGive("o_state016j",10,"Txinchun") --���굤 
			 LuaGive("o_state010j",1,"Txinchun")   --�м�������
			 LuaGive("o_state068j",1,"Txinchun")   --ħ��1
			 LuaGive("o_key002y",1,"Txinchun")   --����Կ��
			 local level= LuaQuery("level")
			 	if(level>80)then
		level=80
	end
			 local jingyan=(20000*4+level^2*40*4+level*2500*4)
			 LuaAddJx("combat_exp",jingyan,"Txinchun")
			 
			 LuaNotice("��ϲ@3"..LuaQueryStr("name").."@0�򿪴��ڡ���������10��@5���굤@0��һ��@5ħ��1@0��һ��@5����Կ��@0��һ��@5�м�������@0��@5��������@0.")
			 
				
LuaOtherSendMenu()
LuaGive("coin",400,"Txinchun")
return 1
end
