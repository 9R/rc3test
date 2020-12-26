#!/bin/bash
#mazzoo magic \o/ 


C=/usr/bin/convert


SQRT_N_TILES=7

N_TILES=$(( $SQRT_N_TILES * $SQRT_N_TILES ))


SAT="77"  # 00..ff

# one plain solid tile as base for hue sweep below

$C -size 32x32 -background red gradient:"#${SAT}0000"-"#${SAT}0000" red_${SAT}.png

# hue sweep
for y in $(seq 0 $(( $SQRT_N_TILES - 1)) ) ; do
    for x in $(seq 0 $(( $SQRT_N_TILES - 1)) ) ; do

        t=$(( $x + $y * $SQRT_N_TILES ))
        HUE=$(( $t * 200 / $N_TILES ))
        echo "hue $HUE tile $t"
        $C red_${SAT}.png -modulate 100,100,$HUE gat_${SAT}_${x}_${y}.png

    done
done

# append
for l in $(seq 0 $(( $SQRT_N_TILES - 1)) ) ; do
    $C +append gat_${SAT}_${l}_*.png line_$l.png
done

$C -append line_*.png sqare_${SAT}.png
