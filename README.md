# GDALLOC

Couple lines of code used internally by Grupa Domańscy company to "safely" allocate memory in C programs. It's slightly extended [ruanchao's gist](https://gist.github.com/ruanchao/3151189).

## How it works

If you try to allocate memory with these functions, program will check if memory is available. If it's not, it terminates running process. Else, it returns a valid pointer.