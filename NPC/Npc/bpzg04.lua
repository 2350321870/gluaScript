NPCINFO = { 
serial="60" ,
base_name="bpzg04" ,
icon=2567,
NpcMove=2567 ,
name="������" ,
iconaddr=1 ,
butt="10|15|62" ,

lastsay="�����������������꣡",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7ѡ��","")
	AddTopSayMenuItem("@3���ʹ���","Twzgj")
	--AddTopSayMenuItem("@3�ﹱ������","bghjl")
        AddTopSayMenuItem("@3ս��Ѳ��","Tpt5")
	AddTopSayMenuItem("@3�뿪��ͼ","Tpt6")
	AddTopSayMenuItem("@3����","liaotian ")

	return 1
--------------------------------------------------------------------------------------------------------------------		
elseif(answer=="liaotian")then
	LuaSay("��ǰ���¹⣬���ǵ���˪����ͷ�����£��ҽе����ţ�")
elseif(answer=="Twzgj") then 
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("Twzgjday")) then
		LuaSetTask("Twzgj",0)
	end
	if(LuaQueryTask("Twzgj")==0) then
		if(level>14) then
			LuaSay("��ʾ������δ���������У�����@3��ֵ1w6��20����ҩ��20����ҩ@0������ҩƷ���޷��������˵�Ŷ") 
			LuaSetTask("Twzgj",99)
			LuaSetTask("Twzgjday",GetCurrentDay())
			LuaGive("o_drug_hp4",20,"Twzgj")
			LuaGive("o_drug_mp4",20,"Twzgj")
		else
			LuaSay("��ʾ���ﵽ15������ң�ÿ�տ���ȡ��ֵ1w6��ҩƷ")
		end
	else
		LuaSay("��ʾ�����Ѿ���ȡ�˽����ҩƷ���ͣ�����������")
	end
elseif(answer=="bghjl")then
	if(GetCurrentDay()~=LuaQueryStrTask("bghjlday"))then 
		LuaSetTask("bghjl",0)
	else
		LuaSay("һ��ֻ�ܶһ�һ�Σ�һ������10��ﹱ���㻹���������ɣ�ע���Լ��Ƿ��аﹱ��")
	end
	if(LuaQueryTask("bghjl")==0)then
		GetEquipByOffer() 
		LuaSay("��ķ�10��ﹱ��ȡ�˽�����һ��ֻ��һ�λ��ᣬлл�ݹ�!")
		LuaSetTask("bghjlday",GetCurrentDay())
		LuaSetTask("bghjl",99)
	else
		LuaSay("�����Ķһ������ù���")
	end

elseif(answer=="Tpt5")then 
	if(LuaQueryTask("Tpt5")==1)then
		LuaSay("Ŷ,��λ�ֵܣ��ҿ���ü�����������֯���������ˣ�������֯�ϻ�û�����ң���������ս���������ٻظ���ͷ�콱���ˣ�������Ȼ���ˣ��������Ƿ�����ΪС�ܽ�����BOSS���ɵ�һ����")
		LuaSetTask("Tpt5",2)
	elseif(LuaQueryTask("Tpt5")==2)then
		LuaSay("Ŷ,��λ�ֵܣ��㻹����ȥ������������ս����վ�м䣬ÿ�춼������ԩ��������������ѽ��")
        elseif(LuaQueryTask("Tpt5")==99)then
		LuaSay("Ŷ,��λ�ֵܣ������������ˣ������������")
	else
		LuaSay("С�ӣ����ĸ���λ�ģ������������ѵ������ʱ��@3ս��ʹ��@0û������������ǿ����з��Ľ���ѽ")
	end
    
elseif(answer=="Tpt6")then
	ChangeMap("lu_jkc")
---------------
end 
LuaSendMenu()
return 1
end 
