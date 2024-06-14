# Analog IP design example: Operational amplifier

This is a simple instrumentation amplifier demonstrating the use
of the CACE system. It requires [CACE](https://github.com/efabless/cace) to run the testbenches.

Schematics for this amplifier are done in xschem and can be found in the `xschem/` directory. Layouts for this amplifier are done in magic and can be found in the `mag/` directory.

The CACE specification is in `cace/sky130_ef_ip__opamp.yaml`.  Testbench schematics are in the `cace/templates/` directory. Note that testbenches are editable in xschem, and netlists can be generated, but netlists contain variables that must be substituted by CACE and cannot simulate prior to variable substitution by CACE.

To run CACE in GUI mode:

```console
cace-gui cace/sky130_ef_ip__opamp.yaml
```

CACE can also be run from the command line, for example as:

```console
cace cace/sky130_ef_ip__opamp.yaml --source schematic --parameter=<parameter_name>
```