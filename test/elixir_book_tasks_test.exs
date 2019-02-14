defmodule ElixirBookTasksTest do
  use ExUnit.Case
  doctest ElixirBookTasks

  test "greets the world" do
    assert ElixirBookTasks.hello() == :world
  end
end
