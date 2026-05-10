v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type: subcircuit}
V {}
S {}
F {}
E {}
T {PTAT} -280 -190 0 0 0.4 0.4 {}
N 40 -120 40 -100 {lab=VDD}
N 220 -130 220 -100 {lab=VDD}
N 40 -130 40 -120 {lab=VDD}
N -140 -50 -110 -50 {lab=GND}
N 220 -70 280 -70 {lab=VDD}
N 40 -70 100 -70 {lab=VDD}
N 130 -170 130 -130 {lab=VDD}
N 40 -130 130 -130 {lab=VDD}
N 130 -130 220 -130 {lab=VDD}
N -140 -90 -90 -90 {lab=VDD}
N 220 110 220 220 {lab=GND}
N 160 -70 180 -70 {lab=VP1}
N 40 -40 40 -30 {lab=VP1}
N -210 110 -190 110 {lab=GND}
N -10 -70 -0 -70 {lab=VP1}
N -10 -70 -10 -30 {lab=VP1}
N -10 -30 40 -30 {lab=VP1}
N 100 220 100 270 {lab=GND}
N 150 -110 150 80 {lab=VBase}
N 150 80 180 80 {lab=VBase}
N -40 150 0 150 {lab=VBase}
N 220 -40 220 -30 {lab=IPTAT}
N 220 -30 220 -10 {lab=IPTAT}
N 220 -10 220 50 {lab=IPTAT}
N -40 -110 -40 150 {lab=VBase}
N 40 180 40 220 {lab=GND}
N 40 220 220 220 {lab=GND}
N -230 60 -230 80 {lab=VP1}
N -230 140 -230 160 {lab=VE1}
N -460 -90 -440 -90 {lab=VP1}
N -520 -70 -440 -70 {lab=VE1}
N -140 -70 -120 -70 {lab=VBase}
N 40 100 40 120 {lab=VE1}
N -40 -110 150 -110 {lab=VBase}
C {sky130_fd_pr/pfet_01v8.sym} 20 -70 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 200 -70 0 0 {name=M2
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
C {sky130_fd_pr/res_high_po_0p69.sym} -230 110 2 0 {name=R1
L=400
model=res_high_po_0p69
spiceprefix=X
mult=1
lab=GND}
C {ota.sym} -290 -70 0 0 {name=x1}
C {iopin.sym} -90 -90 0 0 {name=p1 lab=VDD}
C {iopin.sym} -110 -50 0 0 {name=p2 lab=GND}
C {opin.sym} 220 40 0 0 {name=p6 lab=IPTAT}
C {lab_wire.sym} 100 -70 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 280 -70 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 130 -170 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 40 -40 2 0 {name=p7 sig_type=std_logic lab=VP1}
C {lab_wire.sym} 100 270 2 0 {name=p8 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pnp_05v5.sym} 20 150 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 200 80 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {lab_wire.sym} -190 110 2 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_wire.sym} -230 60 0 0 {name=p14 sig_type=std_logic lab=VP1}
C {lab_wire.sym} -230 160 2 0 {name=p15 sig_type=std_logic lab=VE1}
C {lab_wire.sym} 40 100 0 0 {name=p16 sig_type=std_logic lab=VE1}
C {lab_wire.sym} 170 80 0 0 {name=p17 sig_type=std_logic lab=VBase}
C {lab_wire.sym} -460 -90 0 0 {name=p12 sig_type=std_logic lab=VP1}
C {lab_wire.sym} -520 -70 0 0 {name=p18 sig_type=std_logic lab=VE1}
C {lab_wire.sym} -120 -70 1 0 {name=p20 sig_type=std_logic lab=VBase}
C {lab_wire.sym} 160 -70 0 0 {name=p21 sig_type=std_logic lab=VP1}
C {lab_wire.sym} -130 -50 2 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_wire.sym} -130 -90 0 0 {name=p24 sig_type=std_logic lab=VDD}
