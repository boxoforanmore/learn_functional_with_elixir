defmodule NumberCompare do
    ### Using guard clauses

    def greater(number, other_number) when number >= other_number, do: number

    def greater(_, other_number), do: other_number
end
