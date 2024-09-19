source proc_mylineto.hcl
source proc_square.hcl

# --- squares.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn squares.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- squares ---
pen $color solid $thickness

moveto 35  35; square 30
moveto 35  95; square 20
moveto 35 140; square 15
moveto 35 180; square 12

moveto 80 180; square 11
moveto 80 144; square 10
moveto 80 110; square  9
moveto 80  76; square  8
moveto 80  44; square  7
moveto 80  15; square  6

moveto 110  15; square  5
moveto 110  41; square  4
moveto 110  67; square  3
moveto 110  93; square  2
moveto 110 120; square  1
