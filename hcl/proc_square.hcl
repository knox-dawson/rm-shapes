# draw square, given radius (to centerline), current position is center
proc square {radius} {
    set cx [X [here]]
    set cy [Y [here]]

    set dx [* 2 $radius]
    set dy [* 2 $radius]

    set x [- $cx $radius]
    set y [- $cy $radius]

    moveto $x $y
    mylineto [+ $x $dx] $y
    mylineto [+ $x $dx] [+ $y $dy]
    mylineto $x         [+ $y $dy]
    mylineto $x         $y
}
