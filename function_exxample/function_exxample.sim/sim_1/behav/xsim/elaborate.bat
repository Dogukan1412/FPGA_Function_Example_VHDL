@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sun Apr 23 17:57:55 +0300 2023
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto efc85203d0474a86b4f5636162d14b55 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot function_ex_behav xil_defaultlib.function_ex -log elaborate.log"
call xelab  -wto efc85203d0474a86b4f5636162d14b55 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot function_ex_behav xil_defaultlib.function_ex -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
