
#include <iostream>
#include <string>

#include "include/util.hpp"

int main(int argc, char *argv[]) {
  std::string src = Utilities::readFile("tests/main.prlabl");
  std::cout << src << std::endl;

  return 0;
}
