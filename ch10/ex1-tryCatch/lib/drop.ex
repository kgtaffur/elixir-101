defmodule Drop do
  def fall_velocity(planemo, distance) do
    try do
      gravity = case planemo do
        :earth -> 9.8
        :moon -> 1.6
        :mars -> 3.71
      end
      :math.sqrt(2 * gravity * distance)
    rescue
      # Specific exceptions
      ArithmeticError -> {:error, "Distance must be non-negative."}
      CaseClauseError -> {:error, "Unknown planemo #{planemo}."}
      # Multiple exceptions
      [ArithmeticError, CaseClauseError] -> "Generic error."
      # Using variables to store the error
      err in [ErlangError, RuntimeError] -> {:error, err}
    end
  end
end
