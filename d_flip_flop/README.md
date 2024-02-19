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

![D Flip-Flop Circuit Diagram](d_flip_flop_wave_waveform.png)

## Diagram
![D Flip-Flop  Diagram](d_flipflop.jpg)

## Simulation

You can simulate this flip-flop using a VHDL simulator  gtkwave. Use testbench code to apply input stimuli (`D`, `CLK`, `RESET`) and observe the output (`Q`) behavior.

## License

This code is provided under the [MIT License](LICENSE).
