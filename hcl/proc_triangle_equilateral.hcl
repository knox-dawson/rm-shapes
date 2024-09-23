# Draw an equilateral triangle given a "radius", current location is centroid
proc triangle_equilateral {radius} {
    set cx [X [here]]
    set cy [Y [here]]

    # height ("radius" is 2/3 of height
    set height [+ $radius [/ $radius 2]]

    # center of baseline
    set bx $cx
    set by [+ $cy [/ $radius 2]]

    # length of side
    set side [* $radius [expr 3/sqrt(3)]]

    # vertices
    set x0 [- $bx [/ $side 2]] ;# Bottom-left vertex
    set y0 $by                 ;# Bottom-left vertex stays on the baseline
    set x1 [+ $bx [/ $side 2]] ;# Bottom-right vertex
    set y1 $y0                 ;# Same y-coordinate as the left vertex
    set x2 $bx                 ;# Top vertex is directly above the center
    set y2 [- $by $height]     ;# Top vertex is height units above the baseline

    moveto $x0 $y0
    mylineto $x1 $y1
    mylineto $x2 $y2
    mylineto $x0 $y0
}

