# Draw a pentagon with radius, current position is center
proc pentagon {radius} {

    set cx [X [here]]
    set cy [Y [here]]

    set x1 [expr $cx + $radius * cosr(-3.14159265359 / 2)]
    set y1 [expr $cy + $radius * sinr(-3.14159265359 / 2)]
    set x2 [expr $cx + $radius * cosr(-3.14159265359 / 2 + 2 * 3.14159265359 / 5)]
    set y2 [expr $cy + $radius * sinr(-3.14159265359 / 2 + 2 * 3.14159265359 / 5)]
    set x3 [expr $cx + $radius * cosr(-3.14159265359 / 2 + 4 * 3.14159265359 / 5)]
    set y3 [expr $cy + $radius * sinr(-3.14159265359 / 2 + 4 * 3.14159265359 / 5)]
    set x4 [expr $cx + $radius * cosr(-3.14159265359 / 2 + 6 * 3.14159265359 / 5)]
    set y4 [expr $cy + $radius * sinr(-3.14159265359 / 2 + 6 * 3.14159265359 / 5)]
    set x5 [expr $cx + $radius * cosr(-3.14159265359 / 2 + 8 * 3.14159265359 / 5)]
    set y5 [expr $cy + $radius * sinr(-3.14159265359 / 2 + 8 * 3.14159265359 / 5)]

    moveto $x1 $y1
    lineto $x2 $y2
    lineto $x3 $y3
    lineto $x4 $y4
    lineto $x5 $y5
    lineto $x1 $y1
}
