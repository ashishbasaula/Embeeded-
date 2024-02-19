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

## WaveForm Diagram


![decoder_wave_form](https://github.com/ashishbasaula/Embeeded-/assets/32863612/5ee77865-5795-4d5e-800f-b8e46668d27d)

## State Diagram

![429101609_1890624084707129_7842936191221086966_n](https://github.com/ashishbasaula/Embeeded-/assets/32863612/75695130-b05a-4713-ad04-a168079e17fb)
