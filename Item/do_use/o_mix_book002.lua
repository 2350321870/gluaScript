function do_use()
local a=floor(LuaItemStatusNormalCount("o_material_29")/2)
local b=floor(LuaItemStatusNormalCount("o_material_30"))
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=a+b+c*3+d*9+e*20
if (a>=1) then
	AddMenuItem("@21����ɺϳɻش�¶("..a..")��","nc_combine o_mix_book002 a","�ش�¶�ϳ�")
	else
	AddMenuItem("1����ɺϳɻش�¶(0)��","nc_combine o_mix_book002 h","�ش�¶�ϳ�")
end
if (b>=1) then
	AddMenuItem("@22����ɺϳɻش�¶("..b..")��","nc_combine o_mix_book002 b","�ش�¶�ϳ�")
	else
	AddMenuItem("2����ɺϳɻش�¶(0)��","nc_combine o_mix_book002 h","�ش�¶�ϳ�")
end
if (c>=1) then
	AddMenuItem("@23����ɺϳɻش�¶("..(c*3)..")��","nc_combine o_mix_book002 c","�ش�¶�ϳ�")
	else
	AddMenuItem("3����ɺϳɻش�¶(0)��","nc_combine o_mix_book002 h","�ش�¶�ϳ�")
end
if (d>=1) then
	AddMenuItem("@24����ɺϳɻش�¶("..(d*9)..")��","nc_combine o_mix_book002 d","�ش�¶�ϳ�")
	else
	AddMenuItem("4����ɺϳɻش�¶(0)��","nc_combine o_mix_book002 h","�ش�¶�ϳ�")
end
if (e>=1) then
	AddMenuItem("@25����ɺϳɻش�¶("..(e*20)..")��","nc_combine o_mix_book002 e","�ش�¶�ϳ�")
	else
	AddMenuItem("5����ɺϳɻش�¶(0)��","nc_combine o_mix_book002 h","�ش�¶�ϳ�")
end
--if (a>=1 or b>=1 or c>=1 or d>=1 or e>=1) then
--	AddMenuItem("@2ȫ����ϳɻش�¶("..gn..")��","nc_combine o_mix_book002 f","�ش�¶�ϳ�")
--	else
--	AddMenuItem("ȫ����ϳɻش�¶(0)��","nc_combine o_mix_book002 h","�ش�¶�ϳ�")
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
	if(LuaGive("o_drug_mp1",1))then
	LuaAddJx("combat_exp",500,"")
	DelItem("o_material_29",2)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_29","��Ʒ","����",2) 
		LuaLogRecord("�ϳ�","o_drug_mp1","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_mp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɻش�¶(1)��")
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
	if(LuaGive("o_drug_mp1",1))then
	LuaAddJx("combat_exp",500,"")
	DelItem("o_material_30",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_30","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mp1","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_mp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɻش�¶(1)��")
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
	if(LuaGive("o_drug_mp1",3))then
	DelItem("o_material_31",1)
	LuaAddJx("combat_exp",1500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_31","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mp1","��Ʒ","���",3) 
		LuaLogRecord("�ϳ�","o_drug_mp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɻش�¶(3)��")
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
	if(LuaGive("o_drug_mp1",9))then
	DelItem("o_material_32",1)
	LuaAddJx("combat_exp",4500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mp1","��Ʒ","���",6) 
		LuaLogRecord("�ϳ�","o_drug_mp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɻش�¶(9)��")
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
	if(LuaGive("o_drug_mp1",20))then
	LuaAddJx("combat_exp",10000,"")
	DelItem("o_material_33",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_29","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mp1","��Ʒ","���",20) 
		LuaLogRecord("�ϳ�","o_drug_mp1","ͭ��","����",mon) 
	do_use()--LuaShowNotify("�ϳɻش�¶(20)��")
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
	if(LuaGive("o_drug_mp1",gn))then
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
		LuaLogRecord("�ϳ�","o_drug_mp1","��Ʒ","���",gn) 
		LuaLogRecord("�ϳ�","o_drug_mp1","ͭ��","����",mon*tt) 
	LuaShowNotify("�ϳɻش�¶("..gn..")��")
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