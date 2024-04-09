-- 
--  timestepping
-- 
Iter = 600   -- 1200
dtInit = 360.0
dtMax = 30.0*24*3600.0
dtIncr = 1.01
dtMin = 1.0*3600.0
OutPut = 10
-- -----------------------------
--  GlaDS
-- -----------------------------
rhow=1000.0
ub = 1.0e-6  
--  For the sheet
Aglen = 2.5e-25
Ar = Aglen
alphas = 1.25 
betas = 1.5 
lr = 2.0 
hr = 0.1 
Ks = 0.05
Hs = 0.05 --  IC for h
ev = 0.0 
Source = 100000.0

--  For the Channels
alphac = 1.25 
betac = 1.5 
Kc = 0.1
Ac = Aglen  
lc = 2.0 
Ct = -7.5e-8
Cw = 4220.0
Lw = 334000.0


--  For the Moulins
Am = 4.0
-- Permafrost
p0 = 101032.0
T0 = 273.15
ng = 3.0
Rg=8.314

function settimestepsize(nt)
  dt = dtInit*(dtIncr^nt)
  print(">>>>>>>> Current timestep",dt)
  if ( dt > dtMax ) then
    dt = dtMax
  end
  return dt
end

function getmeltrate(load,weights,grdmsk)
 if (grdmsk <= 0.0) then
   return 0.0
 else  
   return max(load/(weights*rhoi*Lw),0.0)
 end
end