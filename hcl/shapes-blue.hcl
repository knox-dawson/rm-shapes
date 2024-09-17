# --- shapes.hcl usage ---
# drawj2d -W 157 -H 209 -T rmn shapes.hcl 

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

# draw rectangles using lines as short segments
proc myrectangle {dx dy} {
    set fromX [X [here]]
    set fromY [Y [here]]
    mylineto [+ $fromX $dx] $fromY
    mylineto [+ $fromX $dx] [+ $fromY $dy]
    mylineto $fromX         [+ $fromY $dy]
    mylineto $fromX         $fromY
}

# --- outer box ---
pen blue 0.2; offset 15 5; myrectangle 137 199

# --- horiz lines ---
pen blue 1.2; moveto 10 10; mylineto 30 10
pen blue 1.0; moveto 10 20; mylineto 30 20
pen blue 0.8; moveto 10 30; mylineto 30 30
pen blue 0.6; moveto 40 10; mylineto 60 10
pen blue 0.4; moveto 40 20; mylineto 60 20
pen blue 0.2; moveto 40 30; mylineto 60 30

# --- vert lines ---
pen blue 1.2; moveto  75 10; mylineto  75 30
pen blue 1.0; moveto  85 10; mylineto  85 30
pen blue 0.8; moveto  95 10; mylineto  95 30
pen blue 0.6; moveto 105 10; mylineto 105 30
pen blue 0.4; moveto 115 10; mylineto 115 30
pen blue 0.2; moveto 125 10; mylineto 125 30

# --- circles ---
pen blue 1.2; moveto 20  50; circle 10
pen blue 1.0; moveto 20  76; circle 10
pen blue 0.8; moveto 20 102; circle 10
pen blue 0.6; moveto 20 128; circle 10
pen blue 0.4; moveto 20 154; circle 10
pen blue 0.2; moveto 20 180; circle 10

# --- squares ---
pen blue 1.2; moveto 40  40; myrectangle 20 20
pen blue 1.0; moveto 40  66; myrectangle 20 20
pen blue 0.8; moveto 40  92; myrectangle 20 20
pen blue 0.6; moveto 40 118; myrectangle 20 20
pen blue 0.4; moveto 40 144; myrectangle 20 20
pen blue 0.2; moveto 40 170; myrectangle 20 20

# --- 45 degrees ---
pen blue 1.2; moveto  70 60; mylineto  90 40
pen blue 1.0; moveto  78 60; mylineto  98 40
pen blue 0.8; moveto  86 60; mylineto 106 40
pen blue 0.6; moveto  94 60; mylineto 114 40
pen blue 0.4; moveto 102 60; mylineto 122 40
pen blue 0.2; moveto 110 60; mylineto 130 40

pen blue 1.2; moveto  70 66; mylineto  90 84
pen blue 1.0; moveto  78 66; mylineto  98 84
pen blue 0.8; moveto  86 66; mylineto 106 84
pen blue 0.6; moveto  94 66; mylineto 114 84
pen blue 0.4; moveto 102 66; mylineto 122 84
pen blue 0.2; moveto 110 66; mylineto 130 84

# --- 30 degrees ---
pen blue 1.2; moveto  70 108; mylineto  87.32 98
pen blue 1.0; moveto  79 108; mylineto  96.32 98
pen blue 0.8; moveto  88 108; mylineto 105.32 98
pen blue 0.6; moveto  97 108; mylineto 114.32 98
pen blue 0.4; moveto 106 108; mylineto 123.32 98
pen blue 0.2; moveto 115 108; mylineto 132.32 98

pen blue 1.2; moveto  70 122; mylineto  87.32 132
pen blue 1.0; moveto  79 122; mylineto  96.32 132
pen blue 0.8; moveto  88 122; mylineto 105.32 132
pen blue 0.6; moveto  97 122; mylineto 114.32 132
pen blue 0.4; moveto 106 122; mylineto 123.32 132
pen blue 0.2; moveto 115 122; mylineto 132.32 132

# --- 60 degrees ---
pen blue 1.2; moveto  70 163.32; mylineto  80 146
pen blue 1.0; moveto  80 163.32; mylineto  90 146
pen blue 0.8; moveto  90 163.32; mylineto 100 146
pen blue 0.6; moveto 100 163.32; mylineto 110 146
pen blue 0.4; moveto 110 163.32; mylineto 120 146
pen blue 0.2; moveto 120 163.32; mylineto 130 146

pen blue 1.2; moveto  70 172; mylineto  80 189.32
pen blue 1.0; moveto  80 172; mylineto  90 189.32
pen blue 0.8; moveto  90 172; mylineto 100 189.32
pen blue 0.6; moveto 100 172; mylineto 110 189.32
pen blue 0.4; moveto 110 172; mylineto 120 189.32
pen blue 0.2; moveto 120 172; mylineto 130 189.32

