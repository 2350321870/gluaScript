function do_use()
if(LuaFreeBag()<10)then	LuaShowNotify("�����ٱ���@210@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")

if( LuaQueryTask("Tpresent")==0) then
  if(level>=5) then
   LuaSetTask("Tpresent",1) 
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ�����������������@!")
  LuaSay("��ʾ�������ﵽ@310��@0ʱ�����������þ����������������������Ѫ�ء�ħ�ص����������ɡ�")
  else
  LuaSay("��ʾ��5����򿪿ɻ�þ�������������������������������ɡ�")
  end
   
elseif(LuaQueryTask("Tpresent")==1) then
  if(level>=10) then
   LuaSetTask("Tpresent",2)
   LuaGive("o_state065j",1,"Tpresent")
   LuaGive("o_state068j",1,"Tpresent")   
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ������������������������Ѫ�ء�ħ�����ɡ�@!")
  LuaSay("��ʾ�������ﵽ@315��@0ʱ�����������þ����������������������Ѫ�ء�ħ�ص����������ɡ�")
  else
  LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��5�������������ﵽ@210��@0ʱ�����������þ����������������������Ѫ�ء�ħ�ص����������ɡ�")
  end    
elseif(LuaQueryTask("Tpresent")==2) then
  if(level>=15) then
   LuaSetTask("Tpresent",3)
   LuaGive("o_state065j",1,"Tpresent")
   LuaGive("o_state068j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent") 
   LuaGive("o_state098j",1,"Tpresent") 
  LuaSay("��ʾ����ϲ����������ߣ������������������������Ѫ�ء�ħ�ء�����ǩ���������ɡ�@!")
  LuaSay("��ʾ�������ﵽ@320��@0ʱ�����������þ����������������������Ѫ�ء�ħ�ء��ر�ͼ�����������ɡ�")
  else
  LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��10�������������ﵽ@215��@0ʱ�����������þ����������������������Ѫ�ء�ħ�ص����������ɡ�")
  end 

elseif(LuaQueryTask("Tpresent")==3) then
  if(level>=20) then
   LuaSetTask("Tpresent",4)
   LuaGive("o_state065j",1,"Tpresent")
   LuaGive("o_state068j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent")
   LuaGive("o_cangbaotu",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ������������������������Ѫ�ء�ħ�ء��ر�ͼ���ɡ�@!")
  LuaSay("��ʾ�������ﵽ@325��@0ʱ�����������û��굤��ǿ��ʯ�������������������������Ѫ�ء�ħ�ء��ر�ͼ�����������ɡ�")
  else
  LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��15�������������ﵽ@220��@0ʱ�����������þ����������������������Ѫ�ء�ħ�ء��ر�ͼ�����������ɡ�")
  end
elseif(LuaQueryTask("Tpresent")==4) then
  if(level>=25) then
  LuaSetTask("Tpresent",5)
   LuaGive("o_state016j",5,"Tpresent")
   LuaGive("o_ybsc002j",2,"Tpresent")
   LuaGive("o_state065j",1,"Tpresent")
   LuaGive("o_state068j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent")
   LuaGive("o_cangbaotu",2,"Tpresent") 
  LuaSay("��ʾ����ϲ����������ߣ����굤��ǿ��ʯ�������������������������Ѫ�ء�ħ�ء��ر�ͼ��@!")
  LuaSay("��ʾ�������ﵽ@330��@0ʱ�����������û��굤��תְ���ϴ������˱��С���������������������������������ɡ�")
  else
    LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��20�������������ﵽ@225��@0ʱ�����������û��굤��ǿ��ʯ�������������������������Ѫ�ء�ħ�ء��ر�ͼ�����������ɡ�")
  end

elseif(LuaQueryTask("Tpresent")==5) then
  if(level>=30) then
  LuaSetTask("Tpresent",6)
   LuaGive("o_state016j",5,"Tpresent")
   LuaGive("o_changeclass1y",1,"Tpresent")
   LuaGive("o_resetpoint1y",1,"Tpresent") 
   LuaGive("o_ybsc002j",1,"Tpresent")
   LuaGive("o_box002",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ����굤��תְ���ϴ���ǿ��ʯ�����˱��С�������������������������ɡ�@!")
  LuaSay("��ʾ�������ﵽ@335��@0ʱ�����������û��굤��תְ���ϴ������˱��С��м���������������������������������ɡ�")
  else
    LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��25�������������ﵽ@230��@0ʱ�����������û��굤��תְ���ϴ���ǿ��ʯ�����˱��С���������������������������������ɡ�")
  end
elseif(LuaQueryTask("Tpresent")==6) then
  if(level>=35) then
  LuaSetTask("Tpresent",7)
   LuaGive("o_state016j",10,"Tpresent")
   LuaGive("o_changeclass1y",1,"Tpresent")
   LuaGive("o_resetpoint1y",1,"Tpresent")  
   LuaGive("o_box002",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state010j",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ����굤��תְ���ϴ������˱��С��м�������������������������ɡ�@!")
  LuaSay("��ʾ�������ﵽ@340��@0ʱ�����������û��굤���������䡢���˱��С��м���������������������������������ɡ�")
  else
  LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��30�������������ﵽ@235��@0ʱ�����������û��굤��תְ���ϴ������˱��С��м���������������������������������ɡ�")
  end

elseif(LuaQueryTask("Tpresent")==7) then
  if(level>=40) then
  LuaSetTask("Tpresent",8)
   LuaGive("o_state016j",10,"Tpresent")
   LuaGive("o_box002",1,"Tpresent")
   LuaGive("o_box004j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state010j",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ����굤���������䡢���˱��С��м�������������������������ɡ�@!")
  LuaSay("��ʾ�������ﵽ@345��@0ʱ�����������û��굤�����˱��С��м���������������������������������ɡ�")
  else
  LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��35�������������ﵽ@240��@0ʱ�����������û��굤���������䡢���˱��С��м���������������������������ɡ�")
  end


elseif(LuaQueryTask("Tpresent")==8) then
  if(level>=45) then
  LuaSetTask("Tpresent",9)
   LuaGive("o_state016j",15,"Tpresent")
   LuaGive("o_box002",2,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state010j",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ����굤�����˱��С��м�������������������������ɡ�@!")
  LuaSay("��ʾ�������ﵽ@350��@0ʱ�����������û��굤���������䡢���˱��С��м���������������������������������ɡ�")
  else
  LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��40�������������ﵽ@245��@0ʱ�����������û��굤�����˱��С��м���������������������������ɡ�")
  end

elseif(LuaQueryTask("Tpresent")==9) then
  if(level>=50) then
  LuaSetTask("Tpresent",10)
   LuaGive("o_state016j",15,"Tpresent")
   LuaGive("o_box002",2,"Tpresent")
   LuaGive("o_box004j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state010j",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ����굤���������䡢���˱��С��м�������������������������ɡ�@!")
  LuaSay("��ʾ�������ﵽ@355��@0ʱ�����������û��굤��������תְ���ϴ������˱��С��߼���������������������������������ɡ�")
  else
  LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��45�������������ﵽ@250��@0ʱ�����������û��굤���������䡢���˱��С��м���������������������������ɡ�")
  end
elseif(LuaQueryTask("Tpresent")==10) then
  if(level>=55) then
  LuaSetTask("Tpresent",11)
   LuaGive("o_state016j",20,"Tpresent")
   LuaGive("o_changeclass1y",1,"Tpresent")
   LuaGive("o_resetpoint1y",1,"Tpresent")  
   LuaGive("o_ybsc001j",1,"Tpresent")
   LuaGive("o_box002",2,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state059j",1,"Tpresent")
  LuaSay("��ʾ����ϲ����������ߣ����굤��������תְ���ϴ������˱��С��߼�������������������������ɡ�@!")
  LuaSay("��ʾ�������ﵽ@360��@0ʱ�����������û��굤��תְ���ϴ����ƽ��䡢���˱��С��߼���������������������������������ɡ�")
  else
  LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��50�������������ﵽ@255��@0ʱ�����������û��굤��������תְ���ϴ������˱��С��߼���������������������������ɡ�")
  end

elseif(LuaQueryTask("Tpresent")==11) then
  if(level>=60) then
  LuaSetTask("Tpresent",99)
   LuaGive("o_state016j",20,"Tpresent")
   LuaGive("o_changeclass1y",1,"Tpresent")
   LuaGive("o_resetpoint1y",1,"Tpresent")  
   LuaGive("o_box002",2,"Tpresent")
   LuaGive("o_box005j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state059j",1,"Tpresent")
   LuaSay("��ʾ��@2���������@0������ȡ�������������Ѿ��ǿ��Զ���һ��Ĵ������ˡ�������һ��һͳ���°ɣ�ף����Ϸ��죡@!")
   return 1
  else
   LuaSay("��ʾ�����Ѿ���ȡ��@2���������@0��55�������������ﵽ@260��@0ʱ�����������û��굤��תְ���ϴ����ƽ��䡢���˱��С��߼���������������������������ɡ�")
  end
end

LuaOtherSendMenu()
end