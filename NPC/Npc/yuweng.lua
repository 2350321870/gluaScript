NPCINFO = { 
serial="23",
base_name="yuweng",
icon=2503,
NpcMove=2503,
name="����",
iconaddr=1 ,
butt="10|10|50" ,
name_color="CEFFCE",
lastsay="������һ�����ʵõ��߼���",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then
	local level=LuaQuery("level")
	local day=GetCurrentDay()
	AddTopSayMenuItem("@7�����б�","")
	--if(LuaQueryTask("Tqxzf")>=1 and LuaQueryTask("Tqxzf")<5)then
		--AddTopSayMenuItem("@5���뾲�״�ׯ@0","Tjmcz")				--��Ϧף��
	--end 
--	AddTopSayMenuItem("@3�������","Txyye")
	if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
		AddTopSayMenuItem("@1[����]@0@3����ڵ�����","Ac_47")
	end
	if(LuaQueryTask("bao_A")~=0)then
		AddTopSayMenuItem("@2����֮�������ء�","T140")
		havetask =2
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_7")==1 or LuaQueryTask("TfindNPC_7")==2)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_7")==98)then
		AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
	end
	if((LuaQueryTask("Tsnpc_9")==1 or LuaQueryTask("Tsnpc_9")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_9")
		if(LuaQueryTask("Tsnpc_9")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_9")==1 or LuaQueryTask("Tenpc_9")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_9")
		if(LuaQueryTask("Tenpc_9")==1)then
			havetask2=1
		end
	end

	 if(LuaQueryTask("Tdiaoyu")==0) then
		AddTopSayMenuItem("����","Tdiaoyu")
	 else
		AddTopSayMenuItem("����","Tdiaoyu1")
		AddTopSayMenuItem("��ȡ��������","Tdiaoyu")
		
	 end
 	 AddTopSayMenuItem("@7�����й�@0","Tdiaoyutg")
	 AddTopSayMenuItem("@3�������˵���@0","Tdyhelp")
	 AddTopSayMenuItem("@5��ε���","diaoyu")
	 AddTopSayMenuItem("����","liaotian")
	 return 1 
		
elseif(answer=="liaotian") then 
	LuaSay("���̣�����������ɻ�þ��顢ͭ�ҺͲ��ϣ�����δ���������һ��и߶��Ŷ��@!")
elseif(answer=="Tjmcz")then
	ChangeMap("lu_jmcz")

elseif(answer=="Tdiaoyutg") then
	if(LuaQueryTask("Tdiaoyutg")==0) then
		LuaSay("���̣������йܿ��������뿪����̨���һ�õ��������Ŷ��")
		LuaSay("���̣���������˳���Ϸ֮ǰ���е����йܣ�������ʹ������ϷҲ�ܻ�ȡ�������档@!")
		AddMenuItem("@7�й�ѡ��","")
		AddMenuItem("6Сʱ��@81��Ʊ","6tg")
		AddMenuItem("12Сʱ��@82��Ʊ","12tg")
		AddMenuItem("24Сʱ��@84��Ʊ","24tg")
		AddMenuItem("���й�","butg")
	elseif(LuaQueryTask("Tdiaoyutg")==1) then       --6Сʱ 
		local tgtime=GetCurrentTime()-LuaQueryTask("Tdytgtime")
		if(tgtime>=21600) then
			LuaSay("���̣�ͨ��6Сʱ�ĵ����йܣ��������½�����")
			LuaGive("o_mission040",18) 
			LuaGive("o_material_31",3)          ----��3����
			LuaSetTask("Tdiaoyutg",0)
			LuaSetTask("Tdiaoyu",1)  
            if(LuaRandom(26)==0) then
                LuaNotice("@2"..LuaQueryStr("name").."@0@3�����й�@06Сʱ�ոˣ���Ʒ�����õ���@25������@0!��ֵ@2250Ԫ��")
                LuaGive("o_present108",1,"Tdiaoyutg")
            end
			UpdateMenu()                                                             
		else
			local a=floor(tgtime/3600)
			local b=floor((tgtime-a*3600)/60) 
			LuaSay("���̣����6Сʱ�����й���ȥ@3"..a.."Сʱ"..b.."��@0�ˣ���ȷ��Ҫ��ȡ������")
			LuaSay("���̣�ȡ���йܺ�ʣ��ʱ�佫ֱ������Ŷ���ɵ�������ˡ�")
			AddMenuItem("@7�Ƿ�ֹͣ�й�","")
			AddMenuItem("�����й�","jixutg")
			AddMenuItem("�����й�","quxiaotg")
		end 
	elseif(LuaQueryTask("Tdiaoyutg")==2) then      --12Сʱ
		local tgtime=GetCurrentTime()-LuaQueryTask("Tdytgtime")
		if(tgtime>=43200) then
			LuaSay("���̣�ͨ��12Сʱ�ĵ����йܣ��������½�����")
			LuaGive("o_mission020",14)    
			LuaGive("o_mission039",12) 
			LuaGive("o_mission040",20) 
			LuaGive("o_material_31",6)
			LuaSetTask("Tdiaoyutg",0)
			LuaSetTask("Tdiaoyu",1)  
            if(LuaRandom(26)==1) then
                LuaNotice("@2"..LuaQueryStr("name").."@0@3�����й�@012Сʱ�ոˣ���Ʒ�����õ���@26������@0!��ֵ@2500Ԫ��")
                LuaGive("o_present109",1,"Tdiaoyutg")
            end
			UpdateMenu()                                                             
		else
			local a=floor(tgtime/3600)
			local b=floor((tgtime-a*3600)/60) 
			LuaSay("���̣����12Сʱ�����й���ȥ@3"..a.."Сʱ"..b.."��@0�ˣ���ȷ��Ҫ��ȡ������")
			LuaSay("���̣�ȡ���йܺ�ʣ��ʱ�佫ֱ������Ŷ���ɵ�������ˡ�")
			AddMenuItem("@7�Ƿ�ֹͣ�й�","")
			AddMenuItem("�����й�","jixutg")
			AddMenuItem("�����й�","quxiaotg")
		end
    
	elseif(LuaQueryTask("Tdiaoyutg")==3) then      --24Сʱ
		local tgtime=GetCurrentTime()-LuaQueryTask("Tdytgtime")
		if(tgtime>=86400) then
			LuaSay("���̣�ͨ��24Сʱ�ĵ����йܣ��������½�����")
			LuaGive("o_mission020",20)    
			LuaGive("o_mission039",20) 
			LuaGive("o_mission040",20) 
			LuaGive("o_mission040",20)
			LuaGive("o_material_31",12)
			LuaSetTask("Tdiaoyutg",0)
			LuaSetTask("Tdiaoyu",1)  
            if(LuaRandom(31)==1) then
                LuaNotice("@2"..LuaQueryStr("name").."@0@3�����й�@012Сʱ�ոˣ���Ʒ�����õ���@27������@0!��ֵ@21000Ԫ��")
                LuaGive("o_present110",1,"Tdiaoyutg")
            end
			UpdateMenu()                                                             
		else
			local a=floor(tgtime/3600)
			local b=floor((tgtime-a*3600)/60) 
			LuaSay("���̣����24Сʱ�����й���ȥ@3"..a.."Сʱ"..b.."��@0�ˣ���ȷ��Ҫ��ȡ������")
			LuaSay("���̣�ȡ���йܺ�ʣ��ʱ�佫ֱ������Ŷ���ɵ�������ˡ�")
			AddMenuItem("@7�Ƿ�ֹͣ�й�","")
			AddMenuItem("�����й�","jixutg")
			AddMenuItem("�����й�","quxiaotg")
		end
	end
    
elseif(answer=="butg") then
	LuaSay("���̣������йܺ���������ߺ���Ȼ��õ��������Ŷ��@!")
elseif(answer=="6tg") then       --6Сʱ�йܣ����ߺķ�
	local a=LuaItemCount("o_gold2j")
	local b=LuaItemStatusNormalCount("o_gold2y")
        if(a+b>0)then
		LuaSay("���̣���ɹ��Ľ�����@36Сʱ�����й�@0��@!")
		if(LuaRandom(25)==1) then
			LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
			LuaGive("o_box002",1,"Tdiaoyutg")
		end        
		if(b>0) then
			DelItem("o_gold2y",1)
		else
			DelItem("o_gold2j",1)
		end
		LuaLogRecord("�����й�","o_gold2y","Ԫ��","����",10)--�ǳ�һ�ֿ�Ҳ���б�Ҫ�Ļ��ٷֿ�
		LuaSetTask("Tdiaoyutg",1)
		LuaSetTask("Tdytgtime",GetCurrentTime())
        else
		LuaSay("���̣�6Сʱ�ĵ����й���Ҫ@21��@8��Ʊ��")--10yb
        end
      
elseif(answer=="12tg") then       --12Сʱ�йܣ����ߺķ�
	local  a=LuaItemCount("o_gold2j")
	local  b=LuaItemStatusNormalCount("o_gold2y")
        if(a+b>=2)then
		LuaSay("���̣���ɹ��Ľ�����@312Сʱ�����й�@0��@!")
		if(LuaRandom(2)==0) then
			LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
			LuaGive("o_box002",1,"Tdiaoyutg")
		end        
		if(b>=2) then
			DelItem("o_gold2y",2)
		else
			DelItem("o_gold2y",b)
			DelItem("o_gold2j",2-b)
		end
		LuaLogRecord("�����й�","o_gold2y","Ԫ��","����",20)--�ǳ�һ�ֿ�Ҳ���б�Ҫ�Ļ��ٷֿ�
		LuaSetTask("Tdiaoyutg",2)
		LuaSetTask("Tdytgtime",GetCurrentTime())
        else
		LuaSay("���̣�12Сʱ�ĵ����й���Ҫ@22��@8��Ʊ��")--20yb
        end
      
elseif(answer=="24tg") then        --24Сʱ�йܣ����ߺķ� 
	local a=LuaItemCount("o_gold2j")
	local b=LuaItemStatusNormalCount("o_gold2y")
        if(a+b>=4)then
		LuaSay("���̣���ɹ��Ľ�����@324Сʱ�����й�@0��@!")
		LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
        LuaGive("o_box002",1,"Tdiaoyutg")
		if(b>=4) then
			DelItem("o_gold2y",4)
		else
			DelItem("o_gold2y",b)
			DelItem("o_gold2j",4-b)
		end        
		LuaLogRecord("�����й�","o_gold2y","Ԫ��","����",40)--�ǳ�һ�ֿ�Ҳ���б�Ҫ�Ļ��ٷֿ�
		LuaSetTask("Tdiaoyutg",3)
		LuaSetTask("Tdytgtime",GetCurrentTime())
        else
		LuaSay("���̣�24Сʱ�ĵ����й���Ҫ@24��@8��Ʊ��")--40yb
        end
    
elseif(answer=="jixutg") then
        LuaSay("���̣����й�ʱ�䵽�ں�������ȡ����������Ŷ��")
        LuaSay("���̣����й��ڼ䣬���ǲ����뿪�����ǵ�Ŷ��@!")
elseif(answer=="quxiaotg") then
	local tgtime=GetCurrentTime()-LuaQueryTask("Tdytgtime")
	if(tgtime<600) then                                              
		LuaSay("���̣�����й�ʱ�䲻��10���ӣ�û�еõ��κζ�����")        
	else
		if(LuaQueryTask("Tdiaoyutg")==1) then       --6Сʱ 
			local tg1=floor(tgtime/2400)    --2400  40���� 
			LuaSay("���̣����6Сʱ�����й��������£�")
			if(tg1==0) then
				LuaGive("o_mission020",2)
			else
				LuaGive("o_mission040",2*tg1)
				LuaGive("o_mission020",2)
				if(tg1>=2) then
					LuaGive("o_material_31",floor(tg1/2))
				end
			end                                                         
		elseif(LuaQueryTask("Tdiaoyutg")==2) then   --12Сʱ�����36����Ʒ�� 
			local tg1=floor(tgtime/2400) 
			LuaSay("���̣����12Сʱ�����й��������£�")
			if(tg1==0) then
				LuaGive("o_mission020",3)
			elseif(tg1<=10) then
				LuaGive("o_mission040",2*tg1)
				LuaGive("o_mission020",2)
				if(tg1>=2) then
					LuaGive("o_material_31",floor(tg1/2))
				end
			elseif(tg1<20) then  
				LuaGive("o_mission040",20)
				LuaGive("o_material_31",(floor(tg1/2)-2))
				local num=tg1-10
				if(num<=5) then
					LuaGive("o_mission020",4*num)
				else
					LuaGive("o_mission020",20)
					LuaGive("o_mission039",10)
				end
			end
    
		elseif(LuaQueryTask("Tdiaoyutg")==3) then   --24Сʱ 
			local tg1=floor(tgtime/2400)
			local tg2=floor((tgtime-tg1*600)/600)
			LuaSay("���̣����24Сʱ�����й��������£�")
			if(tg1==0) then
				LuaGive("o_mission020",2)
			elseif(tg1<=10) then
				LuaGive("o_mission040",2*tg1)
				LuaGive("o_mission020",2)
				if(tg1>=2) then
					LuaGive("o_material_31",floor(tg1/2))
				end
			elseif(tg1<=20) then
				LuaGive("o_mission040",20)
				LuaGive("o_mission040",2*(tg1-10))
				LuaGive("o_mission020",2)
				LuaGive("o_material_31",(floor(tg1/2)-2))
			else
				LuaGive("o_mission040",20)
				LuaGive("o_mission040",20)
				LuaGive("o_mission020",20)
				LuaGive("o_mission039",20)
				LuaGive("o_material_31",(floor(tg1/2)-2))
			end
		end 
	end
	LuaSetTask("Tdiaoyutg",0)
	LuaSetTask("Tdiaoyu",1)
	UpdateMenu()
    
-------�������˵���
elseif(answer=="Tdyhelp") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tdyhelp")==0) then
		if(TeamCount()== 2) then
			if(TeamQueryTask("Tdydotime")==0 and LuaQueryTask("Tdydotime")==1) then           --�Ի����Ǵ����� 
				if(TeamQueryTask("Tdyhelp")==2 ) then
					if(TeamQueryStr("Tdyhelpname")==LuaQueryStr("name")) then
						LuaSay("���̣��������@3"..TeamQueryStr("name").."@0�ɹ�����󣬿�2���������ȡ@3�����ľ��齱����2000ͭ�ҡ�")
						LuaSetTask("Tdyhelp",1)
						LuaSet("Tdyhelpname",TeamQueryStr("name"))
					else
						LuaSay("��ʾ�������Ӷ����Ѿ��������˰������㻹��ȥ����������Ҫ�������˰ɡ�")
					end 
				else
					LuaSay("��ʾ��������İ��������ȽӴ������㷽�ɽ�����@!")
				end  
			elseif(TeamQueryTask("Tdydotime")==1 and LuaQueryTask("Tdydotime")==0) then       --�Ի����Ǳ����� 
				LuaSay("��ʾ�����������ε���ɡ�@!")
				LuaSay("��ʾ������ɹ�����1�Σ��Ϳ�����������ȡ@31000��ͭ�ҡ�@!")
				LuaSetTask("Tdyhelp",2)
				LuaSet("Tdyhelpname",TeamQueryStr("name"))     --������ID 
			else
				LuaSay("��ʾ���ɹ��������δ���������ң�������Ӳ�����ȡ������")
			end
		else
			LuaSay("��ʾ���ɹ��������δ���������ң�������Ӳ�����ȡ������")
		end 	 	 

	elseif(LuaQueryTask("Tdyhelp")==1) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
        if(TeamCount()==2) then
		 if(TeamQueryStr("name")==LuaQueryStr("Tdyhelpname")) then
			   if(TeamQueryTask("Tdydotime")==1) then
			      LuaSetTask("Tdyhelp",0)
			        local jingyan=30000+level^2*50+level*5000 	    
				LuaAddJx("combat_exp",jingyan,"Tdyhelp")
				LuaGive("coin",2000,"Tdyhelp")
			   else
				   LuaSay("���̣��㻹û�а���@3"..TeamQueryStr("name").."@0�ɹ������ء�")
				   AddMenuItem("@7�Ƿ��������","")
				   AddMenuItem("��������","jixu")
				   AddMenuItem("��������","fangqi")
			    end
		else
		     LuaSay("���̣�������������ʱ�İ�������@3"..LuaQueryStr("Tdyhelpname").."@02����ӣ������ύ������")
		     AddMenuItem("@7�Ƿ��������","")
		     AddMenuItem("��������","jixu")
		     AddMenuItem("��������","fangqi")
		end
        else
		LuaSay("���̣�������������ʱ�İ�������@3"..LuaQueryStr("Tdyhelpname").."@02����ӣ������ύ������")
		AddMenuItem("@7�Ƿ��������","")
		AddMenuItem("��������","jixu")
		AddMenuItem("��������","fangqi")
        end
     elseif(LuaQueryTask("Tdyhelp")==2) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		    if(LuaQueryTask("Tdydotime")==1) then 
			LuaSay("���̣���ϲ��ѧ���˵��㣬���ȥ�������˰ɡ�@!")
			LuaGive("coin",1000,"Tdyhelp")
			LuaAddJx("combat_exp",60000+level^2*40,"Tdyhelp")
			LuaSetTask("Tdyhelp",0)
		    else
			LuaSay("��ʾ������ɹ�����1�κ󣬲�����ȡ������@!")
		    end				
     end   
       elseif(answer=="jixu") then
       LuaSay("���̣������ź������Ϊ����֮�����ο����и߶����ȡ��@!")
       elseif(answer=="fangqi") then
       LuaSay("���̣���������԰���������Ҫ�����������ˡ�@!")
       LuaSetTask("Tdyhelp",0)
	 
elseif(answer=="Tdiaoyu1")then
		LuaSay("���̣�����Ը���Ϲ�������ô�����������ҵ���@!����@3��͸���@0ʹ�ñ����е�@2���@0�󣬾ͳɹ����������ӡ�")
		LuaSay("���̣���ʹ�����@310���Ӻ�@0���Ϳ�����ʹ������ĵط��ջ����ˡ�@3�ٴ�ʹ�����@0�Ϳ��Եõ����ˡ�")
		LuaSay("���̣������@3ʱ��Խ��@0���õ���@2����@0Խ�ã��õ����⽫���Ϸ�����õ����ߵı��ꡣ")
		AddMenuItem("@7�Ƿ����","")
		AddMenuItem("��Ҫ����","YES")
		AddMenuItem("����","NO")
		UpdateMenu()
elseif(answer=="Tdiaoyu") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("Tdiaoyu")==0) then
		if(LuaQueryTask("Tdiaoyutg")==0) then
			LuaSay("���̣�����Ը���Ϲ�������ô�����������ҵ���@!����@3��͸���@0ʹ�ñ����е�@2���@0�󣬾ͳɹ����������ӡ�")
			LuaSay("���̣���ʹ�����@310���Ӻ�@0���Ϳ�����ʹ������ĵط��ջ����ˡ�@3�ٴ�ʹ�����@0�Ϳ��Եõ����ˡ�")
			LuaSay("���̣������@3ʱ��Խ��@0���õ���@2����@0Խ�ã��õ����⽫���Ϸ�����õ����ߵı��ꡣ")
			AddMenuItem("@7�Ƿ����","")
			AddMenuItem("��Ҫ����","YES")
			AddMenuItem("����","NO")
			UpdateMenu()
		else
			LuaSay("���̣����Ѿ�������@3�����й�@0�������ٵ��㡣@!")
		end
	elseif(LuaQueryTask("Tdiaoyu")==1) then
		local a=LuaItemCount("o_mission020")
		local b=LuaItemCount("o_mission039")
		local c=LuaItemCount("o_mission040")
		LuaSetTask("Tdiaoyu",0)
		if(a==0 and  b==0 and  c==0) then
			LuaSay("���̣��㻹û��ͨ������õ��κ������أ����ܵõ��κν�����")
		else
			LuaSay("���̣������л���������Ŷ@!")
			LuaSay("���̣���ͨ������õ���@2"..a.."���������⣬"..b.."���������⣬"..c.."�龫Ʒ���⡣")
			DelItem("o_mission020",a)
			DelItem("o_mission039",b)
			DelItem("o_mission040",c)
			local d=a+1.5*b+2*c
			local money
			if(level<20) then
				money=d*200
			else
				money=d*250
			end
			if(LuaQueryTask("Tdiaoyu")==0) then
				local exp=(278+level^2*1.5+level*208)*d
				LuaGive("coin",money,"Tdiaoyu")
				LuaAddJx("combat_exp",exp,"Tdiaoyu")
				
			end
			if(LuaQueryTask("Thx2")==5) then
					if(LuaQueryTask("Thx2E")==0) then
						LuaSay("��ʾ�����Ѿ���ɻ���������廷����ȥ�ظ��ذϹ�ɡ�@!")
						LuaSetTask("Thx2E",99)
					end
			end
			DelLog("diaoyu")
			if(d>15) then
				LuaSay("���̣����Ѿ����˺ܳ�ʱ������ˣ�����ȥ����ǰɡ�")
				LuaSay("���̣��ܵ����ĺ�����@3��������@0�ɣ�������ܻ�ó��߾����ͭ�ҵ�Ŷ��@!")
				AddMenuItem("@7�Ƿ����","")
				AddMenuItem("����","huodong")
				AddMenuItem("�Һ�������������","YES")
			end
		end
		UpdateMenu()
	  end

   elseif(answer=="YES") then
        LuaSetTask("Tdiaoyu",1)
	if(LuaItemCount("o_mission041")<10) then
        LuaGive("o_mission041",10)
        end
        ChangeMap("lu_diaoyudao")
   elseif(answer=="NO") then
        LuaSay("���̣�������Ǻ����ɵģ���Ҫ����������ҡ�")
   elseif(answer=="diaoyu") then
        LuaSay("���̣�����͸���ʹ�������ʹ�����@310���Ӻ�@0���Ϳ�����ʹ������ĵط��ջ����ˡ�@3�ٴ�ʹ�����@0�Ϳ��Եõ���@0��")
	LuaSay("���̣������@3ʱ��Խ��@0���õ���@2����@0Խ�ã��õ����⽫���Ϸ�����õ����ߵı��ꡣ")

   elseif(answer=="huodong") then
		LuaSetTask("Tdiaoyuhd",1)
		ChangeMap("lu_tyhj")



elseif(answer=="T140")then
	if(LuaQueryStrTask("140Taskday")~=GetCurrentDay()) then
		LuaSetTask("140dotime",0)
	end
	if(LuaQueryTask("bao_A")~=0)then
		if(LuaItemStatusNormalCount("o_mission168")>=1)then
			if(LuaQueryTask("140dotime")<10) then
				LuaSay(""..LuaQueryStr("name").."���������п���@3����@0��")
				LuaSay("���̣��ǵģ���ô���Ķ���������������ˣ�����������֮�ð�����@3����@0��ƽ����������ûʲô�õģ�ֻ���Ϸ��ܽ����Ĺ�Ч���ӳ�����")
				LuaSay("���̣�����ûʲôǮ�ң��ҿ����þ�Ʒ���⡢�������⡢���������Լ�2��3��4�������е�һ������һ���")
				AddMenuItem("@7ѡ��","")
				AddMenuItem("Ը��һ�","T140yes")
				AddMenuItem("��Ը��һ�","T140no")
			else
				LuaSay("��ʾ���������Ѿ�ûʲô��������һ��ˣ����������ɡ�")
				LuaDelTask("bao_A")
				UpdateMenu()
			end
		else
			LuaSay("���̣���ͷ����Ȼ�ۻ������������ЩС��Ϸ�ǲ��ܺ�Ū�ҵģ�����㶼û���أ���ô�һ���")
		end
	end

	elseif(answer=="T140yes")then
	if(LuaItemStatusNormalCount("o_mission168")>=1)then
		 if(LuaQueryTask("bao_A")~=0)then
			LuaSetTask("231Taskday",GetCurrentDay())
			LuaAddTask("231dotime",1)
			LuaDelTask("bao_A")
			UpdateMenu()
			local T140r=LuaRandom(10)
			if(T140r==0)then
				LuaSay("���̣������۾����ã���������������Ǹ���Ľ�����")
				LuaGive("o_mission020",1)--��������
				DelItem("o_mission168",1)
			elseif(T140r==1)then
				LuaSay("���̣������۾����ã���������������Ǹ���Ľ�����")
				LuaGive("o_mission039",1)--��������
				DelItem("o_mission168",1)
			elseif(T140r==2)then
				LuaSay("���̣������˰����������ҵ�������ص���龫Ʒ���⣬���Ǹ���Ľ�����")
				LuaGive("o_mission040",1)--��Ʒ����
				DelItem("o_mission168",1)
			elseif(T140r==3)then
				LuaSay("���̣����4�������Ǹ�������Ľ�����")
				LuaGive("o_material_32",1) --4��
				DelItem("o_mission168",1)
			elseif(T140r==4)then
				LuaSay("���̣������۾����ã����3�������Ǹ���Ľ�����")
				LuaGive("o_material_31",1) --3��
				DelItem("o_mission168",1)
			else
				LuaSay("���̣�2������������Ӧ�ù㷺������Ͱ�������һ�顣")
				LuaGive("o_material_30",1)--2��
				DelItem("o_mission168",1)
			end
		end
	else
		LuaSay("@5��ʾ��������û��Я������")
	end
	elseif(answer=="T140no")then
		if(LuaQueryTask("bao_A")~=0)then
			LuaSay("���̣����ع�Ȼ�Ǻã��ɲ�Ҫ�������Ŷ��")
			LuaDelTask("bao_A")
			UpdateMenu()
		end

--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_7")==1)then
					LuaSay("���̣��ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_7",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_7")==2)then
					LuaSay("���̣��ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_7",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("���̣���Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("���̣����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end
elseif(answer=="Tsnpc_9")then
	if(LuaQueryTask("Tsnpc_9")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸���������ż����������˿��Ը��������@!")
		LuaSay("���̣�һ��С�㣬����ʲô��")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_9",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_9")==2)then
		LuaSay("���̣����ҿ����ˣ����ȥ������")
	end
elseif(answer=="Tenpc_9")then
	if(LuaQueryTask("Tenpc_9")==1)then
		LuaSay(""..LuaQueryStr("name").."��������������Ҵ������㣬˵��Ҫ��õ��㣬�㲻���ٸ�Щ�ٻ����˰�")
		LuaSay("���̣������Ҵ���û�����Ǽ��㰡��ԩ��!")
		LuaSetTask("Tenpc_9",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_9")==2)then
		LuaSay("���̣���ȥ�������Ǵ��ˣ�����Ҳ������")
	end
	
	
elseif(answer=="Txyye")then  --�������
    LuaSay("ʹ��������������и���ļ��ʵ������������⡢����Ŷ��")
    AddMenuItem("��Ҫ6��@9ͨ��@0","")
	AddMenuItem("ȷ���һ�","Txyye_yes")
elseif(answer=="Txyye_yes")then
    if(LuaItemStatusNormalCount("o_gold1y")>=6)then
        LuaGive("o_mission530",1,"Txyye")   --ǿ��ʯ
    	DelItem("o_gold1y",6)
	else
	    LuaSay("������@9ͨ��@0����6����")
	end

elseif(answer=="Ac_47")then
    LuaSay("�������������ʷ�Ļ��ɳ��Ķ�����Ѿ���������ڼ���ҿ�����������������̨�����������������������м��ʵ������ӣ�")
    LuaSay("ʹ��������������и���ļ��ʵ������ӻ����������⡢����Ŷ���õ����ӿɵ����������һ������ľ�����ߴ�����ͭ�ҡ���150�����Է���3��ǿ��ʯ������������������̳��ﹺ�򡣣�")

	if(LuaItemStatusNormalCount("o_mission529")>=1)then
    	AddMenuItem("@7ѡ��","")
	--	AddMenuItem("�һ�����","Ac_47_jl1")
		AddMenuItem("�һ�����","Ac_47_jl2")
	else
	    LuaSay("������û�����ӣ��ڻ�ڼ䣨2012��6��22��~24�գ������ʱ���и��ʻ��Ŷ��")
	end
	--[[
elseif(answer=="Ac_47_jl1")then --�һ�����
    if(LuaItemStatusNormalCount("o_mission530")>=1)then
    LuaAddJx("combat_exp",30000+level^2*50+level*5000,"Ac_47")
    DelItem("o_mission529",1)
    else
	    LuaSay("������û�����ӣ��ڻ�ڼ䣨2012��6��22��~24�գ������ʱ���и��ʻ��Ŷ��")
	end ]]
elseif(answer=="Ac_47_jl2")then --�һ���������
    if(LuaItemStatusNormalCount("o_mission529")>=1)then
        if(LuaFreeBag()>=3)then
       	 	r=LuaRandom(10)
       	 	if(r==0)then
       	 	    LuaGive("o_ybsc002j",3,"Ac_47")   --ǿ��ʯ
			elseif(r>0 and r<=2) then
    			LuaGive("coin",20000,"Ac_47")
			elseif(r>2 and r<5) then
    			LuaGive("o_state019j",1,"Ac_47")  --������
    			LuaGive("o_state024j",1,"Ac_47")  --���ݷ�
    			LuaGive("o_state029j",1,"Ac_47")  --�ǻ۷�
    		else
    		    LuaAddJx("combat_exp",10000,"Ac_47")
    		end

    	DelItem("o_mission529",1)
    	else
		LuaSay("�뱣��3�����ϵı����ռ�")
		end
	else
	    LuaSay("������û�����ӣ��ڻ�ڼ䣨2012��6��22��~24�գ������ʱ���и��ʻ��Ŷ��")
	end
	
end
LuaSendMenu()
return 1
end 