# TCAS-II-00594-2016
FIR filter implementions for manuscript TCAS-II-00594-2016

Examples of a 90-tap symmetric FIR filter:
	1) Implemented by Altera's FIR Compiler v15.1
	2) Implemented by Xilinx's FIR Compiler v7.2


1) Settings for the Altera FIR Compiler:
----------------------------------------

Filter Settings:
Filter Type:				Single Rate
Interpolation Factor:		1
Decimation Factor:			1
Max Number of Channels:		1

Frequency Specification:
Clock Rate:					100MHz
Clock Slack:				0MHz
Input Sample Rate (MSPS):	100

Coefficient Options:
Number of coefficients::	180
Symmetry:					Symmetrical
L-th Band Filter:			All taps
Coefficient Scaling:		Auto
Coefficient Data Type:		Signed Binary
Coefficient Width:			18 bits

Input Options:
Input Type:					Signed Binary
Input Width:				15 bits

Ouput Options:
Output Type:				Signed Binary
Output	Width:				41 bits
Output Fractional Width:	0 bits
MSB Rounding:				Truncation
MSB Bits to Remove:			0
LSB Rounding:				Truncation
LSB Bits to Remove:			0
Output Full Width:			41 bits

Resource Optimization Settings:
Device Family:				Cyclone V
Speed Grade:				Fast
Memory Block Threshhold:	20
Dual Port RAM Threshold:	1280
Large RAm Threshold:		1000000
Hard Multiplier Threshold:	-1
