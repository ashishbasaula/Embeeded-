# JK Flip-Flop VHDL Implementation

## Description
This VHDL code implements a JK flip-flop with synchronous reset. The flip-flop has two inputs (`J` and `K`), a clock input (`clk`), and a reset input (`reset`). It generates two outputs, `Q` and its complement `Qbar`.

## Usage
Instantiate the `jk_flipflop` entity in your design. Connect the inputs (`J`, `K`, `clk`, `reset`) and the outputs (`Q`, `Qbar`) as needed. Ensure proper clock and reset signals are provided for correct operation.

## Inputs
- `J`: Input J for the flip-flop.
- `K`: Input K for the flip-flop.
- `clk`: Clock input for triggering the flip-flop.
- `reset`: Reset input for resetting the flip-flop state.

## Outputs
- `Q`: Output representing the state of the flip-flop.
- `Qbar`: Complement of `Q`.

## Behavior
- The flip-flop behaves according to the JK flip-flop truth table.
- It updates its state on the rising edge of the clock (`clk`) signal.
- When `reset` is high (`'1'`), the flip-flop resets to initial state (`Q = '0'`, `Qbar = '1'`).
- Based on inputs `J` and `K`, the flip-flop toggles its state or maintains its current state.

## Implementation Detail
- The process sensitive to `clk` and `reset` signals updates the flip-flop state.
- The outputs `Q` and `Qbar` are assigned to the signals `Q_reg` and `Qbar_reg`, respectively, within the process.
- The assignments are based on the inputs `J` and `K` according to the JK flip-flop truth table.

## Waveform Diagram
![jk_flip_flop_wave_form](https://github.com/ashishbasaula/Embeeded-/assets/32863612/d36ba3a5-674e-49d2-bec9-1f8a4201cddc)
## State Diagram
![428944852_237905856057622_7692537953113279094_n](https://github.com/ashishbasaula/Embeeded-/assets/32863612/fbb9aef0-6dd5-494a-869d-26d9eef32fdf)
