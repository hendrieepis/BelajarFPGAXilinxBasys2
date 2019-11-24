
-- VHDL Instantiation Created from source file vendingmachine.vhd -- 13:59:33 11/27/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT vendingmachine
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		u500_in : IN std_logic;
		u1000_in : IN std_logic;          
		debugstate : OUT std_logic_vector(2 downto 0);
		drop_out : OUT std_logic;
		kembali_out : OUT std_logic;
		tick : OUT std_logic
		);
	END COMPONENT;

	Inst_vendingmachine: vendingmachine PORT MAP(
		clk => ,
		rst => ,
		u500_in => ,
		u1000_in => ,
		debugstate => ,
		drop_out => ,
		kembali_out => ,
		tick => 
	);


