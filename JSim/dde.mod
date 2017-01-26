// http://www.mathworks.it/it/help/matlab/math/dde-with-constant-delays.html
math wb {
	realDomain t;
	t.min=0; t.max=5; t.delta=0.05;

	real y1(t),y2(t),y3(t);
	real y1delayed(t),y2delayed(t);

	real d1=1;
	real d2=.2;

	when (t=t.min) y1=1;
	when (t=t.min) y2=1;
	when (t=t.min) y3=1;

	y1delayed = if (t<d1) 1 else y1(t-d1);
	y2delayed = if (t<d2) 1 else y2(t-d2);

	y1:t=y1delayed;
	y2:t=y1delayed+y2delayed;
	y3:t=y2;

}
