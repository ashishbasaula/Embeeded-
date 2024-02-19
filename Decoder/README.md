# Decoder VHDL Design

This VHDL code implements a 2-to-4 decoder. It takes a 2-bit input `a` and produces a 4-bit output `b` based on the input value.

## Entity

### Inputs

- `a`: 2-bit input vector

### Outputs

- `b`: 4-bit output vector

## Operation

The decoder's behavior is as follows:

- If `a` is `'00'`, then `b` is set to `"1000"`.
- If `a` is `'01'`, then `b` is set to `"0100"`.
- If `a` is `'10'`, then `b` is set to `"0010"`.
- If `a` is `'11'` or any other value, then `b` is set to `"0001"`.

## Implementation Details

The behavior of the decoder is described using a process (`d`). Inside the process, the input `a` is checked to determine the output `b` based on the conditions mentioned above.

## Circuit Diagram

![Decoder Circuit Diagram](decoder_circuit_diagram.png)



