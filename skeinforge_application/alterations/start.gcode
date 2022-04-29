M83 ; use relative distances for extrusion
M42 P27 S255 ; extruder fan on
G28 ; home axes
G1 X5 Y98 F9000 ; go to front of bed
G1 Z0.00 ; use the bed to block the nozzle to prevent ooze
M190 S<setting.chamber.BedTemperature> ; finish heating the bed
M109 S<setting.temperature.ObjectFirstLayerPerimeterTemperature> ; wait for nozzle to heat
G92 E0    ; zero the extruder
G1 Z0.3   ; lift before prime
G1 X50 E5 F200 ; make a thick line to prime extruder
G1 E-1 F1200 ; retract

