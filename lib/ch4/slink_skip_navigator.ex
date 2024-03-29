defmodule Navigator do
    @max_depth 2

    ## This skips symbolic links to avoid infinite loops

    def navigate(dir) do
        expanded_dir = Path.expand(dir)
        go_through([expanded_dir], 0)
    end

    defp go_through([], _current_depth), do: nil
    defp go_through(_dirs, current_depth) when current_depth > @max_depth, do: nil
    defp go_through([content | rest], current_depth) do
        print_and_navigate(content, dir?(content), current_depth)
        go_through(rest, current_depth)
    end

    def dir?(dir) do
        {:ok, %{type: type}} = File.lstat(dir)
        type == :directory
    end

    defp print_and_navigate(_dir, false, _current_depth), do: nil
    defp print_and_navigate(dir, true, current_depth) do
        IO.puts(dir)
        children_dirs = File.ls!(dir)
        go_through(expand_dirs(children_dirs, dir), current_depth + 1)
    end

    defp expand_dirs([], _relative_to), do: []
    defp expand_dirs([dir | dirs], relative_to) do
        expanded_dir = Path.expand(dir, relative_to)
        [expanded_dir | expand_dirs(dirs, relative_to)]
    end
end
