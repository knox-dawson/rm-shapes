source proc_mylineto.hcl
source proc_hexagon_horizontal.hcl

# --- hexagons-horizontal.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn hexagons-horizontal.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- hexagons-horizontal ---
pen $color solid $thickness

moveto 35  35; hexagon_horizontal 30
moveto 35  95; hexagon_horizontal 20
moveto 35 140; hexagon_horizontal 15
moveto 35 180; hexagon_horizontal 12

moveto 80 180; hexagon_horizontal 11
moveto 80 144; hexagon_horizontal 10
moveto 80 110; hexagon_horizontal  9
moveto 80  76; hexagon_horizontal  8
moveto 80  44; hexagon_horizontal  7
moveto 80  15; hexagon_horizontal  6

moveto 110  15; hexagon_horizontal  5
moveto 110  41; hexagon_horizontal  4
moveto 110  67; hexagon_horizontal  3
moveto 110  93; hexagon_horizontal  2
moveto 110 120; hexagon_horizontal  1
