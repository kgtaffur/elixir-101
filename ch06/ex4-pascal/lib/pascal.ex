defmodule Pascal do
  def triangule(rows) do
    triangule([[1]], 1, rows)
  end

  defp triangule(list, count, rows) when count < rows do
    [previous_row | _] = list
    triangule([add_row(previous_row) | list], count + 1, rows)
  end

  defp triangule(list, _count, _rows) do
    Enum.reverse(list)
  end

  defp add_row(initial_row) do
    add_row(initial_row, 0, [])
  end

  defp add_row([head | tail], last_value, row) do
    add_row(tail, head, [last_value + head | row])
  end

  defp add_row([], 1, final) do
    [1 | final]
  end
end
