# Sequence Detector VHDL Implementation

This VHDL code detects the sequence "1011" in an input bit stream using a finite state machine (FSM) approach.

## Entity Description

- Inputs: `clk`, `reset`, `input_bit`
- Output: `sequence_detected`

## Architecture Description

- FSM with states: `IDLE`, `S1`, `S10`, `S101`, `S1011`
- Processes: State Transition, Sequence Detection

## Logic

- State transitions on rising clock edge.
- Detects sequence "1011".

## Usage

1. Instantiate `Sequence_Detector`.
2. Connect ports.
3. Provide clock and reset signals.
