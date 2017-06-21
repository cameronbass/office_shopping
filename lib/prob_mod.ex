defmodule ProbMod do
  def list_and_stuff(n) do
    Enum.map(1..n, fn(num) -> 2 * num end)
  end
end

IO.puts ProbMod.list_and_stuff(6)
