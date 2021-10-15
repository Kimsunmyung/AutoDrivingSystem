import math




oldx = 290979.055004
x = 290978.810113
oldy = 3980046.45842
y = 3980043.1156
ansx = x - oldx
ansy = y - oldy
print(math.atan2(ansx, ansy)/math.pi)

#290979.055004	3980046.45842	5.0 south
#290978.810113	3980043.1156	5.0 south

oldx = 290979.055004
x = 290978.810113
oldy = 3980046.45842
y = 3980043.1156
ansx = oldx - x
ansy = oldy - y
print(math.atan2(ansx, ansy)/math.pi)

#290979.055004	3980046.45842	5.0 north
#290978.810113	3980043.1156	5.0 notrh


oldx = 290973.879149
x = 290961.347198
oldy = 3980041.24204
y = 3980042.26126
ansx = x - oldx
ansy = y - oldy
print(math.atan2(ansx, ansy)/math.pi)

#290973.879149	3980041.24204	41.86 west
#290961.347198	3980042.26126	36.75 west



oldx = 290973.879149
x = 290961.347198
oldy = 3980041.24204
y = 3980042.26126
ansx = oldx - x
ansy = oldy - y
print(math.atan2(ansx, ansy)/math.pi)

#290973.879149	3980041.24204	41.86 east
#290961.347198	3980042.26126	36.75 east