source proc_mylineto.hcl
source proc_triangle_isosceles.hcl

# --- trianges_isosceles.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn trianges_isosceles.hcl [black|gray|red|blue] [0.22|0.34|0.43|0.65|1.11|1.84|2.9] [45|30|60]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]

# "flat" golden
set angle     78.18

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- trianges_isosceles ---
pen $color solid $thickness

moveto 57  35; triangle_isosceles 30 $angle
moveto 37  95; triangle_isosceles 20 $angle
moveto 37 140; triangle_isosceles 15 $angle
moveto 37 180; triangle_isosceles 12 $angle

moveto 90 180; triangle_isosceles 11 $angle
moveto 90 154; triangle_isosceles 10 $angle
moveto 90 125; triangle_isosceles  9 $angle
moveto 90 100; triangle_isosceles  8 $angle
moveto 90  80; triangle_isosceles  7 $angle
moveto 90  15; triangle_isosceles  6 $angle

moveto 120  15; triangle_isosceles  5 $angle
moveto 120  41; triangle_isosceles  4 $angle
moveto 120  67; triangle_isosceles  3 $angle
moveto 120  93; triangle_isosceles  2 $angle
moveto 120 120; triangle_isosceles  1 $angle

