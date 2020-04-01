# MLB
Midtre Lovenbreen testcase

The following SIF's are:
* mlb_linsys.sif    ... mechanical-only steady state problem using vectorized Navier-Stokes solver
* mlb.sif            ... leagcy Navier-Stokes version of the above
* mlb_tmc_linsys.sif ... thermo-mechanically coupled steady state problem using vectorized Navier-Stokes solver (works)
* mlb_tmc_trans_linsys.sif   ...  thermo-mechanically coupled steady state problem using vectorized Navier-Stokes solver and struct. mesh mapper (problematic)
* mlb_tmc_trans_linsys_fs.sif ...  thermo-mechanically coupled steady state problem using vectorized Navier-Stokes solver and leagacy MeshSolver (works)
* mlb_tmc(_trans)_linsys_SI.sif   ... same as above, with SI units, instead of scaled MPa-m-yr
