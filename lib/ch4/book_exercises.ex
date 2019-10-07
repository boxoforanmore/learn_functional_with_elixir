defmodule MyList do

    def max([head | tail]) do
        IO.puts("# => #{find_max(head, tail)}")
    end

    defp find_max(top, []), do: top
    defp find_max(top, [head | tail]) do
        if top >= head do
            find_max(top, tail)
        else
            find_max(head, tail)
        end
    end

    ####################

    def min([head | tail]) do
        IO.puts("# => #{find_min(head, tail)}")
    end

    defp find_min(bot, []), do: bot
    defp find_min(bot, [head | tail]) do
        if bot <= head do
            find_min(bot, tail)
        else
            find_min(head, tail)
        end
    end

    def sum_up_to(num) do
        up_to(num, 0)
    end

    defp up_to(0, n), do: n
    defp up_to(num, n) when num > 0 do
        up_to(num - 1, n + num)
    end
        
end
