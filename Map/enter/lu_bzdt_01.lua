ans = {} 	
function OnEnter()
	ans.rtype = 1
	LuaSetTask("ginfm_inbj",1)  --������
	LuaSetTask("ginfm_inday",GetCurrentDay())  --����ʱ����
	LuaAddTask("ginfm_incs",1)  --�������
	LuaSay("ע�⣺�����ս��ͼ��������߻���ߣ����ٴν�����ȴ�һ��ʱ�䣬���߻���ߴ���Խ�࣬����ȴ�ʱ����Խ��")
	if(LuaQueryStrTask("Tbzljday")~=GetCurrentDay())then
		LuaSetTask("Tbzlj",0) --ÿ������ս��ͼ�󣬲Ż����ð�ս�콱����ֹ���ֻ��һ�ΰ�ս�Ϳ��������콱 
		LuaSetTask("Tbzljday",GetCurrentDay())
	end  
	LuaOtherSendMenu()
return ans.rtype
end