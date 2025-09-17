import math

# Define the step size
step = 1  # Smaller step = more precision

# Define the range for t: from 0 to 2*pi
day = 1
meltseasondays = 100
while day <= meltseasondays:
    flux1=0.0006*math.sin(math.pi*day/meltseasondays)
    flux2=0.001*math.sin(math.pi*day/meltseasondays)
    totalflux=flux1 + flux2
    print(f"{day:.0f} {totalflux:.4f} {flux1:.4f} {flux2:.4f}")
    day += step
