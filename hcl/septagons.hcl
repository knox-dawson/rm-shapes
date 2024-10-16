source proc_mylineto.hcl
source proc_septagon.hcl

# --- septagons.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn septagons.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- septagons ---
pen $color solid $thickness

moveto 35  35; septagon 30
moveto 35  95; septagon 20
moveto 35 140; septagon 15
moveto 35 180; septagon 12

moveto 80 180; septagon 11
moveto 80 144; septagon 10
moveto 80 110; septagon  9
moveto 80  76; septagon  8
moveto 80  44; septagon  7
moveto 80  15; septagon  6

moveto 110  15; septagon  5
moveto 110  41; septagon  4
moveto 110  67; septagon  3
moveto 110  93; septagon  2
moveto 110 120; septagon  1
