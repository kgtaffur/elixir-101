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

    IO.gets("Which? > ")
    |> List.to_string
    |> String.first
    |> char_to_planemo
  end

  defp char_to_planemo("1"), do: :earth
  defp char_to_planemo("2"), do: :moon
  defp char_to_planemo("3"), do: :mars

  defp get_distance do
    IO.gets("How far? (meters) > ")
    |> List.to_string
    |> String.trim
    |> String.to_integer
  end
end
