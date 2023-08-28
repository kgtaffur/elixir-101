defmodule Drop do
  import :math # all functions in math
  # import :math, only: [sqrt: 1] # import only sqrt
  # import :math, except: [sin: 1, cos: 1] # import all except sin and cos
  # Numbers in only and except are the arity

  def fall_velocity(distance) do
    sqrt(2 * 9.8 * distance)
  end
end
