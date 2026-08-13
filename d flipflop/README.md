# D Flip-Flop using Verilog

This project implements a **D (Data) Flip-Flop** using Verilog HDL. It includes the design module and a testbench for simulation.

## 📁 Project Structure

```text
d-flipflop-verilog/
│
├── d_flipflop.v
├── d_flipflop_tb.v
└── README.md
```

## 🔹 About D Flip-Flop

A D Flip-Flop is a sequential logic circuit that stores one bit of data.

The output `Q` changes according to the input `D` on the **positive edge (rising edge) of the clock**.

This design also includes an **asynchronous active-high reset**.

### Truth Table

| Reset | Clock | D | Q |
| ----- | ----- | - | - |
| 1     | X     | X | 0 |
| 0     | ↑     | 0 | 0 |
| 0     | ↑     | 1 | 1 |

* `Reset = 1` → `Q` is immediately reset to `0`.
* `Reset = 0` → On every rising edge of `clk`, `Q` takes the value of `D`.
* `X` → Don't care.

## 🔹 Verilog Design

The main module is implemented in `d_flipflop.v`.

```verilog
module d_flipflop (
    input  wire clk,
    input  wire reset,
    input  wire d,
    output reg  q
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule
```

## 🔹 Testbench

The file `d_flipflop_tb.v` is used to test the D Flip-Flop.

The testbench:

* Generates a clock signal.
* Applies reset.
* Changes the `D` input.
* Observes the output `Q`.
* Displays the simulation values in the terminal.

## 🛠️ Tools Required

* **Visual Studio Code**
* **Icarus Verilog**
* **Git**
* **GitHub**

