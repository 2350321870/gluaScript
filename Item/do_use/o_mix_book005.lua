function do_use()
local c=floor(LuaItemStatusNormalCount("o_material_31")/2)
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=c+d+e*3
if (c>=1) then
	AddMenuItem("@23����ɺϳ�С����("..c..")��","nc_combine o_mix_book005 c","С�����ϳ�")
	else
	AddMenuItem("3����ɺϳ�С����(0)��","nc_combine o_mix_book005 h","С�����ϳ�")
end
if (d>=1) then
	AddMenuItem("@24����ɺϳ�С����("..(d*3)..")��","nc_combine o_mix_book005 d","С�����ϳ�")
	else
	AddMenuItem("4����ɺϳ�С����(0)��","nc_combine o_mix_book005 h","С�����ϳ�")
end
if (e>=1) then
	AddMenuItem("@25����ɺϳ�С����("..(e*9)..")��","nc_combine o_mix_book005 e","С�����ϳ�")
	else
	AddMenuItem("5����ɺϳ�С����(0)��","nc_combine o_mix_book005 h","С�����ϳ�")
end
--if (c>=1 or d>=1 or e>=1) then
--	AddMenuItem("@2ȫ����ϳ�С����("..gn..")��","nc_combine o_mix_book005 f","С�����ϳ�")
--	else
--	AddMenuItem("ȫ����ϳ�С����(0)��","nc_combine o_mix_book005 h","С�����ϳ�")
--end
LuaOtherSendMenu()
return 0 
end
function nc_combine(type)
local mon = 45
local c=floor(LuaItemStatusNormalCount("o_material_31")/2)
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=c+d+e*3
coin=LuaItemStatusNormalCount("coin")
if (type=="c")then
	if (c>=1 and coin >= mon) then
	if(LuaGive("o_drug_mhp1",1))then
	DelItem("o_material_31",2)
	LuaAddJx("combat_exp",4500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_31","��Ʒ","����",2) 
		LuaLogRecord("�ϳ�","o_drug_mhp1","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_mhp1","ͭ��","����",mon) 
	LuaShowNotify("�ϳ�С����(1)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(c==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="d")then
	if (d>=1 and coin >= mon) then
	if(LuaGive("o_drug_mhp1",1))then
	LuaAddJx("combat_exp",4500,"")
	DelItem("o_material_32",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mhp1","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_mhp1","ͭ��","����",mon) 
	LuaShowNotify("�ϳ�С����(1)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(d==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="e")then
	if (e>=1 and coin >= mon) then
	if(LuaGive("o_drug_mhp1",3))then
	LuaAddJx("combat_exp",13500,"")
	DelItem("o_material_33",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_33","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mhp1","��Ʒ","���",3) 
		LuaLogRecord("�ϳ�","o_drug_mhp1","ͭ��","����",mon) 
	LuaShowNotify("�ϳ�С����(3)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(e==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="f")then
local tt=c+d+e
	if (c>=1 or d>=1 or e>=1 and coin >= mon*tt) then
	if(LuaGive("o_drug_mhp1",gn))then
	LuaAddJx("combat_exp",gn*4500,"")
	DelItem("o_material_31",c)
	DelItem("o_material_32",d)
	DelItem("o_material_33",e)
	LuaGive("coin",-mon*tt,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_31","��Ʒ","����",c) 
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",d) 
		LuaLogRecord("�ϳ�","o_material_33","��Ʒ","����",e) 
		LuaLogRecord("�ϳ�","o_drug_mhp1","��Ʒ","���",gn) 
		LuaLogRecord("�ϳ�","o_drug_mhp1","ͭ��","����",mon*tt) 
	LuaShowNotify("�ϳ�С����("..gn..")��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(f==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..(mon*tt).."��")
		end
	end
elseif(type=="h")then
	LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
	end
end