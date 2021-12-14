defmodule Maths do
  def multi(a, b) do
    a * b
  end
end

IO.puts(Maths.multi(6,5))

# Learning from Jose's Advent

defmodule Sonar do
  def run do
  "input.txt"
  |> File.read!()
  |> String.split("\n", trim: true)
  |> Enum.map(&String.to_integer/1)
  |> Enum.chunk_every(2, 1, :discard)
  |> Enum.count(fn [left, right] -> right > left end)
  end
end

IO.puts(Sonar.run())
