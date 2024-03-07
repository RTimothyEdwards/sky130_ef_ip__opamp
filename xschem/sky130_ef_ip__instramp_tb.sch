v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Instrumentation Amplifier as follower Testbench} 560 -1570 0 0 0.6 0.6 {}
N 1180 -1300 1260 -1300 {
lab=out}
N 1260 -1300 1350 -1300 {
lab=out}
N 1350 -1300 1420 -1300 {
lab=out}
N 1260 -1240 1350 -1240 {
lab=GND}
N 610 -1280 610 -1260 {
lab=in}
N 780 -1210 780 -1170 {
lab=ena}
N 850 -1260 880 -1260 {
lab=out}
N 470 -1430 880 -1430 {
lab=vdd3v3}
N 610 -1340 880 -1340 {
lab=in}
N 780 -1210 880 -1210 {
lab=ena}
N 470 -1430 470 -1300 {
lab=vdd3v3}
N 610 -1340 610 -1280 {
lab=in}
N 850 -1110 1200 -1110 {
lab=out}
N 1200 -1300 1200 -1110 {
lab=out}
N 850 -1260 850 -1110 {
lab=out}
N 880 -1170 880 -1070 {
lab=GND}
N 470 -1070 1260 -1070 {
lab=GND}
N 1260 -1240 1260 -1070 {
lab=GND}
N 610 -1200 610 -1070 {
lab=GND}
N 470 -1240 470 -1070 {
lab=GND}
N 780 -1110 780 -1070 {}
C {devices/vsource.sym} 470 -1270 0 0 {name=V1 value=3.3}
C {devices/res.sym} 1260 -1270 0 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {devices/opin.sym} 1420 -1300 0 0 {name=p1 lab=out}
C {devices/vsource.sym} 610 -1230 0 0 {name=V2 value="PWL(0 0 1u 0 1m 3.3)"}
C {devices/capa.sym} 1350 -1270 0 0 {name=C1
m=1
value=4p
footprint=1206
device="ceramic capacitor"}
C {devices/ngspice_probe.sym} 1380 -1300 0 0 {name=r1}
C {devices/ngspice_probe.sym} 640 -1340 0 0 {name=r3}
C {devices/title-2.sym} -700 -190 0 0 {name=l2 author="Tim Edwards" rev=1.0}
C {devices/code.sym} 560 -970 0 0 {name=s1 only_toplevel=false value=".lib /usr/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt"}
C {devices/code.sym} 790 -970 0 0 {name=s2 only_toplevel=false value=".control
tran 100n 1.1m
plot V(out) V(in)
plot V(in) - V(out)
.endc"}
C {devices/lab_pin.sym} 470 -1300 0 0 {name=l3 sig_type=std_logic lab=vdd3v3}
C {devices/lab_pin.sym} 610 -1280 0 0 {name=l5 sig_type=std_logic lab=in}
C {sky130_ef_ip__instramp.sym} 1030 -1300 0 0 {name=x1}
C {devices/vsource.sym} 780 -1140 0 0 {name=V3 value=3.3}
C {devices/gnd.sym} 740 -1070 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 780 -1210 0 0 {name=p2 sig_type=std_logic lab=ena}
