NPCINFO = { 
serial="172" ,
base_name="bpzg03" ,
icon=2502,
NpcMove=2502,
name="���⹫" ,
iconaddr=1 ,
butt="10|15|64" ,
lastsay="ʩ�ʻ���Ͷ��������һ�����⣡",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local map=MapName()
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("T299")==1 or LuaQueryTask("T299")==2)then
		AddTopSayMenuItem("@2�а����ء����顿","T299")
		havetask=2
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_12")==1 or LuaQueryTask("TfindNPC_12")==2)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_12")==98)then
		AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
	end

	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
		AddTopSayMenuItem("@3�а�����","test1")
		AddTopSayMenuItem("@3�����Լ�������","test2")
		AddTopSayMenuItem("@3��÷���","test3") 
	end
	AddTopSayMenuItem("@3�鿴��԰����","test4")
	AddTopSayMenuItem("@3��ֲ԰˵��","test5")

elseif(answer=="test1")then
	refresh() 
	LuaSetTemp("n1",getland())
	local n1=LuaQueryTemp("n1")
	if(n1<21)then
		LuaSay("��"..n1.."���û������Ը��а�����")
		AddMenuItem("��ѡ������","")
		AddMenuItem("�а�(1000ͭ��)","cb")
		AddMenuItem("����","fq")
	else
		LuaSay("�Ѿ�û�ж���ĵع���а��ˣ�������ƻ����˵�ũ�����������Ʋ���")
	end
elseif(answer=="cb")then
	local map=MapName()
	local n1=LuaQueryTemp("n1")
	if(LuaPublicQuery(""..map.."/"..n1.."/gs")==0)then
		if(LuaItemCount("coin") >=1000)then
			LuaPublicSet(""..map.."/"..n1.."/gs",1)
			LuaPublicSetStr(""..map.."/"..n1.."/winid",LuaQueryStr("name"))
			LuaPublicSet(""..map.."/"..n1.."/cbq",100)
			LuaPublicSet(""..map.."/"..n1.."/exp",1000)
			LuaPublicSet(""..map.."/"..n1.."/bh",0)
			LuaPublicSet(""..map.."/"..n1.."/time",GetCurrentTime())
			LuaGive("coin",-1000,"Tzzy")
			--LuaDelTask("o_gold1y",1)
		else
			LuaSay("����ͭ�Ҳ��㣡�а����سа���1000ͭ������౶��Ǯ����������ͣ��㶮�ģ�")
		end
	else
		LuaSay("�õ��Ѿ��а����ˣ�")
	end
elseif(answer=="fq")then
	LuaSay("�а������������൱���ġ�������˵�ũ���а��ڵ�0ʱ�������������а��ǿ����أ�")   
elseif(answer=="test2")then         --�鿴�Լ�������
	AddMenuItem("��ѡ������","")
	AddMenuItem("�鿴","ck")
	AddMenuItem("�뱣��","bh")
elseif(answer=="test3")then          --������� ��ש���Ի�
	AddMenuItem("��ѡ������","")
	AddMenuItem("����10����(1ͨ��)","gm1")
	AddMenuItem("����10������5��ҩ(1ͨ��)","gm2")
	AddMenuItem("������ѻ�ȡ","rwhd")
     
elseif(answer=="test4")then        --�鿴����
	landlist()
elseif(answer=="test5")then   --��ֲ԰˵��
	if(LuaQueryTask("Tyuanx_qr")==2) then
		if(LuaQueryTask("yuanx_zz")==0) then
		 	if(TeamCount()==2) then
				local mapname=MapName()
				LuaSetTask("yx_mapzz",mapname)
		 		if(LuaQueryStr("id")==TeamQueryStrTask("yuanx_tvid")) then
		 	    		if(TeamQueryStrTask("yx_mapzz")==mapname) then
		 	    	  		local r=LuaRandom(2)
						if(r==1) then
			 	    	  		LuaSay("��ʾ��������֮�á����@5�˽⡾��ֲ԰˵����@0�������")
			 	    	  		LuaSetTask("yuanx_zz",1)
			 	    	  		LuaAddTask("yuanx_tvnum",1)
			 	    	  		if(LuaQueryTask("yuanx_tvnum")>=4) then
								LuaSetTask("Tyuanx_qr",3)
								LuaSay("�ɼ�ũ��˵������������а�һƬ���أ���ס��ţ��а������ÿ5���Ӳɼ�һ�β������ɳ�����ȵĽ�Ǯ�Ͷ��⾭�飬��ʼ�ǳɳ���Ϊ1000�������ͨ��ʩ���������Լ�ũ���ĳɳ��ȣ���ȻҲ������ũ����Ͷ�������͸�ũ���ĳа�����ɳ��ȣ���һ��ũ���а���Ϊ0ʱ����ũ���������գ��ɳ���С��0ʱ����ũ�����������棡")
  								LuaSay("��Ȼ�㻹���Թ��򱣰�����ֹ�������͵��Ķ�����Ͷ���������кܴ��ʽ�������Ͷ��������������ڱ������ܲɼ������˵�ֲ��ܲ鿴��ũ������Ϣ������˿��Խ����ɼ���ʩ�ʺ�Ͷ����Ҫ�ڶ�Ӧ��ũ���ڣ�����������Լ���ũ����")
             							LuaSay("��ʾ�����Ѿ�����ˡ�����֮�á��������Ҳ���֮��һ���ȥ�һʹ�߰�")
							end
			 	    	  		LuaSendMenu()
		 	    	        		return 0
		 	    			else
							LuaSay("��ʾ��������֮�á���е�@5�˽⡾��ֲ԰˵����@0ʧ�ܣ����������Ƚ�æ�����Ժ������˽�")
							LuaSendMenu()
							return 0
		 	    			end
		 	    		else
		 	    	  		LuaSay("��ʾ����Ķ��ѻ�û���˽⡾��ֲ԰˵����������������")
		 	    	  		LuaSendMenu()
		 	    	  		return 0
					 end
				else
					LuaSay("��ʾ:��Ķ��Ѳ��Ǻ���һ�����μӡ�����֮�á����ˣ��ҵ�����һ�������˲ſ��Լ�������")
					LuaSendMenu()
					return 0
				end
			else
				LuaSay("��ʾ�����롾����֮�á���ڼ���˽⡾��ֲ԰˵����������2�����")
				LuaSendMenu()
				return 0
			end
		else
	 		LuaSay("��ʾ��������֮�á����@5�˽⡾��ֲ԰˵����@0�����Ѿ����")
	 		LuaSendMenu()
	 		return 0
		end
	elseif(LuaQueryTask("Tyuanx_qr")==1) then
		LuaSay("��ʾ���㻹δ��ȡ������֮�á�����")
		LuaSendMenu()
		return 0
	elseif(LuaQueryTask("Tyuanx_qr")==3) then
		LuaSay("��ʾ�����Ѿ�����ˡ�����֮�á��������Ҳ���֮��һ���ȥ�һʹ�߰�")
		LuaSendMenu()
		return 0
	end
	LuaSay("�ɼ�ũ��˵������������а�һƬ���أ���ס��ţ��а������ÿ10���Ӳɼ�һ�β������ɳ�����ȵĽ�Ǯ�Ͷ��⾭�飬��ʼ�ǳɳ���Ϊ1000��ÿ�βɼ��ɹ���ֲ�ﾭ��ֵ����룡�����ͨ��ʩ���������Լ�ũ���ĳɳ��ȣ���ȻҲ������ũ����Ͷ�������͸�ũ���ĳа�����ɳ��ȣ���һ��ũ���а���Ϊ0ʱ����ũ���������գ��ɳ���С��0ʱ����ũ�����������棡")
	LuaSay("��Ȼ�㻹���Թ��򱣰�����ֹ�������͵��Ķ�����Ͷ���������кܴ��ʽ�������Ͷ��������������ڱ������ܲɼ������˵�ֲ��ܲ鿴��ũ������Ϣ������˿��Խ����ɼ���ʩ�ʺ�Ͷ����Ҫ�ڶ�Ӧ��ũ���ڣ�����������Լ���ũ����")
elseif(answer=="ck")then 
      getmyland()

elseif(answer=="bh")then 
	local map=MapName()
        local winbh=getwinland()
	if(winbh<21)then
		if(LuaItemCount("o_gold1y") >=1)then
			LuaPublicSet(""..map.."/"..winbh.."/bh",1)
			DelItem("o_gold1y",1)
			LuaSay("��ɹ��Ե�"..winbh.."��أ���Ӷ�˱�����͵�����Ŀɵ�ù�ˣ�")
		else
			LuaSay("�ͱ����û���1ͨ����������û��ͨ��")
		end
	else
		LuaSay("��û����Ҫ������ũ��")
	end
 elseif(answer=="gm1")then 
        if(LuaItemCount("o_gold1y") >=1)then
		LuaGive("o_mission215",10,Tcj)  
		DelItem("o_gold1y",1)
	else
		LuaSay("������ϵû���1ͨ����������û��ͨ��")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("��ܰ��ʾ������Ե���˵��ٵ��@2�̵�@0��-Ԫ���̳�-�����й���Ŷ�����з��ϸ�����@!")
		else
			LuaSay("��ܰ��ʾ�������ͨ���Ҽ��̳�-Ԫ���̳�-�����й���Ŷ�����з��ϸ�����@!")
		end
	end
            
elseif(answer=="gm2")then 
	if(LuaItemCount("o_gold1y") >=1)then
		LuaGive("o_mission215",10,Tcj) 
		LuaGive("o_mission216",5,Tcj)  
		DelItem("o_gold1y",1)
        else
		LuaSay("������10��5�û���1ͨ����������û��ͨ��")


		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("��ܰ��ʾ������Ե���˵��ٵ��@2�̵�@0��-Ԫ���̳�-�����й���Ŷ�����з��ϸ�����@!")
		else
			LuaSay("��ܰ��ʾ�������ͨ���Ҽ��̳�-Ԫ���̳�-�����й���Ŷ�����з��ϸ�����@!")
		end
	end
elseif(answer=="rwhd")then 
	if(LuaQueryTask("Tcj")==0)then
		LuaSay("��һ�ν��������ߣ��ҽ�����һЩ���ϣ�")
		LuaGive("o_mission215",3,Tcj)
		LuaGive("o_mission216",3,Tcj)
		LuaSetTask("Tcj",99)
	else
		AddMenuItem("�������������ѻ�÷���","")
		AddMenuItem("��ש������","nf")
		AddMenuItem("������","Tpty")
	end
elseif (answer=="Tpty")then
	if(LuaQueryTask("Tpty")==0)then
		LuaSetTask("Tpty",1)
		LuaSay("��˵���ĺ��ǵ���ͷ�ڻ��˴������϶�ҩ��������ȥ��������һ�������һ�������ϣ�")
		AddMenuItem("ѡ��","")
		AddMenuItem("����ȥ����","csty")
		AddMenuItem("���Լ��ܰ�","zjpty")
	else
		LuaSay("�����ĺ�������������,ֻҪ�ĳϼ��ɣ��Ϳ��Եõ����ϣ�")
	end
elseif(answer=="csty")then 
	ChangeMap("lu_tyhj")
elseif(answer=="zjpty")then
	LuaSay("�Լ��ܵĻ���˳�㻹������ǧ�����̵�����һ�����ã�")
    
elseif(answer=="nf")then
	local level= LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("Tcjday"))then            --
		if(LuaItemStatusNormalCount("o_mission214")>0)then
			if(LuaQueryTask("Tcjtimes")<6)then
				LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tcj") 
				LuaAddTask("Tcjtimes",1)
				DelItem("o_mission214",1)
				LuaGive("o_mission215",5,Tcj)
				LuaGive("o_mission216",5,Tcj)
			else 
				LuaSay("��ש������Ҳһ��ֻ�ܻ�5�Σ��㻹�����������ɣ�")
			end 
		else
			LuaSay("������û�н�ש����ע���Լ����񱳰���")
		end
	else
		LuaSetTask("Tcjday",GetCurrentDay())
		LuaDelTask("Tcjtimes")
		LuaSay("����ȥ����������ǹ����ܹܴ�͵���ש�����ң��Ҿ͸�����ϻ�ҩ��һ����")
	end
 -----------------------------------------------------------

--�а����أ�
elseif(answer=="T299")then
	if(LuaQueryTask("T299")==1)then
		LuaSay("���⹫���������˽�а����صİ������Ҹ��㽲������������а�һƬ���أ���ס��ţ��а������ÿ10���Ӳɼ�һ�β������ɳ�����ȵĽ�Ǯ�Ͷ��⾭�飬��ʼ�ǳɳ���Ϊ1000��ÿ�βɼ��ɹ���ֲ�ﾭ��ֵ����룡�����ͨ��ʩ���������Լ�ũ���ĳɳ��ȣ���ȻҲ������ũ����Ͷ�������͸�ũ���ĳа�����ɳ��ȣ���һ��ũ���а���Ϊ0ʱ����ũ���������գ��ɳ���С��0ʱ����ũ�����������棡")
		LuaSay("��Ȼ�㻹���Թ��򱣰�����ֹ�������͵��Ķ�����Ͷ���������кܴ��ʽ�������Ͷ��������������ڱ������ܲɼ������˵�ֲ��ܲ鿴��ũ������Ϣ������˿��Խ����ɼ���ʩ�ʺ�Ͷ����Ҫ�ڶ�Ӧ��ũ���ڣ�����������Լ���ũ����")
		LuaSetTask("T299",2)
		UpdateMenu()
	elseif(LuaQueryTask("T299")==2)then
		LuaSay("���⹫���˽�����͸���˰ɡ�")
		AddMenuItem("@7�а�����","")
		AddMenuItem("�˽���","T299yes")
		AddMenuItem("���˽�","T299no")
	end
	elseif(answer=="T299yes")then
		LuaSay("���⹫�����Ѿ��˽�а����ص�������ˣ���Ҫ�Ļ���ʱ�����ң�������һֱ�����ߣ��͵����ҵ���ֲ԰�ˣ����ڻ�ȥ��˾��Ԫ�԰�!")
	elseif(answer=="T299no")then
		LuaSay("���⹫���ðɣ����������㽲������������а�һƬ���أ���ס��ţ��а������ÿ10���Ӳɼ�һ�β������ɳ�����ȵĽ�Ǯ�Ͷ��⾭�飬��ʼ�ǳɳ���Ϊ1000��ÿ�βɼ��ɹ���ֲ�ﾭ��ֵ����룡�����ͨ��ʩ���������Լ�ũ���ĳɳ��ȣ���ȻҲ������ũ����Ͷ�������͸�ũ���ĳа�����ɳ��ȣ���һ��ũ���а���Ϊ0ʱ����ũ���������գ��ɳ���С��0ʱ����ũ�����������棡")
		LuaSay("��Ȼ�㻹���Թ��򱣰�����ֹ�������͵��Ķ�����Ͷ���������кܴ��ʽ�������Ͷ��������������ڱ������ܲɼ������˵�ֲ��ܲ鿴��ũ������Ϣ������˿��Խ����ɼ���ʩ�ʺ�Ͷ����Ҫ�ڶ�Ӧ��ũ���ڣ�����������Լ���ũ����")




--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_12")==1)then
					LuaSay("���⹫���ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_12",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_12")==2)then
					LuaSay("���⹫���ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_12",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("���⹫����Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("���⹫�����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end

	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end

end 
LuaSendMenu()
return 1
end 
------------------------------------------------------
function getland()
  local n=1
  local map=MapName()
  while (LuaPublicQuery(""..map.."/"..n.."/gs")~=0 )do
          n=n+1
          end
   return n
   end
function getwinland()
local map=MapName()
local n=0
  while (n<22)do
  if(LuaPublicQueryStr(""..map.."/"..n.."/winid")==LuaQueryStr("name") and LuaPublicQuery(""..map.."/"..n.."/bh")==0 )then
     break
    else
          n=n+1
    end
  end
   return n
   end
   
function refresh()
local map=MapName()
 local n2=1
  while (n2<21 )do  
        if(LuaPublicQuery(""..map.."/"..n2.."/cbq")<1)then
        LuaPublicDel(""..map.."/"..n2.."/gs")
        LuaPublicDel(""..map.."/"..n2.."/winid")
	LuaPublicDel(""..map.."/"..n2.."/cbq")
	LuaPublicDel(""..map.."/"..n2.."/exp")
	LuaPublicDel(""..map.."/"..n2.."/bh")
	LuaPublicDel(""..map.."/"..n2.."/time")
	end
	 n2=n2+1
          end
   end
function getmyland()
local map=MapName()
local n=0
while(n<22) do
  if(LuaPublicQueryStr(""..map.."/"..n.."/winid")==LuaQueryStr("name"))then
  LuaSay("��ĵ�"..n.."�ŵسɳ����\n�ɳ��ȣ�"..LuaPublicQuery(""..map.."/"..n.."/exp").."\n�а���:"..LuaPublicQuery(""..map.."/"..n.."/cbq").."\n������"..LuaPublicQuery(""..map.."/"..n.."/bh").."")
   end
  n=n+1 
  end
  LuaSay("��û�ж���а��ؿɲ鿴�ˣ�")
  return n
  end
function landlist()
   local map=MapName()
   local i=1
   local j=0
   while (i<21)do
   if(LuaPublicQuery(""..map.."/"..j.."/exp")<LuaPublicQuery(""..map.."/"..i.."/exp"))then
   j=i 
   end
    i=i+1
   end
   if(0<j or j<21)then
   LuaSay("Ŀǰ��ֲ԰��һ��Ϊ��"..j.."���\n�ɳ��ȣ�"..LuaPublicQuery(""..map.."/"..j.."/exp").."\n������"..LuaPublicQueryStr(""..map.."/"..j.."/winid").."")
   else
   LuaSay("��ǰû�з��ϵ�����")
   end
   return j
  end