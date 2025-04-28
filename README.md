# LUT-Verilog-NCO
A Verilog-based implementation of a Numerically Controlled Oscillator (NCO) and waveform generator using LUTs for efficient signal processing and waveform generation.


## Main Components

- **nco.v** — Numerically controlled oscillator, generates addresses for the LUT.
- **slut.v** — Lookup table (LUT) module that stores waveform samples.
- **topmodule.v** — Top-level module integrating the NCO and LUT for waveform generation.

## Testing and Simulation

This project includes a **testbench** located in the `tests/` folder:

- **testbench.v** generates the clock and reset signals for the NCO and LUT modules.
- The testbench simulates the waveform generation process, verifying the functionality of the design.

### How to Run

1. Load all source files from the `src/` directory into your Verilog simulation tool.
2. Load the **`testbench.v`** file from the `tests/` folder.
3. Run the simulation to observe the waveform generation in action.

## Skills Demonstrated

- Digital signal processing with Verilog
- Efficient use of Lookup Tables (LUTs) in hardware
- FPGA/ASIC design and simulation
- Testbench development and simulation techniques

