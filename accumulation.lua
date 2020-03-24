

function accum(Z,D,H)
  lapserate = (11.0/2750.0)
  thickness = D + H
  ela = 400.0
  asl = -ela*lapserate
  ac = lapserate*Z + asl
  if ( (thickness <= MINH) and (ac < 0.0) )
  then
    return 0.0
  else
    return ac
  end  
end