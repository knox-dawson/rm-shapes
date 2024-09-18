# --- circles.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn circles.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- circles ---
pen $color solid $thickness

moveto 35  35; circle 30
moveto 35  95; circle 20
moveto 35 140; circle 15
moveto 35 180; circle 12

moveto 80 180; circle 11
moveto 80 144; circle 10
moveto 80 110; circle  9
moveto 80  76; circle  8
moveto 80  44; circle  7
moveto 80  15; circle  6

moveto 110  15; circle  5
moveto 110  41; circle  4
moveto 110  67; circle  3
moveto 110  93; circle  2
moveto 110 120; circle  1
