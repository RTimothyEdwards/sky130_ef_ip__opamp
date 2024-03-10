# NOTE: PDK_ROOT and PDK are set in the local environment by CACE
#
# This is an example script to drive LVS; because this is a simple
# example, there is no specific benefit of using this instead of the
# default handling in CACE.

set PDK_ROOT $::env(PDK_ROOT)
set PDK $::env(PDK)

set circuit1 [readnet spice netlist/layout/sky130_ef_ip__instramp.spice]
set circuit2 [readnet spice netlist/schematic/sky130_ef_ip__instramp.spice]

lvs "$circuit1 sky130_ef_ip__instramp" "$circuit2 sky130_ef_ip__instramp" $PDK_ROOT/$PDK/libs.tech/netgen/${PDK}_setup.tcl reports/sky130_ef_ip__instramp_comp.out -json
