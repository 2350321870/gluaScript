NPCINFO = {
serial="308" ,
base_name="bossLv60FB",
icon=2988,
NpcMove=2988,
name="������Ы",
iconaddr=1 ,
butt="10|10|48" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 150000,
addmp = 2500000,
addjz=8000,
addfy=260,
addgj=750,
isboss = 1,
level = 67,
ca = 1,
sp=1,   
move_speed = 5,
att_frep = 3000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 8,
skill_list="162:4 122:4 129:4 221:3 221:6 220:5 222:2 223:9",----162:����  122������ն  129������֮�� ר�����ܣ� 221�����׺䶥    220�����ֹ�Ԫ�� 222�����������  223��ǿ������
win_exp = 150000,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "e_clothes022:6|e_falchion020:11|e_sword021:16|e_pen011:22|e_book009:27|e_shield009:32|e_knife011:38|e_pants022:44|e_earring009:50|e_falchion158:53|e_shield158:56|e_sword158:60|e_knife158:63|e_fan158:66|e_book158:70|e_head158:75|e_clothes158:80|e_pants158:85|e_shoes158:90|e_earring158:95|e_necklace158:100",
}

function BossAI(bhp,bmp,EnemyID,hp,mp,level)
 --[[       BossLocalMsg("��������"..LuaQueryEnemy(EnemyID,"hp").."HP��")
        BossLocalMsg("��������"..LuaQueryEnemy(EnemyID,"mp").."MP��")
        BossLocalMsg("��lvΪ"..LuaQueryEnemy(EnemyID,"level").."��")
        BossLocalMsg("��������"..LuaQueryEnemy(EnemyID,"att").."������")
        BossLocalMsg("��������"..LuaQueryEnemy(EnemyID,"def").."������")
        BossLocalMsg("����"..LuaQueryStrEnemy(EnemyID,"name").."��")
        BossLocalMsg("����"..LuaQueryStrEnemy(EnemyID,"class").."��")          ]]
 -----------------------��һ�׶�
         if(bhp>=80)then
            if(LuaQueryVar("ref1") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",1)
            elseif(LuaQueryVar("ref1") ==1) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref1",2)
            elseif(LuaQueryVar("ref1") ==2) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",3)
            elseif(LuaQueryVar("ref1") ==3) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref1",4)
            elseif(LuaQueryVar("ref1") ==4) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",5)
            elseif(LuaQueryVar("ref1") ==5) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref1",6)
            elseif(LuaQueryVar("ref1") ==6) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",7)
            elseif(LuaQueryVar("ref1") ==7) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref1",0)
			end


			if(bhp<85 and LuaQueryVar("flag1")==0)then
			BossLocalMsg("�쵰������Һ�ʹ���������ҵ�ʹ���㱾���ˣ�") ------��ʾ���boss����ڶ��׶�
			LuaSetVar("flag1",1)
			end
  --------------------------�ڶ��׶�
         elseif(bhp>=30 and bhp<80) then
            if(LuaQueryVar("ref2") ==0) then
                    if(LuaQueryStrEnemy(EnemyID,"class")=="shen") then   --Ŀ��Ϊսʿ���������׺䶥
                        if(LuaQueryVar("ref2") ==0) then
                        BossLocalMsg("�ɶ�����֮�¾�սʿ���Ѳ��ˣ�")
                        end
               			Attack(EnemyID,4,0)
               			LuaSetVar("ref2",1)
               		else
               		    if(LuaQueryVar("ref2") ==0) then
               		    BossLocalMsg("��������������֮��ֻ��սʿ���ܿ�ס�ҵĹ��������������������죡")
               		    end
               		    Attack(EnemyID,5,0)                        --Ŀ�겻Ϊսʿ���������׺䶥
               		    LuaSetVar("ref2",1)
					end
            elseif(LuaQueryVar("ref2") ==1) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref2",2)
            elseif(LuaQueryVar("ref2") ==2) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref2",3)
            elseif(LuaQueryVar("ref2") ==3) then
               Attack(EnemyID,2,0)
               LuaSetVar("ref2",4)

            elseif(LuaQueryVar("ref2") ==4) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref2",5)
            elseif(LuaQueryVar("ref2") ==5) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref2",6)
            elseif(LuaQueryVar("ref2") ==6) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref2",0)
			end

			if(bhp<35 and LuaQueryVar("flag2")==0)then
			BossLocalMsg("�˶��۸����٣��������ҿ첻���ˣ�������ƴ�ˣ�") ------��ʾ���boss��������׶�
			LuaSetVar("flag2",1)
			end
  -------------------------------------�����׶�
          elseif(bhp<30 ) then
              if(LuaQueryVar("ref3") ==0) then
                BossLocalMsg("�ɶ�"..LuaQueryStrEnemy(EnemyID,"name")..",�������������ķ�����")
               	Attack(EnemyID,8,0)                        --��������buff��������ɱ��ǰ��
                LuaSetVar("ref3",1)
           	  elseif(LuaQueryVar("ref3") ==1) then
             		 Attack(EnemyID,0,0)
             		 LuaSetVar("ref3",2)
              elseif(LuaQueryVar("ref3") ==2) then
                     Attack(EnemyID,0,0)
                     LuaSetVar("ref3",3)
              elseif(LuaQueryVar("ref3") ==3) then
                    Attack(EnemyID,0,0)
                    LuaSetVar("ref3",4)
           	  elseif(LuaQueryVar("ref3")==4) then
                	if(LuaQueryEnemy(EnemyID,"def")<=50) then
                    BossLocalMsg("û�˽��"..LuaQueryStrEnemy(EnemyID,"name").."�����ĸ���״̬�������������������ˣ���������")
                    Attack(EnemyID,6,0)                   --����buffû����ɢ��Ⱥ��
                    LuaSetVar("ref3",5)
					else
				    BossLocalMsg("���аɣ�")
				    Attack(EnemyID,7,0)
				    LuaSetVar("ref3",5)
               		end
              elseif(LuaQueryVar("ref3") ==5) then
             		 Attack(EnemyID,0,0)
             		 LuaSetVar("ref3",6)
              elseif(LuaQueryVar("ref3") ==6) then
                     Attack(EnemyID,1,0)
                     LuaSetVar("ref3",7)
              elseif(LuaQueryVar("ref3") ==7) then
                    Attack(EnemyID,2,0)
                    LuaSetVar("ref3",8)
              elseif(LuaQueryVar("ref3") ==8) then
             		 Attack(EnemyID,3,0)
             		 LuaSetVar("ref3",9)
              elseif(LuaQueryVar("ref3") ==9) then
                     Attack(EnemyID,0,0)
                     LuaSetVar("ref3",10)
              elseif(LuaQueryVar("ref3") ==10) then
                    Attack(EnemyID,0,0)
                    LuaSetVar("ref3",0)
			  end

            if(bhp<5 and LuaQueryVar("flag3")==0)then
			BossLocalMsg("���ˣ���װ������...")
			LuaSetVar("flag3",1)
			end
	     end

return 1
end