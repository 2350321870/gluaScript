function do_use()
	if(LuaFreeBag()<8)then	LuaShowNotify("�����ٱ���@28@0�񱳰��ռ�")	return 0 end
		if(LuaQueryStr("class")=="shen") then      --սʿ
			LuaGive("e_falchion151",1,2,"Newcountry")
			LuaGive("e_shield151",1,2,"Newcountry")
		elseif(LuaQueryStr("class")=="wu") then       --����
			LuaGive("e_sword151",1,2,"Newcountry")
			LuaGive("e_knife151",1,2,"Newcountry")
		elseif(LuaQueryStr("class")=="xian") then       --ıʿ
			LuaGive("e_book151",1,2,"Newcountry")
			LuaGive("e_pen151",1,2,"Newcountry")
		end
		LuaGive("e_head151",1,2,"Newcountry")		--ǿ�߹�
		LuaGive("e_clothes151",1,2,"Newcountry")	--ǿ����
		LuaGive("e_pants151",1,2,"Newcountry")		--ǿ�߻���
		LuaGive("e_shoes151",1,2,"Newcountry")		--ǿ��ѥ	
		LuaGive("e_earring151",1,2,"Newcountry")	--ǿ�߶�׹
		LuaGive("e_necklace151",1,2,"Newcountry")	--ǿ������
		LuaGive("coin",18888,"Newcountry")
		LuaAddJx("combat_exp",500000,"Newcountry")
		LuaSetTask("Newcountry",98)
		LuaOtherSendMenu()

return 1 
end
