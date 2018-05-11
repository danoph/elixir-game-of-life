defmodule GameOfLife.LiveCell do
  defstruct x: nil, y: nil

  def tick(cell) do
    cell
  end
end

defmodule GameOfLife.DeadCell do
  defstruct x: nil, y: nil

  def tick(cell) do
    cell
  end
end

defmodule GameOfLife.Grid do
  defstruct cells: []

  alias GameOfLife.LiveCell
  alias GameOfLife.DeadCell

  def tick(grid) do
    grid.cells
    |> Enum.map(fn(row) ->
      row
      |> Enum.map(fn
        (%x{} = cell) when x in [DeadCell] -> DeadCell.tick(cell)
        (%x{} = cell) when x in [LiveCell] -> LiveCell.tick(cell)
      end)
    end)
  end
end

defmodule GameOfLife.Game do
  alias GameOfLife.Grid
  alias GameOfLife.LiveCell
  alias GameOfLife.DeadCell

  def tick(%Grid{} = grid) do
    Grid.tick(grid)
  end

  def to_grid(grid) do
    grid
    |> Enum.with_index
    |> Enum.map(fn({row, y}) ->
      row
      |> Enum.with_index
      |> Enum.map(fn
        ({ 0, x }) -> %DeadCell{ x: x, y: y }
        ({ 1, x }) -> %LiveCell{ x: x, y: y }
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
