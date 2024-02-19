# Full Adder using Half Adder and OR Gate VHDL Implementation

## Description
This VHDL code implements a full adder using a combination of a half adder and an OR gate. It takes three input bits (`A`, `B`, `Cin`) and generates a sum output (`S`) and a carry output (`C`). The half adder is used to compute the sum of the two input bits, and the OR gate is used to combine the carry outputs of the two half adders.

## Usage
Instantiate the `full_adder_using_half_and_or_code` entity in your design. Connect the input bits (`A`, `B`, `Cin`) and the outputs (`S`, `C`). The full adder functionality will be provided by the instantiated entity.

## Inputs
- `A`: Input bit A.
- `B`: Input bit B.
- `Cin`: Input carry bit.

## Outputs
- `S`: Sum output.
- `C`: Carry output.

## Implementation Detail
The architecture `structural` instantiates two components:
1. `half_adder`: Computes the sum (`S1`) and carry (`C1`) of the input bits `A` and `B`.
2. `or_gate`: Combines the carry outputs (`C1` and `C2`) of the two half adders to generate the final carry output (`C`).

The signal `S1` represents the intermediate sum, and `C1` and `C2` represent the intermediate carry outputs of the half adders. The final sum output `S` is computed using `S1`, and the final carry output `C` is computed using `C1` and `C2`.

## Waveform Diagram
![full_adder_using_half_adder_and_or_wave_form](https://github.com/ashishbasaula/Embeeded-/assets/32863612/920f1366-7875-4be4-89bd-a4c3e89cf7c0)

## State Diagram
![429099031_1045332879912439_3447508690704781241_n](https://github.com/ashishbasaula/Embeeded-/assets/32863612/78ba5b99-137f-4014-b856-7dacd290380c)

