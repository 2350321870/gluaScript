NPCINFO = {
serial="110" ,
base_name="qinfeizi" ,
icon=2550,
NpcMove=2550,
name="������",
iconaddr=1 ,
butt="10|10|63" ,
lastsay="�Ϲ�����,�Ϲ�������" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
        local level= LuaQuery("level")
	AddTopSayMenuItem("�η�����","")
	if(LuaQuery("bjail")~= 0 ) then   --bjail��Ϊ���˱�ץ�����ɵ��ε�ʱ�� 
	AddTopSayMenuItem("����Խ��","yueyu")
	else
	AddTopSayMenuItem("���η�","huizhuan")
	end
	 AddTopSayMenuItem("ϴ��","Txili")
	AddTopSayMenuItem("����","liaotian")
  return 1  

elseif(answer=="liaotian") then
	LuaSay("�����䣺��������������ˮ�й�������˴ѵ�����ޣ��������������£��������У����ǲ����Ի���")
	
elseif(answer=="yueyu") then
        local dtime=floor(LuaQuery("bjail")/60)
	if(dtime<= 0) then 
	  if(LuaQuery("pk_state")<-19) then
	     LuaSetTask("pk_state",-19)
	     FlushPKState()
	  end
	LuaSay("�����䣺�����ںã����վȸ��³�ȥ�����շɻ��ڴ�ʱ�����ǵ����µ��ౡ֮������ɡ�")
	LuaSet("bjail",0)
	ChangeMap("lu_tyj",120,192)
	else
	LuaSay("�����䣺Ӣ�ۣ�������Ľ��ܾ��ˣ�����ǽ�����˸����������Ӷݣ�����@3"..dtime.."����@0���ں��ˡ�")
	LuaSay(""..LuaQueryStr("name").."���ã���ʱ���������㣬���еĻ�����ү�ͻ������㣡")
	end       
elseif(answer=="huizhuan") then    
	ChangeMap("lu_tyj",120,192)
	
elseif(answer=="Txili") then
   if(LuaQuery("pk_state")<=-10)  then
    LuaSay("������:������ˡ���һ�����,���Ա�����,�һ�����ϴˢ���Ļ���")
    LuaSay("������:�����ѡ��ϴˢ1�㡢5�㡢10���pkֵ")
    AddMenuItem("�б�","","")
    AddMenuItem("һ��","one","")
    AddMenuItem("���","five","")
    AddMenuItem("ʮ��","ten","")
   else
    LuaSay("������:�㲻��Ҫϴ��,ʩ����Ҫ�����Ժ�")
   end

    elseif(answer=="one") then
    local level= LuaQuery("level")
    local jinqian=(level*10)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",1)
     LuaSay("��ʾ:pkֵ����1")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	else
	 LuaSay("������:����Ҫ@3"..jinqian.."@0ͭ�ҷ���ϴ@31��pkֵ")
	 end
	

    elseif(answer=="five") then
    local level= LuaQuery("level")
    local jinqian=(level*50)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",5)
     LuaSay("��ʾ:pkֵ����5")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	else
	 LuaSay("������:����Ҫ@3"..jinqian.."@0ͭ�ҷ���ϴ@35��pkֵ")
	 end

    elseif(answer=="ten") then
    local level= LuaQuery("level")
    local jinqian=(level*100)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",10)
     LuaSay("��ʾ:pkֵ����10")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	 else
	 LuaSay("������:����Ҫ@3"..jinqian.."@0ͭ�ҷ���ϴ@310��pkֵ")
	 end
	
	
end
LuaSendMenu()
return 1
end