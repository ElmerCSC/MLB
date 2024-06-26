# MLB (*M*idtre *L*ovén*B*reen)
This is the repository containing the Midtre Lovénbreen testcase, used in the Elmer/Ice beginner's course http://elmerfem.org/elmerice/wiki/doku.php?id=courses:courses 

![MLB_lc50_velo_small](https://github.com/ElmerCSC/MLB/assets/6701631/3f48d447-dff0-4f79-b5d1-301ad2bb4992)

The following SIF's are:
* `mlb_linsys.sif`    ... mechanical-only steady state problem using vectorized Navier-Stokes solver
* `mlb_amgx.sif`      ... mechanical-only steady state problem using vectorized Navier-Stokes solver with NVIDIA AMGX library to offload block solutions (needs CUDA enables GPU and amgx_interface branch)
* `mlb.sif`            ... mechanical-only steady state problem using legacy Navier-Stokes solver
* `mlb_sliding.sif`    ... mechanical-only steady state problem with sliding using legacy Navier-Stokes solver
* `mlb_tmc_linsys.sif` ... thermo-mechanically coupled steady state problem using vectorized Navier-Stokes solver (works)
* `mlb_tmc_trans_linsys.sif`   ...  thermo-mechanically coupled steady state problem using vectorized Navier-Stokes solver and struct. mesh mapper (problematic)
* `mlb_tmc_trans_linsys_fs.sif` ...  thermo-mechanically coupled steady state problem using vectorized Navier-Stokes solver and leagacy MeshSolver (works)
* `mlb_tmc(_trans)_linsys_SI.sif`   ... same as above, with SI units, instead of scaled MPa-m-yr
* `mlb_amgx.sif`  ... mechanical-only steady state problem with NVIDIA's AMGX solver using vectorized Navier-Stokes solver 
