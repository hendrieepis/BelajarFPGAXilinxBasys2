
-- VHDL Instantiation Created from source file sevenSegment.vhd -- 10:19:48 12/16/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sevenSegment
	PORT(
		switchIN : IN std_logic_vector(3 downto 0);          
		enA : OUT std_logic;
		segmentOut : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_sevenSegment: sevenSegment PORT MAP(
		switchIN => ,
		enA => ,
		segmentOut => 
	);


