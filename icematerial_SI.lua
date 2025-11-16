-- #############################################################
--  A list of usefull constants for ice-sheet simulations
--   
--   - Unit System =
--      -- m
--      -- s
--      -- Pa
-- #############################################################



exp=math.exp

-- ## constants declaration
yearinsec=365.25*24.0*3600.0
Pa2MPa=1.0E-06
rhoi=917.0
gravity = -9.81

A1 = 3.985E-13         --- MPa^(-3) a^(-1) -> SI
A2 = 1.916E3          --- MPa^(-3) a^(-1) -> SI
Q1 = 60.0E3 
Q2 = 139.0E3
Lheat=334000.0
Tref=200.0
Hca=7.253
Hcb=146.3

-- # utility functions
function max(a,b)
  if (a > b) then
    return a
  else
    return b
  end  
end    
function min(a,b)
  if (a < b) then
    return a
  else
    return b
  end  
end

function IfThenElse(condition,t,f) 
   if condition then
     return t
   else
     return f
   end 
end
-- ## thermal properties
function conductivity(Tin)
 T = Tin
 if (T > 273.15) then
   T = 273.15
 end 
 k=9.828*exp(-5.7E-03*T)
 return k
end


-- ## heat capacity
function capacity(Tin)
  T = Tin
  if (T > 273.15) then
    T = 273.15
  end 
  c=146.3+(7.253*T)
  return c
end

function capacityH(Tin)
  T = Tin
  c=Hcb+(Hca*T)
  return c
end

-- ## surface enthalpy
function surfaceenthalpy(Tin,Tpm,omega)
   if (Tin > Tpm) then
      Tin = Tpm
      Hs=Lheat*omega
   else
      Hs=0.0
   end
   Hs = Hs + Hcb*(Tin - Tref) + 0.5*Hca*(Tin*Tin - Tref*Tref)
   -- print("Hs(",Tin,")=",Hs)
   return Hs
end

-- ## relative temperature
function reltemp(T)
  Th= T - 273.15
  return Th
end

-- friction loads
function frictionloads(lx,ly,lz,vx,vy,vz)
  cx = max(-lx*vx,0)
  cy = max(-ly*vy,0)
  cz = max(-ly*vy,0)
  return cx + cy + cz
end  
