
# **FPGA Implementation of a 4x4 Vedic Multiplier with Seven-Segment Display Output**

This project focuses on the design and implementation of a 4x4 Vedic Multiplier on an FPGA platform. The multiplier utilizes Vedic mathematics to perform binary multiplication of two 4-bit numbers. The result of the multiplication is displayed in real-time on three seven-segment displays, showing the hundreds, tens, and ones digits of the product. This project integrates digital hardware design, binary arithmetic, and FPGA implementation to create an efficient, compact solution for multiplying numbers and visualizing the results.


## **Project Objective**

The main objective of this project is to:

- Implement a 4x4 Vedic Multiplier using Vedic mathematics principles.
- Display the multiplication result in decimal format on three seven-segment displays.
- Demonstrate the potential of FPGA hardware for arithmetic operations and real-time result visualization.
## **Modules Used**

-  **Half Adder** (`half_adder`)

    - A basic digital circuit that calculates the sum and carry of two single-bit inputs.
    - Implements XOR for the sum and AND for the carry.

- **2x2 Vedic Multiplier** (`vedic_2_x_2`)

    - Multiplies two 2-bit binary numbers to produce a 4-bit result.
    - Uses half adders to combine partial products, utilizing Vedic multiplication principles.

- **4-bit Adder** (`add_4_bit`)

    - A simple module that adds two 4-bit numbers.
    - Used for handling intermediate results during multiplication and combining them effectively.

- **Six-bit Adder** (`add_6_bit`)

    - Adds two 6-bit numbers together, supporting larger results.
    - Used for handling carry-over bits during multi-bit operations.

- **Seven-Segment Display Driver** (`seven_segment_display_driver`)

    - Converts a 4-bit binary input into a 7-bit signal that controls the corresponding seven-segment display.
    - Supports all decimal digits (0-9), and handles invalid input by defaulting to '0'.

- **Vedic Multiplier** (`vedic_multiplier`)
    - The vedic_multiplier module performs 4x4 binary multiplication by combining the results of four 2x2 Vedic multipliers. 
    - The intermediate results are aligned and summed using 4-bit and 6-bit adders. The final 8-bit binary product is converted into decimal format, with separate outputs for hundreds, tens, and ones digits. This module serves as the core computation engine of the project.

- **Top-Level Module** (`vedic_multiplier_with_display`)

    - Combines the above modules to multiply two 4-bit inputs and display the product on three seven-segment displays.
    - Breaks the binary product into hundreds, tens, and ones for visualization.
    - Manages the connection between the Vedic multiplier and the display driver.
## **Algorithm**

### **Vedic Multiplication**

- Vedic multiplication is based on the "**Urdhva Tiryakbhyam**" sutra from Vedic mathematics, which translates to "Vertically and Crosswise." This method simplifies the multiplication of large numbers by breaking them into smaller parts and performing partial products that are subsequently summed up.

### **Principle**
- The core idea behind Vedic multiplication is to handle all multiplicative and additive operations in a parallel manner, significantly reducing the computational complexity and enhancing the speed of the operation. For binary multiplication, this approach is especially beneficial as it translates well into hardware implementation.

### **Steps of Vedic Multiplication**

1. **Divide the Inputs**:

- Split the binary inputs into smaller segments. For example, a 4-bit input is divided into two 2-bit parts.

2. **Calculate Partial Products**:

- Multiply the respective segments vertically and crosswise.
- For a 4x4 multiplication:
    - Compute the products of the least significant bits.
    - Compute the cross products of the higher and lower bits.
    - Compute the products of the most significant bits.

3. **Align and Add**:

- Arrange the partial products based on their positional significance.
- Use adders to sum these partial products, ensuring that carries are propagated correctly.

4. **Generate the Final Product**:
- Combine the results to form the final binary product.


![App Screenshot](https://raw.githubusercontent.com/itsharshschoice/FPGA-Implementation-of-a-4x4-Vedic-Multiplier-with-Seven-Segment-Display-Output/refs/heads/main/Screenshots/Block%20Diagram.webp)

## **Features**

- **Real-Time Operation**: Displays multiplication results in real-time on three seven-segment displays.

- **Efficient Computation**: Leverages Vedic mathematics for reduced computation time and resource usage.

- **Scalable Design**: Modular structure allows easy extension to higher bit-width multipliers.

- **FPGA Implementation**: Demonstrates the integration of arithmetic and display logic on an FPGA.
## **FPGA Implementation**

- The entire design is implemented on an FPGA using Verilog as the hardware description language (HDL). The FPGA platform enables efficient parallel processing of the multiplication and display logic, ensuring real-time operation. The multiplication process is carried out in a highly parallel manner, making use of the FPGA’s parallel computation capabilities.

- The FPGA configuration is done through **Quartus II**, an FPGA design software suite that facilitates the synthesis, simulation, and implementation of the design on hardware. The final design is loaded onto an FPGA board, and the seven-segment displays are connected to show the output.
## **RTL Schematic**

The RTL schematic provides a visual representation of the hardware architecture. It highlights the connections between different modules, such as vedic multiplier, and display drivers.

![App Screenshot](https://github.com/itsharshschoice/FPGA-Implementation-of-a-4x4-Vedic-Multiplier-with-Seven-Segment-Display-Output/blob/main/Screenshots/RTL.png?raw=true)
## **Simulation**

Below is the simulation waveform which validates the functional correctness of the design.

![App Screenshot](https://github.com/itsharshschoice/FPGA-Implementation-of-a-4x4-Vedic-Multiplier-with-Seven-Segment-Display-Output/blob/main/Screenshots/Simulation.png?raw=true)
## **Conclusion**

This project successfully implements a 4x4 Vedic multiplier with a seven-segment display interface on an FPGA. It highlights the efficiency of Vedic mathematics in hardware design and serves as a practical example of real-time computation and visualization. The modular approach and FPGA implementation make it a valuable learning tool for students and professionals in digital design.