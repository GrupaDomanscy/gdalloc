#ifndef GD_ALLOC_H_
#define GD_ALLOC_H_

#include <stdlib.h>

void *safe_malloc(size_t const size);
void *safe_realloc(void *p, size_t const size);
void *safe_calloc(int n, int size);

#endif // GD_ALLOC_H_