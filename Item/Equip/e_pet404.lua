ITEMINFO = {
list_icon = 34,
wield_position = 10,
type = "pet",
is_bag_item = 1,
name = "@2�ƽ�[��Ʒ]@0",
	value = 1,
BindType = "ImmediatelyBind",
--description="",
}
PETINFO = {
type=1,--������ɫ:��λƷ��123����ɫ����ɫ����ɫ����ϵ������������������������������ֵ
name = "@2�ƽ�@0",
name_color = "CEFFCE",
hp=1,
level=20,--��ʼ�ȼ�
petstar=4,--�����ǵ�
max_level=90,--��߳ɳ��ȼ�,ͨ��ѱ������
max_hp=5500, 
att=900,--�����ӳ�att
def=900,--��������def
exp_get=50,--�����üӳɣ�exp_get
PetMove=15012,--������BIN�ļ���
--lv=xx,�ڲ�,��ǰ�ȼ�
--exp=xx,�ڲ�,����
last_trlv=0,--�ϴ���������
}
--if(EquipInfo(10)==1)--����װ��λ
--LuaPetExp()--���ﾭ��
--LuaPetDelete()==1--ɾ������
--LuaPetQuery("max_level")--���ȼ�
