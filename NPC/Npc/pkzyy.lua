NPCINFO = {
serial="99" ,
base_name="pkzyy" ,
icon=2558,
NpcMove=2558 ,
name="PKָ��Ա" ,
iconaddr=1 ,
butt="10|10|65" ,
lastsay="���鲻ְͬҵ��ˬ��PK" , 
LuaType=1,
}
function do_talk(answer)             
if (answer=="ask") then 	
	AddTopSayMenuItem("@7PK˵��","")
	AddTopSayMenuItem("@3��ְͬҵ����","class")
	AddTopSayMenuItem("@3PK����","guize")
	AddTopSayMenuItem("@3PK�ͷ�","chengfa")
	AddTopSayMenuItem("@3���PK","how")
	---PK�ͷ�
	AddTopSayMenuItem("����","liaotian","1")
return 1
    
elseif(answer=="liaotian") then
    LuaSay("PKָ��Ա����PK��������")

elseif(answer=="class") then
	   AddMenuItem("@7��ְͬҵ","")
	   if(LuaQueryStr("class")~="wu") then
           AddMenuItem("����","xiake")
	   end
	   if(LuaQueryStr("class")~="xian") then
           AddMenuItem("ıʿ","moushi")
	   end
	   if(LuaQueryStr("class")~="shen") then
           AddMenuItem("սʿ","zhanshi")
	   end
		
		elseif(answer=="xiake") then
		LuaSet("class","wu")      
		ResetSkill()              
		LuaResetPoint()
		FlushMyInfo("0") 

		elseif(answer=="moushi") then
		LuaSet("class","xian")      
		ResetSkill()              
		LuaResetPoint()
		FlushMyInfo("0")

		elseif(answer=="zhanshi") then
		LuaSet("class","shen")      
		ResetSkill()              
		LuaResetPoint()
		FlushMyInfo("0")

elseif(answer=="chengfa") then
    LuaSay("@3��ɱ������ʿ�������ܵ�PK�ͷ���ɱ����PKֵ����-20ʱ������������ᱻץ�����")
    LuaSay("@3��ɱ������ʿ�������ܵ��κγͷ�")

elseif(answer=="guize") then
    LuaSay("PKָ��Ա��Ϊ�˱����������ǿŴ������ģ�12��ǰ�����ܽ���PK")

elseif(answer=="how") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("@7����@0����������Ҹ���@3������Ͻǵ�PK������ʱ�ᵯ�����֣�ѡ���Ӧ���ֺ�������˸����")
		LuaSay("@7������״̬@0��Ϊ������Ҹ��ܵ�ˬ���PK������״̬�£�˫�����ƶ��ٶȶ��������ֱ������״̬ȡ������ͼ��15��Żָ�������")
	else	
		LuaSay("@7����@0����������Ҹ���@3��ȷ�ϼ����ٰ��Ǻż�@0����ʱ�ᵯ�����֣�ѡ���Ӧ���ֺ�������˸����")
		LuaSay("@7������״̬@0��Ϊ������Ҹ��ܵ�ˬ���PK������״̬�£�˫�����ƶ��ٶȶ��������ֱ������״̬ȡ������ͼ��15��Żָ�������")
	end    
    LuaSay("@7����@0��������Һ󣬾;���Ĺ����ɣ���ͨ����������һ���Ե�ȫ����ȥ")

end
LuaSendMenu()
return 1
end