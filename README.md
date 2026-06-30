1-Bit Full Adder Design and Verification📌 Project OverviewThis repository contains the RTL design and verification of a 1-Bit Full Adder implemented using Dataflow modeling in Verilog. The project features an exhaustive testbench that validates all 8 possible input combinations to ensure 100% functional accuracy.📁 Repository StructureFull-Adder-Verilog/
├── rtl/                        # Synthesizable Verilog Source Code
│   └── full_adder.v            # Dataflow implementation (assign)
├── tb/                         # Automated Verification Testbench
│   └── tb_full_adder.v         # Exhaustive 8-state testbench
└── docs/                       # Verification outputs and waveforms
    └── full_adder_wave.png     
🚀 How to Run the SimulationTo run this project locally, you will need ModelSim installed and added to your system's environment variables.Clone the repository and open it in VS Code:git clone [https://github.com/YOUR_USERNAME/Full-Adder-Verilog.git](https://github.com/YOUR_USERNAME/Full-Adder-Verilog.git)
cd Full-Adder-Verilog
Open the VS Code Terminal (Ctrl + ~) and compile the design:# Create the logical working library
vlib work

# Compile both the hardware design and the testbench
vlog rtl/full_adder.v tb/tb_full_adder.v
Launch the Simulation:# Start ModelSim targeting the testbench
vsim work.tb_full_adder
View the Waveforms (Inside ModelSim):
Once the ModelSim GUI opens, type the following in its command line to see the visual timing diagram:add wave *
run -all
(Press the F key on your keyboard while clicking the wave window to auto-fit the zoom!)💻 Console Output: Automated Truth TableThe testbench utilizes $monitor to automatically generate the following truth table in the simulation console, proving correct arithmetic logic:========================================
Time	A B Cin | Sum Cout
========================================
0ns	    0 0  0  |  0   0
10ns	0 0  1  |  1   0
20ns	0 1  0  |  1   0
30ns	0 1  1  |  0   1
40ns	1 0  0  |  1   0
50ns	1 0  1  |  0   1
60ns	1 1  0  |  0   1
70ns	1 1  1  |  1   1
========================================
Full Adder Simulation Complete.
📊 Waveform Verification🛠️ Tools & Technologies UsedHardware Description Language: VerilogSimulation Engine: Mentor Graphics ModelSimDevelopment Environment: Visual Studio CodeDeveloped by Abdul Samad Khan