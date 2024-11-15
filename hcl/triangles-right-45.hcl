source proc_mylineto.hcl
source proc_triangle_right.hcl

# --- trianges-right-45.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn trianges-right-45.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- trianges-right-45 ---
pen $color solid $thickness

moveto 10  65; triangle_right 60 60
moveto 10 115; triangle_right 40 40
moveto 10 160; triangle_right 30 30
moveto 10 195; triangle_right 24 24

moveto 75 190; triangle_right 22 22
moveto 75 154; triangle_right 20 20
moveto 75 120; triangle_right 18 18
moveto 75  86; triangle_right 16 16
moveto 75  54; triangle_right 14 14
moveto 75  25; triangle_right 12 12

moveto 110  25; triangle_right 10 10
moveto 110  51; triangle_right  8  8
moveto 110  77; triangle_right  6  6
moveto 110 103; triangle_right  4  4
moveto 110 130; triangle_right  2  2

