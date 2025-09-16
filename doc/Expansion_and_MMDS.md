# MMDS Like System

## Expansion Connector for 8-bit machines based on Motorola CPUs and MCUs

Things that could be interesting to have in the expansion connector:
* Be able to drive reset
    - Should it be open drain or
    - Have a drive open drain pin and a buffered reset line?
* Clocks & Control:
    - E, EXTAL
    - AD
    - RD/W̅R̅
    - ~NMI, ~INT
    - DMA requests & acks
* Addresses:
    - Expanded or Multiplexed?
        - A[21:0] or AD[7:0] + A[15:8]
    - Virtual vs physical:
        - AV[15:12], AP[21:0]
* D[7:0]
* SPI?
* Bus Arbitration:
    - A master can control bus during first half of the bus cycle.
    - How many masters?
        - Each connector could need a request and ack?
        - Open drain req? Coded 3-bit ack 0-none, 1-CPU, 2-DMA...?
* PID?

Totals: 2 + 5 + INTs + DMA + 22 + 4 + 8 + 1 + 3 + 8 = 53 + INTS + DMA + SUPPLY

Bus Masters:
000 CPU
001 DMA (serial, parallel, SD?, DSP?)
010 DMA SD?
011 Video
100 Network
101 Debug
111 DSP (or none?)

Another CPU as bus master?

## MMU Iteractions:

* MMU uses PID to perform memory mapping. Supervisor mode has its own mapping.
* MMU switches automatically to / from supervisor mode
    1. Supervisor mode overrides PID to ZERO.
    2. Vector Fetch followed by the resulting instruction fetch switches mode to
    supervisor.
    3. User processes cannot write to vectors, OS area and most IO.
    4. OS readies transition back to user mode. Sequence to call user process is
    detected and Supervisor overrrides are removed.

## MMDS Features:
* Step code
    - Use NMI to step ROM code?
* Read/Modify memory and registers
* Break on memory access (read, write, fetch)
    - State machine to trigger in sequece of events
* Hardware Triggers:
    - 4 Hardware Triggers: ~ 64 bits, each can be sensitive to '0', '1' or don'r care 'x'.
    - R/W, I/D, Virt/Phy, Range, ADDR, DATA, PID, BUS MASTER, Logic Inputs, Ints
* Trace buffer for bus activity
    - Continuous capture, stop n cycles after trigger
    - Time Tag? 8-bits? 16-bits? Extra bit for Overflow?
    - Logic inputs?
    - Can be filtered like a hardware trigger: PID, BUS MASTER
* Monitoring memory positions in real time
* Controlled by OS (debug process) or host computer
* USB2 interface to host?

### Open Questions:
- How to know if a cycle is an intruction fetch?
- How to stop CPU execution?
- How to stop a single PID
- Keep interrupts serviced while stoping CPU?
- How to inject code to read registers and so on? Dedicated bus?
    - Add bus injection signal, drive intended instruction to data bus.
    - CPU always has bus when E is high.
    - Injection signal only active when E is high and RD/W̅R̅ is high, and PID is right.
    - Feeds the CPU a sequence of instructions to keep it under debugger
    control.
