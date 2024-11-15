source proc_mylineto.hcl
source proc_triangle_right.hcl

# --- trianges-right-345.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn trianges-right-345.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- trianges-right-345 ---
pen $color solid $thickness

moveto 10  65; triangle_right 60 [expr 60 * 3/4]
moveto 10 115; triangle_right 40 [expr 40 * 3/4]
moveto 10 160; triangle_right 30 [expr 30 * 3/4]
moveto 10 195; triangle_right 24 [expr 24 * 3/4]

moveto 75 190; triangle_right 22 [expr 22 * 3/4]
moveto 75 154; triangle_right 20 [expr 20 * 3/4]
moveto 75 120; triangle_right 18 [expr 18 * 3/4]
moveto 75  86; triangle_right 16 [expr 16 * 3/4]
moveto 75  54; triangle_right 14 [expr 14 * 3/4]
moveto 75  25; triangle_right 12 [expr 12 * 3/4]

moveto 110  25; triangle_right 10 [expr 10 * 3/4]
moveto 110  51; triangle_right  8 [expr 8 * 3/4]
moveto 110  77; triangle_right  6 [expr 6 * 3/4]
moveto 110 103; triangle_right  4 [expr 4 * 3/4]
moveto 110 130; triangle_right  2 [expr 2 * 3/4]
