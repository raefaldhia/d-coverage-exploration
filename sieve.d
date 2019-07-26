/* Eratosthenes Sieve prime number calculation. */

import std.stdio;

bool[8191] flags;

int main()
{
    int i, prime, k, count, iter;

    writeln("10 iterations");
    for (iter = 1; iter <= 10; iter++)
    {
        count = 0;
        flags[] = true;
        for (i = 0; i < flags.length; i++)
        {
            if (flags[i])
            {
                prime = i + i + 3;
                k = i + prime;
                while (k < flags.length)
                {
                    flags[k] = false;
                    k += prime;
                }
                count += 1;
            }
        }
    }
    writefln("%d primes", count);
    return 0;
}