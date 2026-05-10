v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S { }
F {}
E {}
T {5-transistor OTA} -160 -210 0 0 0.4 0.4 {}
N 200 -200 200 -180 {lab=VDD}
N 130 -150 160 -150 {lab=#net1}
N 10 -30 40 -30 {lab=V1}
N 80 -0 80 50 {lab=#net2}
N 80 110 80 140 {lab=GND}
N 80 140 320 140 {lab=GND}
N 320 110 320 140 {lab=GND}
N 200 140 200 180 {lab=GND}
N 320 0 320 50 {lab=Vout}
N 320 20 400 20 {lab=Vout}
N 80 -100 80 -60 {lab=#net1}
N 80 -100 320 -100 {lab=#net1}
N 320 -100 320 -60 {lab=#net1}
N 200 -120 200 -100 {lab=#net1}
N 80 -30 130 -30 {lab=VDD}
N 320 80 390 80 {lab=GND}
N 200 -150 290 -150 {lab=VDD}
N 80 80 130 80 {lab=GND}
N 20 80 40 80 {lab=#net2}
N 20 30 20 80 {lab=#net2}
N 20 30 270 30 {lab=#net2}
N 270 30 270 80 {lab=#net2}
N 270 80 280 80 {lab=#net2}
N 100 10 100 30 {lab=#net2}
N 80 10 100 10 {lab=#net2}
N 320 -30 390 -30 {lab=VDD}
N 240 -30 280 -30 {lab=V2}
N 130 -150 130 -110 {lab=#net1}
N 130 -110 200 -110 {lab=#net1}
C {sky130_fd_pr/pfet_01v8.sym} 60 -30 0 0 {name=M1
W=8
L=2
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 60 80 0 0 {name=M3
W=4
L=2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 300 80 0 0 {name=M4
W=4
L=2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 300 -30 0 0 {name=M2
W=8
L=2
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 -150 0 0 {name=M5
W=4
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 200 -200 0 0 {name=p3 lab=VDD}
C {iopin.sym} 200 180 0 0 {name=p4 lab=GND}
C {ipin.sym} 240 -30 0 0 {name=p1 lab=V2}
C {ipin.sym} 10 -30 0 0 {name=p2 lab=V1}
C {opin.sym} 400 20 0 0 {name=p5 lab=Vout}
C {lab_wire.sym} 130 -30 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 390 -30 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 130 80 2 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 390 80 2 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_wire.sym} 290 -150 2 0 {name=p11 sig_type=std_logic lab=VDD}
