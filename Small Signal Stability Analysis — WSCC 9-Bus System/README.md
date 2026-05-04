```
# 📊 Small Signal Stability Analysis — WSCC 9-Bus System

---

## 🔍 Description

This project performs small-signal (linearised) stability analysis on the WSCC 9-bus benchmark system — the standard reference network for power system dynamics research (originally the Western Systems Coordinating Council 3-generator, 9-bus model).

Using MATLAB, we build the linearised state matrix **A** of the full system (including generator dynamics), compute its eigenvalues, and characterise the oscillation modes. We then evaluate how Automatic Voltage Regulators (AVR) and Power System Stabilisers (PSS) shift the eigenvalues and improve damping.

---

## ❗ Problem It Solves

Weakly damped inter-area oscillations are a real operational constraint in interconnected power grids: they limit the amount of power that can safely be transferred between regions. This study identifies the oscillation modes present in the WSCC 9-bus system, classifies them as local or inter-area, and demonstrates how PSS controllers are designed to increase their damping ratio above the 5% stability threshold.

---

## ✨ Key Features / Analyses

- **State-matrix eigenvalue analysis** using MATLAB (`eig(A)`)
- **Two electromechanical modes identified:**
  - Local mode: D = 0.061, f = 1.90 Hz
  - Inter-area mode: D = 0.024, f = 1.29 Hz
- **Mode shape visualisation:** compass plots of rotor speed eigenvectors for each mode
- **Participation factor analysis:** which state variables (rotor angle, rotor speed, flux linkages) drive each mode
- **Non-electromechanical mode classification:** identification of exciter, flux, and network modes
- **AVR impact study:** how voltage regulators affect eigenvalue locations
- **PSS impact study:** how Power System Stabilisers improve electromechanical mode damping
- **Comparison** of controller configurations: no AVR / no PSS → AVR only → AVR + PSS

---

## 🛠️ Tech Stack

| Tool | Version | Purpose |
|---|---|---|
| MATLAB | R2023 | Eigenvalue analysis, mode shape plots, participation factors |
| PowerWorld Simulator | 23 (GSO) | System validation and power flow initialisation |

### MATLAB Dependencies

The script uses a custom power systems library:

```matlab
[A, B, pos_var, ~] = small_sgnl_linp('Grid_WSCC_Sauer', 'gendat_WSCC_9_bus', AVR, PSS);
```

> **⚠️ Important:** The function `small_sgnl_linp` and the data files `Grid_WSCC_Sauer` / `gendat_WSCC_9_bus` are part of a course-provided MATLAB toolbox (Politecnico di Milano, Dipartimento di Energia). They are **not publicly redistributable**. The script `WSCC_analysis.m` documents the full analysis methodology and is readable as pseudocode even without the library.

---

## 🚀 Running the Analysis (if you have the library)

```bash
# 1. Open MATLAB
# 2. Add the Load_flow folder to your MATLAB path
addpath('Load_flow');

# 3. Run the main script
run('matlab/WSCC_analysis.m')
```

The script produces:
- Printed eigenvalues, damping ratios, and frequencies in the MATLAB console
- Figure 1: Compass plot — mode shape of mode 1 (local mode)
- Figure 2: Compass plot — mode shape of mode 2 (inter-area mode)
- Figure 3: All eigenvalues plotted in the complex plane

---

## 📁 Project Structure

```
small-signal-stability-wscc9/
├── README.md
├── matlab/
│   ├── WSCC_analysis.m                    ← main MATLAB eigenvalue analysis script
├── report/
│   └── Small_Signal_Stability_Report.pdf  ← full report with all results and graphs
├── data/
│   ├── eigenvalue_results.xlsx            ← computed eigenvalues, damping, frequency
├── project-brief/
│   └── Project_3_EPS_Brief.pdf
└── screenshots/

```

---

## 📊 Key Results

| Configuration | Mode 1 Damping | Mode 2 Damping |
|---|---|---|
| No AVR, No PSS | 0.061 (6.1%) | 0.024 (2.4%) ⚠️ |
| AVR only | [TODO: add values from report] | [TODO: add values from report] |
| AVR + PSS | [TODO: add values from report] | [TODO: confirm > 5%] |

> Inter-area mode damping below 5% is considered problematic in industrial practice (NERC guidelines).

---

## 📸 Screenshots

| Description | File |
|---|---|
| Eigenvalues in complex plane (all modes) | `screenshots/eigenvalue_plot_complex_plane.png` |
| Mode shape — local mode (compass plot) | `screenshots/mode_shape_mode1.png` |
| Mode shape — inter-area mode (compass plot) | `screenshots/mode_shape_mode2.png` |
| Participation factor table | `screenshots/participation_factors_table.png` |

---

## 🎓 What I Learned

- How to linearise a multi-machine power system model and build the state matrix A
- How to interpret eigenvalues physically: real part = damping rate, imaginary part = oscillation frequency
- The difference between local modes (one generator vs. local group) and inter-area modes (groups of generators swinging against each other)
- How participation factors link state variables to specific oscillation modes
- The mathematical basis of Power System Stabilisers: they add a damping signal to the AVR to shift the eigenvalue left in the complex plane
- MATLAB best practices: eigenvector normalisation, left vs. right eigenvectors, compass plot visualisation

---

## 🔭 Future Improvements

- [ ] Replace the proprietary library dependency with an open-source equivalent (e.g., [Pandapower](https://www.pandapower.org/) or [PyPSA](https://pypsa.org/))
- [ ] Port the analysis to Python (SciPy `eig`, Matplotlib for compass plots)
- [ ] Add a Jupyter notebook with step-by-step explanation of the eigenvalue method
- [ ] Include parametric study: plot eigenvalue trajectory as PSS gain is varied
- [ ] Add `requirements.txt` or `environment.yml` once ported to Python

---

## 📜 License

Academic work — Politecnico di Milano, AY 2023–2024. Not licensed for commercial use.
The MATLAB script `WSCC_analysis.m` is shared for educational reference only.
```

---
