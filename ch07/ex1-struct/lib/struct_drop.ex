defmodule StructDrop do
  # def fall_velocity(t = %Tower{}) do
  #   fall_velocity(t.planemo, t.height)
  # end

  # # Struct components
  # def fall_velocity(%Tower{planemo: planemo, height: distance}) do
  #   fall_velocity(planemo, distance)
  # end

  # Matches the whole struct and the components
  def fall_velocity(t = %Tower{planemo: planemo, height: distance}) do
    IO.puts("From #{t.name}'s elevation of #{distance} meters on #{planemo},")
    IO.puts("the object will reach #{fall_velocity(planemo, distance)} m/s")
    IO.puts("before crashing in #{t.location}")
  end

  defp fall_velocity(:earth, distance) when distance >= 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) when distance >= 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) when distance >= 0 do
    :math.sqrt(2 * 3.71 * distance)
  end
end
