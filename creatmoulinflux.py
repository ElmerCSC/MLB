import math

# Define the step size
step = 1  # Smaller step = more precision

# Define the range for t: from 0 to 2*pi
day = 1
meltseasondays = 100
while day <= meltseasondays:
    print(f"{day:.0f} {0.0006*math.sin(math.pi*day/meltseasondays):.4f} {0.001*math.sin(math.pi*day/meltseasondays):.4f}")
    day += step
