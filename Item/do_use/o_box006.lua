function do_use()
if(LuaFreeBag()<3)then	LuaShowNotify("�����ٱ���@23@0�񱳰��ռ�")	return 0 end
	local rf=LuaRandom(4)
	if(LuaQuery("onlinetime")>=7200)then	
	LuaSay("��ܰ��ʾ�����Ѿ����߳���2Сʱ�������δ��18�������δ���ֻ�����֤��ݣ����ܻ��ܵ�������ϵͳ�����ơ�")
	LuaSay("��ܰ��ʾ��������ȥ@4�����Ͻ�@0��@3�س�ʿ��@0��@2���ֻ���@0����������������Ϣ����л����ͳһol��֧�֣�ף����Ϸ��죡")
	end						
		if(rf==0)then
			LuaGive("o_state012j",LuaRandom(2)+1,"Tbox006")------��
			LuaGive("o_state008j",2,"Tbox006")------��
		elseif(rf==1)then
			LuaGive("o_state008j",2,"Tbox006")------��
			LuaGive("o_state065j",1,"Tbox006")----СѪ��
		elseif(rf==2)then
			LuaGive("o_state001j",LuaRandom(2)+1,"Tbox006")------��
			LuaGive("o_state008j",2,"Tbox006")------��
		elseif(rf==3)then
			LuaGive("o_state008j",2,"Tbox006")------��
			LuaGive("o_state068j",1,"Tbox006")----Сħ��
		end

LuaOtherSendMenu()
return 1
end
