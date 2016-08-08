Simple delay-differential equation testbench
============================================

TG 8 may 2014

Willé and Baker in [1] present (among others) a simple delay-differential equation system as a test case for their solver.   Many solvers struggle at tracking the solution through discontinuities and history. 

In this repository, I test how several solvers and languages fare on that example.   

See also https://sites.google.com/site/tonigiorgino/blog/exactsolutionoftheddeofwilleandbaker

Note that the equations have a (monstre) closed-form solution; it is provided in the Mathematica notebook. 
This is how the closed-form solution evaluates numerically:

|	t	|	x	|	y	|	z	|
|---|---|---|---|		 
|	1	|	2	|	3.71414	|	3.18164	|
|	2	|	3.5	|	10.5606	|	9.77286	|
|	3	|	6.16667	|	28.0053	|	27.7379	|
|	4	|	10.875	|	71.2265	|	74.163	|
|	5	|	19.175	|	176.423	|	190.344	|



[1] D. R. Willé and C. T. H. Baker, “DELSOL—a numerical code for the
    solution of systems of delay-differential equations,” Applied
    Numerical Mathematics, vol. 9, no. 3–5, pp. 223–234, Apr. 1992.

