# Draw an octagon with radius, current location is center
proc octagon_horizontal {radius} {

    set cX [X [here]]
    set cY [Y [here]]

    # Calculate the angle between vertices (in radians)
    set angle45 [expr 45 * (3.14159 / 180)]
    
    # Rotation to align the top side horizontally (22.5 degrees in radians)
    set rotation [expr 22.5 * (3.14159 / 180)]

    # Calculate the vertices of the rotated octagon manually
    set x0 [expr $cX + $radius * [cos $rotation]]
    set y0 [expr $cY + $radius * [sin $rotation]]

    set x1 [expr $cX + $radius * [cos [expr $rotation + $angle45]]]
    set y1 [expr $cY + $radius * [sin [expr $rotation + $angle45]]]

    set x2 [expr $cX + $radius * [cos [expr $rotation + 2 * $angle45]]]
    set y2 [expr $cY + $radius * [sin [expr $rotation + 2 * $angle45]]]

    set x3 [expr $cX + $radius * [cos [expr $rotation + 3 * $angle45]]]
    set y3 [expr $cY + $radius * [sin [expr $rotation + 3 * $angle45]]]

    set x4 [expr $cX + $radius * [cos [expr $rotation + 4 * $angle45]]]
    set y4 [expr $cY + $radius * [sin [expr $rotation + 4 * $angle45]]]

    set x5 [expr $cX + $radius * [cos [expr $rotation + 5 * $angle45]]]
    set y5 [expr $cY + $radius * [sin [expr $rotation + 5 * $angle45]]]

    set x6 [expr $cX + $radius * [cos [expr $rotation + 6 * $angle45]]]
    set y6 [expr $cY + $radius * [sin [expr $rotation + 6 * $angle45]]]

    set x7 [expr $cX + $radius * [cos [expr $rotation + 7 * $angle45]]]
    set y7 [expr $cY + $radius * [sin [expr $rotation + 7 * $angle45]]]

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
