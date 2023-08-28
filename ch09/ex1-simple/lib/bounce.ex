defmodule Bounce do
  def report(content, count) do
    IO.inspect(content)
    new_content = receive do
      msg -> IO.puts("Received #{count}: #{msg}")
      {count, msg}
    end
    report([new_content | content], count + 1)
  end
end
