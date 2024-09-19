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

moveto 35  35; diamondv 32 30
moveto 35  95; diamondv 22 20
moveto 35 140; diamondv 17 15
moveto 35 180; diamondv 14 12

moveto 80 180; diamondv 11 11
moveto 80 144; diamondv 10 10
moveto 80 110; diamondv 9  9
moveto 80  76; diamondv 8  8
moveto 80  44; diamondv 7  7
moveto 80  15; diamondv 6  6

moveto 110  15; diamondv 5  5
moveto 110  41; diamondv 4  4
moveto 110  67; diamondv 3  3
moveto 110  93; diamondv 2  2
moveto 110 120; diamondv 1  1
