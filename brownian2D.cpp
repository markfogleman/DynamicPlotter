#include <iostream>
#include "brownian2D.hpp"
 
void brownian2D(size_t Steps)
{
  
  for (size_t idx(0); idx < Steps; ++idx)
  {
    std::cout << idx << std::endl;
  }

}

