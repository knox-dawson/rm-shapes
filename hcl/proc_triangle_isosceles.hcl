# Draw an equilateral triangle given a "radius", current location is centroid
# b=2⋅h⋅tan(θ/2)
proc triangle_isosceles {radius angle} {
    set cx [X [here]]
    set cy [Y [here]]

    # Define pi for calculations
    set pi 3.14159265359

    # Convert angle to radians
    set theta [expr $angle * $pi / 180]

    # Calculate the height of the triangle (2 * $radius)
    set height [expr 2 * $radius]

    # Calculate the top vertex
    set x_top $cx
    set y_top [expr $cy - $radius]

    # Calculate the base vertices
    # The x-offset should be r * tanr(theta / 2) rather than height
    set x_base_left [expr $cx - ($height * tanr($theta / 2))]

    set y_base_left [expr $cy + $radius]

    set x_base_right [expr $cx + ($height * tanr($theta / 2))]

    set y_base_right [expr $cy + $radius]

    # Draw the triangle
    moveto $x_top $y_top
    mylineto $x_base_left $y_base_left
    mylineto $x_base_right $y_base_right
    mylineto $x_top $y_top
}
