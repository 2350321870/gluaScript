NPCINFO = {
serial= "185" ,
base_name="Mrongrenld",
icon= 2699, 
NpcMove=2699, 
name= "��" , 
level=10 ,
iconaddr=1, 
butt="1|1|1", 
name_color = "CEFFCE" ,
LuaType=1,
}
  function do_talk(answer)
   if (answer=="ask") then
    if(LuaQueryTask("Tmrongrenld")==0)  then
    LuaSetTask("Tmrongrenld",99)
    LuaSay("����Ư������ˮ���ϣ�������һȺ�������ǵ����ˣ��Դ����ص��������Ȩ�����ﲻ֪�ιʷ����˾ޱ䡣")
    LuaSay("���˱�һȺа����������Ŷ��ߣ������������@3а��ţ���ڰ���ʦ������ħ@0�����ص���в�Ÿ侩���յİ�ȫ")
    end
end
LuaSendMenu()
return 1
end