NPCINFO = {
name="ͭǮ��",
butt="0|0|24",
isboss = 2, 
serial= "981",
icon= 10002,--���ﶯ��ͼƬ
NpcMove= 10002, --���ﶯ���ļ�
iconaddr= 1,
maxnum= 1,--��õ���Ʒ�������������booty�ֶ�����Ʒ����
booty= "o_material_38",
getrate= 100,--��ü���
bootyrate="100",
gettime= 1, --�ɻ�ô���
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
  if(LuaQuery("level")<30) then
  lv_money=200
  elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  lv_money=500
  elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  lv_money=1000
  elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  lv_money=1500
  elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  lv_money=2000
  elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  lv_money=2500                                                             
  elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  lv_money=3500
  elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  lv_money=5000
  end
  local num=lv_money+LuaRandom(100)+LuaQuery("level")
if(LuaQueryTask("FBTG")==10 and LuaQueryTask("FBTGJL")==10 )then
	LuaGive("coin",num,"FBTGJL1")
	LuaSetTask("FBTG",11)
elseif(LuaQueryTask("FBTG")==11)then
	LuaGive("coin",num,"FBTGJL1")
	LuaSetTask("FBTG",12)
elseif(LuaQueryTask("FBTG")==12)then
	LuaGive("coin",num,"FBTGJL1")
	LuaSetTask("FBTG",13)
elseif(LuaQueryTask("FBTG")==13)then
	LuaGive("coin",num,"FBTGJL1")
	LuaSetTask("FBTG",14)
	LuaSay("���Ѿ���@34��@0�ˣ���������@32��@0�ˣ�����@36��@0�����ڽ��ᱻ�Զ����ͳ�ȥ��")
elseif(LuaQueryTask("FBTG")==14)then
	LuaGive("coin",num,"FBTGJL1")
	LuaSetTask("FBTG",15)
elseif(LuaQueryTask("FBTG")==15)then
	LuaGive("coin",num,"FBTGJL1")
	LuaSetTask("FBTG",99)
	LuaSay("���Ѿ�����@36��@0�ˣ����������ˣ����ڽ��ᱻ�Զ����ͳ�ȥ��")
elseif(LuaQueryTask("FBTG")==99)then
	LuaSay("���Ѿ�����@36��@0�ˣ����������ˣ����ڽ��ᱻ�Զ����ͳ�ȥ��")
	ChangeMap("lu_jkc")
end
LuaOtherSendMenu()
return 1
end