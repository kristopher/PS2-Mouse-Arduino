/**
 * Reads X/Y values from a PS/2 mouse connected to an Arduino
 * using the PS2Mouse library available from
 *   http://github.com/kristopher/PS2-Mouse-Arduino/
 * Original by Kristopher Chambers <kristopher.chambers@gmail.com>
 * Updated by Jonathan Oxer <jon@oxer.com.au>
 */

#include <PS2Mouse.h>
#define MOUSE_DATA 5
#define MOUSE_CLOCK 6

PS2Mouse mouse(MOUSE_CLOCK, MOUSE_DATA, STREAM);

/**
 * Setup
 */
void setup()
{
  Serial.begin(38400);
  mouse.initialize();
}

/**
 * Main program loop
 */
void loop()
{
  int data[2];
  mouse.report(data);
  Serial.print(data[0]); // Status Byte
  Serial.print(":");
  Serial.print(data[1]); // X Movement Data
  Serial.print(",");
  Serial.print(data[2]); // Y Movement Data
  Serial.println();
}
