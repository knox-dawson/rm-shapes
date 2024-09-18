# draw rectangle, given x and y distances
proc myrectangle {dx dy} {
    set fromX [X [here]]
    set fromY [Y [here]]
    mylineto [+ $fromX $dx] $fromY
    mylineto [+ $fromX $dx] [+ $fromY $dy]
    mylineto $fromX         [+ $fromY $dy]
    mylineto $fromX         $fromY
}
