defmodule Tower do
  defstruct location: "", height: 20, planemo: :earth, name: ""
end

defimpl Valid, for: Tower do
  def valid?(%Tower{height: h, planemo: p}) do
    h >= 0 and p != nil
  end
end

defimpl Inspect, for: Tower do
  import Inspect.Algebra
  def inspect(item, _options) do
    metres = concat(to_string(item.height), "m:")
    concat([metres, Inspect.Algebra.break, item.name, ",", Inspect.Algebra.break, item.location, ",", Inspect.Algebra.break, to_string(item.planemo)])
  end
end
