source proc_mylineto.hcl
source proc_triangle_right_flip.hcl

# --- trianges-right-golden-flip.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn trianges-right-golden-flip.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- trianges-right-golden-flip ---
pen $color solid $thickness

moveto 10  65; triangle_right_flip 60 [expr 60 * 0.618]
moveto 10 115; triangle_right_flip 40 [expr 40 * 0.618]
moveto 10 160; triangle_right_flip 30 [expr 30 * 0.618]
moveto 10 195; triangle_right_flip 24 [expr 24 * 0.618]

moveto 75 190; triangle_right_flip 22 [expr 22 * 0.618]
moveto 75 154; triangle_right_flip 20 [expr 20 * 0.618]
moveto 75 120; triangle_right_flip 18 [expr 18 * 0.618]
moveto 75  86; triangle_right_flip 16 [expr 16 * 0.618]
moveto 75  54; triangle_right_flip 14 [expr 14 * 0.618]
moveto 75  25; triangle_right_flip 12 [expr 12 * 0.618]

moveto 110  25; triangle_right_flip 10 [expr 10 * 0.618]
moveto 110  51; triangle_right_flip  8 [expr  8 * 0.618]
moveto 110  77; triangle_right_flip  6 [expr  6 * 0.618]
moveto 110 103; triangle_right_flip  4 [expr  4 * 0.618]
moveto 110 130; triangle_right_flip  2 [expr  2 * 0.618]

