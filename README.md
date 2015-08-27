Simple delay-differential equation testbench
============================================

TG 8 may 2014


Various implementations of the DDE example provided in [1]. 

It has a (lengthy) exact (closed-form) solution, provided in the Mathematica notebook. 

Many solvers struggle at tracking the solution through discontinuities and history.

See also https://sites.google.com/site/tonigiorgino/blog/exactsolutionoftheddeofwilleandbaker

This is the numeric approximation of the closed-form solution:

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

