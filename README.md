Simple delay-differential equation testbench
============================================

TG 8 may 2014


Various implementations of the DDE example provided in [1]. 

It has a (lengthy) exact solution, provided in the Mathematica notebook. 

Many solvers struggle at tracking the solution through discontinuities and history.

See also https://sites.google.com/site/tonigiorgino/blog/exactsolutionoftheddeofwilleandbaker

This is the numeric approximation of the exact solution:

    t    1         2         3        4         5
    x    2.	       3.5	     6.16667 10.875	   19.175
    y    3.71414  10.5606	28.0053	 71.2265  176.423
    z    3.18164   9.77286	27.7379	 74.163	  190.344



[1] D. R. Willé and C. T. H. Baker, “DELSOL—a numerical code for the
    solution of systems of delay-differential equations,” Applied
    Numerical Mathematics, vol. 9, no. 3–5, pp. 223–234, Apr. 1992.

