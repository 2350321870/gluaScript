function do_use()
local a=floor(LuaItemStatusNormalCount("o_material_29")/2)
local b=floor(LuaItemStatusNormalCount("o_material_30"))
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=a+b+c*3+d*9+e*20
if (a>=1) then
	AddMenuItem("@21����ɺϳɽ�ɢ("..a..")��","nc_combine o_mix_book001 a","��ɢ�ϳ�")
	else
	AddMenuItem("1����ɺϳɽ�ɢ(0)��","nc_combine o_mix_book001 h","��ɢ�ϳ�")
end
if (b>=1) then
	AddMenuItem("@22����ɺϳɽ�ɢ("..b..")��","nc_combine o_mix_book001 b","��ɢ�ϳ�")
	else
	AddMenuItem("2����ɺϳɽ�ɢ(0)��","nc_combine o_mix_book001 h","��ɢ�ϳ�")
end
if (c>=1) then
	AddMenuItem("@23����ɺϳɽ�ɢ("..(c*3)..")��","nc_combine o_mix_book001 c","��ɢ�ϳ�")
	else
	AddMenuItem("3����ɺϳɽ�ɢ(0)��","nc_combine o_mix_book001 h","��ɢ�ϳ�")
end
if (d>=1) then
	AddMenuItem("@24����ɺϳɽ�ɢ("..(d*9)..")��","nc_combine o_mix_book001 d","��ɢ�ϳ�")
	else
	AddMenuItem("4����ɺϳɽ�ɢ(0)��","nc_combine o_mix_book001 h","��ɢ�ϳ�")
end
if (e>=1) then
	AddMenuItem("@25����ɺϳɽ�ɢ("..(e*20)..")��","nc_combine o_mix_book001 e","��ɢ�ϳ�")
	else
	AddMenuItem("5����ɺϳɽ�ɢ(0)��","nc_combine o_mix_book001 h","��ɢ�ϳ�")
end
--if (a>=1 or b>=1 or c>=1 or d>=1 or e>=1) then
--	AddMenuItem("@2ȫ����ϳɽ�ɢ("..gn..")��","nc_combine o_mix_book001 f","��ɢ�ϳ�")
--	else
--	AddMenuItem("ȫ����ϳɽ�ɢ(0)��","nc_combine o_mix_book001 h","��ɢ�ϳ�")
--end
LuaOtherSendMenu()
return 0 
end
function nc_combine(type)
local mon = 10
local a=floor(LuaItemStatusNormalCount("o_material_29")/2)
local b=floor(LuaItemStatusNormalCount("o_material_30"))
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=a+b+c*3+d*9+e*20
coin=LuaItemStatusNormalCount("coin")
if (type=="a")then
	if (a>=1 and coin >= mon) then
	if(LuaGive("o_drug_hp1",1))then
	DelItem("o_material_29",2)
	LuaAddJx("combat_exp",500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_29","��Ʒ","����",2) 
		LuaLogRecord("�ϳ�","o_drug_hp1","��Ʒ","���",1)
		LuaLogRecord("�ϳ�","o_drug_hp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɽ�ɢ(1)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(a==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="b")then
	if (b>=1 and coin >= mon) then
	if(LuaGive("o_drug_hp1",1))then
	DelItem("o_material_30",1)
	LuaAddJx("combat_exp",500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_30","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_hp1","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_hp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɽ�ɢ(1)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
	else
		if(b==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="c")then
	if (c>=1 and coin >= mon) then
	if(LuaGive("o_drug_hp1",3))then
	DelItem("o_material_31",1)
	LuaAddJx("combat_exp",1500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_31","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_hp1","��Ʒ","���",3) 
		LuaLogRecord("�ϳ�","o_drug_hp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɽ�ɢ(3)��")
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
	if(LuaGive("o_drug_hp1",9))then
	LuaAddJx("combat_exp",4500,"")
	DelItem("o_material_32",1)
	LuaGive("coin",-mon,"Tmixbook")
	do_use()--LuaShowNotify("�ϳɽ�ɢ(9)��")
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_hp1","��Ʒ","���",9) 
		LuaLogRecord("�ϳ�","o_drug_hp1","ͭ��","����",mon) 
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
	if(LuaGive("o_drug_hp1",20))then
	LuaAddJx("combat_exp",10000,"")
	DelItem("o_material_33",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_33","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_hp1","��Ʒ","���",20) 
		LuaLogRecord("�ϳ�","o_drug_hp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɽ�ɢ(20)��")
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
local tt=a+b+c+d+e
	if (a>=1 or b>=1 or c>=1 or d>=1 or e>=1 and coin >= mon*tt) then
	if(LuaGive("o_drug_hp1",gn))then
	DelItem("o_material_29",a*2)
	DelItem("o_material_30",b)
	DelItem("o_material_31",c)
	DelItem("o_material_32",d)
	DelItem("o_material_33",e)
	LuaAddJx("combat_exp",gn*500,"")
	LuaGive("coin",-mon*tt,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_29","��Ʒ","����",a*2)
		LuaLogRecord("�ϳ�","o_material_30","��Ʒ","����",b)
		LuaLogRecord("�ϳ�","o_material_31","��Ʒ","����",c)
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",d)
		LuaLogRecord("�ϳ�","o_material_33","��Ʒ","����",e) 
		LuaLogRecord("�ϳ�","o_drug_hp1","��Ʒ","���",gn) 
		LuaLogRecord("�ϳ�","o_drug_hp1","ͭ��","����",mon*tt) 
	LuaShowNotify("�ϳɽ�ɢ("..gn..")��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(a==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..(mon*tt).."��")
		end
	end
elseif(type=="h")then
	LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
	end
end