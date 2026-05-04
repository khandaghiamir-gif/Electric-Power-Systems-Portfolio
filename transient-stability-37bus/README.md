
# ⚡ Transient Stability and Power System Dynamics — 37-Bus System

---

## 🔍 Description

This project analyses transient (large-disturbance) stability on the 37-bus Aggieland Power and Light (APL) grid operating at 50 Hz. Using PowerWorld Simulator's Transient Stability add-on, we simulated five fault contingencies and determined how long each fault can persist before synchronous generators lose synchronism — a condition known as synchronism loss or "pole slipping."

---

## ❗ Problem It Solves

When a fault occurs on a transmission network, generator rotor angles accelerate. If the fault is not cleared within a critical time window, the generator loses step with the grid, causing a cascade that can black out large areas. This study quantifies that critical clearing time (CCT) for multiple fault types and validates the simulation results against the classical Equal Area Criterion (EAC) — a first-principles analytical method.

---

## ✨ Key Features / Analyses

| Contingency | Description | CCT (PowerWorld) |
|---|---|---|
| CENTURY69 — 3-phase fault, H=3s | Balanced three-phase fault at generator bus | 0.34 s |
| CENTURY69 — 3-phase fault, H=5s | Same fault, higher generator inertia | 0.49 s |
| CENTURY69 — SLG fault, H=3s | Single-line-to-ground fault (lighter disturbance) | > 0.34 s |
| Web69 — line fault, P=32 MW | Transmission line fault cleared by opening | 0.97 s |
| Web69 — line fault, P=60 MW | Same fault, higher pre-fault generation | < 0.97 s |

**Additional analyses:**
- Mode shape identification (KYLE138 vs RUDDER69 oscillation behaviour)
- Equal Area Criterion (EAC) analytical CCT calculation for all 5 contingencies
- Effect of generator inertia (H) on CCT: confirmed theoretical relationship t_cr ∝ √H
- Rotor angle and generator power oscillation graphs for each scenario
- Synchronism loss behaviour characterisation (pole slipping vs. stable oscillation vs. new equilibrium)

---

## 🛠️ Tech Stack

| Tool | Version | Purpose |
|---|---|---|
| PowerWorld Simulator | 23 (GSO) | Time-domain transient stability simulation |
| Microsoft Word | — | Report preparation |

> **Note:** PowerWorld Simulator is commercial software. A free evaluation version is available at [powerworld.com](https://www.powerworld.com/gloveroverbyesarma).

---

## 📁 Project Structure

```
transient-stability-37bus/
├── README.md
├── report/
│   └── Transient_Stability_Report.pdf     ← full report with all graphs and analysis
├── case-files/
│   ├── Project_2.PWB                      ← 37-bus APL PowerWorld case file
│   ├── Project_2.pwd                      ← PowerWorld one-line display file
│   └── README_case_files.md               ← instructions for opening the case

```

---

## 📊 Key Results

- **Inertia effect confirmed:** CCT increased from 0.34 s (H=3 s) to 0.49 s (H=5 s), in line with the formula t_cr ∝ √(H / (π·f·Pm))
- **SLG vs. 3-phase:** SLG fault produced smaller rotor angle oscillations, confirming it is a less severe disturbance
- **Load level effect:** Increasing Web69 output from 32 MW to 60 MW reduced the CCT, increasing vulnerability to the fault
- **EAC validation:** Analytical CCT values matched PowerWorld results with small, explainable deviations due to the reference angle convention

---

 ##How to Open the Project

To reproduce or inspect the simulation:

1.Install PowerWorld Simulator 23 or a compatible version.

2.Open the starting case file:
case-files/Project_2.PWB

3.Use the .pwd display file to view the one-line diagram.


6.Read the final report in the report/ folder for the complete methodology and results.

Note: PowerWorld .PWB files require PowerWorld Simulator and may not be viewable without the software.


---

## 🎓 What I Learned

- How to set up and run a transient stability simulation in PowerWorld
- How generator inertia and pre-fault loading affect fault ride-through capability
- The physical meaning of critical clearing time and its relation to equal kinetic and potential energy areas
- How SLG faults differ dynamically from 3-phase faults (Thevenin equivalent during fault)
- How to apply the Equal Area Criterion and account for reference angle offsets in simulator output

---

## 🔭 Future Improvements

- [ ] Implement the Equal Area Criterion calculation in Python/NumPy for reproducibility
- [ ] Export rotor angle time-series data from PowerWorld to CSV and create publication-quality plots (Matplotlib)
- [ ] Add a Jupyter notebook comparing EAC analytical results vs. simulation
- [ ] Model the effect of protective relay clearing time variation on system security

---

## 📜 License

Academic work — Politecnico di Milano, AY 2023–2024. Not licensed for commercial use.
```
