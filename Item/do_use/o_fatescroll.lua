function do_use()
	--if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end--û����Ʒ����ʱ����
local flag=1
local name=LuaQueryStr("name")
local ret=LuaQueryTempStr("last_channel_msg")
local gender=LuaQueryStr("gender")
local ran=LuaRandom(10)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
if(ret=="�Һ�˧" and gender=="����")then
LuaSay("���ữΪһ��������ʧ��...")
LuaSay("�㱻��������")
LuaNotice("@2"..name.."@0����˵��,�������������")
LuaAddJx("combat_exp",30*level^2,"Tfate")
LuaSet("hp",0)
elseif(ret=="������Ů" and gender=="����")then
LuaSay("���ữΪһ��������ʧ��...")
LuaSay("�㱻��������")
LuaNotice("@2"..name.."@0���ڰ�����,�������������")
LuaAddJx("combat_exp",30*level^2,"Tfate")
LuaSet("hp",0)
elseif(ret=="����˧��" and gender=="Ů��")then
LuaSay("���ữΪһ��������ʧ��...")
LuaSay("�㱻��������")
LuaNotice("@2"..name.."@0����˵��,�������������")
LuaAddJx("combat_exp",30*level^2,"Tfate")
LuaSet("hp",0)
elseif(ret=="�вƽ���")then
LuaSay("���ữΪһ��������ʧ��...")
LuaSay("��~�㱻Ǯ��ſ����")
LuaNotice("@2"..name.."@0�Դ��˵�һ����ʧȥ��֪��,��������ͷ�����˼������,��߻���һ��Ǯ")
LuaGive("coin",LuaRandom(5)*1000+2000,"Tfate")
LuaSet("hp",0)
elseif(ret=="�Ұ�����" or ret="�Ұ��ͷ�" or ret="�Ұ�ָͷ" or ret="�Ұ�GM" or ret="�Ұ�Gm" or ret="�Ұ�gm" or ret="�Ұ�gM")then
LuaSay("���ữΪһ��������ʧ��...")
LuaSay("���Ѫħȫ����")
LuaNotice("@2"..name.."@0�ı�׸ж����ϲ�,���Ͻ��է��,ɢ�����������")
LuaSet("hp",LuaQuery("max_hp"))
LuaSet("mp",LuaQuery("max_mp"))
elseif(ret=="������Ҳ��˵")then
LuaSay("���ữΪһ��������ʧ��...")
LuaSay("��ž~�㱻һ��������һ��ȺŹ,����һϢ")
LocalMsg("�����˴�:�ֵ��ǿ���,�������!")
LuaNotice("һ�������˰�@2"..name.."@0�������һϢ,������:�ֵ��ǿ���,�������!")
LuaSet("hp",0)
LuaSay("������������һ��Ǯ����������ϱ�����������.")
LuaGive("coin",LuaRandom(7)*1000+2000,"Tfate")



--[[����
�Ұ��ͷ�/�Ұ�ָͷ/�Ұ�GM/�Ұ�Gm/�Ұ�gm/�Ұ�gM
��Ҳ����׵Ŀ�������/���������/������Ҫ������
˭ҪǮ
���������
������Ҳ��˵--�����������
���˸�ԭ�ظ���
��������,�ĳ����,ǧ������,һͳ����

��,��Ʒ
»,��ѫ
��,ʳҩ
ϲ,����
��,ͭǮ
--����ֵ��



]]
else
	flag=0
	LuaSay("��ֵľ���,��Ҫ��GM����ʲô����,�������һЩNPC���������ʲô����.")
end

--[[
if(flag==1)then
FlushMyInfo("0x1004")
elseif(flag==2)then--ͳһ����
	FlushMyInfo("0x1004")
	local	r=LuaRandom(22)
	if(r==0)then
	if(level>=20)then
	LuaGive("o_cangbaotu",1,"Tfate")
	else
	LuaGive("o_state001",1,"Tfate")
	end
	elseif(r==1)then
	LuaGive("o_box002",1,"Tfate")
	end
end--]]
LuaOtherSendMenu()
return flag
end
