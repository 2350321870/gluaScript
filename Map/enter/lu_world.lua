ans = {} 	
function OnEnter()
ans.rtype = 1
if(LuaQuery("level")>=10) then
	if (LuaQueryStr("class")=="zhan") then
		LuaSay("��ʾ��10��ѡ��ְҵ�󷽿ɽ��������ͼ")
		ans.rtype=0
		LuaOtherSendMenu()
	end
else
	LuaSay("��ʾ��10���󷽿ɽ��������ͼ")
	ans.rtype=0
	LuaOtherSendMenu()
end
return ans.rtype
end

