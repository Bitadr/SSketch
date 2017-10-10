# SSketch

This repository provides an API for SSketch framework (http://www.aceslab.org/sites/default/files/SSketch.pdf). SSketch can be used as a generic framework for Streaming Sketch-based Analysis of Big Data on FPGA.

### Program Required
* Microsoft Visual Studio
* Xilinx ISE

## File Hierarchy of Repository

### SW_Example folder:
Inputing the algorithmic parameters as well as forming the dictionary matrix D
* Open Visual Studio project "eth_sirc_lib_SW_Example"
* In file "eth_SW_Example.cpp"
 * Edit Mac address for FPGA at line 201
 * Edit hyperparameters at line 246

### SWSrc folder:
contains source code from Microsoft's SIRC: An Extensible Reconfigurable Computing Communication API (https://www.microsoft.com/en-us/research/publication/sirc-an-extensible-reconfigurable-computing-communication-api/).

### Verilog folder:
Open ISE project "HW_Example_13_2_ML605
* **system.v:** Top module
* **ethernetController.v:** Controller module for ethernet module
 * Edit Mac address for FPGA at line 24
 * Transmitting data in between the Host and FPGA
 * written by Ken Eguro, adapted to fit our module
* **paralleldecomposition.v:** Controller module for SSketch
 * Instantiate multiple OMP module
 * Managing hand-shaking signals as well as distributing the underlying work in between different OMP kernels  
* **OMP_core.v:** OMP module
 * Orthogonal Matching Pursuit (OMP): Transforming data to the corresponding union of sub-spaces by forming the block-sparse matrix V
