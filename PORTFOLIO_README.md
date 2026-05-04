# ⚡ Electric Power Systems — Engineering Portfolio

**Amir Khandaghi**
MSc Electrical Engineering · Politecnico di Milano · 2023–2024

---

This repository collects three academic project reports completed during the *Electric Power Systems* graduate course at Politecnico di Milano. Each project uses industry-standard simulation tools (PowerWorld Simulator, MATLAB) to study a different aspect of transmission grid behaviour — from steady-state power flow, through fault dynamics, to small-signal stability.

Although these are academic reports rather than deployable software, they demonstrate applied engineering skills that are directly relevant to roles in power system operations, network planning, protection, and grid stability analysis.

---

## 📂 Projects at a Glance

| # | Project | Category | Tools | Short Description |
|---|---------|----------|-------|-------------------|
| 1 | [Power Flow Analysis](#project-1--power-flow-analysis-on-a-42-bus-system) | Electrical Engineering / Power Systems | PowerWorld Simulator, Excel | Identifies and resolves thermal overloads on a 42-bus transmission network using generator dispatch, phase-shifting, and reactive power control |
| 2 | [Transient Stability Analysis](#project-2--transient-stability-and-power-system-dynamics) | Electrical Engineering / Power Systems | PowerWorld Simulator (Transient Stability add-on) | Determines critical clearing times for fault contingencies on a 37-bus system and validates results against the Equal Area Criterion |
| 3 | [Small Signal Stability Analysis](#project-3--small-signal-stability-analysis) | Electrical Engineering / Power Systems + Data Analysis | MATLAB, PowerWorld Simulator | Performs eigenvalue and modal analysis on the WSCC 9-bus system to characterise inter-area and local oscillation modes and evaluate the impact of AVR and PSS controllers |

---

## Project 1 — Power Flow Analysis on a 42-Bus System

**Repository name suggestion:** `power-flow-analysis-42bus`

**Tools:** PowerWorld Simulator 23, Microsoft Excel

**Summary:** Acting as a network operations engineer for a simulated utility (PoliTSO Power & Light), the team diagnosed three active thermal overloads on a 42-bus, 345/138 kV transmission system, then implemented a step-by-step corrective action plan — adjusting generator output, a phase-shifting transformer, capacitor banks, and LTC tap ratios — until all line/transformer loadings fell within their thermal limits and total system losses were minimised.

**Key analyses performed:**
- Contingency analysis on 88 scenarios (reduced violations from 988 to 61)
- MW sensitivity calculations (manual 5 MW increments vs. Newton-Raphson from simulator)
- Phase-shifter sensitivity study (−30° to +30°, 2° steps)
- Capacitor bank switching optimisation (6 banks ranked by loss reduction)
- LTC tap optimisation for HAWK, Badger, Bear, and Tiger transformers
- P-V curve (nose curve) analysis for bus Ash138

---

## Project 2 — Transient Stability and Power System Dynamics

**Repository name suggestion:** `transient-stability-37bus`

**Tools:** PowerWorld Simulator 23 (Transient Stability add-on)

**Summary:** Using the 37-bus Aggieland Power & Light (APL) system at 50 Hz, the team ran time-domain transient stability simulations for five predefined fault contingencies. Critical clearing times (CCT) were found by trial-and-error to ±0.01 s accuracy and then validated analytically using the Equal Area Criterion (EAC).

**Key analyses performed:**
- 3-phase fault at CENTURY69: CCT = 0.34 s
- Effect of inertia (H = 3 s → 5 s): CCT increased to 0.49 s (confirming theory)
- Single-line-to-ground (SLG) fault comparison with 3-phase fault
- Web69 line fault at P = 32 MW and P = 60 MW; synchronism loss behaviour
- EAC analytical CCT vs. PowerWorld simulation comparison for all 5 contingencies

---

## Project 3 — Small Signal Stability Analysis

**Repository name suggestion:** `small-signal-stability-wscc9`

**Tools:** MATLAB (R2023), PowerWorld Simulator 23

**Summary:** Using the standard WSCC 9-bus system, the team built the linearised state matrix A in MATLAB, computed eigenvalues, and characterised two electromechanical oscillation modes — a local mode (D = 0.061, f = 1.90 Hz) and an inter-area mode (D = 0.024, f = 1.29 Hz). The study then evaluated how adding Automatic Voltage Regulators (AVR) and Power System Stabilisers (PSS) shifted eigenvalues and improved damping.

**Key analyses performed:**
- State-matrix eigenvalue analysis (with/without AVR, with/without PSS)
- Mode shape visualisation using compass plots in MATLAB
- Participation factor analysis to identify which state variables drive each mode
- Classification of remaining non-electromechanical oscillatory modes
- Impact of AVR gain and PSS parameters on system damping

---

## 🏷️ Recruiter-Friendly Summary

These three projects together cover the full classical stability analysis workflow used in transmission system operation and planning:

1. **Steady-state (power flow):** Identify and correct thermal overloads; optimise reactive power and transformer taps.
2. **Transient (large-disturbance) stability:** Quantify how long a fault can persist before synchronism is lost; validate against first-principles analysis.
3. **Small-signal (small-disturbance) stability:** Linearise the network, identify oscillation modes, and design controller parameters (AVR/PSS) to improve damping.

The work demonstrates proficiency with **PowerWorld Simulator**, **MATLAB**, and **technical report writing** in an engineering context — skills directly applicable to roles at TSOs (Transmission System Operators), utility companies, and power system consultancies.

---

## 📄 License

Academic work produced at Politecnico di Milano. All rights reserved by the authors. Not licensed for commercial reproduction.
