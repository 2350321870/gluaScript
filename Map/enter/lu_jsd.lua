ans = {} 	
function OnEnter()
if(LuaQueryStr("MobieType") ~= "S20")then
	LuaSay("@1��ܰ��ʾ@0������㷢��ûboss�����԰����ꡣboss��ɱ��Ҫ�������ӲŻ�ˢ������������Ͻǵ�PK��������Է���boss���ϳ���һ�����֣�����������ֶ�Ӧ�ļ������������boss�ˣ�����ʱ�������ɱŶ@!") 
else	
	LuaSay("@1��ܰ��ʾ@0������㷢��ûboss�����԰����ꡣboss��ɱ��Ҫ�������ӲŻ�ˢ�����������Ǻż�������Է���boss���ϳ���һ�����֣�����������ֶ�Ӧ�ļ������������boss�ˣ�����ʱ�������ɱŶ@!") 
end
ans.rtype = 1
LuaOtherSendMenu()
return ans.rtype
end