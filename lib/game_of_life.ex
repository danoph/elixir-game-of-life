defmodule GameOfLife.LiveCell do
  defstruct x: nil, y: nil
end

defmodule GameOfLife.DeadCell do
  defstruct x: nil, y: nil
end

defmodule GameOfLife.Game do
  alias GameOfLife.DeadCell
  alias GameOfLife.LiveCell

  def tick(grid, 1) do
  end

  def to_grid(grid) do
    grid
    |> Enum.with_index
    |> Enum.map(fn({row, y}) ->
      row
      |> Enum.with_index
      |> Enum.map(fn
        ({0, x }) -> %DeadCell{ x: x, y: y }
        ({1, x }) -> %LiveCell{ x: x, y: y }
      end)
    end)
  end

  def print(grid) do
    grid
    |> Enum.with_index
    |> Enum.each(fn({row, y}) ->
      row
      |> Enum.with_index
      |> Enum.each(fn({value, x }) ->
        IO.puts("#{x},#{y} => #{value}")
      end)
    end)
  end
end
