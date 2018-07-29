## tail recursion
## Tail-recursive sum of the first n natural numbers 
defmodule ListHelper do
  def sum(list) do
    do_sum(0, list)
  end

  defp do_sum(current_sum, []) do
    current_sum
  end

  defp do_sum(current_sum, [head | tail]) do
    head + current_sum
    |> do_sum(tail)
  end 
end
