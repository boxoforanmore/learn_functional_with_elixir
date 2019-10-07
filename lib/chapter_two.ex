defmodule ChapterTwo do
    def sarah(bread, milk, cake) do
        bread * 0.10 + milk * 2.0 + cake * 15.0
    end

    ##############################################################

    def bob(distance, time) do
        new_time = hours_to_seconds(time)
        new_dist = km_to_m(distance)
        IO.inspect(distance, label: "Distance travelled in km")
        IO.inspect(time, label: "Time of journey in hours")
        IO.inspect(distance/time, label: "Velocity in km/hr")

        IO.inspect(new_dist, label: "Distance travelled in m")
        IO.inspect(new_time, label: "Time of journey in seconds")
        IO.inspect(new_dist/new_time, label: "Velocity in km/hr")
        IO.puts("")
    end

    defp hours_to_seconds(time) do
        time *  3600
    end

    defp km_to_m(distance) do
        distance * 1000
    end

    ##############################################################

    def taxes(prices) do
        apply_tax = fn(x) -> 
    end
end