/**
 * Simple Write. 
 * 
 * Check if the mouse is over a rectangle and writes the status to the serial port. 
 * This example works with the Wiring / Arduino program that follows below.
 */




  // Create object from Serial class
        // Data received from the serial port

void setup() 
{
  size(200, 200);
  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  printArray(Serial.list());
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  
}

void draw() {



}
int i = 0;
void mouseClicked(){
 i++;
//myPort.write("1,0,10,255,255,255\n");
myPort.write("2,0,10,"+i+","+i*5+","+ i*10+"\n");
//myPort.write("3,0,10,255,255,255\n");
//myPort.write("4,0,10,255,255,255\n");
//myPort.write("5,0,10,255,255,255\n"); 
  println(i);
  if(i >255){
    i = 0;
  }
}
