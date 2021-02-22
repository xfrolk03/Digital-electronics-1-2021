## Lab assignment

1. Preparation tasks (done before the lab at home). Submit:
    * Completed 2-bit comparator truth table.

2. A 2-bit comparator. Submit:
    * Karnaugh maps for all three functions,
    * Equations of simplified SoP form of the "greater than" function and simplified PoS form of the "less than" function.
    * Link to your public EDA Playground example in the form `https://www.edaplayground.com/...`

3. A 4-bit binary comparator. Submit:
    * Listing of VHDL architecture from design file (`design.vhd`) with syntax highlighting,
    * Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with syntax highlighting,
    * Listing of simulator console output, i.e. with one reported error,
    * Link to your public EDA Playground example in the form `https://www.edaplayground.com/...`

------------------------------------------------------------------------

1

## 1.Preparation tasks

| **Dec. equivalent** |**B1**|**B0**|**A1**|**A0**|**B > A**|**B = A**|**B < A**|
|        :-:          | :-:  | :-:  |  :-: |  :-: |   :-:   |   :-:   |   :-:   |
|         0           | 0    |  0   |   0  |   0  |    0    |    1    |    0    |
|         1           | 0    |  0   |   0  |   1  |    0    |    0    |    1    |
|         2           | 0    |  0   |   1  |   0  |    0    |    0    |    1    |
|         3           | 0    |  0   |   1  |   1  |    0    |    0    |    1    |
|         4           | 0    |  1   |   0  |   0  |    1    |    0    |    0    |
|         5           | 0    |  1   |   0  |   1  |    0    |    1    |    0    |
|         6           | 0    |  1   |   1  |   0  |    0    |    0    |    1    |
|         7           | 0    |  1   |   1  |   1  |    0    |    0    |    1    |
|         8           | 1    |  0   |   0  |   0  |    1    |    0    |    0    |
|         9           | 1    |  0   |   0  |   1  |    1    |    0    |    0    |
|         10          | 1    |  0   |   1  |   0  |    0    |    1    |    0    |
|         11          | 1    |  0   |   1  |   1  |    0    |    0    |    1    |
|         12          | 1    |  1   |   0  |   0  |    1    |    0    |    0    |
|         13          | 1    |  1   |   0  |   1  |    1    |    0    |    0    |
|         14          | 1    |  1   |   1  |   0  |    1    |    0    |    0    |
|         15          | 1    |  1   |   1  |   1  |    0    |    1    |    0    |
