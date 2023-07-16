# 64x8bit-RAM
64x8 Bit Random Access Memory (RAM) Design and Implementation in Verilog.  

Random-access memory (RAM) is a type of computer memory that enables data to be read and modified in any order. 
It is commonly used for storing working data and machine code. 
In contrast to other storage media like hard disks or magnetic tapes, RAM allows for almost uniform access time regardless of the data's physical location within the memory.
This project aims to build a 64x8 bit RAM using Verilog HDL. The RAM will be capable of storing 8 data inputs, each with a length of 64 bits.
## Overview
The implementation is done in Verilog hardware description language (HDL).
The counter is designed to be reconfigurable and can be easily modified for different counting requirements.
Simulation and testing were performed using Xilinx Vivado 2021.2.
## Construction
To construct the 64x8 bit RAM, we create a module named ram64_8bit in Verilog.  
This module takes inputs such as clock (clk), enable (en), read, write, address, and data input.  
The output is obtained from the output pin of the RAM module. 
The RAM module functions on positive edge triggering, meaning the operations occur when the clock signal transitions from 0 to 1.  
The RAM only works when the enable pin (en) is high. 
Reading is performed when the clock is positive edge triggered, the enable pin is high, the read pin is high, and the write pin is low.  
Writing is done when the clock is positive edge triggered, the enable pin is high, the write pin is high, and the read pin is low. 
A test bench code is provided for the main module, where the enable pin (en) is set to high (1). The clock impulse is set to occur every 15 ns.
## Contents
The src directory contains the Verilog source code for the 64x8bit RAM.
The sim directory includes the simulation files and test bench code.
## Usage
1. Clone the repository: 
    ```bash
      git clone https://github.com/SamarthWalse10/64x8bit-RAM.git
2. Open the project in your preferred Verilog development environment.
3. Compile and synthesize the Verilog source code.
4. Simulate the design using the provided test bench.
5. Analyze the simulation results and verify the functionality of the 64x8bit RAM.
## Screenshots
![ram](https://github.com/SamarthWalse10/64x8bit-RAM/assets/125689593/fd09a1ba-f2ce-457f-a4c6-5fb2e52d9c55)
<br/><br/><br/>
![result_ram](https://github.com/SamarthWalse10/64x8bit-RAM/assets/125689593/0eaabb83-0f79-4d5d-827d-789d8a9213f1)
<br/><br/><br/>
![schematics_ram](https://github.com/SamarthWalse10/64x8bit-RAM/assets/125689593/4d33d8ca-77e0-4782-a282-e431c6765232)
