-- #############################################################
--  A list of usefull constants for ice-sheet simulations
--   - Can be included in elmer configuration .sif files using
--        include PATH_TO/Physical_Params.IN 
--   - Unit System =
--      -- m
--      -- a
--      -- MPa
-- #############################################################

exp=math.exp

-- ## constants declaration

rhoi=917.0
gravity = -9.81

A1 = 3.985E-13         --- MPa^(-3) a^(-1) -> SI
A2 = 1.916E3          --- MPa^(-3) a^(-1) -> SI

Q1 = 60.0E3 
Q2 = 139.0E3

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

-- ## relative temperature
function reltemp(T)
  Th= T - 273.15
  return Th
end  