defmodule CombinedTest do
  use ExUnit.Case
  doctest Combined

  test "greets the world" do
    assert Combined.hello() == :world
  end
end
