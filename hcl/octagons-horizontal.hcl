source proc_mylineto.hcl
source proc_octagon_horizontal.hcl

# --- octagons_horizontal.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn octagons_horizontal.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- octagons_horizontal ---
pen $color solid $thickness

moveto 35  35; octagon_horizontal 30
moveto 35  95; octagon_horizontal 20
moveto 35 140; octagon_horizontal 15
moveto 35 180; octagon_horizontal 12

moveto 80 180; octagon_horizontal 11
moveto 80 144; octagon_horizontal 10
moveto 80 110; octagon_horizontal  9
moveto 80  76; octagon_horizontal  8
moveto 80  44; octagon_horizontal  7
moveto 80  15; octagon_horizontal  6

moveto 110  15; octagon_horizontal  5
moveto 110  41; octagon_horizontal  4
moveto 110  67; octagon_horizontal  3
moveto 110  93; octagon_horizontal  2
moveto 110 120; octagon_horizontal  1
