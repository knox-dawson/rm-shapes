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

# Draw an octagon with radius, current location is center
proc octagon_vertical {radius} {

    set cX [X [here]]
    set cY [Y [here]]

    # Calculate the angle between vertices (in radians)
    set angle45 [expr 45 * (3.14159 / 180)]

    # Calculate the vertices of the octagon manually
    set x0 [expr $cX + $radius]
    set y0 $cY

    set x1 [expr $cX + $radius * [cos $angle45]]
    set y1 [expr $cY + $radius * [sin $angle45]]

    set x2 [expr $cX + $radius * [cos [expr 2 * $angle45]]]
    set y2 [expr $cY + $radius * [sin [expr 2 * $angle45]]]

    set x3 [expr $cX + $radius * [cos [expr 3 * $angle45]]]
    set y3 [expr $cY + $radius * [sin [expr 3 * $angle45]]]

    set x4 [expr $cX + $radius * [cos [expr 4 * $angle45]]]
    set y4 [expr $cY + $radius * [sin [expr 4 * $angle45]]]

    set x5 [expr $cX + $radius * [cos [expr 5 * $angle45]]]
    set y5 [expr $cY + $radius * [sin [expr 5 * $angle45]]]

    set x6 [expr $cX + $radius * [cos [expr 6 * $angle45]]]
    set y6 [expr $cY + $radius * [sin [expr 6 * $angle45]]]

    set x7 [expr $cX + $radius * [cos [expr 7 * $angle45]]]
    set y7 [expr $cY + $radius * [sin [expr 7 * $angle45]]]

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

moveto 40 40
pen 2
octagon_vertical 10
