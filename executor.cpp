// This is the main program.
// It manages the bouncing between the various plots to be generated.

// Fow now we just print data out to stdout
 
#include <iostream>

#include "brownian2D.hpp"

// TODO: Need to add input args to set any parameters
int main() 
{

  

  // Main loop
  std::string loop_check("_GO_");
  do {
    
    // TODO: Add a timer to restart/refresh every x minutes (parameter?)
    // For now, each module is responsible for printing its own output
    brownian2D(50);    
    std::cin >> loop_check;

  } while (loop_check == "_GO_");

  return 0;
}



