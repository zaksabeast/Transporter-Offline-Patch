.3ds
.arm

.open "code.bin", "code_patched.bin", 0x100000

// State: SHOW_GAMES
.org 0x242D10
    // Next state: GET_POKEMON
    moveq r0, #0x9

// State: GET_POKEMON
.org 0x242d28
    // Next state: CHECK_IF_USER_CAN_TRANSFER
    mov r0, #0xb
    b 0x242c4c

// Skip case 0
.org 0x248cdc
    b 0x248d3c

// Skip case 3
.org 0x248d58
    b 0x248e44

// Skip validating Gen 5 with remote server
.org 0x245728
    b 0x245800

// Skip validating Gen 1/2 with remote server
.org 0x2460b8
    b 0x2461d0

// Stub success
.org 0x2488A0
    mov r0, #0x1

// Stub success
.org 0x2483cc
    mov r0, #0x1

// Skip to removing Pokemon from original game
.org 0x24A150
    b 0x24a274

// Skip to success
.org 0x24A3D8
    b 0x24a624

.close
