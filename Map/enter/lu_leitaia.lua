ans = {} 	
function OnEnter()
ans.rtype = 1
LuaSetTask("Tflag_pk",1)
  if(LuaQueryTask("Thx2")==6) then
	       if(LuaQueryTask("Thx2G")==0) then
	       LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ��ذϹ�ɡ�@!")
	       LuaSetTask("Thx2G",99)
	       end
      end
   
 -- if(LuaItemStatusNormalCount("o_mission165")>0)then
  local a=LuaItemStatusNormalCount("o_mission212")
  local b=LuaItemStatusNormalCount("o_mission213")
  local c=LuaItemStatusNormalCount("o_mission214")
   local d=LuaItemStatusNormalCount("o_mission514")
if(a>0)then
	DelItem("o_mission212",a)
	LuaLogRecord("������̨","o_mission212","ɾ��","��ת",a)
	LuaAddTask("Tjzcount",a)
end
if(b>0)then
	DelItem("o_mission213",b)
	LuaLogRecord("������̨","o_mission213","ɾ��","��ת",b)
	LuaAddTask("Tyzcount",b)
end
if(c>0)then
	LuaPrint("�ϴ���Ŀ "..LuaQueryTask("Ttzcount").." ������Ŀ"..c.."")
	DelItem("o_mission214",c)
	LuaLogRecord("������̨","o_mission214","ɾ��","��ת",c)
	LuaAddTask("Ttzcount",c)
end
if(d>0)then
	DelItem("o_mission514",d)
	LuaLogRecord("������̨","o_mission514","ɾ��","����",d)
	LuaAddTask("Tszcount",d)
end
 -- end
LuaOtherSendMenu()
return ans.rtype
end
