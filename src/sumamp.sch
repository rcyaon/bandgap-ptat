v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Summing amplifier} 40 10 0 0 0.4 0.4 {}
N -160 290 -160 310 {lab=VREF_RAW}
N 350 80 390 80 {lab=VDD}
N 350 120 390 120 {lab=GND}
N -220 130 -200 130 {lab=IPTAT}
N 350 100 480 100 {lab=Vref}
N -20 80 -20 180 {lab=IPTAT}
N -20 80 50 80 {lab=IPTAT}
N -160 400 390 400 {lab=GND}
N -160 370 -160 400 {lab=GND}
N -160 270 -160 290 {lab=VREF_RAW}
N -210 130 -210 180 {lab=IPTAT}
N -210 180 -20 180 {lab=IPTAT}
N -160 160 -160 210 {lab=VSUM}
N -210 240 -180 240 {lab=GND}
N -160 130 -100 130 {lab=VDD}
N 390 70 390 80 {lab=VDD}
N 390 50 390 70 {lab=VDD}
N -160 50 390 50 {lab=VDD}
N -160 50 -160 100 {lab=VDD}
N 390 120 390 140 {lab=GND}
N 390 140 390 400 {lab=GND}
N -140 340 -110 340 {lab=GND}
N 20 100 50 100 {lab=Vref}
N 20 100 20 180 {lab=Vref}
N 20 180 480 180 {lab=Vref}
N 480 100 480 130 {lab=Vref}
N 480 130 480 180 {lab=Vref}
C {sky130_fd_pr/pfet_01v8.sym} -180 130 0 0 {name=M3
W=4
L=1
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
C {sky130_fd_pr/res_high_po_0p69.sym} -160 340 2 0 {name=R1
L=100
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} -160 240 0 0 {name=R3
L=60
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {ipin.sym} -220 130 0 0 {name=p1 lab=IPTAT}
C {opin.sym} 480 130 0 0 {name=p2 lab=Vref}
C {iopin.sym} 390 70 0 0 {name=p3 lab=VDD}
C {iopin.sym} 390 140 0 0 {name=p4 lab=GND}
C {lab_pin.sym} -210 240 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -110 340 2 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_wire.sym} -100 130 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -160 170 0 0 {name=p8 sig_type=std_logic lab=VSUM}
C {lab_wire.sym} -160 200 0 0 {name=p9 sig_type=std_logic lab=VSUM}
C {lab_wire.sym} -160 280 0 0 {name=p10 sig_type=std_logic lab=VREF_RAW}
C {lab_wire.sym} -160 300 0 0 {name=p11 sig_type=std_logic lab=VREF_RAW}
C {lab_wire.sym} -160 390 0 0 {name=p12 sig_type=std_logic lab=GND}
C {ota.sym} 200 100 0 0 {name=x1}
