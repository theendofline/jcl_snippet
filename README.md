# jcl_snippet
Here is the snippet of JCL (Job Control Language of IBM's mainframe OS - z/OS).
Read about JCL [here](https://en.wikipedia.org/wiki/Job_Control_Language) and on [IBM official resources](https://www.ibm.com/docs/en/zos-basic-skills?topic=sdsf-what-is-jcl)

## Overview
 The program's primary function is to read first and last names from separate files, combine them and write the full names to an output file.

## Files in the Repository
- `TTT.INPUT(FNAMES)`: Input file containing first names.
- `TTT.INPUT(LNAMES)`: Input file containing last names.
- `TTT.SOURCE(CBL0001)`: COBOL source code file.
- `USER.JCL(JCL2).jcl`: JCL script to execute the COBOL program.
- `USER.OUTPUT(NAMES)`: Output file containing combined full names.

## Program Description
The COBOL program processes two input files – one for first names and another for last names – and combines these names into a single output file. The JCL script `USER.JCL(JCL2).jcl` manages the execution of this COBOL program, including compiling the source code and handling the input and output files.

## Execution Flow
1. **Initial Setup**: The JCL script sets up the environment and performs initial preprocessing.
2. **Compilation**: The COBOL program is compiled from the source code in `TTT.SOURCE(CBL0001)`.
3. **Conditional Execution**: The script checks if the compilation was successful before proceeding.
4. **Program Execution**: The compiled COBOL program reads first and last names from `FNAMES` and `LNAMES`, combines them, and writes the results to `USER.OUTPUT(NAMES)`.
5. **Post-Execution**: After the COBOL program runs, the script performs any necessary post-processing tasks.

## Usage
To execute the program:
1. Ensure that the input files (`FNAMES` and `LNAMES`) are populated with first and last names, respectively.
2. Run the JCL script `USER.JCL(JCL2).jcl`.
3. The output will be available in `USER.OUTPUT(NAMES)`.

## System Requirements
- IBM Mainframe or a compatible system with JCL and COBOL support.
- Appropriate permissions to read from and write to the specified datasets.

