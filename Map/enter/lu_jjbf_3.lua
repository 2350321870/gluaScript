ans = {} 	
function OnEnter()
ans.rtype = 0
	local num=LuaQueryTask("task_kill/mon_112/Tjjbf_2")-1
	if(num>=80) then     --------Ϊ�˲��Է����ݶ�0�� �������ǸĻ�80
		--if(num>=5) then
		if(LuaCheckBuff("401")==1)  then  ---�����û��401��buff 
			LuaDeleteBuff("401")           --------ɾ�� 
			FlushMyInfo("1")              ---------ˢ�½�ɫ��ֵ
		end 
		if(LuaCheckBuff("403")==1)  then ---�����û��401��buff 
			LuaDeleteBuff("403")           --------ɾ�� 
			FlushMyInfo("1")              ---------ˢ�½�ɫ��ֵ
		end 

		LuaSay("��ʾ��������ɽ����40���Ӻ�رգ���ץ��ʱ���ɱҦ�壡")
		if(LuaQueryTask("Tfbrw")==0) then
			LuaSetTask("Tfbrw",1)
			LuaSay("��ʾ�����Ѿ�����˸���ÿ�����񣬿��Իظ�����ʹ���ˣ�")
			LuaOtherSendMenu()
		end
		LuaSetTask("FBTGJL",1)
		ans.rtype=1
	else
		LuaSay("��ʾ�������ڵĶ����Ѿ������Ҧ��ʿ��"..num.."����" )
		LuaSay("��ʾ��������@340������@0����Ҧ��ʿ��80��@0���ܽ���������ɽ��")
	end
LuaOtherSendMenu()
return ans.rtype
end