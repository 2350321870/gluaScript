NPCINFO = {
serial="305" ,
base_name="fubenzdy" ,
icon=2563,
NpcMove=2563,
name="����ָ��Ա" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="��Ҫ�ǲ����boss��������" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
    havetask =0
	local level= LuaQuery("level")	
	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("@1�������boss","FBZDSM")
	AddTopSayMenuItem("@1����ü��ܴ�","FBZDSM2")
	AddTopSayMenuItem("@1��γ�ҩ","FBZDSM3")


if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1

elseif(answer=="liaotian") then
	LuaSay("����ָ��Ա���������������ʱ�򣬴���5ƿ�쵥��80��boss�����������ˣ���50ƿ�춼�򲻹�20��boss...")
elseif(answer=="FBZDSM") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("����ָ��Ա����������Ͻǵ�PK������Ȼ����ᷢ��boss���ϳ���һ�����֣���Ͱ���Ӧ�����ּ���������boss�ˣ�")
		LuaSay("����ָ��Ա����ʱboss���������㣬��ͻ��Զ���������������ῴ����Ļ���Ͻ�bossͷ�����֣�����boss��HP��MP��")
	else
		LuaSay("����ָ��Ա�������Ǻż�����Ȼ����ᷢ��boss���ϳ���һ�����֣���Ͱ���Ӧ�����ּ���������boss�ˣ�")
		LuaSay("����ָ��Ա����ʱboss���������㣬��ͻ��Զ���������������ῴ����Ļ���Ͻ�bossͷ�����֣�����boss��HP��MP��")
	end
elseif(answer=="FBZDSM2") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		
		LuaSay("����ָ��Ա�����������˵����ٵ�����ܼ������ܽ��뼼�ܹ�������ˣ�����Կ������Ѿ�ѧ�ĺ�ûѧ�ļ��ܣ�")
		LuaSay("����ָ��Ա������Ե��ѡ���ܣ��ٴε������ѧϰ���������ܣ�")
		LuaSay("����ָ��Ա���������ĳ����ѧ�ļ����ϵ��һ�Σ�Ȼ������ݼ���������һС�񣬸ü��ܾͻᱻ�ŵ���������ˣ�")
	
	else
		LuaSay("����ָ��Ա�������㰴ȷ�������ٰ�4�������ܽ��뼼�ܹ�������ˣ�����Կ������Ѿ�ѧ�ĺ�ûѧ�ļ��ܣ�")
		LuaSay("����ָ��Ա������԰���������������ѡ���ܣ�����ȷ��������ѧϰ���������ܣ�")
		LuaSay("����ָ��Ա���������ĳ����ѧ�ļ������水�¡�3�����ü��ܾͻ���������·����ܿ�������ˣ�")
        end
elseif(answer=="FBZDSM3") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("����ָ��Ա��ǰ����������к�ҩ����ҩ�������˵����ٵ��������������������棬ѡ��ҩƷ���ٴε���ͻ���ֲ˵���ѡ��ʹ�á�����ͳ���һ��ҩ��")
		LuaSay("����ָ��Ա������ѡ��ҩƷ�󣬿��Ե����ݼ���������һ����ݼ�С��ҩƷ��Ŀ��������ٴε�����ܳ�ҩ�ˣ�")
	else
		LuaSay("����ָ��Ա��ǰ����������к�ҩ����ҩ���㰴ȷ�������ٰ�3��������������棬��������������ѡ��ҩƷ����ȷ�ϼ��ͻ���ֲ˵���ѡ��ʹ�á�����ͳ���һ��ҩ��")
		LuaSay("����ָ��Ա�����㰴������������ѡ��ҩƷ�󣬿��԰��¡�7����9����ҩƷ�����������½ǵĿ������㰴һ�£���7����9�����ܳ�ҩ�ˣ�")

	end


end
LuaSendMenu()
return 1
end