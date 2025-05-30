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
N 430 -250 430 -220 {lab=#net1}
N 570 -420 600 -420 {lab=I_OUT}
N 350 -130 430 -130 {lab=VSS}
N 410 -420 430 -420 {lab=I_REF}
N 470 -310 530 -310 {lab=VCAS}
N 430 -370 500 -370 {lab=I_REF}
N 430 -370 430 -340 {lab=I_REF}
N 570 -420 570 -340 {lab=I_OUT}
N 430 -420 430 -370 {lab=I_REF}
N 430 -280 430 -250 {lab=#net1}
N 570 -280 570 -220 {lab=#net2}
N 500 -370 500 -250 {lab=I_REF}
N 360 -310 470 -310 {lab=VCAS}
C {sky130_fd_pr/nfet3_01v8.sym} 550 -190 0 0 {name=M1
W=1
L=0.15
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 450 -190 0 1 {name=M2
W=1
L=0.15
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} 410 -420 0 0 {name=p1 lab=I_REF}
C {opin.sym} 600 -420 0 0 {name=p2 lab=I_OUT}
C {ipin.sym} 350 -130 0 0 {name=p4 lab=VSS}
C {sky130_fd_pr/nfet3_01v8.sym} 550 -310 0 0 {name=M3
W=1
L=0.15
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 450 -310 0 1 {name=M4
W=1
L=0.15
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} 360 -310 0 0 {name=p3 lab=VCAS}
