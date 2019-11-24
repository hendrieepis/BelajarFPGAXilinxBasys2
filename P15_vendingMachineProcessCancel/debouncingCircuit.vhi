
-- VHDL Instantiation Created from source file debouncingCircuit.vhd -- 13:59:49 11/27/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT debouncingCircuit
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;
		sw1_in : IN std_logic;
		sw2_in : IN std_logic;
		sw3_in : IN std_logic;
		sw4_in : IN std_logic;          
		sw1_out : OUT std_logic;
		sw2_out : OUT std_logic;
		sw3_out : OUT std_logic;
		sw4_out : OUT std_logic
		);
	END COMPONENT;

	Inst_debouncingCircuit: debouncingCircuit PORT MAP(
		rst => ,
		clk => ,
		sw1_in => ,
		sw1_out => ,
		sw2_in => ,
		sw2_out => ,
		sw3_in => ,
		sw3_out => ,
		sw4_in => ,
		sw4_out => 
	);


