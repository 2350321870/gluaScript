ITEMINFO = {
list_icon = 34,
wield_position = 10,
type = "pet",
is_bag_item = 1,
name = "�ƽ�[һƷ]",
	value = 1,
BindType = "ImmediatelyBind",
--description="",
}
PETINFO = {
type=1,--������ɫ:��λƷ��123����ɫ����ɫ����ɫ����ϵ������������������������������ֵ
name = "�ƽ�",
name_color = "CEFFCE",
hp=1,
level=1,--��ʼ�ȼ�
petstar=0,--�����ǵ�
max_level=20,--��߳ɳ��ȼ�,ͨ��ѱ������
max_hp=1500, 
att=500,--�����ӳ�att
def=500,--��������def
exp_get=10,--�����üӳɣ�exp_get
PetMove=15012,--������BIN�ļ���
--lv=xx,�ڲ�,��ǰ�ȼ�
--exp=xx,�ڲ�,����
last_trlv=0,--�ϴ���������
}
--if(EquipInfo(10)==1)--����װ��λ
--LuaPetExp()--���ﾭ��
--LuaPetDelete()==1--ɾ������
--LuaPetQuery("max_level")--���ȼ�
