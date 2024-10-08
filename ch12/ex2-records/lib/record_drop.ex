defmodule RecordDrop do
  require Tower
  # import to not write Tower.tower
  import Tower

  def fall_velocity(t = tower(planemo: planemo, height: distance)) do
    IO.puts("From #{tower(t, :name)}'s elevation " <>
      "of #{distance} metres on #{planemo},")
    IO.puts("the object will reach #{fall_velocity(planemo, distance)} m/s")
    IO.puts("before crashing in #{tower(t, :location)}")
  end

  def fall_velocity(:earth, distance) when distance >= 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
    :math.sqrt(2 * 3.71 * distance)
  end
end
