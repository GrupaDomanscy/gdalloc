#include <stdlib.h>
#include <stdio.h>

void *safe_malloc(size_t const size)
{
    void *p = malloc(size);

    if (p == NULL)
    {
        fprintf(stderr, "Out of memory\n");
        exit(1);
    }

    return p;
}

void *safe_realloc(void *p, size_t const size)
{
    p = realloc(p, size);

    if (p == NULL)
    {
        fprintf(stderr, "Out of memory\n");
        exit(1);
    }

    return p;
}

void *safe_calloc(int n, int size)
{
    void *p = calloc(n, size);

    if (p == NULL)
    {
        fprintf(stderr, "Out of memory\n");
        exit(1);
    }

    return p;
}
