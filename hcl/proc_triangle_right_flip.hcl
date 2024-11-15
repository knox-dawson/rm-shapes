proc triangle_right_flip {height base} {
    set x1 [X [here]]
    set y1 [Y [here]]

    # Calculate the coordinates for each vertex
    # Bottom-right corner of the base
    set x2 [expr $x1 + $base]
    set y2 $y1

    # Top corner (height from the bottom-left corner)
    set x3 $x2
    set y3 [expr $y2 - $height]

    # Draw the triangle
    moveto $x1 $y1      ;# Start at the bottom-left corner
    mylineto $x2 $y2    ;# Draw the base
    mylineto $x3 $y3    ;# Draw the height
    mylineto $x1 $y1    ;# Close the triangle with the hypotenuse
}

