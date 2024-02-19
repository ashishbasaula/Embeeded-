# Two-Bit Multiplexer VHDL Implementation

## Description
This VHDL code implements a two-bit multiplexer. It selects one of the four input vectors (`in_a`, `in_b`, `in_c`, `in_d`) based on the selection input (`sel`) and routes it to the output (`z_out`).

## Usage
Instantiate the `two_bit_multiplexer_code` entity in your design. Connect the input vectors (`in_a`, `in_b`, `in_c`, `in_d`) and the selection input (`sel`). The selected input vector will be routed to the output (`z_out`).

## Inputs
- `in_a`: Input vector A (2 bits).
- `in_b`: Input vector B (2 bits).
- `in_c`: Input vector C (2 bits).
- `in_d`: Input vector D (2 bits).
- `sel`: Selection input (2 bits).

## Outputs
- `z_out`: Output vector (2 bits).

## Implementation Detail
The process `proc` checks the selection input `sel` and assigns the corresponding input vector to the output `z_out`. 
- If `sel` is "00", `z_out` gets `in_a`.
- If `sel` is "01", `z_out` gets `in_b`.
- If `sel` is "10", `z_out` gets `in_c`.
- If `sel` is "11", `z_out` gets `in_d`.

## Output Waveform