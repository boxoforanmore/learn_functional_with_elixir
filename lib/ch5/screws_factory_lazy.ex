defmodule ScrewsFactory do

    ### Lazy evaluation example

    def run(pieces) do
        pieces
        |> Stream.map(&add_thread/1)
        |> Stream.map(&add_head/1)
        |> Enum.each(&output/1)
    end

    defp add_thread(piece) do
        Process.sleep(50)
        piece <> "--"
    end

    defp add_head(piece) do
        Process.sleep(100)
        "0" <> piece
    end

    defp output(screw) do
        IO.inspect(screw)
    end
end
