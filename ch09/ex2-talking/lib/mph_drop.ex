defmodule MphDrop do
  def mph_drop do
    # Catches errors in linked processes.
    Process.flag(:trap_exit, true)
    # drop_pid = spawn(Drop, :drop, [])
    # If Drop process fail, MphDrop also does. Links are bidirectional.
    drop_pid = spawn_link(Drop, :drop, [])
    convert(drop_pid)
  end

  def convert(drop_pid) do
    receive do
      # Send data to Drop to calculate velocity
      {planemo, distance} ->
        send(drop_pid, {self(), planemo, distance})
        convert(drop_pid)
      # Errors
      {:EXIT, pid, reason} ->
        # If there is an error, show the message and create a new process
        # to continue.
        IO.puts("Failure: #{inspect(pid)} #{inspect(reason)}")
        new_drop_id = spawn_link(Drop, :drop, [])
        convert(new_drop_id)
      # Catch response from Drop to display the final message
      {planemo, distance, velocity} ->
        mph_velocity = 2.23693629 * velocity
        IO.puts("On #{planemo}, a fall of #{distance} meters yields a velocity of #{mph_velocity} mph.")
        convert(drop_pid)
    end
  end
end
