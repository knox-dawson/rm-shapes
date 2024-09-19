# Draw a (non-regular) diamond, given x and y distances, current location is center
proc diamondv {dx dy} {
    set cx [X [here]]
    set cy [Y [here]]

    set x0 $cx
    set y0 [- $cy $dy]
    set x1 [+ $x0 $dx]
    set y1 [+ $y0 $dy]
    set x2 [- $x1 $dx]
    set y2 [+ $y1 $dy]
    set x3 [- $x2 $dx]
    set y3 [- $y2 $dy]

    moveto $x0 $y0
    mylineto $x1 $y1
    mylineto $x2 $y2
    mylineto $x3 $y3
    mylineto $x0 $y0
}

# Draw a (regular) diamond, given a radius, current location is center
proc diamond {radius} {
    set cx [X [here]]
    set cy [Y [here]]

    set x0 $cx
    set y0 [- $cy $radius]
    set x1 [+ $x0 $radius]
    set y1 [+ $y0 $radius]
    set x2 [- $x1 $radius]
    set y2 [+ $y1 $radius]
    set x3 [- $x2 $radius]
    set y3 [- $y2 $radius]

    moveto $x0 $y0
    mylineto $x1 $y1
    mylineto $x2 $y2
    mylineto $x3 $y3
    mylineto $x0 $y0
}
