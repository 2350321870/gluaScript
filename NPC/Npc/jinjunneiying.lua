NPCINFO = {
serial= "300" ,
base_name="jinjunneiying",
icon= 2524,
NpcMove=2524,
name= "������Ӧ" ,
iconaddr=1, 
butt="5|5|63", 
name_color = "CEFFCE", 
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
       havetask =0
	AddTopSayMenuItem("@7�����б�","")
		AddTopSayMenuItem("�˽����","DZAH")
		AddTopSayMenuItem("�ܵ�����","MDCS")
		AddTopSayMenuItem("����","liaotian")


--------------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("������Ӧ:����ͷ���Ҳ����������ڵ�̯���ᱻ�ǹ��ᣬ���������NPC��")   --����

--------------------------------------------------------------------------------
elseif(answer=="DZAH")then
		LuaSay("������Ӧ�������ǵػ�������")
		LuaSay(""..LuaQueryStr("name").."�����������������")
		LuaSay("������Ӧ�����ÿ�Ӳ���ǵ�̫��������")                ----����Ŀ�ȥ���� 
		LuaSay(""..LuaQueryStr("name").."������Ŷ������˭�����޶�ë���أ�����")
		LuaSay("������Ӧ��������ˣ�@4�嶷ɽ@0�ϵ�@3�Ѿ�����@0����������û�����Ǵ򲻹��ģ���������Ȼ�ɱ@3100�Ѿ�@0֤������ʵ����")
		LuaSay("������Ӧ��С�˻��и����֣������ɱ@3�Ѿ�ʿ��@0���һ��@3�Ѿ�����@0���Ի��Ѿ�������@4�嶷ɽ@0��ɱ@3�Ѿ�����@0�ѶȻ�ͺܶ࣡")
		UpdateMenu()
elseif(answer=="MDCS")then
	local num=LuaQueryTask("task_kill/mon_115/Twdspl_1")-1
	if(num>=100) then   ---------Ϊ�˲��Է���  Ҫ��ӦΪ100
	LuaSay("������Ӧ���������Ǻ����֣�С����ͽ����˴��ܵ����͵��嶷ɽ��") 
		if(LuaItemCount("o_mission413")>=1) then 
		LuaSetTask("fb40ji_wdspl01",1)
		else
		LuaSetTask("fb40ji_wdspl01",0)
		end
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("@3��","Twdspl_1_no")
	AddMenuItem("@3�����嶷ɽ","Twdspl_1_yes")
 	else
    LuaSay("������Ӧ�������ڵĶ����Ѿ�������Ѿ�ʿ��@3"..num.."����")
    LuaSay("������Ӧ��ʵ�����㣬ðȻ�����嶷ɽ������һ������ʲô���飬С�Ŀɳ��ﲻ�𰡣�")
	 end
elseif(answer=="Twdspl_1_no")then 
	local num=LuaQueryTask("task_kill/mon_115/Twdspl_1")-1
	LuaSay("������Ӧ�������ڵĶ����Ѿ�������Ѿ�ʿ��@3"..num.."����") 
elseif(answer=="Twdspl_1_yes")then  
	ChangeMap("lu_wdspl_2")                                                                                   
end
LuaSendMenu()
return 1
end    	