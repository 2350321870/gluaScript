ans = {}
function OnEnter()
  ans.rtype = 1
  local T592=LuaQueryTask("T592")
  local T602=LuaQueryTask("T602")
  if(LuaQueryTask("T592")==99 and LuaQueryTask("T602")==0) then
    LuaSay("��Ⱥ���ɭ�����������������ô���������Ҹ���������̽�������")
    LuaSay("�Ƿ��������@3��̽��ʦ��֧�ߡ�@0")
    AddTopSayMenuItem("@7��","yes")
    AddTopSayMenuItem("@7��","no")
  end
  
  if(answer=="yes")then
    LuaSetTask("T602",1)
    AddLog("��̽��ʦ��֧�ߡ�",T602)
	UpdateMenu()
	UpdateNPCMenu("xiezuwushi")
   else
	LuaSay(""..LuaQueryStr("name").."�����������Ķ��������ģ�")
  end
  
if(QueryAchievement("Tcj3_006")==0 and  LuaQuery("level")>=35) then
	LuaSay("��ϲ���һ������@3ʳ�˹�@0����óɾ�@5̽��!ʳ�˹�@0��")
	LuaSetAchievementSchedule("Fristmap_srg",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_006",LuaQueryAchievementSchedule("Fristmap_srg"))
	ans.rtype = 1
	LuaOtherSendMenu()
end

 return ans.rtype
end