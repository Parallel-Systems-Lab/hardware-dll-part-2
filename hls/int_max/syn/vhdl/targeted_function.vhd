-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity targeted_function is
generic (
    C_S_AXI_RM_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_RM_DATA_WIDTH : INTEGER := 32 );
port (
    s_axi_rm_AWVALID : IN STD_LOGIC;
    s_axi_rm_AWREADY : OUT STD_LOGIC;
    s_axi_rm_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_RM_ADDR_WIDTH-1 downto 0);
    s_axi_rm_WVALID : IN STD_LOGIC;
    s_axi_rm_WREADY : OUT STD_LOGIC;
    s_axi_rm_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_RM_DATA_WIDTH-1 downto 0);
    s_axi_rm_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_RM_DATA_WIDTH/8-1 downto 0);
    s_axi_rm_ARVALID : IN STD_LOGIC;
    s_axi_rm_ARREADY : OUT STD_LOGIC;
    s_axi_rm_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_RM_ADDR_WIDTH-1 downto 0);
    s_axi_rm_RVALID : OUT STD_LOGIC;
    s_axi_rm_RREADY : IN STD_LOGIC;
    s_axi_rm_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_RM_DATA_WIDTH-1 downto 0);
    s_axi_rm_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_rm_BVALID : OUT STD_LOGIC;
    s_axi_rm_BREADY : IN STD_LOGIC;
    s_axi_rm_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC );
end;


architecture behav of targeted_function is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "targeted_function,hls_ip_2015_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.000000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=106,HLS_SYN_LUT=168}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_7FFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "01111111111111111111111111111111";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";

    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_ready : STD_LOGIC;
    signal output_000 : STD_LOGIC_VECTOR (31 downto 0);
    signal output_000_ap_vld : STD_LOGIC;
    signal ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_rst_n_inv : STD_LOGIC;
    signal targeted_function_rm_s_axi_U_ap_dummy_ce : STD_LOGIC;

    component targeted_function_rm_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        ap_return : IN STD_LOGIC_VECTOR (31 downto 0);
        output_000 : IN STD_LOGIC_VECTOR (31 downto 0);
        output_000_ap_vld : IN STD_LOGIC );
    end component;



begin
    targeted_function_rm_s_axi_U : component targeted_function_rm_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_RM_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_RM_DATA_WIDTH)
    port map (
        AWVALID => s_axi_rm_AWVALID,
        AWREADY => s_axi_rm_AWREADY,
        AWADDR => s_axi_rm_AWADDR,
        WVALID => s_axi_rm_WVALID,
        WREADY => s_axi_rm_WREADY,
        WDATA => s_axi_rm_WDATA,
        WSTRB => s_axi_rm_WSTRB,
        ARVALID => s_axi_rm_ARVALID,
        ARREADY => s_axi_rm_ARREADY,
        ARADDR => s_axi_rm_ARADDR,
        RVALID => s_axi_rm_RVALID,
        RREADY => s_axi_rm_RREADY,
        RDATA => s_axi_rm_RDATA,
        RRESP => s_axi_rm_RRESP,
        BVALID => s_axi_rm_BVALID,
        BREADY => s_axi_rm_BREADY,
        BRESP => s_axi_rm_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => targeted_function_rm_s_axi_U_ap_dummy_ce,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle,
        ap_return => ap_return,
        output_000 => output_000,
        output_000_ap_vld => output_000_ap_vld);




    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
    ap_return <= ap_const_lv32_0;

    -- ap_rst_n_inv assign process. --
    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    output_000 <= ap_const_lv32_7FFFFFFF;

    -- output_000_ap_vld assign process. --
    output_000_ap_vld_assign_proc : process(ap_start)
    begin
        if (not((ap_start = ap_const_logic_0))) then 
            output_000_ap_vld <= ap_const_logic_1;
        else 
            output_000_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    targeted_function_rm_s_axi_U_ap_dummy_ce <= ap_const_logic_1;
end behav;
