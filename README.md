# Multiplexers: 2-to-1 and 4-to-1

A collection of Verilog multiplexer designs, including a 2-to-1 mux, a structural 4-to-1 mux built from 2-to-1 muxes, and a behavioral 4-to-1 mux.

## Features
- 2-to-1 combinational multiplexer
- Structural 4-to-1 multiplexer using reusable 2-to-1 modules
- Behavioral 4-to-1 implementation using a case statement
- Testbenches for mux designs

## Tools & Technologies
- Verilog HDL
- Icarus Verilog for command-line simulation (or ModelSim/QuestaSim)
- Testbenches for functional verification

## Project Structure
- `mux2x1.v` – 2-to-1 mux
- `mux4x1.v` – structural 4-to-1 mux
- `mux4x1beh.v` – behavioral 4-to-1 mux
- `mux2x1_tb.v`, `mux4x1_tb.v`, `mux4x1beh_tb.v` – testbenches

## How to Run
1. Install a Verilog simulator such as [Icarus Verilog](https://steveicarus.github.io/iverilog/) or use ModelSim/QuestaSim.
2. Open a terminal in this project directory.
3. Run the following command(s):

For the 2-to-1 mux:
```bash
iverilog -o mux2_sim mux2x1.v mux2x1_tb.v
vvp mux2_sim
```
For the structural 4-to-1 mux, compile both `mux2x1.v` and `mux4x1.v` with `mux4x1_tb.v`.

4. Review the simulator output. To inspect waveforms, add `$dumpfile` / `$dumpvars` to the testbench and open the generated VCD file in GTKWave, or configure waveform viewing in ModelSim/QuestaSim.

## Results
- Simulation is driven by the included testbench files.
- Add screenshots of simulation output or waveforms here after running the testbench.
- Verify the results against the expected behavior for each input combination.

## Author
Shreyash Bendke – [LinkedIn](https://www.linkedin.com/in/shreyash-bendke-422b72254/)
