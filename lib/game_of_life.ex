defmodule GameOfLife.Game do
  alias GameOfLife.Cell

  def tick(grid, 1) do
    #grid
    #|> Enum.with_index
    #|> Enum.each(fn({row, y}) ->
      #row
      #|> Enum.with_index
      #|> Enum.each(fn({value, x }) ->
        #IO.puts("#{y} => #{row}")
      #end)
    #end)
  end

  def to_grid(grid) do
    grid
    |> Enum.with_index
    |> Enum.map(fn({row, y}) ->
      row
      |> Enum.with_index
      |> Enum.map(fn
        ({value, x }) -> %{ x: x, y: y, alive: value }
        #({1, x }) -> cell = %{ x: x, y: y, alive: true }
        #%Cell{} = { x, y, alive: false }
        #IO.puts("#{cell.x},#{cell.y} => #{cell.alive}")
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

defmodule GameOfLife.Cell do
  defstruct x: nil, y: nil, alive: false
end
