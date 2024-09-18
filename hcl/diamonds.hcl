# draw lines as short segments (.5 mm)
proc mylineto {toX toY} {
    set maxL [mm 0.5]
    set from [here]
    set totL [geom.length $from "$toX $toY"]
    set n [expr ceiling( $totL / $maxL)]
    set i 1
    while {<= $i $n} {
        lineto [geom.online $from "$toX $toY" [expr $i / $n]]
        incr $i
    }
    assert "$i - 1 == $n"
}

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

moveto 40 40
pen 2
diamond 20 20
