// characteristic mesh parameters
r = 1.0e3;
c1 = 0.05e3;
// points for the half circle
Point(1) = {0, 0, 0, c1};
Point(2) = {0, r, 0, c1};
Point(3) = {r, 0, 0, c1};
Point(4) = {0, -r, 0, c1};
Point(5) = {-r, 0, 0, c1};
Circle(1) = {3, 1, 2};
//+
Circle(2) = {2, 1, 5};
//+
Circle(3) = {5, 1, 4};
//+
Circle(4) = {4, 1, 3};
//+
Curve Loop(1) = {2, 3, 4, 1};
//+
Plane Surface(1) = {1};
