# VHDL Counter Bug and Solution

This repository demonstrates a common bug in VHDL code involving incorrect range specification in port declarations and lack of proper signal management, along with its solution.

## Bug Description
The original VHDL code for a simple counter had an incorrect range specified for the `count` output port.  Additionally, it directly assigned the output without using an intermediate signal which could lead to unpredictable behavior depending on the synthesis tool.

## Solution
The solution introduces an internal signal `temp` to correctly manage the counter value. The `count` port's range is also updated to reflect the actual counter range. The corrected code ensures proper and predictable counting behavior.

## Files
* **bug.vhdl**: The original buggy VHDL code.
* **bugSolution.vhdl**: The corrected VHDL code with the bug fixed.