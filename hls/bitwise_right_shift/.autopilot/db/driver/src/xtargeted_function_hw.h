// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

// rm
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/SC)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x18 : Data signal of input_000
//        bit 31~0 - input_000[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of output_000
//        bit 31~0 - output_000[31:0] (Read)
// 0x24 : Control signal of output_000
//        bit 0  - output_000_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTARGETED_FUNCTION_RM_ADDR_AP_CTRL         0x00
#define XTARGETED_FUNCTION_RM_ADDR_GIE             0x04
#define XTARGETED_FUNCTION_RM_ADDR_IER             0x08
#define XTARGETED_FUNCTION_RM_ADDR_ISR             0x0c
#define XTARGETED_FUNCTION_RM_ADDR_AP_RETURN       0x10
#define XTARGETED_FUNCTION_RM_BITS_AP_RETURN       32
#define XTARGETED_FUNCTION_RM_ADDR_INPUT_000_DATA  0x18
#define XTARGETED_FUNCTION_RM_BITS_INPUT_000_DATA  32
#define XTARGETED_FUNCTION_RM_ADDR_OUTPUT_000_DATA 0x20
#define XTARGETED_FUNCTION_RM_BITS_OUTPUT_000_DATA 32
#define XTARGETED_FUNCTION_RM_ADDR_OUTPUT_000_CTRL 0x24

