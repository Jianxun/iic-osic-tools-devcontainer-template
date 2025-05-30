v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -40 70 -0 {lab=VSS}
N 0 0 70 -0 {lab=VSS}
N 10 -70 30 -70 {lab=X}
N 0 -70 10 -70 {lab=X}
N 0 -150 -0 -70 {lab=X}
N -0 -150 30 -150 {lab=X}
N 70 -120 70 -100 {lab=Y}
N 70 -70 90 -70 {lab=VSS}
N 90 -70 90 -0 {lab=VSS}
N 70 0 90 0 {lab=VSS}
N 70 -220 70 -180 {lab=VDD}
N 0 -220 70 -220 {lab=VDD}
N 70 -150 90 -150 {lab=VDD}
N 90 -220 90 -150 {lab=VDD}
N 70 -220 90 -220 {lab=VDD}
N -40 -110 0 -110 {lab=X}
N 70 -110 150 -110 {lab=Y}
N 150 -110 190 -110 {lab=Y}
C {symbols/nfet_03v3.sym} 50 -70 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 50 -150 0 0 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {devices/opin.sym} 190 -110 0 0 {name=p3 lab=Y}
C {devices/ipin.sym} -40 -110 0 0 {name=p4 lab=X}
C {devices/iopin.sym} 0 -220 2 0 {name=p6 lab=VDD}
C {devices/iopin.sym} 0 0 2 0 {name=p7 lab=VSS}
