source proc_mylineto.hcl
source proc_pentagon.hcl

# --- pentagons.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn pentagons.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- pentagons ---
pen $color solid $thickness

moveto 35  35; pentagon 30
moveto 35  95; pentagon 20
moveto 35 140; pentagon 15
moveto 35 180; pentagon 12

moveto 80 180; pentagon 11
moveto 80 144; pentagon 10
moveto 80 110; pentagon  9
moveto 80  76; pentagon  8
moveto 80  44; pentagon  7
moveto 80  15; pentagon  6

moveto 110  15; pentagon  5
moveto 110  41; pentagon  4
moveto 110  67; pentagon  3
moveto 110  93; pentagon  2
moveto 110 120; pentagon  1
