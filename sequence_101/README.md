# Sequence Detector VHDL Implementation

## Description

This VHDL code implements a sequence detector for detecting the specific sequence "1011" in an input bit stream. It utilizes a finite state machine (FSM) approach to track the sequence detection process.

## Usage

To use this VHDL code:

1. Instantiate the `Sequence_Detector` entity in your design.
2. Connect the ports (`clk`, `reset`, `input_bit`, and `sequence_detected`) appropriately.
3. Ensure proper clock and reset signals are provided to the detector.

## Inputs

- `clk`: Input for the clock signal.
- `reset`: Input for the reset signal.
- `input_bit`: Input for individual bits of the input sequence.

## Outputs

- `sequence_detected`: Output indicating whether the specified sequence "1011" has been detected.

## Implementation Detail

- The design employs a finite state machine (FSM) with states: `IDLE`, `S1`, `S10`, `S101`, and `S1011`.
- State transitions occur on the rising edge of the clock signal.
- The FSM logic detects the sequence "1011" by transitioning through the defined states based on the input bit sequence.


## Output Waveform
![sequence detector_wave_form](https://github.com/ashishbasaula/Embeeded-/assets/32863612/598273a5-a7a0-4e62-bc60-73f16be65d75)
## State Diagram
![429107561_746357207185403_4612533353288579105_n (1)](https://github.com/ashishbasaula/Embeeded-/assets/32863612/ec739f30-1d49-4fe7-92d5-fdee2111a85e)
