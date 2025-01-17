LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY vending_machine IS
	PORT ( clk, rst: in STD_LOGIC;
          five_in, ten_in, twenty_in: in STD_LOGIC;
          sel_water, sel_candy, sel_coca, sel_coffee: in STD_LOGIC;
			 cancel : in STD_LOGIC;
          water, candy, coca, coffee: out STD_LOGIC;
			 five_out, ten_out: out STD_LOGIC);
END vending_machine;

ARCHITECTURE fsm OF vending_machine IS

	TYPE state IS (idle, water_0, water_5, water_10, water_15, water_20, water_25, 
						candy_0, candy_5, candy_10, candy_15, candy_20, candy_25, candy_30,
						coffee_0, coffee_5, coffee_10, coffee_15, coffee_20, coffee_25, coffee_30, coffee_35, coffee_40,
						coca_0, coca_5, coca_10, coca_15, coca_20, coca_25, coca_30, coca_35,
						refund_5, refund_10, refund_15, refund_20);
	SIGNAL present_state, next_state: STATE;
	
BEGIN

	PROCESS (rst, clk)
	BEGIN
		if (rst = '1') then
			present_state <= idle;
		elsif (clk'event and clk = '1') then
			present_state <= next_state;
		end if;
	end PROCESS;
	
	PROCESS (present_state, five_in, ten_in, twenty_in, sel_water, sel_coffee, sel_candy, sel_coca, cancel)
	BEGIN
		CASE present_state IS
			
			when idle =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (sel_water = '1' and sel_candy = '0' and sel_coffee = '0' and sel_coca = '0') then
					next_state <= water_0;
				elsif (sel_candy = '1' and sel_water = '0' and sel_coffee = '0' and sel_coca = '0') then
					next_state <= candy_0;
				elsif (sel_coca = '1' and sel_candy = '0' and sel_water = '0' and sel_coffee = '0') then
					next_state <= coca_0;
				elsif (sel_coffee = '1' and sel_candy = '0' and sel_water = '0' and sel_coca = '0') then
					next_state <= coffee_0;
				else 
					next_state <= idle;
				end if;
			
			when water_0 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= water_5;
				elsif (ten_in = '1') then next_state <= water_10; 
				elsif (twenty_in = '1') then next_state <= water_20;
				else next_state <= water_0;
				end if;
				
			when water_5 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= water_10;
				elsif (ten_in = '1') then next_state <= water_15; 
				elsif (twenty_in = '1') then next_state <= water_25;
				elsif (cancel = '1') then next_state <= refund_5;
				else next_state <= water_5;
				end if;
				
			when water_10 =>
				water <= '1';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				next_state <= idle;
				
			when water_15 =>
				water <= '1';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '1';
				ten_out <= '0';
				next_state <= idle;
				
			when water_20 =>
				water <= '1';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= idle;
				
			when water_25 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '1';
				ten_out <= '0';
				next_state <= water_20;
								
			when candy_0 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= candy_5;
				elsif (ten_in = '1') then next_state <= candy_10; 
				elsif (twenty_in = '1') then next_state <= candy_20;
				else next_state <= candy_0;
				end if;
				
			when candy_5 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= candy_10;
				elsif (ten_in = '1') then next_state <= candy_15; 
				elsif (twenty_in = '1') then next_state <= candy_25;
				elsif (cancel = '1') then next_state <= refund_5;
				else next_state <= candy_5;
				end if;
				
			when candy_10 =>	
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= candy_15; 
				elsif (ten_in = '1') then next_state <= candy_20; 
				elsif (twenty_in = '1') then next_state <= candy_30;
				elsif (cancel = '1') then next_state <= refund_10;
				else next_state <= candy_10;
				end if;
				
			when candy_15 =>
				water <= '0';
				coffee <= '0';
				candy <= '1';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				next_state <= idle;
				
			when candy_20 =>
				water <= '0';
				coffee <= '0';
				candy <= '1';
				coca <= '0';
				five_out <= '1';
				ten_out <= '0';
				next_state <= idle;
				
			when candy_25 =>
				water <= '0';
				coffee <= '0';
				candy <= '1';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= idle;
				
			when candy_30 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= candy_20;
			
			when coca_0 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coca_5;
				elsif (ten_in = '1') then next_state <= coca_10; 
				elsif (twenty_in = '1') then next_state <= coca_20;
				else next_state <= coca_0;
				end if;
				
			when coca_5 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coca_10;
				elsif (ten_in = '1') then next_state <= coca_15; 
				elsif (twenty_in = '1') then next_state <= coca_25;
				elsif (cancel = '1') then next_state <= refund_5;
				else next_state <= coca_5;
				end if;
				
			when coca_10 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coca_15; 
				elsif (ten_in = '1') then next_state <= coca_20; 
				elsif (twenty_in = '1') then next_state <= coca_30;
				elsif (cancel = '1') then next_state <= refund_10;
				else next_state <= coca_10;
				end if;
				
			when coca_15 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coca_20; 
				elsif (ten_in = '1') then next_state <= coca_25; 
				elsif (twenty_in = '1') then next_state <= coca_35;
				elsif (cancel = '1') then next_state <= refund_15;
				else next_state <= coca_15;
				end if;
				
			when coca_20 => 
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '1';
				five_out <= '0';
				ten_out <= '0';
				next_state <= idle;
				
			when coca_25 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '1';
				five_out <= '1';
				ten_out <= '0';
				next_state <= idle;
				
			when coca_30 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '1';
				five_out <= '0';
				ten_out <= '1';
				next_state <= idle;

			when coca_35 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= coca_25;
				
			when coffee_0 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coffee_5;
				elsif (ten_in = '1') then next_state <= coffee_10; 
				elsif (twenty_in = '1') then next_state <= coffee_20;
				else next_state <= coffee_0;
				end if;
				
			when coffee_5 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coffee_10;
				elsif (ten_in = '1') then next_state <= coffee_15; 
				elsif (twenty_in = '1') then next_state <= coffee_25;
				elsif (cancel = '1') then next_state <= refund_5;
				else next_state <= coffee_5;
				end if;
				
			when coffee_10 =>	
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coffee_15; 
				elsif (ten_in = '1') then next_state <= coffee_20; 
				elsif (twenty_in = '1') then next_state <= coffee_30;
				elsif (cancel = '1') then next_state <= refund_10;
				else next_state <= coffee_10;
				end if;
				
			when coffee_15 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coffee_20; 
				elsif (ten_in = '1') then next_state <= coffee_25; 
				elsif (twenty_in = '1') then next_state <= coffee_35;
				elsif (cancel = '1') then next_state <= refund_15;
				else next_state <= coffee_15;
				end if;
				
			when coffee_20 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				if (five_in = '1') then next_state <= coffee_25; 
				elsif (ten_in = '1') then next_state <= coffee_30; 
				elsif (twenty_in = '1') then next_state <= coffee_40;
				elsif (cancel = '1') then next_state <= refund_20;
				else next_state <= coffee_20;
				end if;
				
			when coffee_25 =>
				water <= '0';
				coffee <= '1';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '0';
				next_state <= idle;
				
			when coffee_30 =>
				water <= '0';
				coffee <= '1';
				candy <= '0';
				coca <= '0';
				five_out <= '1';
				ten_out <= '0';
				next_state <= idle;
				
			when coffee_35 =>
				water <= '0';
				coffee <= '1';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= idle;
				
			when coffee_40 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= coffee_30;
			
			when refund_5 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '1';
				ten_out <= '0';
				next_state <= idle;
				
			when refund_10 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= idle;
			
			when refund_15 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= refund_5;	
				
			when refund_20 =>
				water <= '0';
				coffee <= '0';
				candy <= '0';
				coca <= '0';
				five_out <= '0';
				ten_out <= '1';
				next_state <= refund_10;	
				
			when others =>
				next_state <= idle;
				
		END CASE;
	END PROCESS;
	
END fsm;
