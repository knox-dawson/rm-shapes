proc triangle_right {height base} {
    set x1 [X [here]]
    set y1 [Y [here]]

    # Calculate the coordinates for each vertex
    # Bottom-right corner of the base
    set x2 [expr $x1 + $base]
    set y2 $y1

    # Top corner (height from the bottom-left corner)
    set x3 $x1
    set y3 [expr $y1 - $height]

    # Draw the triangle
    moveto $x3 $y3      ;# Start at the top (left) corner
    mylineto $x1 $y1    ;# Draw the height
    mylineto $x2 $y2    ;# Draw the base
    mylineto $x3 $y3    ;# Close the triangle with the hypotenuse
}

