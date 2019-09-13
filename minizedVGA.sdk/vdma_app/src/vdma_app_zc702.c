// SPDX-License-Identifier: GPL-2.0
/*
 * vdma_app_zc702.c
 *
 *  Created on: 27 Nov 2018
 *      Author: florentw
 */


#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "iic_utils.h"
#include "app_hdmi.h"

XIicPs IicPs_inst;
XV_tpg tpg_inst;
XV_tpg_Config *tpg_config;

int main()
{
	int Status;
    init_platform();

    print("VDMA application on ZC702 using on-board HDMI\n\r");

    //Configure the ZC702 On-board HDMI
//    zc702_set_on_board_hdmi(&IicPs_inst);

//    xil_printf("HDMI Setup Complete!\r\n");

    //Initialize the TPG IP
    Status = XV_tpg_Initialize(&tpg_inst, XPAR_V_TPG_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("TPG configuration failed\r\n");
    	return(XST_FAILURE);
    }

    //Configure the TPG
    app_hdmi_conf_tpg(&tpg_inst, 600, 800, 0x2, XTPG_BKGND_COLOR_BARS);

    //Configure the moving box of the TPG
    //app_hdmi_conf_tpg_box(&tpg_inst, 50, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst);
    XV_tpg_Start(&tpg_inst);
    xil_printf("TPG started!\r\n");
	
	/* Start of VDMA Configuration */
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, 0x10000000);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, 0x100F0000);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB4, 0x101E0000);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0xA8, 800*2);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0xA4, 800*2);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, 600);

    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, 0x10000000);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, 0x100F0000);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, 0x101E0000);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x58, 800*3);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x54, 800*3);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x50, 600);

	/* End of VDMA Configuration */

	while(1)
	{
	}


    cleanup_platform();
    return 0;
}


