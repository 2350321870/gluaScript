NPCINFO = {
serial="301" ,
base_name="bossLv40FB",
icon=2759,
NpcMove=2759,
name="���ħ��",
iconaddr=1 ,
butt="10|10|80" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 85000,
addmp = 2500000,
addjz=9000,
addfy=135,
addgj=480,
isboss = 1,
level = 48,
ca = 1,
sp=1,
move_speed = 5,
att_frep = 3000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 8,
skill_list="162:4 122:4 129:4 221:1 221:3 220:3 222:2 223:9",----162:����  122������ն  129������֮�� ר�����ܣ� 221�����׺䶥    220�����ֹ�Ԫ�� 222�����������  223��ǿ������
win_exp = 150000,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
--50��װ����--165��׺��װ��
other = "e_clothes019:10|e_falchion017:20|e_sword019:30|e_pen008:40|e_pants019:50|e_falchion152:53|e_shield152:56|e_sword152:60|e_knife152:63|e_pen152:66|e_book152:70|e_head152:75|e_clothes152:80|e_pants152:85|e_shoes152:90|e_earring152:95|e_necklace152:100"
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
			BossLocalMsg("��Ͷ���ˣ���Ͷ���ˣ�û���԰���������Ͷ��...")
			LuaSetVar("flag3",1)
			end
	     end

return 1
end