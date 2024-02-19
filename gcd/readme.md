# GCD FSM

This VHDL code implements a Finite State Machine (FSM) to calculate the Greatest Common Divisor (GCD) of two integers.

## Description

The FSM has the following states:
- **START**: Initializes the GCD to 10 and transitions to the INPUT state.
- **INPUT**: Assigns the input numbers to variables `x` and `y` and calculates `z = x * y`, then transitions to the CHECK state.
- **CHECK**: Compares `x` and `y` and transitions to UPDATEX, UPDATEY, or OUTPUT state accordingly.
- **UPDATEX**: Updates `x = x - y` and transitions back to the CHECK state.
- **UPDATEY**: Updates `y = y - x` and transitions back to the CHECK state.
- **OUTPUT**: Calculates the GCD using the Euclidean algorithm and transitions back to the START state.

## Inputs
- `reset`: Asynchronous reset input.
- `clk`: Clock input.
- `num1`: First input number.
- `num2`: Second input number.

## Outputs
- `gcd`: Output of the GCD calculation.

## Waveform Diagram
![gcd_wave_form](https://github.com/ashishbasaula/Embeeded-/assets/32863612/93251f46-1ea5-4b92-b5bd-b7aac64c1c3b)

## State Diagram
![429091691_802778824711887_4459147620333372605_n](https://github.com/ashishbasaula/Embeeded-/assets/32863612/e7e662b5-2307-4414-82a5-77a493c2870e)





