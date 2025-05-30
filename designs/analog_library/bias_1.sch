v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 430 -160 430 -130 {lab=VSS}
N 430 -130 570 -130 {lab=VSS}
N 570 -160 570 -130 {lab=VSS}
N 470 -190 530 -190 {lab=I_REF}
N 500 -250 500 -190 {lab=I_REF}
N 430 -250 500 -250 {lab=I_REF}
N 430 -250 430 -220 {lab=I_REF}
N 430 -310 430 -220 {lab=I_REF}
N 570 -310 570 -220 {lab=I_OUT}
N 570 -310 600 -310 {lab=I_OUT}
N 350 -130 430 -130 {lab=VSS}
N 410 -310 430 -310 {lab=I_REF}
C {ipin.sym} 410 -310 0 0 {name=p1 lab=I_REF}
C {opin.sym} 600 -310 0 0 {name=p2 lab=I_OUT}
C {ipin.sym} 350 -130 0 0 {name=p4 lab=VSS}
C {simulator_commands_shown.sym} 830 -390 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.control
op
save all
show all

.endc

"}
C {/foss/designs/analog_library/sym/nmos_unit_3t.sym} 550 -190 0 0 {name=XM2
M=3}
C {/foss/designs/analog_library/sym/nmos_unit_3t.sym} 450 -190 0 1 {name=XM1
M=1}
C {devices/code.sym} 70 -430 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code.sym} 70 -240 0 0 {name=stimuli only_toplevel=false 
value=" 
* stimulus
V1 VSS GND 0
I0 GND I_REF 50u
V2 I_OUT GND 1
"


}
