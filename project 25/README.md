# Line Following Robot Using Verilog HDL

## 📌 Project Title

**Line Following Robot Using Verilog HDL**

## 📖 Project Description

A Line Following Robot is an autonomous robot that follows a predefined line on a surface. This project implements the basic control logic of a line-following robot using **Verilog HDL**.

Two digital sensors are used to detect the position of the line. Based on the sensor inputs, the controller generates commands for the left and right motors.

## 🎯 Objectives

* Design a simple Line Following Robot controller.
* Implement the controller using Verilog HDL.
* Use two sensor inputs to detect the line.
* Control the left and right motors.
* Verify the design using a testbench.
* Observe the simulation results.

## ⚙️ Working Principle

The robot uses two sensors:

* **Left Sensor**
* **Right Sensor**

The controller checks the sensor values and decides the direction of the robot.

### Sensor Conditions

| Left Sensor | Right Sensor | Action       |
| ----------: | -----------: | ------------ |
|           0 |            0 | Stop         |
|           0 |            1 | Turn Right   |
|           1 |            0 | Turn Left    |
|           1 |            1 | Move Forward |

## 🤖 Robot Movement

### Stop

```text
Left Sensor  = 0
Right Sensor = 0

        ↓

Robot STOP
```

### Turn Left

```text
Left Sensor  = 1
Right Sensor = 0

        ↓

Robot turns LEFT
```

### Turn Right

```text
Left Sensor  = 0
Right Sensor = 1

        ↓

Robot turns RIGHT
```

### Move Forward

```text
Left Sensor  = 1
Right Sensor = 1

        ↓

Robot moves FORWARD
```

## 🧠 Block Diagram

```text
       +----------------+
       |  Left Sensor   |
       +-------+--------+
               |
               |
       +-------v--------+
       |                |
       | Line Following |
       |   Controller   |
       |    (Verilog)   |
       |                |
       +---+--------+---+
           |        |
           |        |
     +-----v--+  +--v------+
     |  Left  |  |  Right  |
     | Motor  |  |  Motor  |
     +--------+  +---------+
```

## 🔌 Inputs

| Input          |  Size | Description                 |
| -------------- | ----: | --------------------------- |
| `left_sensor`  | 1 bit | Detects line on the left    |
| `right_sensor` | 1 bit | Detects line on the right   |
| `reset`        | 1 bit | Resets the robot controller |

## 📤 Outputs

| Output        |   Size | Description               |
| ------------- | -----: | ------------------------- |
| `left_motor`  |  1 bit | Controls left motor       |
| `right_motor` |  1 bit | Controls right motor      |
| `direction`   | 2 bits | Indicates robot direction |

## 🧭 Direction Codes

```text
00 → STOP
01 → FORWARD
10 → LEFT
11 → RIGHT
```

## 🛠️ Technologies Used

* Verilog HDL
* Icarus Verilog
* ModelSim / Vivado
* GTKWave (optional)
* GitHub

## 📂 Project Structure

```text
Line-Following-Robot/
│
├── README.md
├── line_following_robot.v
├── line_following_robot_tb.v
└── simulation_output.txt
```

## 📄 File Description

| File                        | Description             |
| --------------------------- | ----------------------- |
| `README.md`                 | Project documentation   |
| `line_following_robot.v`    | Main Verilog controller |
| `line_following_robot_tb.v` | Testbench               |
| `simulation_output.txt`     | Simulation results      |

## 🧪 Test Cases

| Left | Right | Expected Direction |
| ---: | ----: | ------------------ |
|    0 |     0 | STOP               |
|    1 |     0 | LEFT               |
|    0 |     1 | RIGHT              |
|    1 |     1 | FORWARD            |

## ▶️ Simulation

Using Icarus Verilog, compile the design and testbench:

```bash
iverilog -o robot_sim line_following_robot.v line_following_robot_tb.v
```

Run the simulation:

```bash
vvp robot_sim
```

## 📊 Expected Simulation Output

```text
LEFT RIGHT RESET | LEFT_MOTOR RIGHT_MOTOR | DIRECTION
-------------------------------------------------------
  0     0     1   |     0          0       |    00
  0     0     0   |     0          0       |    00
  1     0     0   |     0          1       |    10
  0     1     0   |     1          0       |    11
  1     1     0   |     1          1       |    01
```

## ✅ Advantages

* Simple control logic.
* Easy to understand and implement.
* Uses basic digital logic.
* Can be simulated before hardware implementation.
* Suitable for FPGA-based robotics projects.

## 📚 Applications

Line-following robots can be used for:

* Automated material transportation
* Warehouse robots
* Educational robotics
* Industrial automation
* Autonomous navigation systems

## 🔮 Future Scope

The project can be improved by adding:

* Three or more IR sensors.
* PWM-based motor speed control.
* Obstacle detection.
* Ultrasonic sensors.
* FPGA hardware implementation.
* Wireless monitoring.
* More advanced path-following algorithms.

## 🏁 Conclusion

The Line Following Robot controller was successfully designed using Verilog HDL. The controller reads the left and right sensor signals and generates appropriate motor control signals for stopping, moving forward, turning left, or turning right. The design was verified using a Verilog testbench and simulation.

## 👩‍💻 Author

**ECE Student**

## 🔑 Keywords

`Verilog` `Line Following Robot` `Robotics` `FPGA` `Digital Electronics` `HDL` `VLSI` `GitHub`
