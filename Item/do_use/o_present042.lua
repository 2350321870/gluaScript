function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------ս������ 
--	LuaGive("o_gold2j",1,"Tpresent42")   --��Ʊ
--	LuaGive("o_zhaiquan1y",1,"Tpresent42")--��ɴȯ
	local r=LuaRandom(15)
	if(r==0)then
	LuaGive("o_state016j",1,"Tpresent42")--���굤
	elseif(r==1)then
	LuaGive("o_state101j",1,"Tpresent42")--������
	elseif(r==2)then
	LuaGive("o_state060j",1,"Tpresent42")--���������
	elseif(r==3)then
	LuaGive("o_state061j",1,"Tpresent42")--������
	elseif(r==4)then
	LuaGive("o_gold1j",1,"Tpresent42")  --ͨ��
	elseif(r==5)then
	LuaGive("o_present032",1,"Tpresent42")--6����һ���ϰ�
	elseif(r==6)then
	LuaGive("o_box001j",1,"Tpresent42")--���� 
	elseif(r==7)then
	LuaGive("o_box002",1,"Tpresent42")--���˱���
	elseif(r==8)then
	LuaGive("o_cwmbs2",1,"Tpresent42")--��������ɫ���߼���
	elseif(r==9)then
	LuaGive("o_cwgm2",1,"Tpresent42")--�������  
	elseif(r==10)then 
	LuaGive("o_state102j",1,"Tpresent42")--��� 
	elseif(r==11)then
	LuaAddYB(2,50)
	LuaSay("��ϲ����50��ң������С�����ٵ�¼�鿴����õĽ�ң�")
	elseif(r==12)then
	LuaAddYB(2,100)
	LuaSay("��ϲ����100��ң������С�����ٵ�¼�鿴����õĽ�ң�")
	elseif(r==13)then
	LuaAddYB(2,200)
	LuaSay("��ϲ����200��ң������С�����ٵ�¼�鿴����õĽ�ң�")
	elseif(r==14)then
	LuaAddYB(2,500)
	LuaSay("��ϲ����500��ң������С�����ٵ�¼�鿴����õĽ�ң�")
	end
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�1��,�㻹���ܴ�")
  return 0
end
end
