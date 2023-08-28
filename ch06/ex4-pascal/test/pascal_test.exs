defmodule PascalTest do
  use ExUnit.Case
  doctest Pascal

  test "greets the world" do
    assert Pascal.hello() == :world
  end
end
