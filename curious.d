module curious;

import std.stdio;

void main() {
    foo(3);
    foo(9);
}

void foo(int x) {
    if (x == 3) {
        writeln("Fizz");
    }
    writeln("Buzz");
}