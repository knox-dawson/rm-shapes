# --- shapes.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn hexagon.hcl 

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

# draw hexagon with radius, current location is center
proc hexagon_horizontal {radius} {

    set cX [X [here]]
    set cY [Y [here]]

    # Calculate the angle between vertices (in radians)
    set angle60 [expr 60 * (3.14159 / 180)]

    # Calculate the vertices of the hexagon manually
    set x0 [expr $cX + $radius]
    set y0 $cY

    set x1 [expr $cX + $radius * [cos $angle60]]
    set y1 [expr $cY + $radius * [sin $angle60]]

    # TODO This should be in a loop
    set x2 [expr $cX + $radius * [cos [expr 2 * $angle60]]]
    set y2 [expr $cY + $radius * [sin [expr 2 * $angle60]]]

    set x3 [expr $cX + $radius * [cos [expr 3 * $angle60]]]
    set y3 [expr $cY + $radius * [sin [expr 3 * $angle60]]]

    set x4 [expr $cX + $radius * [cos [expr 4 * $angle60]]]
    set y4 [expr $cY + $radius * [sin [expr 4 * $angle60]]]

    set x5 [expr $cX + $radius * [cos [expr 5 * $angle60]]]
    set y5 [expr $cY + $radius * [sin [expr 5 * $angle60]]]

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

# --- outer box ---
pen 0.2; offset 15 5; rectangle 137 199

# --- hexagons ---
moveto 20 50
pen 1.2; hexagon_horizontal 10

