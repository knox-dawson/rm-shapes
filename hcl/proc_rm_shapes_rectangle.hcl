# draw rectangle with height and base, current position is upper-left corner
proc rm_shapes_rectangle {height base} {
    set x [X [here]]
    set y [Y [here]]

    moveto $x $y
    mylineto [+ $x $base] $y
    mylineto [+ $x $base] [+ $y $height]
    mylineto $x           [+ $y $height]
    mylineto $x           $y
}
