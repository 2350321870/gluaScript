NPCINFO = { 
serial="43" ,
base_name="huanchong" ,
icon=2549,
NpcMove=2549,
name="����" ,
iconaddr=1 ,
butt="10|10|55" ,
name_color="CEFFCE" ,
lastsay="�ǰ�����Ϊ���ˣ��Կ�ɱ֮" ,
LuaType=1,
} 

function do_talk(answer) 
if (answer=="ask") then 
       havetask =0 
        local level= LuaQuery("level")
		AddTopSayMenuItem("@7�����б�","")
		AddTopSayMenuItem("@7���˵ľ�ˡ�ÿ�ա�@0","T320")
		if(LuaQueryTask("T321") ==0 and level >=13) then
			AddTopSayMenuItem("���ϼ��塾���顿","T321") 
			havetask =1
			end
		if(LuaQueryTask("T322") ==0 and level >=14 and LuaQueryTask("T321") ==99) then
			AddTopSayMenuItem("��ֶ֮�顾���顿","T322") 
			havetask =1
			end
		if(LuaQueryTask("T323")==0 and level >=12) then
			AddTopSayMenuItem("����֮�������顿","T323") 
			havetask =1
			end
--		if(LuaQueryTask("T324")==0 and LuaQueryTask("T323")==99) then
--			AddTopSayMenuItem("����֮��2�����顿","T324") 
--			havetask =1
--			end
--		if(LuaQueryTask("T322") ==99 and LuaQueryTask("T326")==0)then
--			AddTopSayMenuItem("��ʦ�������顿","T326")
--			havetask=1
--		end
		if(LuaQueryTask("T325") ==0 and level >=10 and level <16) then
			AddTopSayMenuItem("����������ѭ����","T325") 
			havetask =1
			end	
			-------------------------------------
		if(LuaQueryTask("T325") ==1 ) then
			AddTopSayMenuItem("@2����������ѭ����@0","T325") 
			havetask =4
			end
			 
--		if(LuaQueryTask("T324")==1) then
--			AddTopSayMenuItem("@2����֮��2�����顿","T324") 
--			havetask =4
--			end
		if(LuaQueryTask("T323")==1) then
			AddTopSayMenuItem("@2����֮�������顿","T323") 
			havetask =4
			end
	-------------------------------------
		if((LuaQueryTask("Tsnpc_29")==1 or LuaQueryTask("Tsnpc_29")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_29")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_29")==1 or LuaQueryTask("Tenpc_29")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_29")
			havetask=2
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_13")==1 or LuaQueryTask("TfindNPC_13")==2)then
				AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_13")==98)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask=2
		end
		if(LuaQueryTask("Tbprw003")==1 or LuaQueryTask("Tbprw003")==2)then
			AddTopSayMenuItem("@2̽�����ơ�ÿ�ա�@0","Tbprw003")
			havetask=2
		end
-- 		if(LuaQueryTask("T326")>0 and LuaQueryTask("T326")<99)then
--			AddTopSayMenuItem("@2��ʦ�������顿","T326")
--		end
		if(LuaQueryTask("T352")==1 or LuaQueryTask("T352")==2)then
			AddTopSayMenuItem("@2�Ƶ�֮�ߡ����顿","T352")
			if( LuaQueryTask("T352")==1)then
			havetask=2
			end
		end
		if(LuaQueryTask("T267")==2 or LuaQueryTask("T267")==1) then
			AddTopSayMenuItem("@2�ͳ����塾���顿","T267") 
			havetask =2
			end
		if(LuaQueryTask("T322") ==1 or LuaQueryTask("T322")==2 or LuaQueryTask("T322")==3) then
			AddTopSayMenuItem("@2��ֶ֮�顾���顿@0","T322") 
			if(LuaQueryTask("T322")==2) then
			havetask =2
			end
		end
		if(LuaQueryTask("T321") ==1 ) then
			AddTopSayMenuItem("@2���ϼ��塾���顿@0","T321") 
			if(LuaQueryTask("T321B")==99 ) then 
			havetask =2
			end
		end 
		if(LuaQueryTask("T358")>1 and LuaQueryTask("T358")<99) then
			AddTopSayMenuItem("@2����֮־�����顿","T358") 
			if(LuaQueryTask("T358")==2)then
			havetask =2
			end
		end
		if(LuaQueryTask("T302")==3 and LuaQueryTask("T302C")==0) then
			AddTopSayMenuItem("@2ÿ����ʹ@0","T302C")
			havetask =2
		end

		if(LuaQueryTask("T41")== 1)then
			AddTopSayMenuItem("@2��Ʒ�ϳɡ��̡̳�","T41")
			havetask =2
		end
	
		

-------------�����̶�����
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
-------------�����̶�����    
elseif(answer=="liaotian") then
	LuaSay("���壺��...����ֶ��@3����@0�̳��˴��@3����@0���Ը񣬲�֪���Ǹ����ǻ�����")

elseif(answer=="T302C") then
	   if(LuaQueryTask("T302C")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
	   LuaSay("���壺��...֪����!")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302C",99)
	   UpdateMenu()
	   end

-------------------------------------------------------------���˵ľ������ʼ
elseif(answer=="T320") then  
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("320Taskday")) then
		LuaSetTask("T320",0)
		LuaSetTask("320dotime",0)
		LuaSetTask("lunshu",0)
	end
	if(LuaQueryTask("T320")==99) then
		LuaSay("���壺���Ѿ�������@3���˵ľ��@0����Ҫ����Ҳ������ô�ż�ѽ������������@!")
		if(LuaQueryTask("Thx2")==3) then
			if(LuaQueryTask("Thx2C")==0) then
				LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
				LuaSetTask("Thx2C",99)
			end
		end
	end
	if(LuaQueryTask("T320")==0) then
		LuaSay("���壺������û�о�������Ҳ�������ɺͻʵۣ���Ҫ��ø�ǿ���Ǿ��������������ȡ��@!")
		LuaSay("���壺С�����飬��ķ��ң����ڲ�����������ʱ��")
		LuaSay("���壺ֻҪ��@3����4��@0����������ͭǮ��@3������@0���ͻ�õ�@3ͭǮ@0��@3��������@0���������ĺ���ÿ����@35�λ���@0Ŷ")
		LuaSetTask("320Taskday",GetCurrentDay())
		LuaSay("���壺�����öͭǮ��@3����@0����@3����@0")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("����","zheng","")
		AddMenuItem("����","fan","")

	end

elseif(answer=="zheng" and LuaQueryTask("T320")<99) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r = LuaRandom(2)
	if(LuaQueryTask("320dotime")<4) then           
		if(LuaQueryTask("lunshu")<3) then            
			if(r==0) then
				  LuaSay("���壺��ϧ��´��ˣ������˥���������ĺ���@!������@7��������@0���������Լ��������ɣ�@1ԭ�ظ�����Ҫ���Ѳ���ͭ��@0Ŷ��")
				  LuaSay("���壺�����أ���ͳһ�����磬Խ���������þ����������ȻԽ�죬�ɾ�ͳһ��ҵָ�տɴ���")
				  LuaSay("���壺"..LuaQueryStr("name").."���ҿ����Ǹ�����֮�ģ�ÿ�쵽����������ϰ�²������ĵ�����ֻ���¸ҵ��ˣ�����һͳ���¡�")
				  LuaAddTask("320dotime",1)                
				  LuaDelTask("lunshu")
				  LuaSet("hp",0)
				  FlushMyInfo("0")
				  if(LuaQueryTask("Thx2")==3) then
					if(LuaQueryTask("Thx2C")==0) then
						LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
						LuaSetTask("Thx2C",99)
					end
				  end
			  else
				LuaSay("���壺���㻹�е���Ʒ��������Ҫ����@34�ֶ���@0����������ͨ��Ŷ@!��������@!")
				LuaAddTask("lunshu",1)                    
				AddMenuItem("ѡ���б�","","")
				AddMenuItem("����","zheng","")
				AddMenuItem("����","fan","")
			  end
		   else
	 
			if(r==0) then
				LuaSay("���壺��ϧ��´��ˣ������˥���������ĺ���@!������@7��������@0���������Լ��������ɣ�@1ԭ�ظ�����Ҫ���Ѳ���ͭ��@0Ŷ��")
				LuaSay("���壺�����أ���ͳһ�����磬Խ���������þ����������ȻԽ�죬�ɾ�ͳһ��ҵָ�տɴ���")
				LuaSay("���壺"..LuaQueryStr("name").."���ҿ����Ǹ�����֮�ģ�ÿ�쵽����������ϰ�²������ĵ�����ֻ���¸ҵ��ˣ�����һͳ���¡�")
				LuaAddTask("320dotime",1)                 
				LuaDelTask("lunshu")
				LuaSet("hp",0)
				FlushMyInfo("0")
				if(LuaQueryTask("Thx2")==3) then
					if(LuaQueryTask("Thx2C")==0) then
						LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
						LuaSetTask("Thx2C",99)
					end
				end
			else
				LuaSay("���壺�������ǿ�˰�����Ȼ�ܹ�ͨ������4�ֶ���@!")
				LuaSetTask("T320",99)
				if(LuaRandom(4)==0) then
					LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ������")
					LuaGive("o_box002",1,"Tdiaoyutg")
				end
				if(LuaQueryTask("Thx2")==3) then
					if(LuaQueryTask("Thx2C")==0) then
						LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
						LuaSetTask("Thx2C",99)
					end
				end
				local jingyan=(35000+level^2*30)*4
				LuaAddJx("combat_exp",jingyan,"T320")
				LuaGive("coin",10000,"T320")
				local r1=LuaRandom(4)
				if(r1==0) then
				LuaGive("e_clothes011",1,2,"T320") 
				elseif(r1==1) then
				LuaGive("e_earring003",1,2,"T320")
				elseif(r1==2) then
				LuaGive("e_shoes006",1,2,"T320") 
				elseif(r1==3) then
				LuaGive("e_pants010",1,2,"T320")      
				LuaDelTask("320dotime")
				LuaDelTask("lunshu")
				end
			end
		end
	else
	
	if(LuaQueryTask("lunshu")<3) then
		if(r==0) then
			LuaSay("���壺��ϧ��´��ˣ������˥���������ĺ���@!������@7��������@0���������Լ��������ɣ�@1ԭ�ظ�����Ҫ���Ѳ���ͭ��@0Ŷ��")
			LuaSay("���壺�����أ���ͳһ�����磬Խ���������þ����������ȻԽ�죬�ɾ�ͳһ��ҵָ�տɴ���")
			LuaSay("���壺"..LuaQueryStr("name").."���ҿ����Ǹ�����֮�ģ�ÿ�쵽����������ϰ�²������ĵ�����ֻ���¸ҵ��ˣ�����һͳ���¡�")
			LuaSetTask("T320",99)
			LuaDelTask("320dotime")
			LuaDelTask("lunshu")                
			LuaSet("hp",0)
			FlushMyInfo("0")
			if(LuaQueryTask("Thx2")==3) then
				if(LuaQueryTask("Thx2C")==0) then
				LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
				LuaSetTask("Thx2C",99)
				end
			end
		else
			LuaSay("���壺���㻹�е���Ʒ��������ֻ�������һ�λ����ˣ����о���@34�ζ���@0����������ͨ��Ŷ@!�������İ�@!")
			LuaAddTask("lunshu",1)
			AddMenuItem("ѡ���б�","","")
			AddMenuItem("����","zheng","")
			AddMenuItem("����","fan","")
		end
	else
		if(r==0) then
			LuaSay("���壺��ϧ��´��ˣ������˥���������ĺ���@!������@7��������@0���������Լ��������ɣ�@1ԭ�ظ�����Ҫ���Ѳ���ͭ��@0Ŷ��")
			LuaSay("���壺�����أ���ͳһ�����磬Խ���������þ����������ȻԽ�죬�ɾ�ͳһ��ҵָ�տɴ���")
			LuaSay("���壺"..LuaQueryStr("name").."���ҿ����Ǹ�����֮�ģ�ÿ�쵽����������ϰ�²������ĵ�����ֻ���¸ҵ��ˣ�����һͳ���¡�")
			LuaAddTask("320dotime",1)
			LuaSetTask("T320",99)
			LuaSet("hp",0)
			FlushMyInfo("0")
			if(LuaQueryTask("Thx2")==3) then
				if(LuaQueryTask("Thx2C")==0) then
					LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
					LuaSetTask("Thx2C",99)
				end
			end
		else
			LuaSay("���壺�������ǿ��@!����Ȼ���һ�λ��ᶼ������յ���@!")
			LuaSay(""..LuaQueryStr("name").."����������֮�����ڽ��ٵ��ҵ�ͷ���ˣ�����������@!")
			LuaSay("���壺�Ϸ�����������Ŷ��@4��������@0��@3��ԣ@0�������ص�@3С������@0�淨Ŷ����Ҫ���ϵ�ͭ�Ҵﵽ1W��5W��10W���ܿ���Ӵ~")
			if(LuaRandom(4)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ������")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			if(LuaQueryTask("Thx2")==3) then
				if(LuaQueryTask("Thx2C")==0) then
				LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
				LuaSetTask("Thx2C",99)
				end
			end
			LuaSetTask("T320",99)
			local jingyan=(35000+level^2*20)*4
			LuaAddJx("combat_exp",jingyan,"T320")
			LuaGive("coin",10000,"T320")
			local r1=LuaRandom(4)
				  if(r1==0) then
				  LuaGive("e_clothes011",1,2,"T320") 
				  elseif(r1==1) then
				  LuaGive("e_earring003",1,2,"T320")
				  elseif(r1==2) then
				  LuaGive("e_shoes006",1,2,"T320") 
				  elseif(r1==3) then
				  LuaGive("e_pants010",1,2,"T320") 
				  LuaDelTask("320dotime")
				  LuaDelTask("lunshu")
				  end
				  LuaDelTask("320dotime")
				  LuaDelTask("lunshu")
		end
	   end
	end
	

elseif(answer=="fan" and LuaQueryTask("T320")<99) then
	 local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local  r = LuaRandom(2)
    if(LuaQueryTask("320dotime")<4) then           ------------------5������
      if(LuaQueryTask("lunshu")<3) then            ------------------4������
         if(r==0) then
	  LuaSay("���壺��ϧ��´��ˣ������˥���������ĺ���@!������@7��������@0���������Լ��������ɣ�@1ԭ�ظ�����Ҫ���Ѳ���ͭ��@0Ŷ��")
	  LuaSay("���壺�����أ���ͳһ�����磬Խ���������þ����������ȻԽ�죬�ɾ�ͳһ��ҵָ�տɴ���")
	  LuaSay("���壺"..LuaQueryStr("name").."���ҿ����Ǹ�����֮�ģ�ÿ�쵽����������ϰ�²������ĵ�����ֻ���¸ҵ��ˣ�����һͳ���¡�")
          LuaAddTask("320dotime",1)                ----------------û�ҵ�1�Σ�������1����Ϊ5ʱ����Ҳ����ٽ��ж���
          LuaDelTask("lunshu")
		  LuaSet("hp",0)
          FlushMyInfo("0")
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          else
          LuaSay("���壺���㻹�е���Ʒ��������Ҫ����@34�ֶ���@0����������ͨ��Ŷ@!��������@!")
          LuaAddTask("lunshu",1)                    --------------lunshu��ÿͨ��һ�Σ�������1��������5Ϊʤ�����õ�����
	      AddMenuItem("ѡ���б�","","")
          AddMenuItem("����","zheng","")
          AddMenuItem("����","fan","")
	      end
	   else

	   if(r==0) then
	  LuaSay("���壺��ϧ��´��ˣ������˥���������ĺ���@!������@7��������@0���������Լ��������ɣ�@1ԭ�ظ�����Ҫ���Ѳ���ͭ��@0Ŷ��")
	  LuaSay("���壺�����أ���ͳһ�����磬Խ���������þ����������ȻԽ�죬�ɾ�ͳһ��ҵָ�տɴ���")
	  LuaSay("���壺"..LuaQueryStr("name").."���ҿ����Ǹ�����֮�ģ�ÿ�쵽����������ϰ�²������ĵ�����ֻ���¸ҵ��ˣ�����һͳ���¡�")
          LuaAddTask("320dotime",1)                 ----------------dotime��ָ������ɴ��� time��ָ��������ʱ��
          LuaDelTask("lunshu")
		  LuaSet("hp",0)
          FlushMyInfo("0")
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          else
          LuaSay("���壺�������ǿ�˰�����û������@35�λ���@0�ͳɹ��ˣ��ѵ����¾����Ǵ�˵��������������@!")
          LuaSetTask("T320",99)
          if(LuaRandom(4)==0) then
		  LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ������")
		  LuaGive("o_box002",1,"Tdiaoyutg")
		  end
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          local jingyan=(35000+level^2*20)*4
          LuaAddJx("combat_exp",jingyan,"T320")
          LuaGive("coin",10000,"T320")
          local  r1=LuaRandom(4)
          if(r1==0) then
          LuaGive("e_clothes011",1,2,"T320") 
          elseif(r1==1) then
          LuaGive("e_earring003",1,2,"T320")
          elseif(r1==2) then
          LuaGive("e_shoes006",1,2,"T320") 
          elseif(r1==3) then
          LuaGive("e_pants010",1,2,"T320")   
		  LuaDelTask("320dotime")
          LuaDelTask("lunshu")
          end
		  LuaDelTask("320dotime")
          LuaDelTask("lunshu")
	   end
	   end
	else
      if(LuaQueryTask("lunshu")<3) then
         if(r==0) then
	  LuaSay("���壺��ϧ��´��ˣ������˥���������ĺ���@!������@7��������@0���������Լ��������ɣ�@1ԭ�ظ�����Ҫ���Ѳ���ͭ��@0Ŷ��")
	  LuaSay("���壺�����أ���ͳһ�����磬Խ���������þ����������ȻԽ�죬�ɾ�ͳһ��ҵָ�տɴ���")
	  LuaSay("���壺"..LuaQueryStr("name").."���ҿ����Ǹ�����֮�ģ�ÿ�쵽����������ϰ�²������ĵ�����ֻ���¸ҵ��ˣ�����һͳ���¡�")
          LuaSetTask("T320",99)
          LuaDelTask("320dotime")
		  LuaDelTask("lunshu")                --------------------��ҹҵ��Ժ�Ҫ��նĲ�ʤ��������
          LuaSet("hp",0)
          FlushMyInfo("0")
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          else
          LuaSay("���壺���㻹�е���Ʒ��������ֻ�������һ�λ����ˣ���Ҫ����@34�ζ���@0����������ͨ��Ŷ@!�������İ�@!")
          LuaAddTask("lunshu",1)
	      AddMenuItem("ѡ���б�","","")
          AddMenuItem("����","zheng","")
          AddMenuItem("����","fan","")
	      end
	   else

	   if(r==0) then
	  LuaSay("���壺��ϧ��´��ˣ������˥���������ĺ���@!������@7��������@0���������Լ��������ɣ�@1ԭ�ظ�����Ҫ���Ѳ���ͭ��@0Ŷ��")
	  LuaSay("���壺�����أ���ͳһ�����磬Խ���������þ����������ȻԽ�죬�ɾ�ͳһ��ҵָ�տɴ���")
	  LuaSay("���壺"..LuaQueryStr("name").."���ҿ����Ǹ�����֮�ģ�ÿ�쵽����������ϰ�²������ĵ�����ֻ���¸ҵ��ˣ�����һͳ���¡�")
          LuaAddTask("320dotime",1)
          LuaSetTask("T320",99)
		  LuaSet("hp",0)
          FlushMyInfo("0")
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          else
          LuaSay("���壺�������ǿ��@!����Ȼ���һ�λ��ᶼ������յ���@!")
          LuaSay(""..LuaQueryStr("name").."����������֮�����ڽ��ٵ��ҵ�ͷ���ˣ�����������@!")
          LuaSetTask("T320",99)
          if(LuaRandom(4)==0) then
		  LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ������")
		  LuaGive("o_box002",1,"Tdiaoyutg")
		  end
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ�˾��Ԫ�԰ɡ�@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          local jingyan=(35000+level^2*20)*4
          LuaAddJx("combat_exp",jingyan,"T320")
          LuaGive("coin",10000,"T320")
          local  r1=LuaRandom(4)
          if(r1==0) then
          LuaGive("e_clothes011",1,2,"T320") 
          elseif(r1==1) then
          LuaGive("e_earring003",1,2,"T320")
          elseif(r1==2) then
          LuaGive("e_shoes006",1,2,"T320") 
          elseif(r1==3) then
          LuaGive("e_pants010",1,2,"T320")      
		  LuaDelTask("320dotime")
          LuaDelTask("lunshu")
          end
		  LuaDelTask("320dotime")
          LuaDelTask("lunshu")
	   end
	   end
	end

---------------------------------------------------------------���˵ľ���������

		
elseif(answer=="T267") then    ------------------------�ͳ����� 
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQueryTask("T267")==2 or LuaQueryTask("T267")==1) then
		LuaSay("���壺������ԣ��С�Ӽǹ��ˣ��˴λ�ĳ���������������������ʦ���������ġ�")
		LuaSetTask("T267",2)
		    AddMenuItem("@7�������","")
	            AddMenuItem("��ȡ����","T267jl")
		end 
			elseif(answer=="T267jl")then	            
		       if(LuaQueryTask("T267")==2)then
				LuaSetTask("T267",99) 
				DelItem("o_mission004",LuaItemCount("o_mission004"))
				LuaAddJx("combat_exp",24730,"T267")               
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("267") 
				UpdateMenu() 
				end

elseif(answer=="T325") then                   --------------------��������
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQueryTask("T325") == 0 ) then 
				LuaSay("���壺����@3�޼�@0������ѹ�����Ϸ��ɲ����ٳ�ʲô�����ˣ������������Ϸ�����Ρ�Ӣ�ۿ�Ը��æ��")
				LuaSay("���壺��������@210ֻ��ƺ�5ֻ����@0���ɡ�@115�����¿ɻ��˫�����齱��@0��")
				LuaSetTask("task_kill/mon_007/T325",1)
				LuaSetTask("task_kill/mon_008/T325",1)
				LuaSetTask("T325",1)                
				AddLog("�������������顿",325)
				UpdateTopSay("�����ƺ�������10ֻ��ظ�")
				UpdateMenu() 

		elseif(LuaQueryTask("T325") == 1 ) then
			local a=(LuaQueryTask("task_kill/mon_007/T325")-1)
			local b=(LuaQueryTask("task_kill/mon_008/T325")-1)
			if(a>= 5 and b>= 5 ) then
				LuaSay("���壺ɱ����ô���@2��ƺ�����@0����ôһ����ȥ��������ô�డ��")
				LuaSay("���壺������Ҫ�������·�ɲ���һ��������£������ܹ��������Ұ���")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T325jl")
			else
				LuaSay("���壺���Ѿ���ɱ��@2"..a.."ֻ��ƣ�"..b.."ֻ����@0��ɱ����@25ֻ��ƺ�5ֻ����@0�������Ұɣ�@115�����¿ɻ��˫�����齱��@0��")
			end
		end
              elseif(answer=="T325jl")then
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
                AddMenuItem("����ѡ��","","")
		AddMenuItem("���齱��","exp","")
                AddMenuItem("��Ǯ����","money","")
			elseif(answer=="exp") then
			local level=LuaQuery("level")
				if(level>80)then
		level=80
	end
  				if(LuaQueryTask("T325")==1) then
				if(LuaQueryTask("task_kill/mon_007/T325") >= 11 and LuaQueryTask("task_kill/mon_008/T325") >= 11 ) then
				LuaDelTask("task_kill/mon_008/T325")
				LuaDelTask("task_kill/mon_007/T325")
				if(level <15) then
					local jingyan
					if(LuaQueryTask("T325_first")~=1)then
						jingyan=((13000*2+level^2*40)*1.4)
					else
						jingyan=(13000*2+level^2*40)
					end
					LuaAddJx("combat_exp",jingyan,"T325")
					if(LuaQueryTask("T235_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T235_a",99)
						LuaSetTask("T325_first",1)
					end	
				else
					local jingyan1
					if(LuaQueryTask("T325_first")~=1)then
						jingyan1=((13000+level^2*20)*1.4)
					else
						jingyan1=(13000+level^2*20)
					end
					LuaAddJx("combat_exp",jingyan1,"T325")
					if(LuaQueryTask("T235_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T235_a",99)
						LuaSetTask("T325_first",1)
					end	
				end
				LuaSetTask("T325",0)
				DelLog("325")
				UpdateMenu()
				end
				end



				elseif(answer=="money") then
				local level= LuaQuery("level")
					if(level>80)then
		level=80
	end
	  			if(LuaQueryTask("T325")==1) then
				if(LuaQueryTask("task_kill/mon_007/T325") >= 11 and LuaQueryTask("task_kill/mon_008/T325") >= 11 ) then
				if(GetCurrentDay()~=LuaQueryStrTask("325Taskday")) then
				LuaSetTask("T325dotime",0)
				end
				LuaDelTask("task_kill/mon_008/T325")
				LuaDelTask("task_kill/mon_007/T325")
				  if(LuaQueryTask("T325dotime")<10) then
				   LuaSetTask("325Taskday",GetCurrentDay())
				   LuaAddTask("T325dotime",1)
				   LuaGive("coin",600,"T325")
				   LuaSetTask("T325",0)
				   DelLog("325")
				   UpdateMenu()
				   else
				   LuaSay("���壺������Ѿ�����10�ν�Ǯ������ֻ�ܵõ����齱���ˡ�")
				   if(level <15) then
				   local jingyan=(13000*2+level^2*40)
				   LuaAddJx("combat_exp",jingyan,"T325")
				   LuaAddAchievementSchedule("Task_num",1)	
				   else
				   local jingyan1=(13000+level^2*20)
				    LuaAddJx("combat_exp",jingyan1,"T325")
					LuaAddAchievementSchedule("Task_num",1)	
				    end
				    LuaSetTask("T325",0)
				    DelLog("325")
				   UpdateMenu()
				   end
				   end
				   end

elseif(answer=="T321") then             ---------------���ϼ���
	local level= LuaQuery("level")
		if(LuaQueryTask("T321") == 0 ) then 
			LuaSay("���壺�뵱�꣬�һ������Ǵ���ĵ�һ��ҡ����@3����@0һ��֮������֮�ϡ����α�����ĺ����ŷ�ɥ����")
			LuaSay("���壺ֻ�������ڱ������ɱ������ǣ���ͼ�ϵ������������ǰ˵����Ը����@4��������@0��@3ľ��@0֮�У��ͷ�Ӣ�۰���ȥ���ҡ�")
			LuaSetTask("T321",1) 
			AddLog("���ϼ��塾���顿",321)
			UpdateTopSay("ȥ�Ѳ齨������������")
			UpdateMenu()
			UpdateNPCMenu("muxiang03")
		elseif(LuaQueryTask("T321")==1) then
			if(LuaQueryTask("T321B")==99 ) then 	
			LuaSay("���壺������˵���Ϸ�һ��Ϊ�������α�@3л��@0�������ӣ���Ȼ�����Ǿ��������Ϸ���Ը�������ܵǴ�")
			LuaSay("���壺������磬�㵽���������Լ�������ִ�Բ�������������ɲ��������������ˡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T321jl")
			else
			LuaSay("���壺ȥ��@4��������@0��@3����@0�����������@2����@0���ظ��ҡ�@!")
			end 
		end
			elseif(answer=="T321jl")then	
		       if(LuaQueryTask("T321")==1 and LuaItemCount("o_mission002")>=1)then
				LuaSetTask("T321",99) 
				DelItem("o_mission002",1)
				LuaAddJx("combat_exp",40590,"T321") 
				LuaGive("e_head005",1,1,"T321")          --13��Ь��
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("321") 
				UpdateMenu() 
				end


elseif(answer=="T322") then              ------------------------��ֶ֮��
		if(LuaQueryTask("T322")==0) then
		LuaSay("���壺���������죬���α�������ĺ����ŷ�ɥ������ϧ֮�����@3����@0��λ���ɣ��������ա�")
		LuaSay("���壺Сֶ@3����@0��ȫ�̳����丸֮�磬�������Ǻ�ˬ����Ը����������ͬ���Ĵ���������")
		LuaSay("���壺л�����������ң�ϣ�����°���ȥ��@4��������@0��@3л��@0��һ��������֮����������ֶ��תת�ԡ�")
		LuaSetTask("T322",1)
		UpdateTopSay("ȥ�ҽ������ϵ�л����")
                AddLog("��ֶ֮�顾���顿",322)
                UpdateMenu()
		elseif(LuaQueryTask("T322")==1) then
		LuaSay("���壺��@4��������@0��@3л��@0���һ����������֮����")
		elseif(LuaQueryTask("T322")==2 ) then  
		LuaSay("���壺�úã�������½��Ȿ@2���¾�@0ת������ֶ��@3����@0��������@4�嶷ɽ@0��@2������@0����ǰ����")
                LuaSetTask("T322",3)
		UpdateTopSay("ȥ���嶷ɽ�Ļ�����")
                AddLog("��ֶ֮�顾���顿",322)
                UpdateMenu()
		elseif(LuaQueryTask("T322")==3) then
		LuaSay("���壺��@2���¾�@0ת������ֶ����������@4�嶷ɽ@0��@3����@0��@2������@0����ǰ����")
		end 

elseif(answer=="T323") then                ---------------------------����֮�������顿
		if(LuaQueryTask("T323")==0) then
				LuaSay("���壺�������֣�ɱ�������������ַ��𷴿���ɱ¾���������ܿ���վ���ƽ����հ���")
				LuaSay("���壺��ĳ������֮�������֪������֪�Ļ�����ȥ@2����5ֻ����@0�ɣ����Ǿ�����@4��������@0��")
				if(TeamCount()>=2)then
					LuaSay("���壺�㻹�ڹ����ս������Ӳ�������������������񣬻��ж���ľ���ӳ�Ŷ��@!")
				else
					LuaSay("���壺��������ҵ�����һ�������������񣬽����ж���ľ��齱��Ŷ�����ֵܣ���ͳһ@!��")
				end
				LuaSetTask("T323",1)
				LuaSetTask("task_kill/mon_008/T323",1)
				UpdateTopSay("��������5ֻ��ظ���")
				AddLog("����֮�������顿",323)
				UpdateMenu()
		elseif(LuaQueryTask("T323")==1) then
			local c=LuaQueryTask("task_kill/mon_008/T323")-1
			if(LuaQueryTask("task_kill/mon_008/T323")>=5) then
				LuaSay("���壺�������ĺã��������ᷢ��һЩ����֮���ˣ�@!")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T323jl")
   
			else 
				LuaSay("���壺���������@2"..c.."ֻ@0������������@25ֻ@0���������ҡ����Ǿ�����@4��������@0��")
			end
		end 
			  elseif(answer=="T323jl")then	
		         if(LuaQueryTask("T323")==1) then			
				if(LuaQueryTask("task_kill/mon_008/T323")>=5) then
					LuaSetTask("T323",99)
					if(TeamCount()>=2)then
						LuaAddJx("combat_exp",40660,"T323")
					else
						LuaAddJx("combat_exp",33660,"T323")
					end
					LuaAddAchievementSchedule("Task_num",1)	
					LuaDelTask("task_kill/mon_008/T323")
					DelLog("323")
					UpdateMenu()
				end
			end

elseif(answer=="T324") then                 -------------------------����֮��2�����顿
		if(LuaQueryTask("T324")==0) then
				LuaSay("���壺���¿ɻ��ǵ��������˲��������������������������ˣ�����û����еĽ�Ʒ��ֳ���ܻ�ɺ���")
				LuaSay("���壺������ȥ����@25ֻ���@0�������ظ��Ұɣ����Ǿ�����@4��������@0��")
				LuaSetTask("T324",1)
				LuaSetTask("task_kill/mon_007/T324",1)
				UpdateTopSay("������5ֻ��ظ���")
				AddLog("����֮��2�����顿",324)
				UpdateMenu()
		elseif(LuaQueryTask("T324")==1) then
		d=LuaQueryTask("task_kill/mon_007/T324")-1
			if(LuaQueryTask("task_kill/mon_007/T324")>=5) then
				LuaSay("���壺���úã�������ƽ���ˡ�����Ҳ��ˣ��������˶���һ���ˣ�Ѫ��ɱ¾�ܲ��ǽ��֮����@!")
				LuaSay("���壺�����ˣ��������ģ��������е���������Ѫ��ɱ¾������������һ�ҵļ���֮���ɡ�")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T324jl")
			else 
				LuaSay("���壺�������@2"..d.."ֻ@0��ƣ�����@4��������@0����@25ֻ@0�������Ұɡ�")
			end
		end 
			  elseif(answer=="T324jl")then	
		        if(LuaQueryTask("T324")==1) then			
			if(LuaQueryTask("task_kill/mon_007/T324")>=5) then
				LuaSetTask("T324",99)
				LuaAddJx("combat_exp",33660,"T324")
				LuaAddAchievementSchedule("Task_num",1)	
				LuaDelTask("task_kill/mon_007/T324")
				DelLog("324")
				UpdateMenu()
				end
				end

elseif(answer=="T358")then                      -----------------------------------����֮־�����顿
	if(LuaQueryTask("T358")==2)then
	LuaSay("���壺����������������������������֮�ʣ����������������������ǿ�����Щ���˶�Թ��ʱ��")
	LuaSay("���壺���ң��ҿ���ֶ�����󣬲�ϣ����������ɱ������ǡ���ȥת��������@4�嶷ɽ@0��ֶ��@3����@0�ɡ�")
	UpdateTopSay("ת���嶷ɽ�Ļ���")
	LuaSetTask("T358",3)
	AddLog("����֮־�����顿",358)
	UpdateMenu()
	elseif(LuaQueryTask("T358")==3)then
	LuaSay("���壺����ת��ʲô��ȥ�ظ�@4�嶷ɽ@0��@3����@0�ɡ�")
	end

-------------------------------------------��ʦ��
	elseif(answer=="T326")then
	    if(LuaQueryTask("T326")==0)then
	    	LuaSay("���壺���⺢�ӻ����������ս������ܻ�����ʵ�����ף��ҵ�ֶ��@3����@0����Χ����ʦ�����ˣ���ȥ@4�嶷ɽ@0������")
       	 	LuaSay(""..LuaQueryStr("name").."���Թ�Ӣ�۳����꣬ʱ����Ӣ�ۣ���һ��Ҫȥ������")
        	LuaSetTask("T326",1)
		AddLog("��ʦ�������顿",326)
		UpdateTopSay("ȥ�嶷ɽ�һ���")
		UpdateMenu()
	    else
		LuaSay("���壺������Ӣ�ۣ���ȥ��ֶ��@3����@0��������ɣ�������@4�嶷ɽ@0")
            end
		
		
		
-------------------------------------------------  �Ƶ�֮��
elseif(answer=="T352")then
	if(LuaQueryTask("T352")==1)then
		LuaSay("���壺��֪������ֶ���������İɣ�֪��֪�ˣ����ܰ�ս��ʤ����ȥ��֪���ɡ�")
		LuaSetTask("T352",2)
		AddLog("�Ƶ�֮�ߡ����顿",352)
		UpdateTopSay("�ظ��嶷ɽ�Ļ���")
		UpdateMenu()
	elseif(LuaQueryTask("T352")==2)then
		LuaSay("���壺֪��֪�ˣ����ܰ�ս��ʤ����ȥ��֪@4�嶷ɽ@0��@3����@0�ɡ�")
	end

---------------------------------------------̽������
elseif(answer=="Tbprw003")then
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw003")==1)then
			LuaSay(LuaQueryStr("name").."������Զ�����������������ϰ��֮����")
			LuaSay("���壺ϰ��֮������ɻ��ļ���Ҫ��ɾʹ�ҵ������ƽ���ͣ�ѭ�򽥽����������湦����ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ���")
			LuaSetTask("Tbprw003",2)
			UpdateMenu()
		elseif(LuaQueryTask("Tbprw003")==2)then
			LuaSay("���壺��ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
		end
	else
		LuaSay("���壺�����������@2̽�����ơ�ÿ�ա�δ��ɣ������Զ����ã���@4����@0�����½�����ɣ�")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaDelTask("Tbprw003")
		UpdateMenu()
	end


--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_13")==1)then
					LuaSay("���壺�ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_13",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_13")==2)then
					LuaSay("���壺�ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_13",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("���壺��Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("���壺���Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ��л����ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end
	                                          ---------------------�ϳ�2��ë
	 elseif(answer=="T41") then
	   if(LuaQueryTask("T41")==1) then
		if(LuaItemCount("o_material_12")>0) then
		LuaSay("���壺�����Ǵ���������ô��ͺϳ���1��2��ë�����Ǹ���Ľ�����")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T41jl")
		else
		LuaSay("���壺�㻹û�кϳ�@22��ë@0�أ�����������@22�����Ϻϳ���@0�Ϳ��Ժϳ��ˡ�")
		UpdateTopSay("ʹ�úϳ���ϳ�1��2��ë")
		end
	   end
    elseif(answer=="T41jl")then
      if(LuaQueryTask("T41")== 1) then
        LuaAddJx("combat_exp",25000,"T41")--ԭ����
	LuaGive("e_necklace001",1,1,"T41")
	LuaGive("coin",400,"T41")
        LuaSetTask("T41",99)
        DelLog("41")
        UpdateMenu()
	end

elseif(answer=="Tsnpc_29")then
	if(LuaQueryTask("Tsnpc_29")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("���壺���ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_29",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_29")==2)then
		LuaSay("���壺���ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_29")then
	if(LuaQueryTask("Tenpc_29")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("���壺�ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_29",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_29")==2)then
		LuaSay("���壺���Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end
