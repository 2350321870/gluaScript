NPCINFO = {
name="����",
butt="0|0|42",
isboss = 2, 
serial= "979",
icon= 10524,
NpcMove= 10524, 
iconaddr= 1,
maxnum= 1,
booty= "o_material_38",
getrate= 100,
bootyrate="100",
gettime= 3,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
local tIndex={--���괦�ڵ�������ű�
{224,128},--1
{224,192},--2
{224,320},--3
{224,384},--4
{288,128},--5
{288,192},--6
{288,256},--7
{288,320},--8
{288,384},--9
{352,128},--10
{352,192},--11
{352,256},--12
{352,320},--13
{352,384},--14
{416,128},--15
{416,192},--16
{416,320},--17
{416,384},--18
}
local iX=LuaQueryTemp("posx")--X����
LuaPrint("ȡiX")
local iY=LuaQueryTemp("posy")--Y����
LuaPrint("ȡiY")
local iIndex=-1  --���㱾������
local iDx 	--�����x
local iDy 	--�����y
for i=1,18 do
	LuaPrint("ѭ����"..i.."�Ρ�������")
	iDx=tIndex[i][1]-iX
	LuaPrint("ȡiDx ="..iDx.."")
	iDy=tIndex[i][2]-iY
	LuaPrint("ȡiDy ="..iDy.."")
	if(iDx>-30 and iDx<30 and iDy>-30 and iDy<30)then
		iIndex = i
		LuaPrint("�ҵ�����������iIndex = i ="..i.."����������")
		break
	end
end
if(iIndex==-1)then
	LuaShowNotify("�˴�ľ��������")
	return 1
end
LuaPrint("ѭ������")
local DOTIME=30		--�˹�����CD,����/�¼е���
local BRUSHTIME=180	--ϵͳ�Լ�����CD����

local iTime=LuaPublicQuery("potato/"..iIndex.."/time")	--�ϴα䶯ʱ��
	LuaPrint("��ѯiTime�ɹ�ֵΪ��"..iTime.."")
local iState 
if(GetCurrentTime()-iTime>BRUSHTIME)then--��ʱ��δ�����������ˢ��
	LuaPrint("��ʱ��δ�����������ˢ�³ɹ�")
	if(LuaRandom(10)<5)then
	iState=0
	else
	iState=1
	end
	LuaPublicSet("potato/"..iIndex.."/state",iState)
	LuaPrint("��������ʱ��ɹ�")
else
	iState=LuaPublicQuery("potato/"..iIndex.."/state")--��ȡ����״̬
	LuaPrint("��ȡ����״̬�ɹ�")
end
LuaPrint("if����")
local iTask=LuaQueryTask("Tpotato")	--����͵�����������¼�������
	LuaPrint("������͵�����������¼�������")
local iSubHp 
if(iTask==0)then
	LuaShowNotify("δ�������ܲɼ�")
	return 1
end
LuaPrint(">>>>>>>>>>>>>������������<<<<<<<<<<<<<<")
if(iState==0)then		--������
	LuaPrint("�ж�����������ɹ�")
	if(iTask==1)then	--�¼���-o_mission194
		LuaPrint("�ж�iTask==1�ɹ��� �¼�������")
		if(LuaItemCount("o_mission194")>0)then
			LuaPrint("�ж�o_mission194>0�ɹ�")
			if(GetCurrentTime()-iTime>DOTIME)then
				LuaPrint("ʱ����жϳɹ�")
			DelItem("o_mission194",1)
			LuaPublicSet("potato/"..iIndex.."/state",1)
			LuaPublicSet("potato/"..iIndex.."/time",GetCurrentTime())
			LuaShowNotify("������гɹ�")
			return 1
			else
			LuaPrint("ʱ����ж�ʧ��")
			LuaShowNotify("�˴��ո��¹�����")
			return 1
			end
		else
		LuaSay("����Ѱ���,�ر���ũ��")
		LuaPrint("�ж�o_mission194>0ʧ��")
		end
	elseif(iTask==2)then	--͵����+o_mission193
	LuaPrint("�ж�iTask==2�ɹ��� ͵��������")	
		if(LuaItemCount("o_mission193")<10)then
			LuaPrint("o_mission193)<10�ɹ�")
			if(GetCurrentTime()-iTime>DOTIME)then
				LuaPrint("�ж�ʱ���ɹ�")
			LuaGive("o_mission193",1)
			LuaPrint("�������ɹ�")
			LuaPublicSet("potato/"..iIndex.."/time",GetCurrentTime())
			LuaPrint("��������ʱ��ɹ�")
			LuaShowNotify("�ڵ�һ������")
			return 1
			else
			LuaShowNotify("�˴��ո��ڹ���")
			return 1
			end
		else
		LuaSay("�Ѳ���10������,��콻��������")
		end
	end
elseif(iState==1)then		--�Ǽ���
	if(iTask==1)then	--�¼���	
		iSubHp=50+LuaRandom(150)	--���������˵�Ѫ����
	elseif(iTask==2)then	--͵����
		iSubHp=200+LuaRandom(300)	--͵�������˵�Ѫ����
	end
	LuaPrint("�ȵ����Ӽ�Ѫ")
	LuaShowNotify("�ȵ�����hp-"..iSubHp)
	local iNewHp=LuaQuery("hp")-iSubHp
	if(iNewHp>0)then
		LuaSet("hp",iNewHp)
		LuaPrint("���������µ�Ѫ���ɹ�")
	else
		LuaSet("hp",0)
		LuaPrint("����")
	end
	FlushMyInfo("0")
	LuaPrint("ˢ�½�ɫ��Ϣ�ɹ�")
	return 1
else
LuaSay("Bug���Դ����ż���")
LuaPrint("FUCK!")
end
LuaPrint(">>>>>>>>>>>>>�������̽���<<<<<<<<<<<<<<")

LuaOtherSendMenu()
return 1
end
