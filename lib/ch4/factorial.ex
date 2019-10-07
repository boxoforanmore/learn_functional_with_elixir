defmodule Factorial do
    ## Now with Tail Recursion

    def of(n), do: factorial_of(n, 1)

    def factorial_of(0, acc), do: acc
    def factorial_of(n, acc) when n > 0 do
        factorial_of(n - 1, n * acc)
    end
end
