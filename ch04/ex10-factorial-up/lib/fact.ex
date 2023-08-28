defmodule Fact do
  def factorial(max) do
    factorial(1, max, 1)
  end

  defp factorial(current, max, result) when current <= max do
    new_result = result * current
    IO.puts("#{current} yields #{new_result}.")
    factorial(current + 1, max, new_result)
  end

  defp factorial(_current, _max, result) do
    IO.puts("finished!")
    result
  end
end
