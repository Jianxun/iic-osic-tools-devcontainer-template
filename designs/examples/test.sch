v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -10 110 -0 {lab=GND}
N -0 30 -0 50 {lab=GND}
N -0 -40 -0 -30 {lab=#net1}
N -0 -40 70 -40 {lab=#net1}
N 110 -90 110 -70 {lab=#net1}
N 50 -90 110 -90 {lab=#net1}
N 50 -90 50 -40 {lab=#net1}
N 110 -40 120 -40 {lab=GND}
N 120 -40 120 -10 {lab=GND}
N 110 -10 120 -10 {lab=GND}
C {symbols/nfet_03v3.sym} 90 -40 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/gnd.sym} 110 0 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 0 0 0 0 {name=V1 value=2 savecurrent=true}
C {devices/gnd.sym} 0 50 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 0 120 0 0 {name=device_model only_toplevel=false value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 0 240 0 0 {name=device_model1 only_toplevel=false value="

.control
op
save all
show all
.endc
"}
