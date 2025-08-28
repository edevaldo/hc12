


# How to define a CPU?

set State_6800 {
    Registers: A B IX SP PC CCR
        Flags: { CCR {1 1 H I N Z V C}}
    AddrModes: { IMMED DIRECT INDEX EXTEND}
}

set Instruction_Fields {
  Instruction: # Mnemonics
     AddrMode: # Addressing mode
       Opcode: # Opcode byte, prefix included when needed
       Cycles: # Number of cycles ( taken / not taken if branch - range if variable)
        Bytes: # Bytes used by instructions
        Flags: # List of affected flags and effect.
         Oper: # Function to simulate instruction (return cycles)
        Parse: # Function to assemble instruction (return bytes)
}

set Instructions_6800 {
    {
        Instruction: ADDA
           AddrMode: IMMED
             Opcode: 0x8B
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: DIRECT
             Opcode: 0x9B
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: INDEX
             Opcode: 0xAB
             Cycles: 5
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: EXTEND
             Opcode: 0xBB
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: IMMED
             Opcode: 0xCB
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: DIRECT
             Opcode: 0xDB
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: INDEX
             Opcode: 0xEB
             Cycles: 5
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: EXTEND
             Opcode: 0xFB
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }



    {
        Instruction: ABA
           AddrMode: -
             Opcode: 0x1B
             Cycles: 2
              Bytes: 1
              Flags: { H N Z V C}
               Oper: {}
    }



    {
        Instruction: ADCA
           AddrMode: IMMED
             Opcode: 0x89
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: DIRECT
             Opcode: 0x99
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: INDEX
             Opcode: 0xA9
             Cycles: 5
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: EXTEND
             Opcode: 0xB9
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: IMMED
             Opcode: 0xC9
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: DIRECT
             Opcode: 0xD9
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: INDEX
             Opcode: 0xE9
             Cycles: 5
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: EXTEND
             Opcode: 0xF9
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }


    {
        Instruction: ANDA
           AddrMode: IMMED
             Opcode: 0x84
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: DIRECT
             Opcode: 0x94
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: INDEX
             Opcode: 0xA4
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: EXTEND
             Opcode: 0xB4
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: IMMED
             Opcode: 0xC4
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: DIRECT
             Opcode: 0xD4
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: INDEX
             Opcode: 0xE4
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: EXTEND
             Opcode: 0xF4
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: BITA
           AddrMode: IMMED
             Opcode: 0x85
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: DIRECT
             Opcode: 0x95
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: INDEX
             Opcode: 0xA5
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: EXTEND
             Opcode: 0xB5
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: IMMED
             Opcode: 0xC5
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: DIRECT
             Opcode: 0xD5
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: INDEX
             Opcode: 0xE5
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: EXTEND
             Opcode: 0xF5
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: CBA
           AddrMode: -
             Opcode: 0x11
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: CLR
           AddrMode: INDEX
             Opcode: 0x6F
             Cycles: 7
              Bytes: 2
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLR
           AddrMode: EXTEND
             Opcode: 0x7F
             Cycles: 6
              Bytes: 3
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLRA
           AddrMode: -
             Opcode: 0x4F
             Cycles: 2
              Bytes: 1
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLRB
           AddrMode: -
             Opcode: 0x5F
             Cycles: 2
              Bytes: 1
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }



    {
        Instruction: CMPA
           AddrMode: IMMED
             Opcode: 0x81
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: DIRECT
             Opcode: 0x91
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: INDEX
             Opcode: 0xA1
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: EXTEND
             Opcode: 0xB1
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: IMMED
             Opcode: 0xC1
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: DIRECT
             Opcode: 0xD1
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: INDEX
             Opcode: 0xE1
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: EXTEND
             Opcode: 0xF1
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: COM
           AddrMode: INDEX
             Opcode: 0x63
             Cycles: 7
              Bytes: 2
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COM
           AddrMode: EXTEND
             Opcode: 0x73
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COMA
           AddrMode: -
             Opcode: 0x43
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COMB
           AddrMode: -
             Opcode: 0x53
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }



    {
        Instruction: DAA
           AddrMode: -
             Opcode: 0x19
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: DEC
           AddrMode: INDEX
             Opcode: 0x6A
             Cycles: 7
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DEC
           AddrMode: EXTEND
             Opcode: 0x7A
             Cycles: 6
              Bytes: 3
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DECA
           AddrMode: -
             Opcode: 0x4A
             Cycles: 2
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DECB
           AddrMode: -
             Opcode: 0x5A
             Cycles: 2
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }



    {
        Instruction: INC
           AddrMode: INDEX
             Opcode: 0x6C
             Cycles: 7
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INC
           AddrMode: EXTEND
             Opcode: 0x7C
             Cycles: 6
              Bytes: 3
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INCA
           AddrMode: -
             Opcode: 0x4C
             Cycles: 2
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INCB
           AddrMode: -
             Opcode: 0x5C
             Cycles: 2
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }



    {
        Instruction: EORA
           AddrMode: IMMED
             Opcode: 0x88
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: DIRECT
             Opcode: 0x98
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: INDEX
             Opcode: 0xA8
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: EXTEND
             Opcode: 0xB8
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: IMMED
             Opcode: 0xC8
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: DIRECT
             Opcode: 0xD8
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: INDEX
             Opcode: 0xE8
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: EXTEND
             Opcode: 0xF8
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: LDAA
           AddrMode: IMMED
             Opcode: 0x86
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: DIRECT
             Opcode: 0x96
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: INDEX
             Opcode: 0xA6
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: EXTEND
             Opcode: 0xB6
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: IMMED
             Opcode: 0xC6
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: DIRECT
             Opcode: 0xD6
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: INDEX
             Opcode: 0xE6
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: EXTEND
             Opcode: 0xF6
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: NEG
           AddrMode: INDEX
             Opcode: 0x60
             Cycles: 7
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEG
           AddrMode: EXTEND
             Opcode: 0x70
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEGA
           AddrMode: -
             Opcode: 0x40
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEGB
           AddrMode: -
             Opcode: 0x50
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ORAA
           AddrMode: IMMED
             Opcode: 0x8A
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: DIRECT
             Opcode: 0x9A
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: INDEX
             Opcode: 0xAA
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: EXTEND
             Opcode: 0xBA
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: IMMED
             Opcode: 0xCA
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: DIRECT
             Opcode: 0xDA
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: INDEX
             Opcode: 0xEA
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: EXTEND
             Opcode: 0xFA
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: PSHA
           AddrMode: -
             Opcode: 0x36
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PSHB
           AddrMode: -
             Opcode: 0x37
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PULA
           AddrMode: -
             Opcode: 0x32
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PULB
           AddrMode: -
             Opcode: 0x33
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: ROL
           AddrMode: INDEX
             Opcode: 0x69
             Cycles: 7
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROL
           AddrMode: EXTEND
             Opcode: 0x79
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROLA
           AddrMode: -
             Opcode: 0x49
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROLB
           AddrMode: -
             Opcode: 0x59
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ROR
           AddrMode: INDEX
             Opcode: 0x66
             Cycles: 7
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROR
           AddrMode: EXTEND
             Opcode: 0x76
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: RORA
           AddrMode: -
             Opcode: 0x46
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: RORB
           AddrMode: -
             Opcode: 0x56
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ASL
           AddrMode: INDEX
             Opcode: 0x68
             Cycles: 7
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASL
           AddrMode: EXTEND
             Opcode: 0x78
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASLA
           AddrMode: -
             Opcode: 0x48
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASLB
           AddrMode: -
             Opcode: 0x58
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ASR
           AddrMode: INDEX
             Opcode: 0x67
             Cycles: 7
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASR
           AddrMode: EXTEND
             Opcode: 0x77
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASRA
           AddrMode: -
             Opcode: 0x47
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASRB
           AddrMode: -
             Opcode: 0x57
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: LSR
           AddrMode: INDEX
             Opcode: 0x64
             Cycles: 7
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSR
           AddrMode: EXTEND
             Opcode: 0x74
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSRA
           AddrMode: -
             Opcode: 0x44
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSRB
           AddrMode: -
             Opcode: 0x54
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: STAA
           AddrMode: DIRECT
             Opcode: 0x97
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAA
           AddrMode: INDEX
             Opcode: 0xA7
             Cycles: 6
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAA
           AddrMode: EXTEND
             Opcode: 0xB7
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: DIRECT
             Opcode: 0xD7
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: INDEX
             Opcode: 0xE7
             Cycles: 6
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: EXTEND
             Opcode: 0xF7
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: SUBA
           AddrMode: IMMED
             Opcode: 0x80
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: DIRECT
             Opcode: 0x90
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: INDEX
             Opcode: 0xA0
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: EXTEND
             Opcode: 0xB0
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: IMMED
             Opcode: 0xC0
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: DIRECT
             Opcode: 0xD0
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: INDEX
             Opcode: 0xE0
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: EXTEND
             Opcode: 0xF0
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: IMMED
             Opcode: 0x83
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: DIRECT
             Opcode: 0x93
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: INDEX
             Opcode: 0xA3
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: EXTEND
             Opcode: 0xB3
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: SBA
           AddrMode: -
             Opcode: 0x10
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: SBCA
           AddrMode: IMMED
             Opcode: 0x82
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: DIRECT
             Opcode: 0x92
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: INDEX
             Opcode: 0xA2
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: EXTEND
             Opcode: 0xB2
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: IMMED
             Opcode: 0xC2
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: DIRECT
             Opcode: 0xD2
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: INDEX
             Opcode: 0xE2
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: EXTEND
             Opcode: 0xF2
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: TAB
           AddrMode: -
             Opcode: 0x16
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: TBA
           AddrMode: -
             Opcode: 0x17
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: TST
           AddrMode: INDEX
             Opcode: 0x6D
             Cycles: 7
              Bytes: 2
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: TST
           AddrMode: EXTEND
             Opcode: 0x7D
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: TSTA
           AddrMode: -
             Opcode: 0x4D
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: TSTB
           AddrMode: -
             Opcode: 0x5D
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0} {C 0}}
               Oper: {}
    }



    {
        Instruction: CPX
           AddrMode: IMMED
             Opcode: 0x8C
             Cycles: 3
              Bytes: 3
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: DIRECT
             Opcode: 0x9C
             Cycles: 4
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: INDEX
             Opcode: 0xAC
             Cycles: 6
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: EXTEND
             Opcode: 0xBC
             Cycles: 5
              Bytes: 3
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DEX
           AddrMode: -
             Opcode: 0x09
             Cycles: 4
              Bytes: 1
              Flags: { Z}
               Oper: {}
    }
    {
        Instruction: DES
           AddrMode: -
             Opcode: 0x34
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: INX
           AddrMode: -
             Opcode: 0x08
             Cycles: 4
              Bytes: 1
              Flags: { Z}
               Oper: {}
    }
    {
        Instruction: INS
           AddrMode: -
             Opcode: 0x31
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: IMMED
             Opcode: 0xCE
             Cycles: 3
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: DIRECT
             Opcode: 0xDE
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: INDEX
             Opcode: 0xEE
             Cycles: 6
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: EXTEND
             Opcode: 0xFE
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: IMMED
             Opcode: 0x8E
             Cycles: 3
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: DIRECT
             Opcode: 0x9E
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: INDEX
             Opcode: 0xAE
             Cycles: 6
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: EXTEND
             Opcode: 0xBE
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: DIRECT
             Opcode: 0xDF
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: INDEX
             Opcode: 0xEF
             Cycles: 7
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: EXTEND
             Opcode: 0xFF
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STS
           AddrMode: DIRECT
             Opcode: 0x9F
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STS
           AddrMode: INDEX
             Opcode: 0xAF
             Cycles: 7
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STA
           AddrMode: EXTEND
             Opcode: 0xBF
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: TXS
           AddrMode: -
             Opcode: 0x35
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: TSX
           AddrMode: -
             Opcode: 0x30
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: BRA
           AddrMode: RELATIVE
             Opcode: 0x20
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BCC
           AddrMode: RELATIVE
             Opcode: 0x24
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BCS
           AddrMode: RELATIVE
             Opcode: 0x25
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BEQ
           AddrMode: RELATIVE
             Opcode: 0x27
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BGE
           AddrMode: RELATIVE
             Opcode: 0x2C
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BGT
           AddrMode: RELATIVE
             Opcode: 0x2E
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BHI
           AddrMode: RELATIVE
             Opcode: 0x22
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLE
           AddrMode: RELATIVE
             Opcode: 0x2F
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLS
           AddrMode: RELATIVE
             Opcode: 0x23
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLT
           AddrMode: RELATIVE
             Opcode: 0x2D
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BMI
           AddrMode: RELATIVE
             Opcode: 0x2B
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BNE
           AddrMode: RELATIVE
             Opcode: 0x26
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BVC
           AddrMode: RELATIVE
             Opcode: 0x28
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BVS
           AddrMode: RELATIVE
             Opcode: 0x29
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BPL
           AddrMode: RELATIVE
             Opcode: 0x2A
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BSR
           AddrMode: RELATIVE
             Opcode: 0x8D
             Cycles: 8
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JMP
           AddrMode: INDEX
             Opcode: 0x6E
             Cycles: 4
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JMP
           AddrMode: EXTEND
             Opcode: 0x7E
             Cycles: 3
              Bytes: 3
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JSR
           AddrMode: INDEX
             Opcode: 0xAD
             Cycles: 8
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JSR
           AddrMode: EXTEND
             Opcode: 0xBD
             Cycles: 9
              Bytes: 3
              Flags: {}
               Oper: {}
    }
    {
        Instruction: NOP
           AddrMode: -
             Opcode: 0x01
             Cycles: 2
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: RTI
           AddrMode: -
             Opcode: 0x3B
             Cycles: 10
              Bytes: 1
              Flags: { H I N Z V C}
               Oper: {}
    }
    {
        Instruction: RTS
           AddrMode: -
             Opcode: 0x39
             Cycles: 5
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: SWI
           AddrMode: -
             Opcode: 0x3F
             Cycles: 12
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: WAI
           AddrMode: -
             Opcode: 0x3E
             Cycles: 9
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: CLC
           AddrMode: -
             Opcode: 0x0C
             Cycles: 2
              Bytes: 1
              Flags: { {C 0}}
               Oper: {}
    }
    {
        Instruction: CLI
           AddrMode: -
             Opcode: 0x0E
             Cycles: 2
              Bytes: 1
              Flags: { {I 0}}
               Oper: {}
    }
    {
        Instruction: CLV
           AddrMode: -
             Opcode: 0x0A
             Cycles: 2
              Bytes: 1
              Flags: { {V 0}}
               Oper: {}
    }
    {
        Instruction: SEC
           AddrMode: -
             Opcode: 0x0D
             Cycles: 2
              Bytes: 1
              Flags: { {C 1}}
               Oper: {}
    }
    {
        Instruction: SEI
           AddrMode: -
             Opcode: 0x0F
             Cycles: 2
              Bytes: 1
              Flags: { {I 1}}
               Oper: {}
    }
    {
        Instruction: SEV
           AddrMode: -
             Opcode: 0x0B
             Cycles: 2
              Bytes: 1
              Flags: { {V 1}}
               Oper: {}
    }
    {
        Instruction: TAP
           AddrMode: -
             Opcode: 0x06
             Cycles: 1
              Bytes: 1
              Flags: { H I N Z V C}
               Oper: {}
    }
    {
        Instruction: TPA
           AddrMode: -
             Opcode: 0x07
             Cycles: 2
              Bytes: 1
              Flags: {}
               Oper: {}
    }
}





set Instructions_6803 {
    {
        Instruction: ADDA
           AddrMode: IMMED
             Opcode: 0x8B
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: DIRECT
             Opcode: 0x9B
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: INDEX
             Opcode: 0xAB
             Cycles: 4
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: EXTEND
             Opcode: 0xBB
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: IMMED
             Opcode: 0xCB
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: DIRECT
             Opcode: 0xDB
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: INDEX
             Opcode: 0xEB
             Cycles: 4
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: EXTEND
             Opcode: 0xFB
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDD
           AddrMode: IMMED
             Opcode: 0xC3
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDD
           AddrMode: DIRECT
             Opcode: 0xD3
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDD
           AddrMode: INDEX
             Opcode: 0xE3
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDD
           AddrMode: EXTEND
             Opcode: 0xF3
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ABA
           AddrMode: -
             Opcode: 0x1B
             Cycles: 2
              Bytes: 1
              Flags: { H N Z V C}
               Oper: {}
    }



    {
        Instruction: ADCA
           AddrMode: IMMED
             Opcode: 0x89
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: DIRECT
             Opcode: 0x99
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: INDEX
             Opcode: 0xA9
             Cycles: 4
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: EXTEND
             Opcode: 0xB9
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: IMMED
             Opcode: 0xC9
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: DIRECT
             Opcode: 0xD9
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: INDEX
             Opcode: 0xE9
             Cycles: 4
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: EXTEND
             Opcode: 0xF9
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }


    {
        Instruction: ANDA
           AddrMode: IMMED
             Opcode: 0x84
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: DIRECT
             Opcode: 0x94
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: INDEX
             Opcode: 0xA4
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: EXTEND
             Opcode: 0xB4
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: IMMED
             Opcode: 0xC4
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: DIRECT
             Opcode: 0xD4
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: INDEX
             Opcode: 0xE4
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: EXTEND
             Opcode: 0xF4
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: BITA
           AddrMode: IMMED
             Opcode: 0x85
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: DIRECT
             Opcode: 0x95
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: INDEX
             Opcode: 0xA5
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: EXTEND
             Opcode: 0xB5
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: IMMED
             Opcode: 0xC5
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: DIRECT
             Opcode: 0xD5
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: INDEX
             Opcode: 0xE5
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: EXTEND
             Opcode: 0xF5
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: CBA
           AddrMode: -
             Opcode: 0x11
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: CLR
           AddrMode: INDEX
             Opcode: 0x6F
             Cycles: 6
              Bytes: 2
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLR
           AddrMode: EXTEND
             Opcode: 0x7F
             Cycles: 6
              Bytes: 3
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLRA
           AddrMode: -
             Opcode: 0x4F
             Cycles: 2
              Bytes: 1
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLRB
           AddrMode: -
             Opcode: 0x5F
             Cycles: 2
              Bytes: 1
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }



    {
        Instruction: CMPA
           AddrMode: IMMED
             Opcode: 0x81
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: DIRECT
             Opcode: 0x91
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: INDEX
             Opcode: 0xA1
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: EXTEND
             Opcode: 0xB1
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: IMMED
             Opcode: 0xC1
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: DIRECT
             Opcode: 0xD1
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: INDEX
             Opcode: 0xE1
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: EXTEND
             Opcode: 0xF1
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: COM
           AddrMode: INDEX
             Opcode: 0x63
             Cycles: 6
              Bytes: 2
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COM
           AddrMode: EXTEND
             Opcode: 0x73
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COMA
           AddrMode: -
             Opcode: 0x43
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COMB
           AddrMode: -
             Opcode: 0x53
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }



    {
        Instruction: DAA
           AddrMode: -
             Opcode: 0x19
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: DEC
           AddrMode: INDEX
             Opcode: 0x6A
             Cycles: 6
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DEC
           AddrMode: EXTEND
             Opcode: 0x7A
             Cycles: 6
              Bytes: 3
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DECA
           AddrMode: -
             Opcode: 0x4A
             Cycles: 2
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DECB
           AddrMode: -
             Opcode: 0x5A
             Cycles: 2
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }



    {
        Instruction: INC
           AddrMode: INDEX
             Opcode: 0x6C
             Cycles: 6
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INC
           AddrMode: EXTEND
             Opcode: 0x7C
             Cycles: 6
              Bytes: 3
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INCA
           AddrMode: -
             Opcode: 0x4C
             Cycles: 2
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INCB
           AddrMode: -
             Opcode: 0x5C
             Cycles: 2
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }



    {
        Instruction: EORA
           AddrMode: IMMED
             Opcode: 0x88
             Cycles: 2
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: DIRECT
             Opcode: 0x98
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: INDEX
             Opcode: 0xA8
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: EXTEND
             Opcode: 0xB8
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: IMMED
             Opcode: 0xC8
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: DIRECT
             Opcode: 0xD8
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: INDEX
             Opcode: 0xE8
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: EXTEND
             Opcode: 0xF8
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: LDAA
           AddrMode: IMMED
             Opcode: 0x86
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: DIRECT
             Opcode: 0x96
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: INDEX
             Opcode: 0xA6
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: EXTEND
             Opcode: 0xB6
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: IMMED
             Opcode: 0xC6
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: DIRECT
             Opcode: 0xD6
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: INDEX
             Opcode: 0xE6
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: EXTEND
             Opcode: 0xF6
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDD
           AddrMode: IMMED
             Opcode: 0xCC
             Cycles: 3
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDD
           AddrMode: DIRECT
             Opcode: 0xDC
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDD
           AddrMode: INDEX
             Opcode: 0xEC
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDD
           AddrMode: EXTEND
             Opcode: 0xFC
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: NEG
           AddrMode: INDEX
             Opcode: 0x60
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEG
           AddrMode: EXTEND
             Opcode: 0x70
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEGA
           AddrMode: -
             Opcode: 0x40
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEGB
           AddrMode: -
             Opcode: 0x50
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ORAA
           AddrMode: IMMED
             Opcode: 0x8A
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: DIRECT
             Opcode: 0x9A
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: INDEX
             Opcode: 0xAA
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: EXTEND
             Opcode: 0xBA
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: IMMED
             Opcode: 0xCA
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: DIRECT
             Opcode: 0xDA
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: INDEX
             Opcode: 0xEA
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: EXTEND
             Opcode: 0xFA
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: PSHA
           AddrMode: -
             Opcode: 0x36
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PSHB
           AddrMode: -
             Opcode: 0x37
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PULA
           AddrMode: -
             Opcode: 0x32
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PULB
           AddrMode: -
             Opcode: 0x33
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: ROL
           AddrMode: INDEX
             Opcode: 0x69
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROL
           AddrMode: EXTEND
             Opcode: 0x79
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROLA
           AddrMode: -
             Opcode: 0x49
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROLB
           AddrMode: -
             Opcode: 0x59
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ROR
           AddrMode: INDEX
             Opcode: 0x66
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROR
           AddrMode: EXTEND
             Opcode: 0x76
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: RORA
           AddrMode: -
             Opcode: 0x46
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: RORB
           AddrMode: -
             Opcode: 0x56
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ASL LSL
           AddrMode: INDEX
             Opcode: 0x68
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASL LSL
           AddrMode: EXTEND
             Opcode: 0x78
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASLA LSLA
           AddrMode: -
             Opcode: 0x48
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASLB LSLB
           AddrMode: -
             Opcode: 0x58
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASLD LSLD
           AddrMode: -
             Opcode: 0x05
             Cycles: 3
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ASR
           AddrMode: INDEX
             Opcode: 0x67
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASR
           AddrMode: EXTEND
             Opcode: 0x77
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASRA
           AddrMode: -
             Opcode: 0x47
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASRB
           AddrMode: -
             Opcode: 0x57
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: LSR
           AddrMode: INDEX
             Opcode: 0x64
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSR
           AddrMode: EXTEND
             Opcode: 0x74
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSRA
           AddrMode: -
             Opcode: 0x44
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSRB
           AddrMode: -
             Opcode: 0x54
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSRD
           AddrMode: -
             Opcode: 0x04
             Cycles: 3
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: MUL
           AddrMode: -
             Opcode: 0x3D
             Cycles: 10
              Bytes: 1
              Flags: { C}
               Oper: {}
    }




    {
        Instruction: STAA
           AddrMode: DIRECT
             Opcode: 0x97
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAA
           AddrMode: INDEX
             Opcode: 0xA7
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAA
           AddrMode: EXTEND
             Opcode: 0xB7
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: DIRECT
             Opcode: 0xD7
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: INDEX
             Opcode: 0xE7
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: EXTEND
             Opcode: 0xF7
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STD
           AddrMode: DIRECT
             Opcode: 0xDD
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STD
           AddrMode: INDEX
             Opcode: 0xED
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STD
           AddrMode: EXTEND
             Opcode: 0xFD
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }


    {
        Instruction: SUBA
           AddrMode: IMMED
             Opcode: 0x80
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: DIRECT
             Opcode: 0x90
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: INDEX
             Opcode: 0xA0
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: EXTEND
             Opcode: 0xB0
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: IMMED
             Opcode: 0xC0
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: DIRECT
             Opcode: 0xD0
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: INDEX
             Opcode: 0xE0
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: EXTEND
             Opcode: 0xF0
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: IMMED
             Opcode: 0x83
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: DIRECT
             Opcode: 0x93
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: INDEX
             Opcode: 0xA3
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: EXTEND
             Opcode: 0xB3
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: SBA
           AddrMode: -
             Opcode: 0x10
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: SBCA
           AddrMode: IMMED
             Opcode: 0x82
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: DIRECT
             Opcode: 0x92
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: INDEX
             Opcode: 0xA2
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: EXTEND
             Opcode: 0xB2
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: IMMED
             Opcode: 0xC2
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: DIRECT
             Opcode: 0xD2
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: INDEX
             Opcode: 0xE2
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: EXTEND
             Opcode: 0xF2
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: TAB
           AddrMode: -
             Opcode: 0x16
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: TBA
           AddrMode: -
             Opcode: 0x17
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: TST
           AddrMode: INDEX
             Opcode: 0x6D
             Cycles: 6
              Bytes: 2
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: TST
           AddrMode: EXTEND
             Opcode: 0x7D
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: TSTA
           AddrMode: -
             Opcode: 0x4D
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: TSTB
           AddrMode: -
             Opcode: 0x5D
             Cycles: 2
              Bytes: 1
              Flags: { N Z {V 0} {C 0}}
               Oper: {}
    }



    {
        Instruction: CPX
           AddrMode: IMMED
             Opcode: 0x8C
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: DIRECT
             Opcode: 0x9C
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: INDEX
             Opcode: 0xAC
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: EXTEND
             Opcode: 0xBC
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: DEX
           AddrMode: -
             Opcode: 0x09
             Cycles: 3
              Bytes: 1
              Flags: { Z}
               Oper: {}
    }
    {
        Instruction: DES
           AddrMode: -
             Opcode: 0x34
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: INX
           AddrMode: -
             Opcode: 0x08
             Cycles: 3
              Bytes: 1
              Flags: { Z}
               Oper: {}
    }
    {
        Instruction: INS
           AddrMode: -
             Opcode: 0x31
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: IMMED
             Opcode: 0xCE
             Cycles: 3
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: DIRECT
             Opcode: 0xDE
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: INDEX
             Opcode: 0xEE
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: EXTEND
             Opcode: 0xFE
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: IMMED
             Opcode: 0x8E
             Cycles: 3
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: DIRECT
             Opcode: 0x9E
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: INDEX
             Opcode: 0xAE
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: EXTEND
             Opcode: 0xBE
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: DIRECT
             Opcode: 0xDF
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: INDEX
             Opcode: 0xEF
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: EXTEND
             Opcode: 0xFF
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STS
           AddrMode: DIRECT
             Opcode: 0x9F
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STS
           AddrMode: INDEX
             Opcode: 0xAF
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STA
           AddrMode: EXTEND
             Opcode: 0xBF
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: TXS
           AddrMode: -
             Opcode: 0x35
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: TSX
           AddrMode: -
             Opcode: 0x30
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: ABX
           AddrMode: -
             Opcode: 0x3A
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PSHX
           AddrMode: -
             Opcode: 0x3C
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PULX
           AddrMode: -
             Opcode: 0x38
             Cycles: 5
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: BRA
           AddrMode: RELATIVE
             Opcode: 0x20
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BRN
           AddrMode: RELATIVE
             Opcode: 0x21
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BCC BHS
           AddrMode: RELATIVE
             Opcode: 0x24
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BCS BLO
           AddrMode: RELATIVE
             Opcode: 0x25
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BEQ
           AddrMode: RELATIVE
             Opcode: 0x27
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BGE
           AddrMode: RELATIVE
             Opcode: 0x2C
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BGT
           AddrMode: RELATIVE
             Opcode: 0x2E
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BHI
           AddrMode: RELATIVE
             Opcode: 0x22
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLE
           AddrMode: RELATIVE
             Opcode: 0x2F
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLS
           AddrMode: RELATIVE
             Opcode: 0x23
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLT
           AddrMode: RELATIVE
             Opcode: 0x2D
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BMI
           AddrMode: RELATIVE
             Opcode: 0x2B
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BNE
           AddrMode: RELATIVE
             Opcode: 0x26
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BVC
           AddrMode: RELATIVE
             Opcode: 0x28
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BVS
           AddrMode: RELATIVE
             Opcode: 0x29
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BPL
           AddrMode: RELATIVE
             Opcode: 0x2A
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BSR
           AddrMode: RELATIVE
             Opcode: 0x8D
             Cycles: 6
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JMP
           AddrMode: INDEX
             Opcode: 0x6E
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JMP
           AddrMode: EXTEND
             Opcode: 0x7E
             Cycles: 3
              Bytes: 3
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JSR
           AddrMode: DIRECT
             Opcode: 0x9D
             Cycles: 5
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JSR
           AddrMode: INDEX
             Opcode: 0xAD
             Cycles: 6
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JSR
           AddrMode: EXTEND
             Opcode: 0xBD
             Cycles: 6
              Bytes: 3
              Flags: {}
               Oper: {}
    }
    {
        Instruction: NOP
           AddrMode: -
             Opcode: 0x01
             Cycles: 2
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: RTI
           AddrMode: -
             Opcode: 0x3B
             Cycles: 10
              Bytes: 1
              Flags: { H I N Z V C}
               Oper: {}
    }
    {
        Instruction: RTS
           AddrMode: -
             Opcode: 0x39
             Cycles: 5
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: SWI
           AddrMode: -
             Opcode: 0x3F
             Cycles: 12
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: WAI
           AddrMode: -
             Opcode: 0x3E
             Cycles: 9
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: CLC
           AddrMode: -
             Opcode: 0x0C
             Cycles: 2
              Bytes: 1
              Flags: { {C 0}}
               Oper: {}
    }
    {
        Instruction: CLI
           AddrMode: -
             Opcode: 0x0E
             Cycles: 2
              Bytes: 1
              Flags: { {I 0}}
               Oper: {}
    }
    {
        Instruction: CLV
           AddrMode: -
             Opcode: 0x0A
             Cycles: 2
              Bytes: 1
              Flags: { {V 0}}
               Oper: {}
    }
    {
        Instruction: SEC
           AddrMode: -
             Opcode: 0x0D
             Cycles: 2
              Bytes: 1
              Flags: { {C 1}}
               Oper: {}
    }
    {
        Instruction: SEI
           AddrMode: -
             Opcode: 0x0F
             Cycles: 2
              Bytes: 1
              Flags: { {I 1}}
               Oper: {}
    }
    {
        Instruction: SEV
           AddrMode: -
             Opcode: 0x0B
             Cycles: 2
              Bytes: 1
              Flags: { {V 1}}
               Oper: {}
    }
    {
        Instruction: TAP
           AddrMode: -
             Opcode: 0x06
             Cycles: 2
              Bytes: 1
              Flags: { H I N Z V C}
               Oper: {}
    }
    {
        Instruction: TPA
           AddrMode: -
             Opcode: 0x07
             Cycles: 2
              Bytes: 1
              Flags: {}
               Oper: {}
    }
}





set Instructions_6303 {
    {
        Instruction: ADDA
           AddrMode: IMMED
             Opcode: 0x8B
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: DIRECT
             Opcode: 0x9B
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: INDEX
             Opcode: 0xAB
             Cycles: 4
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDA
           AddrMode: EXTEND
             Opcode: 0xBB
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: IMMED
             Opcode: 0xCB
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: DIRECT
             Opcode: 0xDB
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: INDEX
             Opcode: 0xEB
             Cycles: 4
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDB
           AddrMode: EXTEND
             Opcode: 0xFB
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDD
           AddrMode: IMMED
             Opcode: 0xC3
             Cycles: 3
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDD
           AddrMode: DIRECT
             Opcode: 0xD3
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDD
           AddrMode: INDEX
             Opcode: 0xE3
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ADDD
           AddrMode: EXTEND
             Opcode: 0xF3
             Cycles: 5
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ABA
           AddrMode: -
             Opcode: 0x1B
             Cycles: 1
              Bytes: 1
              Flags: { H N Z V C}
               Oper: {}
    }



    {
        Instruction: ADCA
           AddrMode: IMMED
             Opcode: 0x89
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: DIRECT
             Opcode: 0x99
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: INDEX
             Opcode: 0xA9
             Cycles: 4
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCA
           AddrMode: EXTEND
             Opcode: 0xB9
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: IMMED
             Opcode: 0xC9
             Cycles: 2
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: DIRECT
             Opcode: 0xD9
             Cycles: 3
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: INDEX
             Opcode: 0xE9
             Cycles: 4
              Bytes: 2
              Flags: { H N Z V C}
               Oper: {}
    }
    {
        Instruction: ADCB
           AddrMode: EXTEND
             Opcode: 0xF9
             Cycles: 4
              Bytes: 3
              Flags: { H N Z V C}
               Oper: {}
    }


    {
        Instruction: ANDA
           AddrMode: IMMED
             Opcode: 0x84
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: DIRECT
             Opcode: 0x94
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: INDEX
             Opcode: 0xA4
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDA
           AddrMode: EXTEND
             Opcode: 0xB4
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: IMMED
             Opcode: 0xC4
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: DIRECT
             Opcode: 0xD4
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: INDEX
             Opcode: 0xE4
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ANDB
           AddrMode: EXTEND
             Opcode: 0xF4
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: BITA
           AddrMode: IMMED
             Opcode: 0x85
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: DIRECT
             Opcode: 0x95
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: INDEX
             Opcode: 0xA5
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITA
           AddrMode: EXTEND
             Opcode: 0xB5
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: IMMED
             Opcode: 0xC5
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: DIRECT
             Opcode: 0xD5
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: INDEX
             Opcode: 0xE5
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: BITB
           AddrMode: EXTEND
             Opcode: 0xF5
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: CBA
           AddrMode: -
             Opcode: 0x11
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: CLR
           AddrMode: INDEX
             Opcode: 0x6F
             Cycles: 5
              Bytes: 2
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLR
           AddrMode: EXTEND
             Opcode: 0x7F
             Cycles: 5
              Bytes: 3
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLRA
           AddrMode: -
             Opcode: 0x4F
             Cycles: 1
              Bytes: 1
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: CLRB
           AddrMode: -
             Opcode: 0x5F
             Cycles: 1
              Bytes: 1
              Flags: { {N 0} {Z 1} {V 0} {C 0}}
               Oper: {}
    }



    {
        Instruction: CMPA
           AddrMode: IMMED
             Opcode: 0x81
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: DIRECT
             Opcode: 0x91
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: INDEX
             Opcode: 0xA1
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPA
           AddrMode: EXTEND
             Opcode: 0xB1
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: IMMED
             Opcode: 0xC1
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: DIRECT
             Opcode: 0xD1
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: INDEX
             Opcode: 0xE1
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CMPB
           AddrMode: EXTEND
             Opcode: 0xF1
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: COM
           AddrMode: INDEX
             Opcode: 0x63
             Cycles: 6
              Bytes: 2
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COM
           AddrMode: EXTEND
             Opcode: 0x73
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COMA
           AddrMode: -
             Opcode: 0x43
             Cycles: 1
              Bytes: 1
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: COMB
           AddrMode: -
             Opcode: 0x53
             Cycles: 1
              Bytes: 1
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }



    {
        Instruction: DAA
           AddrMode: -
             Opcode: 0x19
             Cycles: 2
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: DEC
           AddrMode: INDEX
             Opcode: 0x6A
             Cycles: 6
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DEC
           AddrMode: EXTEND
             Opcode: 0x7A
             Cycles: 6
              Bytes: 3
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DECA
           AddrMode: -
             Opcode: 0x4A
             Cycles: 1
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: DECB
           AddrMode: -
             Opcode: 0x5A
             Cycles: 1
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }



    {
        Instruction: INC
           AddrMode: INDEX
             Opcode: 0x6C
             Cycles: 6
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INC
           AddrMode: EXTEND
             Opcode: 0x7C
             Cycles: 6
              Bytes: 3
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INCA
           AddrMode: -
             Opcode: 0x4C
             Cycles: 1
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: INCB
           AddrMode: -
             Opcode: 0x5C
             Cycles: 1
              Bytes: 1
              Flags: { N Z V}
               Oper: {}
    }



    {
        Instruction: EORA
           AddrMode: IMMED
             Opcode: 0x88
             Cycles: 2
              Bytes: 2
              Flags: { N Z V}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: DIRECT
             Opcode: 0x98
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: INDEX
             Opcode: 0xA8
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORA
           AddrMode: EXTEND
             Opcode: 0xB8
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: IMMED
             Opcode: 0xC8
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: DIRECT
             Opcode: 0xD8
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: INDEX
             Opcode: 0xE8
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EORB
           AddrMode: EXTEND
             Opcode: 0xF8
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: LDAA
           AddrMode: IMMED
             Opcode: 0x86
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: DIRECT
             Opcode: 0x96
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: INDEX
             Opcode: 0xA6
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAA
           AddrMode: EXTEND
             Opcode: 0xB6
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: IMMED
             Opcode: 0xC6
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: DIRECT
             Opcode: 0xD6
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: INDEX
             Opcode: 0xE6
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDAB
           AddrMode: EXTEND
             Opcode: 0xF6
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDD
           AddrMode: IMMED
             Opcode: 0xCC
             Cycles: 3
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDD
           AddrMode: DIRECT
             Opcode: 0xDC
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDD
           AddrMode: INDEX
             Opcode: 0xEC
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDD
           AddrMode: EXTEND
             Opcode: 0xFC
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: NEG
           AddrMode: INDEX
             Opcode: 0x60
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEG
           AddrMode: EXTEND
             Opcode: 0x70
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEGA
           AddrMode: -
             Opcode: 0x40
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: NEGB
           AddrMode: -
             Opcode: 0x50
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ORAA
           AddrMode: IMMED
             Opcode: 0x8A
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: DIRECT
             Opcode: 0x9A
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: INDEX
             Opcode: 0xAA
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAA
           AddrMode: EXTEND
             Opcode: 0xBA
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: IMMED
             Opcode: 0xCA
             Cycles: 2
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: DIRECT
             Opcode: 0xDA
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: INDEX
             Opcode: 0xEA
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: ORAB
           AddrMode: EXTEND
             Opcode: 0xFA
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: PSHA
           AddrMode: -
             Opcode: 0x36
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PSHB
           AddrMode: -
             Opcode: 0x37
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PULA
           AddrMode: -
             Opcode: 0x32
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PULB
           AddrMode: -
             Opcode: 0x33
             Cycles: 3
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: ROL
           AddrMode: INDEX
             Opcode: 0x69
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROL
           AddrMode: EXTEND
             Opcode: 0x79
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROLA
           AddrMode: -
             Opcode: 0x49
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROLB
           AddrMode: -
             Opcode: 0x59
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ROR
           AddrMode: INDEX
             Opcode: 0x66
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ROR
           AddrMode: EXTEND
             Opcode: 0x76
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: RORA
           AddrMode: -
             Opcode: 0x46
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: RORB
           AddrMode: -
             Opcode: 0x56
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ASL
           AddrMode: INDEX
             Opcode: 0x68
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASL
           AddrMode: EXTEND
             Opcode: 0x78
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASLA
           AddrMode: -
             Opcode: 0x48
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASLB
           AddrMode: -
             Opcode: 0x58
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASLD
           AddrMode: -
             Opcode: 0x05
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: ASR
           AddrMode: INDEX
             Opcode: 0x67
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASR
           AddrMode: EXTEND
             Opcode: 0x77
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASRA
           AddrMode: -
             Opcode: 0x47
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: ASRB
           AddrMode: -
             Opcode: 0x57
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: LSR
           AddrMode: INDEX
             Opcode: 0x64
             Cycles: 6
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSR
           AddrMode: EXTEND
             Opcode: 0x74
             Cycles: 6
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSRA
           AddrMode: -
             Opcode: 0x44
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSRB
           AddrMode: -
             Opcode: 0x54
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: LSRD
           AddrMode: -
             Opcode: 0x04
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: MUL
           AddrMode: -
             Opcode: 0x3D
             Cycles: 7
              Bytes: 1
              Flags: { C}
               Oper: {}
    }



    {
        Instruction: STAA
           AddrMode: DIRECT
             Opcode: 0x97
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAA
           AddrMode: INDEX
             Opcode: 0xA7
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAA
           AddrMode: EXTEND
             Opcode: 0xB7
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: DIRECT
             Opcode: 0xD7
             Cycles: 3
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: INDEX
             Opcode: 0xE7
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STAB
           AddrMode: EXTEND
             Opcode: 0xF7
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STD
           AddrMode: DIRECT
             Opcode: 0xDD
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STD
           AddrMode: INDEX
             Opcode: 0xED
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STD
           AddrMode: EXTEND
             Opcode: 0xFD
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }


    {
        Instruction: SUBA
           AddrMode: IMMED
             Opcode: 0x80
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: DIRECT
             Opcode: 0x90
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: INDEX
             Opcode: 0xA0
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBA
           AddrMode: EXTEND
             Opcode: 0xB0
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: IMMED
             Opcode: 0xC0
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: DIRECT
             Opcode: 0xD0
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: INDEX
             Opcode: 0xE0
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: EXTEND
             Opcode: 0xF0
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: IMMED
             Opcode: 0x83
             Cycles: 3
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: DIRECT
             Opcode: 0x93
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBD
           AddrMode: INDEX
             Opcode: 0xA3
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SUBB
           AddrMode: EXTEND
             Opcode: 0xB3
             Cycles: 5
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }


    {
        Instruction: SBA
           AddrMode: -
             Opcode: 0x10
             Cycles: 1
              Bytes: 1
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: SBCA
           AddrMode: IMMED
             Opcode: 0x82
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: DIRECT
             Opcode: 0x92
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: INDEX
             Opcode: 0xA2
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCA
           AddrMode: EXTEND
             Opcode: 0xB2
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: IMMED
             Opcode: 0xC2
             Cycles: 2
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: DIRECT
             Opcode: 0xD2
             Cycles: 3
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: INDEX
             Opcode: 0xE2
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: SBCB
           AddrMode: EXTEND
             Opcode: 0xF2
             Cycles: 4
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }



    {
        Instruction: TAB
           AddrMode: -
             Opcode: 0x16
             Cycles: 1
              Bytes: 1
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: TBA
           AddrMode: -
             Opcode: 0x17
             Cycles: 1
              Bytes: 1
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: TST
           AddrMode: INDEX
             Opcode: 0x6D
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: TST
           AddrMode: EXTEND
             Opcode: 0x7D
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0} {C 1}}
               Oper: {}
    }
    {
        Instruction: TSTA
           AddrMode: -
             Opcode: 0x4D
             Cycles: 1
              Bytes: 1
              Flags: { N Z {V 0} {C 0}}
               Oper: {}
    }
    {
        Instruction: TSTB
           AddrMode: -
             Opcode: 0x5D
             Cycles: 1
              Bytes: 1
              Flags: { N Z {V 0} {C 0}}
               Oper: {}
    }



    {
        Instruction: AIM
           AddrMode: DIRECT
             Opcode: 0x71
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: AIM
           AddrMode: INDEX
             Opcode: 0x61
             Cycles: 7
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: OIM
           AddrMode: DIRECT
             Opcode: 0x72
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: OIM
           AddrMode: INDEX
             Opcode: 0x62
             Cycles: 7
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: OIM
           AddrMode: DIRECT
             Opcode: 0x75
             Cycles: 6
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: EIM
           AddrMode: INDEX
             Opcode: 0x65
             Cycles: 7
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: TIM
           AddrMode: DIRECT
             Opcode: 0x7B
             Cycles: 4
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: TIM
           AddrMode: INDEX
             Opcode: 0x6B
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }



    {
        Instruction: CPX
           AddrMode: IMMED
             Opcode: 0x8C
             Cycles: 3
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: DIRECT
             Opcode: 0x9C
             Cycles: 4
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: INDEX
             Opcode: 0xAC
             Cycles: 5
              Bytes: 2
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: CPX
           AddrMode: EXTEND
             Opcode: 0xBC
             Cycles: 5
              Bytes: 3
              Flags: { N Z V C}
               Oper: {}
    }
    {
        Instruction: DEX
           AddrMode: -
             Opcode: 0x09
             Cycles: 1
              Bytes: 1
              Flags: { Z}
               Oper: {}
    }
    {
        Instruction: DES
           AddrMode: -
             Opcode: 0x34
             Cycles: 1
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: INX
           AddrMode: -
             Opcode: 0x08
             Cycles: 1
              Bytes: 1
              Flags: { Z}
               Oper: {}
    }
    {
        Instruction: INS
           AddrMode: -
             Opcode: 0x31
             Cycles: 1
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: IMMED
             Opcode: 0xCE
             Cycles: 3
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: DIRECT
             Opcode: 0xDE
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: INDEX
             Opcode: 0xEE
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDX
           AddrMode: EXTEND
             Opcode: 0xFE
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: IMMED
             Opcode: 0x8E
             Cycles: 3
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: DIRECT
             Opcode: 0x9E
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: INDEX
             Opcode: 0xAE
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: LDS
           AddrMode: EXTEND
             Opcode: 0xBE
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: DIRECT
             Opcode: 0xDF
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: INDEX
             Opcode: 0xEF
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STX
           AddrMode: EXTEND
             Opcode: 0xFF
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STS
           AddrMode: DIRECT
             Opcode: 0x9F
             Cycles: 4
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STS
           AddrMode: INDEX
             Opcode: 0xAF
             Cycles: 5
              Bytes: 2
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: STA
           AddrMode: EXTEND
             Opcode: 0xBF
             Cycles: 5
              Bytes: 3
              Flags: { N Z {V 0}}
               Oper: {}
    }
    {
        Instruction: TXS
           AddrMode: -
             Opcode: 0x35
             Cycles: 1
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: TSX
           AddrMode: -
             Opcode: 0x30
             Cycles: 1
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: ABX
           AddrMode: -
             Opcode: 0x3A
             Cycles: 1
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PSHX
           AddrMode: -
             Opcode: 0x3C
             Cycles: 5
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: PULX
           AddrMode: -
             Opcode: 0x38
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: XGDX
           AddrMode: -
             Opcode: 0x1B
             Cycles: 2
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: BRA
           AddrMode: RELATIVE
             Opcode: 0x20
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BRN
           AddrMode: RELATIVE
             Opcode: 0x21
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BCC
           AddrMode: RELATIVE
             Opcode: 0x24
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BCS
           AddrMode: RELATIVE
             Opcode: 0x25
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BEQ
           AddrMode: RELATIVE
             Opcode: 0x27
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BGE
           AddrMode: RELATIVE
             Opcode: 0x2C
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BGT
           AddrMode: RELATIVE
             Opcode: 0x2E
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BHI
           AddrMode: RELATIVE
             Opcode: 0x22
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLE
           AddrMode: RELATIVE
             Opcode: 0x2F
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLS
           AddrMode: RELATIVE
             Opcode: 0x23
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BLT
           AddrMode: RELATIVE
             Opcode: 0x2D
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BMI
           AddrMode: RELATIVE
             Opcode: 0x2B
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BNE
           AddrMode: RELATIVE
             Opcode: 0x26
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BVC
           AddrMode: RELATIVE
             Opcode: 0x28
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BVS
           AddrMode: RELATIVE
             Opcode: 0x29
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BPL
           AddrMode: RELATIVE
             Opcode: 0x2A
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: BSR
           AddrMode: RELATIVE
             Opcode: 0x8D
             Cycles: 5
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JMP
           AddrMode: INDEX
             Opcode: 0x6E
             Cycles: 3
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JMP
           AddrMode: EXTEND
             Opcode: 0x7E
             Cycles: 3
              Bytes: 3
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JSR
           AddrMode: DIRECT
             Opcode: 0x9D
             Cycles: 5
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JSR
           AddrMode: INDEX
             Opcode: 0xAD
             Cycles: 5
              Bytes: 2
              Flags: {}
               Oper: {}
    }
    {
        Instruction: JSR
           AddrMode: EXTEND
             Opcode: 0xBD
             Cycles: 6
              Bytes: 3
              Flags: {}
               Oper: {}
    }
    {
        Instruction: NOP
           AddrMode: -
             Opcode: 0x01
             Cycles: 1
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: RTI
           AddrMode: -
             Opcode: 0x3B
             Cycles: 10
              Bytes: 1
              Flags: { H I N Z V C}
               Oper: {}
    }
    {
        Instruction: RTS
           AddrMode: -
             Opcode: 0x39
             Cycles: 5
              Bytes: 1
              Flags: {}
               Oper: {}
    }
    {
        Instruction: SWI
           AddrMode: -
             Opcode: 0x3F
             Cycles: 12
              Bytes: 1
              Flags: { {I 1}}
               Oper: {}
    }
    {
        Instruction: WAI
           AddrMode: -
             Opcode: 0x3E
             Cycles: 9
              Bytes: 1
              Flags: { I}
               Oper: {}
    }
    {
        Instruction: SLP
           AddrMode: -
             Opcode: 0x1A
             Cycles: 4
              Bytes: 1
              Flags: {}
               Oper: {}
    }



    {
        Instruction: CLC
           AddrMode: -
             Opcode: 0x0C
             Cycles: 1
              Bytes: 1
              Flags: { {C 0}}
               Oper: {}
    }
    {
        Instruction: CLI
           AddrMode: -
             Opcode: 0x0E
             Cycles: 1
              Bytes: 1
              Flags: { {I 0}}
               Oper: {}
    }
    {
        Instruction: CLV
           AddrMode: -
             Opcode: 0x0A
             Cycles: 1
              Bytes: 1
              Flags: { {V 0}}
               Oper: {}
    }
    {
        Instruction: SEC
           AddrMode: -
             Opcode: 0x0D
             Cycles: 1
              Bytes: 1
              Flags: { {C 1}}
               Oper: {}
    }
    {
        Instruction: SEI
           AddrMode: -
             Opcode: 0x0F
             Cycles: 1
              Bytes: 1
              Flags: { {I 1}}
               Oper: {}
    }
    {
        Instruction: SEV
           AddrMode: -
             Opcode: 0x0B
             Cycles: 1
              Bytes: 1
              Flags: { {V 1}}
               Oper: {}
    }
    {
        Instruction: TAP
           AddrMode: -
             Opcode: 0x06
             Cycles: 1
              Bytes: 1
              Flags: { H I N Z V C}
               Oper: {}
    }
    {
        Instruction: TPA
           AddrMode: -
             Opcode: 0x07
             Cycles: 1
              Bytes: 1
              Flags: {}
               Oper: {}
    }
}
