v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -460 -610 340 -210 {flags=graph
y1=-0.0031
y2=0.0024
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.000004e-07
x2=1.04e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/CG_LNA.raw
sim_type=tran
autoload=1
color="11 12"
node="vout vout avg() -
vin"}
B 2 360 -610 1160 -210 {flags=graph
y1=0.98
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=1e+09
x2=3.9810717e+09
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=1
autoload=1
rawfile=$netlist_dir/CG_LNA.raw
sim_type=ac
color=12
node="vout abs() vin abs() / db20()"}
N 90 150 140 150 {lab=G1}
N 90 150 90 190 {lab=G1}
N 40 150 90 150 {lab=G1}
N 90 250 90 270 {lab=0}
N -130 290 -130 310 {lab=#net1}
N -0 380 0 390 {lab=0}
N -0 220 0 270 {lab=S1}
N -60 220 -60 270 {lab=S1}
N -130 220 -130 230 {lab=S1}
N -60 220 -0 220 {lab=S1}
N -130 220 -60 220 {lab=S1}
N 180 90 180 120 {lab=G1}
N -60 330 -60 380 {lab=0}
N -130 370 -130 380 {lab=0}
N -60 380 -0 380 {lab=0}
N -130 380 -60 380 {lab=0}
N 0 330 -0 380 {lab=0}
N -400 330 -400 390 {lab=0}
N -400 220 -400 270 {lab=VIN}
N -200 220 -130 220 {lab=S1}
N -200 220 -200 270 {lab=S1}
N -230 220 -200 220 {lab=S1}
N -200 330 -200 390 {lab=0}
N -130 -100 -130 -80 {lab=#net2}
N 0 -10 -0 10 {lab=VOUT}
N 0 -170 0 -120 {lab=VDD}
N -60 -170 -60 -120 {lab=VDD}
N -130 -170 -130 -160 {lab=VDD}
N -60 -170 0 -170 {lab=VDD}
N -130 -170 -60 -170 {lab=VDD}
N -60 -60 -60 -10 {lab=VOUT}
N -130 -20 -130 -10 {lab=VOUT}
N -60 -10 0 -10 {lab=VOUT}
N -130 -10 -60 -10 {lab=VOUT}
N 0 -60 0 -10 {lab=VOUT}
N -200 -10 -130 -10 {lab=VOUT}
N -200 -10 -200 10 {lab=VOUT}
N -230 -10 -200 -10 {lab=VOUT}
N -200 70 -200 90 {lab=0}
N 180 -170 180 10 {lab=VDD}
N 90 -170 180 -170 {lab=VDD}
N 330 90 330 260 {lab=0}
N 330 -170 330 30 {lab=VDD}
N 180 -170 330 -170 {lab=VDD}
N -0 40 -0 120 {lab=X}
N 0 150 -0 220 {lab=S1}
N 180 150 180 270 {lab=0}
N 40 40 90 40 {lab=VDD}
N 90 -170 90 40 {lab=VDD}
N 0 -170 90 -170 {lab=VDD}
N -400 220 -290 220 {lab=VIN}
N 90 90 180 90 {lab=G1}
N 180 70 180 90 {lab=G1}
N 90 90 90 150 {lab=G1}
C {simulator_commands_shown.sym} 710 -140 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
      }
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 20 150 0 1 {name=M1
l=0.13u
w=30.710u
ng=15
m=1
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 20 40 0 1 {name=M2
l=0.13u
w=30.710u
ng=15
m=1
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 160 150 0 0 {name=MB
l=0.13u
w=6.14u
ng=3
m=1
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {capa.sym} 90 220 0 0 {name=CB
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 90 270 0 0 {name=l1 lab=0}
C {res.sym} 0 300 0 0 {name=Rp
value=8.75k
device=resistor
m=1}
C {ind.sym} -130 260 0 0 {name=Ls
m=1
value=45.14n
device=inductor}
C {capa.sym} -60 300 0 0 {name=Ctot
m=1
value=8.69f
device="ceramic capacitor"}
C {gnd.sym} 180 270 0 0 {name=l4 lab=0}
C {isource.sym} 180 40 0 0 {name=IREF value=898.125u}
C {res.sym} -130 340 0 0 {name=Rs
value=78.7
device=resistor
m=1}
C {gnd.sym} 0 390 0 0 {name=l2 lab=0}
C {vsource.sym} -400 300 0 0 {name=Vin value="DC 0 AC 1m SIN(0 0.1m 2.5G)" savecurrent=false}
C {gnd.sym} -400 390 0 0 {name=l3 lab=0}
C {res.sym} -260 220 3 0 {name=R0
value=50
device=resistor
m=1}
C {capa.sym} -200 300 0 1 {name=Cpad
m=1
value=38.98f
device="ceramic capacitor"}
C {gnd.sym} -200 390 0 0 {name=l5 lab=0}
C {res.sym} 0 -90 0 0 {name=Rp2
value=9.218k
device=resistor
m=1}
C {ind.sym} -130 -130 0 0 {name=Ls1
m=1
value=52.13n
device=inductor}
C {capa.sym} -60 -90 0 0 {name=Ctot2
m=1
value=8.11f
device="ceramic capacitor"}
C {res.sym} -130 -50 0 0 {name=Rs1
value=97.18
device=resistor
m=1}
C {capa.sym} -200 40 0 1 {name=Cpad1
m=1
value=38.98f
device="ceramic capacitor"}
C {gnd.sym} -200 90 0 0 {name=l6 lab=0}
C {vsource.sym} 330 60 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} 330 260 0 0 {name=l7 lab=0}
C {lab_pin.sym} -230 -10 0 0 {name=p1 sig_type=std_logic lab=VOUT}
C {simulator_commands_shown.sym} 420 -130 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.control
save all
tran 1p 104n 100n
write CG_LNA.raw
set appendwrite
ac dec 100 1e9 4e9
write CG_LNA.raw 
.endc
"}
C {launcher.sym} -400 -190 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/CG_LNA.raw tran"
}
C {lab_pin.sym} -400 220 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 90 130 2 0 {name=p3 sig_type=std_logic lab=G1}
C {lab_pin.sym} 0 220 2 0 {name=p4 sig_type=std_logic lab=S1}
C {lab_pin.sym} 0 100 2 0 {name=p8 sig_type=std_logic lab=X}
C {lab_pin.sym} 330 -170 0 1 {name=p5 sig_type=std_logic lab=VDD}
