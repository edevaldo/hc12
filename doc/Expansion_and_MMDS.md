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
    - DMA requests
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

## MMDS Features:
* Step code
    - Use NMI to step ROM code?
* Read/Modify memory and registers
* Break on memory access (read, write, fetch)
    - State machine to trigger in sequece of events
* Trace buffer for bus activity
    - Continuous capture, stop n cycles after trigger
    - Time Tag?
    - Logic inputs?
* Monitoring memory positions in real time
* Controlled by OS (debug process) or host computer
* USB2 interface to host?

### Open Questions:
- How to stop CPU execution?
- Keep interrupts serviced while stoping CPU?
- How to inject code to read registers and so on?
