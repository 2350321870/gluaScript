NPCINFO = {		
serial="304" ,
base_name="bossLv20FB" ,
icon=2757,
NpcMove=2757,
name="Ҧ��" ,
iconaddr=1 ,
butt="1|1|85" ,
name_color="CEFFCE" ,
LuaType=1,
class = "shen",
addhp = 30000,
addmp = 2500000,
addjz=9000,
addfy=50,
addgj=90,
isboss = 1,
level = 28,
ca = 1,
sp=1,  --�и��ֶΣ�װ�����������67%����30%����3%��û��sp�ֶΣ���89%����10%����1%
move_speed = 5,
att_frep = 3000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 5,
skill_list="122:2 129:2 221:1 222:1 223:1",----122������ն  129������֮�� 221�����׺䶥 222�����������  223:ǿ������
win_exp = 50000,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
--װ�����䣺25~30 
other = "e_clothes010:10|e_falchion008:20|e_sword010:30|e_fan004:40|e_book003:50|e_shield003:60|e_knife005:70|e_pants010:80|e_earring003:100",
}

--boss��ɫ��

function BossAI(bhp,bmp,EnemyID,hp,mp,level)
      if(bhp>=60)then
            
            
			 
		 	if(LuaQueryVar("ref1") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",1)
            elseif(LuaQueryVar("ref1") ==1) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",2)
            elseif(LuaQueryVar("ref1") ==2) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",3)
   			elseif(LuaQueryVar("ref1") ==3) then
              	if(LuaItemCountEnemy(EnemyID,"coin") >= 0 and LuaItemCountEnemy(EnemyID,"coin") <500)then
					BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."�����������ͭ�Ҷ�û�У����Ǳ��һ��")
					Attack(EnemyID,5,0)
				elseif(LuaItemCountEnemy(EnemyID,"coin") >=500 and LuaItemCountEnemy(EnemyID,"coin") < 50000)then
					BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."�����в���ͭ�ң�����Ϊ���ڰ������Ҳ�֪������͵��1ͭ�ң�")
					LuaDelItemEnemy(EnemyID,"coin",1)
					Attack(EnemyID,4,0)
				elseif(LuaItemCountEnemy(EnemyID,"coin") >= 50000)then
					BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."���Ͼ�Ȼ�������ͭ�ң�����Ǯ����͵��10ͭ�ң�")
					LuaDelItemEnemy(EnemyID,"coin",10)
					Attack(EnemyID,3,0)
				end
                LuaSetVar("ref1",0)
			end
			
  --------------------------�ڶ��׶�
         elseif(bhp>=20 and bhp<60) then
         
         	if(bhp<50 and LuaQueryVar("flag1")==0)then
			BossLocalMsg("��������������ֻʣ�°������ˣ���") ------��ʾ���boss�Ѿ�����İ�Ѫ�ˣ�ͬʱ���ڵڶ��׶� 
			LuaSetVar("flag1",1)
			end   

			if(LuaQueryVar("ref2") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref2",1)
            elseif(LuaQueryVar("ref2") ==1) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref2",2)
            elseif(LuaQueryVar("ref2") ==2) then
               Attack(EnemyID,0,0)
               if(LuaQueryEnemy(EnemyID,"hp")<=500)  then
			   BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."�㻹����Ѫ���ѵ����һ�������") ------��ʾ��Ҽ�Ѫ
			   end
               LuaSetVar("ref2",3)
            elseif(LuaQueryVar("ref2") ==3) then
               Attack(EnemyID,0,0)
               if(LuaQueryEnemy(EnemyID,"mp")<=300)   then
			   BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."����Ұ�������Ұ���ûħ���ܷż��ܣ��ҿ�����ô���ң�����!") ------��ʾ��Ҽ���
			   end
               LuaSetVar("ref2",4)
            elseif(LuaQueryVar("ref2") ==4) then
               Attack(EnemyID,2,0)
               LuaSetVar("ref2",0)
			end

			if(bhp<20 and LuaQueryVar("flag2")==0)then
			BossLocalMsg("�������������ҿ�Ų�ס�ˣ�") ------��ʾ���boss��������׶�
			LuaSetVar("flag2",1)
			end
  -------------------------------------�����׶�
    elseif(bhp<20 ) then
        if(LuaQueryVar("ref3") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref3",1)
            elseif(LuaQueryVar("ref3") ==1) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref3",2)
            elseif(LuaQueryVar("ref3") ==2) then
               Attack(EnemyID,2,0)
               LuaSetVar("ref3",3)
            elseif(LuaQueryVar("ref3") ==3) then
               Attack(EnemyID,5,0)
               BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."��Ҫ�ǲ�����ɢ����Ч����������ô���ɵı��㣡") ------��ʾ�����ɢbuff
               LuaSetVar("ref3",0)
			end

	
	end 

	   
return 1
end	   