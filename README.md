# 🧠 Micromouse Maze Simulator

This Micromouse simulation environment is built using **MATLAB** and **Simulink** to test and evaluate maze-solving algorithms. It supports both correctness and robustness testing under real-world conditions.

---

## 📁 Folder Structure & Key Files

- **`Mazes/`**  
  Contains 5 pre-generated `.mat` maze files.  
  ✅ *To use a maze, copy your desired `.mat` file into the base folder.*

- **`robotParameters.m`**  
- **`sensorParameters.m`**  
- **`markParameters.m`**  
  These contain configuration settings for the robot, sensors, and assessment logic.  
  ⚠️ *Do not edit these files manually. Refer to the PDF for detailed descriptions.*

- **`runMeFirst.m`**  
  Initializes the workspace and sets up the environment.  
  ▶️ *Run this file first before simulating.*

- **`solution.slx`**  
  This file is where your control algorithm lives — implemented using either:
  - **Stateflow**
  - **MATLAB Function Block**

- **`robot.slx`**  
  The main simulation engine that models the micromouse and its interaction with the environment.

---

## 🧪 Simulation Modes

Two testing modes are available:

### 1. ✅ Maze-Solving Only
Tests if your algorithm can solve the maze.

### 2. 🔍 Robustness Testing
Introduces real-world conditions to test algorithm reliability:
- Sensor noise
- Sensor failure
- Wheel slippage
- Communication delay

**Toggle Mode:**
> `Robot Simulator` block → Block Parameters → Set `testRobustness` to `true` or `false`

---

## 🧰 Required MATLAB Toolboxes

Before running the simulator, make sure the following toolboxes are installed:

- `MATLAB`
- `Simulink`
- `Control System Toolbox`
- `Image Processing Toolbox`
- `Stateflow`
- `Mobile Robotics Training Toolbox`

---

## 🤖 Sensor Models

### 🔹 Photodiode Line Sensors
- Model: `PD204-6B`
- Simulates analog output based on reflectance.
- Used for line-following behavior.

### 🔹 Time-of-Flight (ToF) Sensors
- Model: `VL53L0X`
- Digital distance sensor with realistic modeling of reading errors.

### 🔹 Variable Sensor
Configurable in block parameters to behave as:
- A **Line Sensor**, or
- A **Tick Encoder** (based on wheel revolutions)

---

## 📌 Notes

- All sensors are mathematically modeled and integrated into the simulation environment.
- This simulator supports batch testing and can be extended with more mazes if needed.
- Refer to the project PDF for in-depth technical documentation and explanation of simulation logic.

---

Made for 📚 **EEE4022F Final Year Project – University of Cape Town**  
Author: *Mpilonhle Ngcoya*  
Supervisor: *Justin Pead*
