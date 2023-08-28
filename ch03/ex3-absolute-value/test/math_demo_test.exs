defmodule MathDemoTest do
  use ExUnit.Case
  doctest MathDemo

  test "greets the world" do
    assert MathDemo.hello() == :world
  end
end
