
#include <iostream>
#include <string>
#include <fstream>

#include "include/util.hpp"

std::string Utilities::readFile(std::string filepath) {
  std::string src, line;
  std::ifstream file(filepath);

  if (!file.is_open()) {
    std::cout << "That file doesn't exist you stupid idiot." << std::endl;
    exit(1);
  }

  while (std::getline(file, line)) {
    src += line + '\n';
  }

  return src;
}
