library IEEE;
use  IEEE.std_logic_1164.all;


entity chip is
  port(
   a,b,c: in std_logic ;
	f: out std_logic
   );
end chip;
	
architecture behavioural of chip is
	COMPONENT modAND2
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
	COMPONENT modNOT
	PORT(
		a : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
	COMPONENT modOR2
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
signal siga,sigb : std_logic;
begin
 	Inst_modOR2: modOR2 PORT MAP(
		a => siga,
		b => sigb,
		f => f
	);
		Inst_modNOT: modNOT PORT MAP(
		a => c,
		f => sigB
	);
		Inst_modAND2: modAND2 PORT MAP(
		a => a ,
		b => b,
		f => sigA
	);
end behavioural;
