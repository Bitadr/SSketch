#include <windows.h>
#include <WinIoctl.h>
#include <setupapi.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <string>
#include <iomanip>
#include <assert.h>
#include <list>
#include <vector>
#include <time.h>
#include <direct.h>
#include <stdlib.h>
#include <string.h>

#include "sirc_internal.h"



#include <Eigen/LU>
#include <Eigen/Core>
#include <Eigen/Dense>
#include <iostream>
#include <functional>


using namespace Eigen;
using Eigen::MatrixXd;
using namespace std;


using namespace std;
using namespace System;
using namespace System::IO;
using namespace System::Collections;


void error(string inErr){
	cerr << "Error:" << endl;
	cerr << "\t" << inErr << endl;

    PrintZeLog();
	exit(-1);
}


typedef char strbuf[64];
strbuf lines[4];

ETH_SIRC * setup_ETH(uint8_t *FPGA_ID, SIRC::PARAMETERS &params)
{
	uint32_t driverVersion = 0;


	//**** Set up communication with FPGA
	//Create communication object
	ETH_SIRC * SIRC_P = new ETH_SIRC(FPGA_ID, driverVersion, NULL);
	//Make sure that the constructor didn't run into trouble
    if (SIRC_P == NULL)
	{
	cerr << "Unable to find a suitable SIRC driver or unable to " << endl;
	return NULL;
    }
	if(SIRC_P->getLastError() != 0)
	{
	cerr << "Constructor failed with code " << (int) SIRC_P->getLastError() << endl;
	return NULL;
	}

    //Get runtime parameters, for what we wont change.
    
    if (!SIRC_P->getParameters(&params,sizeof(params)))
	{
	cerr << "Cannot getParameters from SIRC interface, code " << (int) SIRC_P->getLastError() << endl;                                                                               
	return NULL;
    }

	 //These MUST match the buffer sizes in the hw design.
    params.maxInputDataBytes  = 1<<17; //2**17 128KBytes
    params.maxOutputDataBytes = 1<<13; //2**13 8KBytes

	if (!SIRC_P->setParameters(&params,sizeof(params)))
	{
	cerr << "Cannot setParameters on SIRC interface, code " << (int) SIRC_P->getLastError()<< endl;
	return NULL;
    }


	return SIRC_P;
}



int Add_ai_to_D (ETH_SIRC *SIRC_P, int *buff)
{

	
	//Set parameter register 0 (mode) to mode
	if(!SIRC_P->sendParamRegisterWrite(0, 0)){
        cout << "Parameter register write failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
    
	if(!SIRC_P->sendWrite(0, 4*256, (uint8_t *)buff))
	{
        cout << "Write to FPGA failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
	
	//Set the run signal
	if(!SIRC_P->sendRun()){
        cout << "Run command failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
	
	//Wait up to 0.1 s
	if(!SIRC_P->waitDone(100)){
        cout << "Wait till done failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
	return 0;
}


int Send_ai_to_OMP(ETH_SIRC *SIRC_P,int *buff,int *buff_return)
{
    
	//Set parameter register 0 (mode) to mode
	if(!SIRC_P->sendParamRegisterWrite(0, 1)){
        cout << "Parameter register write failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
    
	if(!SIRC_P->sendWrite(0, 4*257,(uint8_t *) buff))
	{
        cout << "Write to FPGA failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
	
	//Set the run signal
	if(!SIRC_P->sendRun()){
        cout << "Run command failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
	//Wait up to 0.1 s
	if(!SIRC_P->waitDone(100)){
        cout << "Wait till done failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
    
	if(!SIRC_P->sendRead(0, 4*202,(uint8_t *) buff_return))
	{
        cout << "Read from FPGA failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
    
    
	return 0;
    
}



int Flush(ETH_SIRC *SIRC_P,int *flush_return)
{
    
    
	//Set parameter register 0 (mode) to mode
	if(!SIRC_P->sendParamRegisterWrite(0, 2)){
        cout << "Parameter register write failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
    
	//Set the run signal
	if(!SIRC_P->sendRun()){
        cout << "Run command failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
	//Wait up to 0.1 s
	if(!SIRC_P->waitDone(100)){
        cout << "Wait till done failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
    
	if(!SIRC_P->sendRead(0,4*(3*2*(100 + 1)),(uint8_t *) flush_return))
	{
        cout << "Read from FPGA failed with code " << (int) SIRC_P->getLastError() << endl;
        return -1;
	}
    
	return 0;
    
}






int main(int argc, char* argv[])
{
	ETH_SIRC *SIRC_P;
	SIRC::PARAMETERS params;

	//mac address
	uint8_t FPGA_ID[6];
	FPGA_ID[0] = 0xAA;
	FPGA_ID[1] = 0xAA;
	FPGA_ID[2] = 0xAA;
	FPGA_ID[3] = 0xAA;
	FPGA_ID[4] = 0xAA;
	FPGA_ID[5] = 0xAA;

	//Speed testing variables
	DWORD start, end;


	//random seed
	srand((unsigned)time(0));


	//setup ethernet connection to a FPGA with FPGA_ID mac address
	SIRC_P = setup_ETH(FPGA_ID, params);
	if(SIRC_P == NULL)
	{
	cerr << "Unable to connect to FPGA board" << endl;
	return -1;
	}

	//input and output buffer
	uint8_t *input_buff = new uint8_t[params.maxInputDataBytes];
	uint8_t *output_buff = new uint8_t[params.maxOutputDataBytes];

	memset(input_buff, 0, sizeof(uint8_t)*params.maxInputDataBytes);
	memset(output_buff, 0, sizeof(uint8_t)*params.maxOutputDataBytes);


	//send soft reset
	if(!SIRC_P->sendReset())
	{
	cerr << "Reset failed with code " << (int) SIRC_P->getLastError() << endl;
	return -1;
	}

    
    int j=1;
    float th = 0.9;
    int N = 1000;
    int m = 256;
    int L= 100;
    float err;
    int   supplen;
    int    id_col;
    int dsize =0;
	int ompsize =0;
    VectorXf ai_diff(m) ;
    VectorXf ai(m);
	VectorXf ad(m);
    VectorXf x;
    VectorXf Dtai;
    MatrixXf D;
    MatrixXf Dt;
    MatrixXf DtD;
    
    MatrixXf A = MatrixXf::Random(m,N);
    MatrixXf Dmain = MatrixXf::Zero(m,N);
    MatrixXf V = MatrixXf::Zero(L,N);
    Dmain.col(0) = A.col(0);
    D = Dmain.col(0);
    Dt = D.transpose() ;
    DtD = Dt*D;
    
    
    int *buff_return = new int [202];
	
    for (int i = 0 ;i < 202 ;i++)
    {
        buff_return[i] = 0;
    }
    
    int *flush_return = new int [3*202];
	
    for (int i = 0 ;i < 3*202 ;i++)
    {
        flush_return[i] = 0;
    }
    
	start = GetTickCount();
    for (int i=1;i < N;i++)
    {
        ai = A.col(i);
        Dtai = Dt * ai;
        x = DtD.lu().solve(Dtai);
        ai_diff = ai - (D*x);
        err =  ai_diff.norm()/ ai.norm();
        if(err > th)
        {
            
            Dmain.col(j) = ai/ai.norm();
            D = Dmain.leftCols(j);
            Dt = D.transpose() ;
            DtD = Dt*D;
			ad = Dmain.col(j);
			j++;
			int *buff_d = new int [257];
			for (int i2 = 0 ;i2 < 256 ;i2++)
			{
				float temp = ad[i2];
				buff_d[i2] = *(int *)(& temp);
			}
            Add_ai_to_D(SIRC_P, buff_d);
			dsize += 1;
        }
        else
        {

			int *buff = new int [257];
			for (int i3 = 0 ;i3 < 256 ;i3++)
			{
				float temp = ai[i3];
				buff[i3] = *(int *)(& temp);
			}
		    buff[256] = i;
            Send_ai_to_OMP(SIRC_P,buff,buff_return);
			ompsize += 1;
            supplen = buff_return[0];
            id_col = buff_return[1];
            
            for(int k=2; k<supplen+2 ; k++)  
            {
                int temp = buff_return[k];
                int id_row = buff_return[supplen + k];
                V(id_row,id_col) = *(float *)(& temp) ;
            }
        }
    }
    
    Flush(SIRC_P, flush_return);
	end = GetTickCount();
    
    //int supplen_1 = flush_return[0];

    int id_col_1 = flush_return[1];
    
    for(int k = 2; k < supplen_1+2 ; k++)
        
    {
        int temp = flush_return[2+k];
		int id_row1 = flush_return[supplen_1 + k];
        V(id_row1,id_col_1) = *(float *)(& temp) ;
    }
    
   // int supplen_2 = flush_return[2*supplen_1+2];
    int id_col_2 = flush_return[2*supplen_1+3];
    
    for(int k = 2*supplen_1+2; k < supplen_2+2*supplen_1+2 ; k++)
        
    {
        int temp = flush_return[2+k];
		int id_row2 = flush_return[supplen_2+2+k];
        V(id_row2 ,id_col_2) = *(float *)(& temp) ;
    }
    
    
   // int supplen_3 = flush_return[2*(supplen_1+supplen_2)+4];
    int id_col_3 = flush_return[2*(supplen_1+supplen_2)+5];
    
    for(int k = 2*(supplen_1+supplen_2)+4 ; k < supplen_3 + 2*(supplen_1+supplen_2)+4 ; k++)
        
    {
        int temp = flush_return[2+k];
		int id_row3 = flush_return[supplen_3 + 2 + k];
        V(id_row3,id_col_3) = *(float *)(& temp) ;
    }
	

	delete SIRC_P;
	double Time = (end-start)*1e-3;
	double throughput = (N*256*32/Time)*1e-6;
	cout << "Total Time = "<< Time << "sec" << endl;
	cout << "Throughput = " << throughput << "Mbps" << endl;
	//cout << ompsize << endl;
	return 0;
}






