defmodule Halloween do
    def give_candy(kids) do
        ~w(chocolate jellies mint)
            |> Stream.cycle
            |> Enum.zip(kids)
    end
end
