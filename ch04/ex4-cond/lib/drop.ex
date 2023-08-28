defmodule Drop do
  def fall_velocity(planemo, distance) do
    gravity = case planemo do
      :earth -> 8.8
      :moon -> 1.6
      :mars -> 2.71
    end

    velocity = :math.sqrt(2 * gravity * distance)

    cond do
      velocity == 0 -> :stable
      velocity < 5 -> :slow
      velocity >= 5 and velocity < 10 -> :moving
      velocity >= 10 and velocity < 20 -> :fast
      velocity >= 20 -> :speedy
    end
  end
end
