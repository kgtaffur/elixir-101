defmodule PlanemoTest do
  use ExUnit.Case
  doctest Planemo

  test "greets the world" do
    assert Planemo.hello() == :world
  end
end
