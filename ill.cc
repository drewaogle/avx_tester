#include <immintrin.h>
#include <stdio.h>
#include <signal.h>
#include "handle_signal.h"

int main() {
  signal(SIGILL,on_signal);
  raise(SIGILL);
  printf("No SIGILL?");

  return 0;
}
