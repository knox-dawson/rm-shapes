# Draw an octagon at the specified center and radius
proc octagon_vertical {cX cY rL} {

    # Calculate the angle between vertices (in radians)
    set angle45 [expr 45 * (3.14159 / 180)]

    # Calculate the vertices of the octagon manually
    set x0 [expr $cX + $rL]
    set y0 $cY

    set x1 [expr $cX + $rL * [cos $angle45]]
    set y1 [expr $cY + $rL * [sin $angle45]]

    set x2 [expr $cX + $rL * [cos [expr 2 * $angle45]]]
    set y2 [expr $cY + $rL * [sin [expr 2 * $angle45]]]

    set x3 [expr $cX + $rL * [cos [expr 3 * $angle45]]]
    set y3 [expr $cY + $rL * [sin [expr 3 * $angle45]]]

    set x4 [expr $cX + $rL * [cos [expr 4 * $angle45]]]
    set y4 [expr $cY + $rL * [sin [expr 4 * $angle45]]]

    set x5 [expr $cX + $rL * [cos [expr 5 * $angle45]]]
    set y5 [expr $cY + $rL * [sin [expr 5 * $angle45]]]

    set x6 [expr $cX + $rL * [cos [expr 6 * $angle45]]]
    set y6 [expr $cY + $rL * [sin [expr 6 * $angle45]]]

    set x7 [expr $cX + $rL * [cos [expr 7 * $angle45]]]
    set y7 [expr $cY + $rL * [sin [expr 7 * $angle45]]]

    # Move to the first vertex
    moveto $x0 $y0

    # Draw lines to the other vertices
    mylineto $x1 $y1
    mylineto $x2 $y2
    mylineto $x3 $y3
    mylineto $x4 $y4
    mylineto $x5 $y5
    mylineto $x6 $y6
    mylineto $x7 $y7

    # Close the octagon by drawing a line back to the first vertex
    mylineto $x0 $y0
}
