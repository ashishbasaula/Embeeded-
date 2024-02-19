# D Flip-Flop VHDL Design

This VHDL code implements a simple D flip-flop. It takes a data input (`D`), clock input (`CLK`), and a reset input (`RESET`), and outputs the stored value (`Q`). The flip-flop changes its output value (`Q`) on the rising edge of the clock signal (`CLK`), based on the input data (`D`), unless the reset signal (`RESET`) is active.

## Entity

### Inputs

- `D`: Data input
- `CLK`: Clock input
- `RESET`: Reset input

### Outputs

- `Q`: Output

## Operation

The flip-flop's behavior is as follows:

- If `RESET` is high (`'1'`), then `Q` is set to `'0'`.
- On the rising edge of `CLK`, if `RESET` is low (`'0'`), `Q` is set to the value of `D`.

## Implementation Details

The behavior of the flip-flop is described using a process. Inside the process, the inputs `CLK` and `RESET` are checked to determine the output `Q` based on the conditions mentioned above.

## Circuit Diagram
![d_flip_flop_waveform](https://github.com/ashishbasaula/Embeeded-/assets/32863612/e18ed296-4eb4-42c6-a017-8dc877f93b4c)



## Diagram
![429110704_433288592595251_7124360627648366330_n](https://github.com/ashishbasaula/Embeeded-/assets/32863612/2d26e82f-98b9-4e91-a1b2-e4ffc827af35)



