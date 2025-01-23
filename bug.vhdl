```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
                rst : in  STD_LOGIC;
                count : out  INTEGER range 0 to 15); -- Changed range to 0 to 15
end entity;

architecture behavioral of counter is

signal temp : INTEGER range 0 to 15 := 0; -- Added signal temp and initialized it

begin

  process (clk, rst)
  begin
    if rst = '1' then
      temp <= 0;
    elsif rising_edge(clk) then
      if temp = 15 then
        temp <= 0;
      else
        temp <= temp + 1;
      end if;
    end if;
  end process;

  count <= temp; 
end architecture;
```