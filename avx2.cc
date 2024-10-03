#include <immintrin.h>
#include <stdio.h>

int main() {
   __m256i steps = _mm256_set_epi32(1, -1, 2, -2, 3, -3, 4, -4);
      /* Compute the difference between the two vectors */
  __m256i result = _mm256_abs_epi32( steps);
  /* Display the elements of the result vector */
  int32_t* i = (int32_t*)&result;
  printf("%i %i %i %i %i %i %i %i\n",
    i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7]);

  return 0;
}
