
-- VHDL Instantiation Created from source file blink.vhd -- 10:19:01 12/16/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT blink
	PORT(
		clk_i : IN std_logic;          
		blinkout : OUT std_logic
		);
	END COMPONENT;

	Inst_blink: blink PORT MAP(
		clk_i => ,
		blinkout => 
	);


