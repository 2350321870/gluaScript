NPCINFO = {
name="�ǻ۷�+50",
butt="0|0|40",
isboss = 3,--����Ϊ3 ���Ϊ2 bossΪ1 
serial= "1000" ,
icon= 10525,
NpcMove= 10525,
iconaddr= 1, --��Դ�ļ����ŵ�λ��,1:Ϊ������.0Ϊ�ͻ���
maxnum=2,--��õ���Ʒ�������������booty�ֶ�����Ʒ����
booty= "o_seed046|o_state022j",--��õ���Ʒ1��ֻ�ܲɵ�����һ����2�����Ͽɲ���Ӧ��Ʒgettime��
growntime= "14400",  --�ɳ�ʱ�� 
getrate=100,--�ɼ��ɹ��ļ���
bootyrate="100|100",  --��Ʒ��ȡ����
gettime= 1,    --�ܲɼ�����
getlevel= 1,   --�ɼ��ȼ� 
candig=1,     
--growlevel=3,      
maxgrowlevel=2,
maxact=2,
protecttime=600,		--�����ı���ʱ�䣬��λ��   10��
insectstime=300,		--�ų�ļ��ʱ�䣬��λ��      5��
insectscut=240,			--�ų�ɹ��۵���ֲʱ�䣬��λ��   4��
grasstime=1200,			--���ݵļ��ʱ�䣬��λ��    12�� 
grassadd=720,			--���ݳɹ��ӵ���ֲʱ�䣬��λ��  48�� 
}
--�ɼ����� ���� id: ֲ���id��answer����ҵ�Ĳ˵���ʹ�ü��ܵĲ˵�Ϊtalk 
--����ֵ 1�ɼ��ɹ���0�ɼ�ʧ��
function OnDig(id, answer)
local ret = 1
local name = LuaPlantHost(id) --��ֲ�˵�����
	--LuaPrint(name)
if (answer == "talk") then
	--LuaPrint("OnDig_talk")
	LuaSay("��ʾ��@1ÿ�ζ��������ģ��ɼ�ǰ���ѯֲ��״̬��ȷ�����Բɼ�����Ʒ��Ȼ���ٲɼ�@0")
	AddMenuItem("�ɼ�","DoSkillDig " .. id .. " " .. "yes", "�Ƿ�ɼ�")
	AddMenuItem("���ɼ�","DoSkillDig " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then
	--LuaPrint("OnDig_yes")
  	local name = LuaPlantHost(id)
 if(name==LuaQueryStr("name")) then
	if(LuaItemStatusNormalCount("o_mission518")>4 and LuaItemStatusNormalCount("o_mission520")>4)then
			LuaSay("��ʾ���ɼ��ɹ���������ȫ����@2�ɼ�ʯ@0��@2�ɼ���ʯ@0")
			DelItem("o_mission518",LuaItemStatusNormalCount("o_mission518"),"newzz")
			DelItem("o_mission520",LuaItemStatusNormalCount("o_mission520"),"newzz")
			LuaLogRecord("��Ϸ��Ϊ","��ɫ","����ֲ","��ʯ�ɼ�045",1)
    elseif(LuaItemStatusNormalCount("o_mission518")>4 and LuaItemStatusNormalCount("coin")>10000) then
    		LuaSay("��ʾ���ɼ��ɹ���������ȫ����@2�ɼ�ʯ@0��10000ͭ��")
    		DelItem("o_mission518",LuaItemStatusNormalCount("o_mission518"),"newzz")
    		LuaGive("coin",-10000,"newzz")
    		LuaLogRecord("��Ϸ��Ϊ","��ɫ","����ֲ","ͭ�Ҳɼ�045",1)
    else
    		LuaSay("��ʾ���ɼ�һ����Ҫ����5��@2�ɼ�ʯ@0��5��@2�ɼ���ʯ@0����5��@2�ɼ�ʯ@0��10000ͭ�ң��ɼ�ʧ�ܡ�")
    		LuaSay("��ʾ��@2�ɼ�ʯ@0ֻ��ͨ�����Լ�ֲ��@2����@0��ã�@2�ɼ���ʯ@0ֻ��ͨ���Ա���ֲ��@2�ų�@0���.")
			ret = 0
    end
 else
 	if(LuaItemStatusNormalCount("o_mission520")>9)then
 		 LuaSay("��ʾ���ɼ��ɹ���������ȫ����@2�ɼ���ʯ@0")
         DelItem("o_mission520",LuaItemStatusNormalCount("o_mission520"),"newzz")
         LuaLogRecord("��Ϸ��Ϊ","��ɫ","����ֲ","�ų�ɼ�045",1)
    elseif(LuaItemStatusNormalCount("coin")>20000) then
    	 LuaSay("��ʾ���ɼ��ɹ���������20000ͭ�ҡ�")
    	 LuaGive("coin",-20000,"newzz")
    	 LuaLogRecord("��Ϸ��Ϊ","��ɫ","����ֲ","ͭ�Ҳɼ�����045",1)
    else
    	LuaSay("��ʾ���ɼ�һ����Ҫ����10��@2�ɼ���ʯ@0����20000ͭ�ң��ɼ�ʧ�ܡ�")
    	LuaSay("��ʾ��@2�ɼ���ʯ@0ֻ��ͨ��@2�ų�@0���.")
    	ret = 0
    end
end
elseif (answer == "no") then
	--LuaPrint("OnDig_no")
	--LuaSay("������˲ɼ���")
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
	--LuaPrint("OnGrass_talk")
	AddMenuItem("����","Grass " .. id .. " " .. "yes", "�Ƿ����")
	AddMenuItem("������","Grass " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then
	--LuaPrint("OnGrass_yes")
	local name = LuaPlantHost(id)
 if(name==LuaQueryStr("name")) then
	if(LuaItemStatusNormalCount("o_mission517")<5) then
	  LuaSay("��ʾ�����ݿ��Դ������ֲ��ɳ���һ����Ҫ����5��@2���ݼ�@0,���ݼ����㣬����ʧ��")
	  LuaSay("��ʾ��@2���ݼ�@0�����ڽ����������嶷ɽ��ɽկ��ֻ�ȡ�����й�����Ч��")
	  ret = 0
   	else
  	  LuaSay("��ʾ�����ݳɹ���ֲ�ﳤ���˺ܶ࣬������5��@2���ݼ�@0,���1��@2�ɼ�ʯ@0")
	  DelItem("o_mission517",5,"newzz")
      LuaGive("o_mission518",1,"newzz")
      LuaLogRecord("��Ϸ��Ϊ","��ɫ","����ֲ","����045",1)
  	end
 else
      LuaSay("��ʾ�������Լ���ֲ����ܳ���")
	  ret = 0
 end
elseif (answer == "no") then
	--LuaPrint("OnGrass_no")
	--LuaSay("������˳��ݣ�")
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
	--LuaPrint("OnInsects_talk")
	AddMenuItem("�ų�","Insects " .. id .. " " .. "yes", "�Ƿ�ų�")
	AddMenuItem("���ų�","Insects " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then

	--LuaPrint("OnInsects_yes")
 	if(LuaItemStatusNormalCount("o_mission519")<5) then
	  LuaSay("��ʾ���ų�ή��ֲ��ɳ��ٶȣ�һ����Ҫ����5��@2����@0,���Ӳ��㣬�ų�ʧ��")
	  LuaSay("��ʾ��@2����@0�����ڽ����������嶷ɽ��ɽկ��ֻ�ȡ�����й�����Ч��")
	  ret = 0
   	else
  	  LuaSay("��ʾ���ų�ɹ���ֲ�����������ˣ�������5��@2����@0,���1��@2�ɼ���ʯ@0")
  	  local name = LuaPlantHost(id)
  	  LocalMsg("@2"..LuaQueryStr("name").."@0��@3"..name.."@0��ֲ��@3������+50@0����5ֻ���׵ĳ��ӡ�")
	  DelItem("o_mission519",5,"newzz")
      LuaGive("o_mission520",1,"newzz")
       LuaLogRecord("��Ϸ��Ϊ","��ɫ","����ֲ","�ų�045",1)
  	end

elseif (answer == "no") then
	--LuaPrint("OnInsects_no")
	--LuaSay("������˷ų棡")
	ret = 0
end
LuaOtherSendMenu()
return ret
end
