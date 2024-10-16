# Draw a septagon with radius, current position is center
proc septagon {radius} {

    set cx [X [here]]
    set cy [Y [here]]
    set sides 7

    # Define pi as a variable
    set pi 3.14159265359

    # Calculate and move to the first vertex (start at -pi/2 for bottom alignment)
    set x1 [expr $cx + $radius * cosr(-$pi / 2)]
    set y1 [expr $cy + $radius * sinr(-$pi / 2)]
    moveto $x1 $y1

    # Draw lines to the other vertices
    set x2 [expr $cx + $radius * cosr(-$pi / 2 + 2 * $pi / $sides)]
    set y2 [expr $cy + $radius * sinr(-$pi / 2 + 2 * $pi / $sides)]
    lineto $x2 $y2

    set x3 [expr $cx + $radius * cosr(-$pi / 2 + 4 * $pi / $sides)]
    set y3 [expr $cy + $radius * sinr(-$pi / 2 + 4 * $pi / $sides)]
    lineto $x3 $y3

    set x4 [expr $cx + $radius * cosr(-$pi / 2 + 6 * $pi / $sides)]
    set y4 [expr $cy + $radius * sinr(-$pi / 2 + 6 * $pi / $sides)]
    lineto $x4 $y4

    set x5 [expr $cx + $radius * cosr(-$pi / 2 + 8 * $pi / $sides)]
    set y5 [expr $cy + $radius * sinr(-$pi / 2 + 8 * $pi / $sides)]
    lineto $x5 $y5

    set x6 [expr $cx + $radius * cosr(-$pi / 2 + 10 * $pi / $sides)]
    set y6 [expr $cy + $radius * sinr(-$pi / 2 + 10 * $pi / $sides)]
    lineto $x6 $y6

    set x7 [expr $cx + $radius * cosr(-$pi / 2 + 12 * $pi / $sides)]
    set y7 [expr $cy + $radius * sinr(-$pi / 2 + 12 * $pi / $sides)]
    lineto $x7 $y7

    # Connect back to the first vertex
    lineto $x1 $y1
    
}
