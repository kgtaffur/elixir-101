defmodule Ask do
  def line do
    planemo = get_planemo()
    distance = get_distance()
    Drop.fall_velocity({planemo, distance})
  end

  defp get_planemo do
    IO.puts("""
    Which planemo are you on?
      1. Earth
      2. Earth's Moon
      3. Mars
    """)

    answer = IO.gets("Which? > ")
    value = List.to_string(answer) |> String.first
    char_to_planemo(value)
  end

  defp char_to_planemo(char) do
    case char do
      "1" -> :earth
      "2" -> :moon
      "3" -> :mars
    end
  end

  defp get_distance do
    input = IO.gets("How far? (meters) > ")
    value = List.to_string(input) |> String.trim
    String.to_integer(value)
  end
end
