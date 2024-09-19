source proc_mylineto.hcl
source proc_octagon_vertical.hcl

# --- octagons_vertical.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn octagons_vertical.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- octagons_vertical ---
pen $color solid $thickness

moveto 35  35; octagon_vertical 30
moveto 35  95; octagon_vertical 20
moveto 35 140; octagon_vertical 15
moveto 35 180; octagon_vertical 12

moveto 80 180; octagon_vertical 11
moveto 80 144; octagon_vertical 10
moveto 80 110; octagon_vertical  9
moveto 80  76; octagon_vertical  8
moveto 80  44; octagon_vertical  7
moveto 80  15; octagon_vertical  6

moveto 110  15; octagon_vertical  5
moveto 110  41; octagon_vertical  4
moveto 110  67; octagon_vertical  3
moveto 110  93; octagon_vertical  2
moveto 110 120; octagon_vertical  1
