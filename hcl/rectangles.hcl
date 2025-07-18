source proc_mylineto.hcl
source proc_rm_shapes_rectangle.hcl

# --- rm_shapes_rectange.hcl usage ---
# drawj2d -T rmdoc rm_shapes_rectange.hcl [black|gray|red|blue,etc] [0.22|0.34|0.43|0.65|1.11|1.84|2.9] [height] [base]

set color     [lindex $argv 0]
set thickness [lindex $argv 1]
set height    [lindex $argv 2]
set base      [lindex $argv 3]

# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205

# --- rectangles ---
pen $color solid $thickness

moveto 35  35; rm_shapes_rectange 30
moveto 35  95; rm_shapes_rectange 20
moveto 35 140; rm_shapes_rectange 15
moveto 35 180; rm_shapes_rectange 12

moveto 80 180; rm_shapes_rectange 11
moveto 80 144; rm_shapes_rectange 10
moveto 80 110; rm_shapes_rectange  9
moveto 80  76; rm_shapes_rectange  8
moveto 80  44; rm_shapes_rectange  7
moveto 80  15; rm_shapes_rectange  6

moveto 110  15; rm_shapes_rectange  5
moveto 110  41; rm_shapes_rectange  4
moveto 110  67; rm_shapes_rectange  3
moveto 110  93; rm_shapes_rectange  2
moveto 110 120; rm_shapes_rectange  1
