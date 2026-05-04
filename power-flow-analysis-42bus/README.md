## Project 1 — Power Flow Analysis on a 42-Bus System


**Tools:** PowerWorld Simulator 23, Microsoft Excel

A power systems engineering project focused on diagnosing and resolving transmission line overloads in a simulated 42-bus electric grid using PowerWorld Simulator.

This project was completed as part of the **Electric Power Systems** MSc course at **Politecnico di Milano** during the **2023–2024 academic year**.

---

## Overview

This repository collects three academic project reports completed during the *Electric Power Systems* graduate course at Politecnico di Milano. Each project uses industry-standard simulation tools (PowerWorld Simulator, MATLAB) to study a different aspect of transmission grid behaviour — from steady-state power flow, through fault dynamics, to small-signal stability.

Although these are academic reports rather than deployable software, they demonstrate applied engineering skills that are directly relevant to roles in power system operations, network planning, protection, and grid stability analysis.

---

## Problem Statement

Transmission line overloads can reduce grid reliability and may lead to equipment damage or cascading failures if not corrected. In this project, a 42-bus transmission network was analysed to identify overloaded elements and determine corrective actions that bring all monitored components back within acceptable operating limits.

The main objectives were to:

- Identify overloaded transmission elements in the base case
- Analyse power flow sensitivity to generator redispatch
- Evaluate the effect of phase-shifting transformer control
- Reduce active power losses using capacitor banks and LTC tap settings
- Perform contingency analysis to assess system security after corrective actions

---

## ❗ Problem It Solves

In real power systems, thermal overloads on transmission lines can cause equipment damage and cascade failures if not corrected quickly. This study demonstrates how an operations engineer uses **sensitivity analysis**, **phase-shifting transformers**, **reactive power control**, and **contingency analysis** to stabilise a congested network.

---

## ✨ Key Features / Analyses

- **MW sensitivity analysis:** Experimental 5 MW increments compared against Newton-Raphson sensitivities from PowerWorld
- **Slack bus sensitivity study:** Effect of moving slack bus from RAM345 to VIKING345
- **Phase-shifter study:** Flow sensitivities computed over the full ±30° range of the APPLE phase-shifting transformer
- **Corrective action plan:** Generator redispatch (Lion345 +35 MW, Willow138 +237 MW) + phase shifter at −8°
- **Reactive power optimisation:** 6 capacitor banks ranked by loss reduction (saves up to 9.22 MW each)
- **LTC tap optimisation:** Identified optimal tap settings to minimise total system losses
- **Contingency analysis:** Reduced N-1 violations from 988 (base case) to 61 (corrected case)
- **P-V curve:** Nose-curve analysis for bus Ash138 to assess voltage stability margin

---

## 🛠️ Tech Stack

| Tool | Version | Purpose |
|---|---|---|
| PowerWorld Simulator | 23 (GSO) | Power flow, contingency analysis, sensitivity analysis |
| Microsoft Excel | — | Manual sensitivity calculations, data tables |
| Microsoft Word | — | Report preparation |

> **Note:** PowerWorld Simulator is commercial software. A free evaluation version is available at [powerworld.com](https://www.powerworld.com/gloveroverbyesarma).

---

## Project Files

The project is organised into several file groups:

| Folder / File Type | Description |
|---|---|
| `case-files/` | PowerWorld simulation cases, including starting and solved network states |
| `data/` | Excel files containing generator data, sensitivity calculations, and loss analysis |
| `screenshots/` | PowerWorld one-line diagrams, contingency results, and analysis screenshots |
| `report/` | Final project report in PDF or Word format |
| `Matlab/` | Supporting MATLAB files, if needed |

Example files included in the project:

```text
Pr_01_42bus_start.PWB
Pr_01_42bus_start.pwd
Pr_01_42bus_start Solution1.PWB
Solution 237.PWB
Generators.xlsx
P sensitivity.xlsx
Book1.xlsx
Project Power Flow 2023-2024_template - Copy.pdf

power-flow-analysis-42bus/
│
├── README.md
├── LICENSE
│
├── report/
│   └── power_flow_analysis_report.pdf             ← final submitted report
│
├── case-files/
│   ├── Pr_01_42bus_start.PWB          ← starting PowerWorld case
│   ├── Pr_01_42bus_start.pwd          ← PowerWorld display file
│   └── Solution_237.PWB               ← contingency solution case
│
├── data/
│
├── screenshots/
│
└── Matlab/
    └── supporting_files/

---

##How to Open the Project

To reproduce or inspect the simulation:

1.Install PowerWorld Simulator 23 or a compatible version.

2.Open the starting case file:
case-files/Pr_01_42bus_start.PWB

3.Use the .pwd display file to view the one-line diagram.

4.Open the solved case file to review the corrected operating point:
case-files/Solution_237.PWB

5.Review the Excel files in the data/ folder for sensitivity calculations and loss optimisation results.

6.Read the final report in the report/ folder for the complete methodology and results.

Note: PowerWorld .PWB files require PowerWorld Simulator and may not be viewable without the software.

---

## 📊 Results Summary

| Metric | Before Fix | After Fix |
|---|---|---|
| Thermal overloads | 3 | 0 |
| N-1 contingency violations | 988 | 61 |
| Total system losses | 303.28 MW | ~261.57 MW |
| Phase shifter angle | 0° | −8° |
| Willow138 output | 10 MW | 237 MW |

## 🎓 What I Learned

- How to read and interpret a power flow one-line diagram in PowerWorld
- How generator sensitivity (∂Pline/∂Pgen) guides operator decisions during congestion
- How phase-shifting transformers redirect power flows without changing generation levels
- The distinction between manual (finite-difference) sensitivities and the Newton-Raphson Jacobian
- How capacitor bank switching and LTC tap adjustment jointly optimise reactive power and system losses
- How N-1 contingency analysis scales the safety margin beyond the base case

---

## 🔭 Future Improvements

- [ ] Convert sensitivity calculations from Excel to a Python script (pandas, NumPy) for reproducibility
- [ ] Add an interactive visualisation of the 42-bus one-line diagram (e.g., using NetworkX or Plotly)
- [ ] Export and include the PowerWorld contingency results as a structured CSV for easier inspection
- [ ] Add a Jupyter notebook that reproduces the P-V curve analysis analytically

---

## 📜 License

Academic work — Politecnico di Milano, AY 2023–2024. Not licensed for commercial use.
```
