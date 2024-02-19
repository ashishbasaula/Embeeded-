# 1-to-8 Demultiplexer (DEMUX) VHDL Design

This VHDL code implements a 1-to-8 demultiplexer (DEMUX). It takes a 2-bit input `a` and a 2-bit select input `s` to determine which output line to activate. The demultiplexer has 8 output lines (`b`) where only one output line is active based on the select input `s`.

## Entity

### Inputs

- `a`: 2-bit input vector
- `s`: 2-bit select vector

### Outputs

- `b`: 8-bit output vector

## Operation

The demultiplexer's behavior is as follows:

- If `s` is `"00"`, then `a` is routed to the first output line, `b[0]`, with the rest of the lines (`b[1:7]`) set to `'0'`.
- If `s` is `"01"`, then `a` is routed to the second output line, `b[1]`, with the rest of the lines (`b[0]` and `b[2:7]`) set to `'0'`.
- If `s` is `"10"`, then `a` is routed to the third output line, `b[2]`, with the rest of the lines (`b[0:1]` and `b[3:7]`) set to `'0'`.
- If `s` is `"11"`, then `a` is routed to the fourth output line, `b[3]`, with the rest of the lines (`b[0:2]` and `b[4:7]`) set to `'0'`.

## Implementation Details

The behavior of the demultiplexer is described using a process (`d`). Inside the process, the input `s` is checked to determine which output line to activate based on the conditions mentioned above.

## Circuit Diagram

## Block Diagram 

## Simulation

You can simulate this demultiplexer using a VHDL simulator (e.g., ModelSim, GHDL). Use testbench code to apply input stimuli (`a`, `s`) and observe the output (`b`) behavior.


