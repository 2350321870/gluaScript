NPCINFO = {
isboss = 2,--���Ϊ2 bossΪ1 
name="����ʯ��" ,
butt="0|0|24",
serial= "901" ,--NPC id
icon= 10001,--���ﶯ��ͼƬ
NpcMove= 10001, --���ﶯ���ļ�
iconaddr= 1, --��Դ�ļ����ŵ�λ��,1:Ϊ������.0Ϊ�ͻ���
maxnum=3,--��õ���Ʒ�������������booty�ֶ�����Ʒ����
booty= "o_material_47|o_material_56|o_mission145",
getrate= 90,--��ü���
bootyrate="90|99|100",
gettime= 5,--�ɻ�ô���
getlevel= 1,--�����Ҫ�ھ���͵ȼ�
candig=1,--��ʼ���ܲ�����
act=1,
ondig=1,
}
function OnDig()
if(MapName()~="lu_mine01")then
	if(LuaQueryTask("T50")==1)then
		if(LuaItemCount("o_mission021") >= 1 )then
		LuaSay("������:�ף����Ȼ�Ѿ��п�ʯ�ˣ����������Ұɡ�")
		else
		LuaGive("o_mission021",1)
		end
	elseif(LuaQueryTask("T50")==99)then
	LuaSay("��ܰ��ʾ:��Ҫ�ɵ������Ŀ󾧲��ϣ���Ŭ������10����ȥ�ɼ����ɼ��ɡ�")
	end
	LuaOtherSendMenu()
return 1
end
return 0--��ͨ�ɲ�
end
