source proc_mylineto.hcl
source proc_diamond.hcl

# --- diamonds.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn diamonds.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- diamonds ---
pen $color solid $thickness

moveto 35  35; diamond 30
moveto 35  95; diamond 20
moveto 35 140; diamond 15
moveto 35 180; diamond 12

moveto 80 180; diamond 11
moveto 80 144; diamond 10
moveto 80 110; diamond  9
moveto 80  76; diamond  8
moveto 80  44; diamond  7
moveto 80  15; diamond  6

moveto 110  15; diamond  5
moveto 110  41; diamond  4
moveto 110  67; diamond  3
moveto 110  93; diamond  2
moveto 110 120; diamond  1
