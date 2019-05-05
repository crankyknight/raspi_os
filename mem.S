.globl memzero
memzero :
    /*Use x16(first scratch register) */
    str  xzr, [x0], #8
    subs x16, x1, x0
    b.gt memzero
    ret

