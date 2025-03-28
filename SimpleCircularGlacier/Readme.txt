This is a simple case with a circular glacier on a tilted plane.
The idea is to compare three different Stokes variations
(FlowSolver, IncompressibleNSVec, HydrostaticNSVec) and ensure that
their operation when it comes to material laws, slip coefficient, and
newton linearization is similar.


hyd.sif - 1st order hydostatic solver with (u_x,u_y) as dofs
leg.sif - legacy monolithic Stokes equation with (u_x,u_y,y_z,p) as dofs
vec.sif - vectorized current Stokes equation with (u_x,u_y,y_z,p) as dofs

Peter R. 1.3.2024
