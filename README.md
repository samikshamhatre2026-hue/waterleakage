Multi-Point Water Leakage Detection and Priority Alert System

📌 Project Description

This project is designed to detect water leakage in four different zones and generate a priority-based alert using Verilog HDL.

When multiple leakage inputs are active, the system gives priority to the highest-numbered zone.

🎯 Objectives

- Detect leakage in four different zones.
- Generate an alert when leakage is detected.
- Identify the highest-priority leakage zone.
- Simulate and verify the design using Icarus Verilog.

🛠️ Technologies Used

- Verilog HDL
- Icarus Verilog (iverilog)
- GTKWave (optional, for waveform visualization)

📂 Project Files

- "leak_controller.v" – Main Verilog design.
- "Leak_controller_tb.v" – Testbench for simulation.
- "leak_controller_tb.vcd" – Waveform file generated during simulation.

⚙️ How to Run the Project

Step 1: Compile

iverilog -o output leak_controller.v Leak_controller_tb.v

Step 2: Run Simulation

vvp output

Step 3: View Waveform (Optional)

gtkwave leak_controller_tb.vcd

📊 Expected Output

The simulation displays the leakage input, alert status, and selected zone.

- "Alert = 0": No leakage detected.
- "Alert = 1": Leakage detected.
- "Zone = 0, 1, 2, 3": Selected leakage zone.

💡 Key Feature

The system uses priority logic to select the highest-numbered active leakage zone when multiple leakage inputs are detected simultaneously.

🔮 Future Scope

- Connect real water leakage sensors.
- Add LED indicators and a buzzer.
- Develop a hardware-based water leakage alert system.

👩‍💻 Project Type

Digital System Design using Verilog HDL.
