// characteristic mesh parameters
r = 1.0e3;
r2 = 0.8*r;
r3 = 0.6*r;
c1 = 0.05e3;
c3 = 0.3*c1;
// points for the half circle
Point(1) = {0, 0, 0, c1};
f2=0.0;
Point(2) = {r*Cos(f2), r*Sin(f2), 0, c1};
f3=Pi/2;
Point(3) = {r*Cos(f3), r*Sin(f3), 0, c1};
f4=Pi;
Point(4) = {r*Cos(f4), r*Sin(f4), 0, c1};
f5=3*Pi/2;
Point(5) = {r*Cos(f5), r*Sin(f5), 0, c1};
f6=Pi/4;
Point(6) = {r*Cos(f6), r*Sin(f6), 0, c1};
f7=5*Pi/4;
Point(7) = {r*Cos(f7), r*Sin(f7), 0, c1};
f8=Pi/12;
Point(8) = {r*Cos(f8), r*Sin(f8), 0, c1};
f9=13*Pi/12;
Point(9) = {r*Cos(f9), r*Sin(f9), 0, c1};
f10=Pi/24;
Point(10) = {r3*Cos(f10), r3*Sin(f10), 0, c3};
f11=25*Pi/24;
Point(11) = {r2*Cos(f11), r2*Sin(f11), 0, c1};
//+
Circle(1) = {3, 1, 6};
//+
Circle(2) = {6, 1, 8};
//+
Bezier(3) = {8, 10, 2};
//+
Circle(4) = {2, 1, 5};
//+
Circle(5) = {5, 1, 7};
//+
Circle(6) = {7, 1, 9};
//+
Circle(7) = {4, 1, 3};
//+
Line(8) = {4, 11};
//+
Line(9) = {9, 11};
//+
Curve Loop(1) = {7, 1, 2, 3, 4, 5, 6, 9, -8};
//+
Plane Surface(1) = {1};
