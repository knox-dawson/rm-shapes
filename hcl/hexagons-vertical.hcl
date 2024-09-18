# draw lines as short segments (.5 mm)
proc mylineto {toX toY} {
    set maxL [mm 0.5]
    set from [here]
    set totL [geom.length $from "$toX $toY"]
    set n [expr ceiling( $totL / $maxL)]
    set i 1
    while {<= $i $n} {
        lineto [geom.online $from "$toX $toY" [expr $i / $n]]
        incr $i
    }
    assert "$i - 1 == $n"
}

# Draw a hexagon with radius, current location is center
proc hexagon_vertical {radius} {

    set cX [X [here]]
    set cY [Y [here]]

    # Calculate the angle between vertices (in radians)
    set angle60 [expr 60 * (3.14159 / 180)]

    # Rotation to place a vertex at the top (30 degrees in radians)
    set rotation [expr 30 * (3.14159 / 180)]

    # Calculate the vertices of the rotated hexagon manually
    set x0 [expr $cX + $radius * [cos $rotation]]
    set y0 [expr $cY + $radius * [sin $rotation]]

    set x1 [expr $cX + $radius * [cos [expr $rotation + $angle60]]]
    set y1 [expr $cY + $radius * [sin [expr $rotation + $angle60]]]

    set x2 [expr $cX + $radius * [cos [expr $rotation + 2 * $angle60]]]
    set y2 [expr $cY + $radius * [sin [expr $rotation + 2 * $angle60]]]

    set x3 [expr $cX + $radius * [cos [expr $rotation + 3 * $angle60]]]
    set y3 [expr $cY + $radius * [sin [expr $rotation + 3 * $angle60]]]

    set x4 [expr $cX + $radius * [cos [expr $rotation + 4 * $angle60]]]
    set y4 [expr $cY + $radius * [sin [expr $rotation + 4 * $angle60]]]

    set x5 [expr $cX + $radius * [cos [expr $rotation + 5 * $angle60]]]
    set y5 [expr $cY + $radius * [sin [expr $rotation + 5 * $angle60]]]

    # Move to the first vertex
    moveto $x0 $y0

    # Draw lines to the other vertices
    mylineto $x1 $y1
    mylineto $x2 $y2
    mylineto $x3 $y3
    mylineto $x4 $y4
    mylineto $x5 $y5

    # Close the hexagon by drawing a line back to the first vertex
    mylineto $x0 $y0
}

moveto 40 40
pen 2
hexagon_vertical 10

