# Draw a diamond, given x and y distances
proc diamond {dx dy} {
    set x0 [X [here]]
    set y0 [Y [here]]
    set x1 [+ $x0 $dx]
    set y1 [+ $y0 $dy]
    set x2 [- $x1 $dx]
    set y2 [+ $y1 $dy]
    set x3 [- $x2 $dx]
    set y3 [- $y2 $dy]
    mylineto $x1 $y1
    mylineto $x2 $y2
    mylineto $x3 $y3
    mylineto $x0 $y0
}
