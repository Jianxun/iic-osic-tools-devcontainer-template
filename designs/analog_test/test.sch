v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 30 40 50 {lab=GND}
N 40 -0 50 -0 {lab=GND}
N 50 -0 50 40 {lab=GND}
N 40 40 50 40 {lab=GND}
N 40 -60 40 -30 {lab=xxx}
N 40 -60 110 -60 {lab=xxx}
N -40 0 0 -0 {lab=G}
C {symbols/nfet_03v3.sym} 20 0 0 0 {name=M1
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
C {devices/gnd.sym} 40 50 0 0 {name=l1 lab=GND}
C {devices/ipin.sym} -40 0 0 0 {name=p1 lab=G}
C {devices/opin.sym} 110 -60 0 0 {name=p2 lab=D}
