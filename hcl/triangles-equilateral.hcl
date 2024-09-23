source proc_mylineto.hcl
source proc_triangle_equilateral.hcl

# --- trianges_equilateral.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn trianges_equilateral.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- trianges_equilateral ---
pen $color solid $thickness

moveto 35  35; triangle_equilateral 30
moveto 35  95; triangle_equilateral 20
moveto 35 140; triangle_equilateral 15
moveto 35 180; triangle_equilateral 12

moveto 80 180; triangle_equilateral 11
moveto 80 144; triangle_equilateral 10
moveto 80 110; triangle_equilateral  9
moveto 80  76; triangle_equilateral  8
moveto 80  44; triangle_equilateral  7
moveto 80  15; triangle_equilateral  6

moveto 110  15; triangle_equilateral  5
moveto 110  41; triangle_equilateral  4
moveto 110  67; triangle_equilateral  3
moveto 110  93; triangle_equilateral  2
moveto 110 120; triangle_equilateral  1
