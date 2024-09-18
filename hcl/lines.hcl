# --- outer box ---
pen 0.2; offset 11.75 2; rectangle 133.66 205
font Lines bold 4

# --- horiz lines ---
pen 0.22; moveto 10 5;   lineto 30 5;   moveto 33 6;   text {:1 0.22 Thinner rmh}
pen 0.22; moveto 10 10;  lineto 30 10;  moveto 33 11;  text {:2 0.22 Thin rm2}
pen 0.35; moveto 10 15;  lineto 30 15;  moveto 33 16;  text {:3 0.35 Med Thin rmh}
pen 0.43; moveto 10 20;  lineto 30 20;  moveto 33 21;  text {:4 0.43 Med rm2}
pen 0.5; moveto 10 25;  lineto 30 25;  moveto 33 26;  text {0.5}
pen 0.65; moveto 10 30;  lineto 30 30;  moveto 33 31;  text {:5 0.65 Thick rm2}
pen 0.7; moveto 10 35;  lineto 30 35;  moveto 33 36;  text {0.7}
pen 0.8; moveto 10 40;  lineto 30 40;  moveto 33 41;  text {0.8}
pen 0.9; moveto 10 45;  lineto 30 45;  moveto 33 46;  text {0.9}
pen 1.0; moveto 10 50;  lineto 30 50;  moveto 33 51;  text {1.0}
pen 1.11; moveto 10 55;  lineto 30 55;  moveto 33 56;  text {:6 1.11 Thicker rmh}
pen 1.2; moveto 10 60;  lineto 30 60;  moveto 33 61;  text {1.2}
pen 1.3; moveto 10 65;  lineto 30 65;  moveto 33 66;  text {1.3}
pen 1.4; moveto 10 70;  lineto 30 70;  moveto 33 71;  text {1.4}
pen 1.5; moveto 10 75;  lineto 30 75;  moveto 33 76;  text {1.5}
pen 1.6; moveto 10 80;  lineto 30 80;  moveto 33 81;  text {1.6}
pen 1.7; moveto 10 85;  lineto 30 85;  moveto 33 86;  text {1.7}
pen 1.84; moveto 10 90;  lineto 30 90;  moveto 33 91;  text {:7 1.84 Even Thicker rmh}
pen 1.9; moveto 10 95;  lineto 30 95;  moveto 33 96;  text {1.9}
pen 2.0; moveto 10 100; lineto 30 100; moveto 33 101; text {2.0}
pen 2.1; moveto 10 105; lineto 30 105; moveto 33 106; text {2.1}
pen 2.2; moveto 10 110; lineto 30 110; moveto 33 111; text {2.2}
pen 2.3; moveto 10 115; lineto 30 115; moveto 33 116; text {2.3}
pen 2.4; moveto 10 120; lineto 30 120; moveto 33 121; text {2.4}
pen 2.5; moveto 10 125; lineto 30 125; moveto 33 126; text {2.5}
pen 2.6; moveto 10 130; lineto 30 130; moveto 33 131; text {2.6}
pen 2.7; moveto 10 135; lineto 30 135; moveto 33 136; text {2.7}
pen 2.8; moveto 10 140; lineto 30 140; moveto 33 141; text {2.8}
pen 2.9; moveto 10 145; lineto 30 145; moveto 33 146; text {:8 2.9 Thickest rmh}
pen 3.0; moveto 10 150; lineto 30 150; moveto 33 151; text {3.0}

set thinner  0.22
set thin     0.22
set medthin  0.34
set medium   0.43
set thick    0.65
set thicker  1.11
set ethicker 1.84
set thickest 2.9

pen $thinner;  moveto 10 160; lineto 30 160; moveto 33 161; text {:1 thinner rmh}
pen $thin;     moveto 10 165; lineto 30 165; moveto 33 166; text {:2 thin rm2}
pen $medthin;  moveto 10 170; lineto 30 170; moveto 33 171; text {:3 medthin rmh}
pen $medium;   moveto 10 175; lineto 30 175; moveto 33 176; text {:4 medium rm2}
pen $thick;    moveto 10 180; lineto 30 180; moveto 33 181; text {:5 thick rm2}
pen $thicker;  moveto 10 185; lineto 30 185; moveto 33 186; text {:6 thicker rmh}
pen $ethicker; moveto 10 190; lineto 30 190; moveto 33 191; text {:7 ethicker rmh}
pen $thickest; moveto 10 195; lineto 30 195; moveto 33 196; text {:8 thickest rmh}
