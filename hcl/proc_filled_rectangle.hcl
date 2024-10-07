# credit: https://www.reddit.com/user/qwert2003sf/
# see: https://www.reddit.com/r/RemarkableTablet/comments/1fq98qi/rmshapes_font_awesome_shapes/

proc filled_rectangle {width height} {
    set stroke [expr min([mm 5], $width / 4, $height / 4)]
    set wred [- $width $stroke]
    set hred [- $height $stroke]
    block
    	set prevpen [pen $stroke]
    	m [½ $stroke $stroke]
    	while {< [X [here]] [½ $width]} {
    		rect [½ $wred] $hred
    		mr $stroke 0
    	}
    	mx [- $width [½ $stroke]]
    	rect [expr -0.5 * $wred] $hred
    	pen $prevpen
    endblock
}
