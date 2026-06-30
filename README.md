# 1-Bit Full Adder Design and Verification

[![Hardware: Verilog](https://img.shields.io/badge/Hardware-Verilog-blue.svg)](#)
[![Simulation: ModelSim](https://img.shields.io/badge/Simulation-ModelSim-green.svg)](#)

## 📌 Project Overview
This repository contains the RTL design and verification of a 1-Bit Full Adder implemented using Dataflow modeling in Verilog. The project features an exhaustive testbench that validates all 8 possible input combinations to ensure 100% functional accuracy.

---

## 📁 Repository Structure

```text
Full-Adder-Verilog/
├── rtl/                        # Synthesizable Verilog Source Code
│   └── full_adder.v            # Dataflow implementation (assign)
├── tb/                         # Automated Verification Testbench
│   └── tb_full_adder.v         # Exhaustive 8-state testbench
└── docs/                       # Verification outputs and waveforms
    └── full_adder_wave.png
