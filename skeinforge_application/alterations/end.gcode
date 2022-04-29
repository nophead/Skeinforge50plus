M104 S0             ; turn off extruder
M140 S0             ; bed off
G1 E-1 F1200        ; extra retract
G1 X-100 Y100 F9000 ; go to back
M400
M106 P1 S255        ; bed fan on
G1 Z200 F9000       ; go to top
M190 R<setting.chamber.BedCooldownTemperature> ; wait for bed to cool
M107 P1             ; bed fan off
M107                ; extruder fan off
M140 S0             ; bed off
G1 Y-100            ; bed to front
M84 X Y E           ; disable motors
