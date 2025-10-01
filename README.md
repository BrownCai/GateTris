# GateTris
[![AGPL-3.0](https://img.shields.io/badge/License-AGPL%203.0-blue?logo=gnu)](LICENSE)
![FPGA Platform](https://img.shields.io/badge/FPGA-Xilinx-8716F?logo=xilinx)
[![Academic Alert](https://img.shields.io/badge/ACADEMIC_USE-RESTRICTED-red?logo=academia)](#academic-integrity-warning)
[![Detectie](https://img.shields.io/badge/Plagiarism_Detectie-ACTIEF-red)](#academic-integrity-warning)


[简体中文](README_zh.md) | [English](README.md)

## **0. Project Overview**  
This project is a **Tetris Game** with different game difficulty choices. It was implemented entirely in Verilog on the Xilinx PYNQ-Z2 development board, with **no Python scripts** or **ARM core functionality** involved. **The Vivado version is 2020.1**.

---

## **1. Demo Effects**  
The PYNQ-Z2 board uses a Pmod VGA module to convert 4-bit digital RGB outputs into analog values via a simple DAC circuit, connecting to a display via VGA. Control signals are input using the board's four buttons.

### **1.1. Difficulty Selection**  
https://github.com/user-attachments/assets/14c16298-e1b9-41f9-9e08-8ee522572498  

*   By moving the red square on the initial screen to different colored blocks, a page transition is triggered.  
*   Each color represents **a difficulty level**, with **distinct default falling speeds** for blocks.

### **1.2. Movement, Landing & New Block Generation**  
https://github.com/user-attachments/assets/4be1c13c-a48a-4076-9d2f-f7adf2b00db4  

*   Demonstrates core Tetris mechanics: **lateral movement** and **accelerated descent**.  
*   When a falling block **collides** with the bottom or stationary blocks, it **becomes fixed**, and a new block **spawns randomly**. The new block appears in the top-left "**queue area**", while the queued block **enters the playfield** as controllable.

### **1.3. Line Clearance & Scoring**  
https://github.com/user-attachments/assets/b9570b66-544e-4d57-bd6f-76ca60f7cb5d  

*   When a row is **fully filled**, it **clears**, causing fixed blocks above to **cascade downward**. The score display **updates dynamically** at the bottom left. 

---

## **2. Design Methodology**  
### **2.1. Finite State Machine (FSM)**  
![Finit State Machine Design](./FSM.png)

### **2.2. Control Logic**  
Three arrays implement core functionality:  
*   **Moving Array**: Drives **falling block rendering**. Timer-triggered updates **reassign values to the next row** to simulate descent.  
*   **Still Array**: Manages **stationary block display**.  
*   **Next Array**: Controls preview blocks in the queue area.  
    - **Randomly assigns shapes** via hardware-generated values.  
    - **Defines and displays** the upcoming block.  
    - **Transfers values** to the Moving Array upon spawn.  
    - **Migrates values** to the Still Array upon collision. 

### **2.3. Display Logic (VGA Protocol)**  
Implementation includes:  
#### **Timing Generator**  
- **Pixel Clock**: 25MHz for 640x480@60Hz.  
- **Sync Counters**:  
  - *Horizontal*: 800-cycle period (640 visible + 16 front porch + 96 sync + 48 back porch).  
  - *Vertical*: 525-line period (480 visible + 10 front porch + 2 sync + 33 back porch).  
- **Sync Signals**:  
  - `HSync`: Active-low pulse (96 cycles).  
  - `VSync`: Active-low pulse (2 lines).  

#### **Pixel Coordinate Engine**  
- Calculates `(X,Y)` from counters.  
- **`Display Enable`**: Active within `0 ≤ X < 640` and `0 ≤ Y < 480`.  

#### **Video Pipeline**  
- Buffers pixel data.  
- Address = `Y × pixels_per_line + X`.  
- Outputs RGB when `Display Enable` is high. 

Upon implementing these fundamental control logics, **the display module simply renders the game visuals** by reading the **coordinate-mapped pixel values** transmitted from the control module.

---

## **3. Key Features**  
*   **Parallel hardware processing** enables **instantaneous collision detection** with pixel-perfect accuracy.  
*   **Clock-based entropy generator**:  
    - Uses a **high-frequency counter** with clock ratios **coprime to the main clock**.  
    - Human input **irregularities** approximate true randomness.  
    - **Reduces logic utilization** (vs. algorithmic RNG) albeit at the cost of power efficiency. 

### ⚠️ Academic Integrity Warning
> 1. This repository contains code for Digital Design Concept lab design of KU Leuven, included in plagiarism detection  
> 2. Licensed under AGPL-3.0: **Reuse requires FULL open-sourcing**  
> 3. Unauthorized academic use will cause:  
>    - Mandatory code disclosure (AGPL copyleft)  
>    - Academic misconduct investigation
