# TCAS-II-00594-2016
FIR filter implementations for manuscript TCAS-II-00594-2016

Examples of a 90-tap symmetric FIR filter:
	1) Implemented by Altera's FIR Compiler v15.1
	2) Implemented by Xilinx's FIR Compiler v7.2

********************************************************************************

1)
- Open "fir_90taps.qpf" in folder "./Altera/project/" with Altera Quartus Prime 15.1
- for simulation run script "top_run.do" in "./Altera/project/simulation/modelsim/" with Modelsim-Altera version  (tested with 10.4b)

Settings for the Altera FIR Compiler v15.1
------------------------------------------

Filter Settings:
Filter Type:                Single Rate
Interpolation Factor:       1
Decimation Factor:          1
Max Number of Channels:     1

Frequency Specification:
Clock Rate:                 100MHz
Clock Slack:                0MHz
Input Sample Rate (MSPS):   100

Coefficient Options:
Number of coefficients:     180
Symmetry:                   Symmetrical
L-th Band Filter:           All taps
Coefficient Scaling:        Auto
Coefficient Data Type:      Signed Binary
Coefficient Width:          18 bits

Input Options:
Input Type:                 Signed Binary
Input Width:                15 bits

Output Options:
Output Type:                Signed Binary
Outpu Width:                41 bits
Output Fractional Width:    0 bits
MSB Rounding:               Truncation
MSB Bits to Remove:         0
LSB Rounding:               Truncation
LSB Bits to Remove:         0
Output Full Width:          41 bits

Resource Optimization Settings:
Device Family:              Cyclone V
Speed Grade:                Fast
Memory Block Threshold:     20
Dual Port RAM Threshold:    1280
Large RAM Threshold:        1000000
Hard Multiplier Threshold:  -1

2)
- generate project with "generate_project.tcl" script in folder "./Xilinx/project/"
- or start the batch file "make_project.bat" with windows (which will call the tcl script)

Settings for the Xilinx FIR Compiler 7.2
----------------------------------------

Component Name:                       fir_90taps
Filter Type:                          Single Rate
Number of Interleaved Channels:       1
Number of Parallel Channels:          1
Clock Frequency:                      100
Input Sampling Frequency:             100
Sample Period:                        N/A
Number of Parallel Input samples:     1
Number of Parallel Output samples:    1
Input Data Width:                     15
Input Data Fractional Bits:           0
Number of Coefficients:               180
Calculated Coefficients:              180
Number of Coefficients Sets:          1
Reloadable Coefficients:              No
Coefficient Structure:                Symmetric
Coefficient Width:                    18
Coefficient Fractional Bits:          19
Quantization Mode:                    Maximize_Dynamic_Range
Filter gain due to quantization mode: 1.981569 dB
Rounding Mode:                        Full Precision
Output Width:                         36 (full precision = 36 bits)
Output Fractional Bits:               19
Cycle Latency:                        99
Filter Architecture:                  Systolic Multiply Accumulate
