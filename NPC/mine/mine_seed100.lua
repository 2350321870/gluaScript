NPCINFO = {
name="�˲�",
butt="0|0|24",
isboss = 3,--����Ϊ3 ���Ϊ2 bossΪ1 
serial= "999" ,--NPC id
icon= 10521,--���ﶯ��ͼƬ
NpcMove= 10521, --���ﶯ���ļ�
iconaddr= 1, --��Դ�ļ����ŵ�λ��,1:Ϊ������.0Ϊ�ͻ���
booty= "o_mission009",--��õ���Ʒ
growntime= 10, --�ɳ�ʱ��
getrate= 100,--��ü���
bootyrate="100",
gettime= 1,--�ɻ�ô���
getlevel= 1,--�����Ҫ�ھ���͵ȼ�
candig=1,--��ʼ���ܲ�����
growlevel=0,
maxgrowlevel=3,
maxact=2,
protecttime=1200,		--�����ı���ʱ�䣬��λ��
insectstime=300,		--�ų�ļ��ʱ�䣬��λ��
insectscut=240,			--�ų�ɹ��۵���ֲʱ�䣬��λ��
grasstime=600,			--���ݵļ��ʱ�䣬��λ��   
grassadd=60,			--���ݳɹ��ӵ���ֲʱ�䣬��λ�� 
}
function OnDig(id, answer)
local ret = 1
local name = LuaPlantHost(id) --��ֲ�˵�����
if (answer == "talk") then
	LuaSay("��ʾ���ɼ�ǰ���ѯֲ��״̬��ȷ�����Բɼ�����Ʒ��Ȼ���ٲɼ�")
	AddMenuItem("�ɼ�","DoSkillDig " .. id .. " " .. "yes", "�Ƿ�ɼ�")
	AddMenuItem("���ɼ�","DoSkillDig " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then

elseif (answer == "no") then
	ret = 0
end
LuaOtherSendMenu()
return ret
end
--���ݺ��� ���� id: ֲ���id��answer����ҵ�Ĳ˵���ʹ�ü��ܵĲ˵�Ϊtalk 
--����ֵ 1���ݳɹ���0����ʧ��
function OnGrass(id, answer)
local ret = 1
if (answer == "talk") then
	AddMenuItem("����","Grass " .. id .. " " .. "yes", "�Ƿ����")
	AddMenuItem("������","Grass " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then
	
elseif (answer == "no") then
	ret = 0
end
LuaOtherSendMenu()
return ret
end
--�ų溯�� ���� id: ֲ���id��answer����ҵ�Ĳ˵���ʹ�ü��ܵĲ˵�Ϊtalk 
--����ֵ 1�ų�ɹ���0�ų�ʧ��
function OnInsects(id, answer)
local ret = 1
if (answer == "talk") then
	AddMenuItem("�ų�","Insects " .. id .. " " .. "yes", "�Ƿ�ų�")
	AddMenuItem("���ų�","Insects " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then

elseif (answer == "no") then
	ret = 0
end
LuaOtherSendMenu()
return ret
end