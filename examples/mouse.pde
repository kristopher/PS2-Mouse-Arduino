#include <PS2Mouse.h>
#define MDATA 5
#define MCLK 6

PS2Mouse mouse_one(M1CLK, M1DATA, STREAM);

void setup()
{
  Serial.begin(115200); 
  mouse_one.initialize();
}

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
