v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {.param M}
E {}
N -40 -0 -0 0 {lab=G}
N 40 30 40 60 {lab=S}
N 40 60 70 60 {lab=S}
N 40 -50 70 -50 {lab=D}
N 40 -50 40 -30 {lab=D}
C {ipin.sym} -40 0 0 0 {name=g0 lab=G
}
C {iopin.sym} 70 60 0 0 {name=g1 lab=S
}
C {iopin.sym} 70 -50 0 0 {name=g2 lab=D
}
C {sky130_fd_pr/nfet3_01v8.sym} 20 0 0 0 {name=M1
W=2
L=0.15
body=VSS
nf=2
multi=1
M=\{M\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
