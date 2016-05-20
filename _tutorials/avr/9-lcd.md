---
layout: default
title: Interfacing with LCD
assets-dir: /assets/tutorials/avr
sections:
  - name: Anatomy
    href: lcd-anatomy
  - name: Controlling the LCD
    href: lcd-control
---

### Anatomy of the LCD Screen <a name="lcd-anatomy"></a>

![]({{ page.assets-dir }}/image32.png)

### Controlling the LCD <a name="lcd-control"></a>

There is an instruction set for the LCD, which specifics the specific
setting of bits `RS`, `RW` and `DB0` to `DB7`, for giving specific commands to
the LCD. But that is the internal functioning, we do not need to indulge
into all of this. Instead, we have a header file wherein each
instruction(combination of bits High/Low) is mapped to a function in C.
So we will use this header file: “lcd.h”.

You can understand the functioning of lcd.h by looking at its functions
and looking up the instruction sheet to know what those functions are
implementing.

For now, let us see the code using lcd.h:

{% highlight c %}

#include <avr/io.h>

#include <avr/delay.h>

#include "lcd.h"


int main(){

    LCD_init(); //initialize LCD screen

    LCD_write("Hello AVR"); // You can write strings

    LCD_putchar("!"); // You can also write single characters

    _delay_ms(3000); // Display text for 3s

    LCD_wait(); // Waits until any previous command finishes, LCD is free

    LCD_command(0x01); // This is how you send commands

    // This command will clear the screen

    // Look it up in the Instruction Set


    LCD_write("Elec Club rocks!");

    while(1);

    return 0;

}
{% endhighlight %}

Here, `LCD_init` etc are commands of lcd.h which do what is specified in
the comments.

You can also construct your own functions, if you have the knowledge of
instruction set and the functioning of LCD. Let us make a function to
set the cursor to (x,y) of the LCD.

#### What we need to know before we can do this:

![]({{ page.assets-dir }}/image30.png)

Each block in the LCD which displays a character is represented by a
DDRAM block. Hence to set the cursor position we need to set the DDRAM
address. This, we look up in the instruction sheet given above.

We need to set `DB7 = 1` and `DB6`...`DB0` to the address we want.

The addresses of 16x2 LCD are 0...15 for the first line and 64...79 for
the second

line. 16 characters per line. So here is the required function:

{% highlight c %}

void LCD_cursor_goto(int x, int y){
    char addr = 0x80; // Set DB7 to 1

    if(y==1)
        addr = addr + 0x40; // Start counting from 64(0x40) for line 2

    addr = addr + x; // Finally add x position to get address

    LCD_wait(); // wait until any previous command finishes

    LCD_command(addr); // Send command to LCD

}

{% endhighlight %}

