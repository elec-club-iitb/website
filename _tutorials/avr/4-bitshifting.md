---
layout: default
title: Bitwise Operations
assets-dir: assets/tutorials/avr
sections:
  - name: Boolean Algebra
    href: boolean-algebra
  - name: Bit Shifting
    href: shifting
  - name: Bit Masking
    href: masking
---

Bit masking refers to accessing specific bits in a data and modifying
them according to our needs. Bit operations are a way to implement
masking.

Bitwise Operators available in C are: AND (`&`), OR (`|`), XOR (`^`) and NOT
(`~`). There are also bit shift operators viz. Bit left shift (`<<`)
and Bit right shift (`>>`) operators.

Bitwise operators are the ones that are defined on 2 bits and hold for
large binary number through bit-by-bit binary operations and defined on
2 bits.

### Boolean Algebra <a name="boolean-algebra"></a>

#### AND (`&`)

Works like regular logical AND(A.B). So, for `PORTA = 0b01101111 = 0x6f` and `PORTB = 0b10011001 = 0x99`,

```
PORTA & PORTB = 01101111 & 10011001 = 00001001 = 0x09.
```

OR(`|`), XOR(`^`), NOT(`~`) work in the same way. They are same as their
logical functions for 2 bit operations, and for larger numbers(many
bits) they are executed bit by bit using binary model for each bit
pair(as shown in bitwise AND example).

### Bit Shifting <a name="shifting"></a>

As the name suggests these operation are used to shift the position of a
bit by some particular places. If you use `<<` then the bits are
shifted to the left, and if you use `>>` then the bits are shifted
to the right and the bits are shifted by the number of places return
besides these symbols.

#### Binary Left Shift Operator

This shifts left operand value to left by number of bits specified in
the right operand. In other words, Binary left shift moves bits to a
specified number of places to the left. The least significant bit is
appended with 0 and most significant bit is dropped. The value of the
variable gets multiplied by 2 for every left shift that occurs.

If `PORTA=01101111`,

Then `PORTA << 3 = 01111000;`

#### Binary Right Shift Operator

This shifts left operand value to right by number of bits specified by
the right operand. The most significant bit is appended with 0 and least
significant bit is dropped.The value of the variable gets divided by 2
for every right shift that occurs.

```
PORTA >> 2 = 00011011;
```

#### Usage in AVR

Bit **Operations** are used very often, wherever the logical operations
are required.

Bit **Shifting** is very useful in setting only specific bits of
registers without worrying about everything else on the register.

If you wanted to turn on the lowest bit on PORTA, then you can simply
write a 1 to PORTA because a 1, in 8 bit binary, is really 00000001.

```
PORT A = 1;
```

However, if you wanted to turn on the second lowest bit on PORTA, then
an easy way to do it is with a bit shift:

```
PORTA = (0b00000001<<1);
```

Example:

```
PORTA = 10001001;
```

Means the same as

```
PORTA= (1<<7) | (1<<4)| (1<<0)
```

### Bit Masking <a name="masking"></a>

Bits in registers are given names. We will discuss TCCR1B
later here, but for the time being assume that a register has a bit
named CS10. The usefulness comes out of the fact that you can set the
CS10 bit High just by executing:

```
TCCR1B = (1<<CS10);
```

That is, “CS10” acts as its numeric location on the register!
Bit **Masking** is used to carry out operations on only specific bits
from a number of many bits.

Instead of `TCCR1B = 1<<CS10 | 1<<CS11`,
It is better to write: `TCCR1B |= 1<<CS10 | 1<<CS11`.
It lets the other bits stay as they are(OR with 0) and only sets the
selected bits high(from low).
