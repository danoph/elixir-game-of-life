defmodule GameOfLife do
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
