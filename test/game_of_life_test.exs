defmodule GameOfLifeTest do
  use ExUnit.Case

  alias GameOfLife.Game

  @blinker [
    [0,0,0,0,0],
    [0,0,1,0,0],
    [0,0,1,0,0],
    [0,0,1,0,0],
    [0,0,0,0,0],
  ]

  #test "greets the world" do
    #assert GameOfLife.tick(@blinker, 1) == expected_grid
  #end

  #test "prints grid" do
    ##expected_output = @blinker
                      ##|> Enum.reduce(fn(row) ->
                        ##row.reduce(fn(cell, acc) ->
                        ##end)
                      ##end)
    #assert Game.print(@blinker) == @blinker
  #end

  test "to grid with cell structs" do
    expected_grid = [
      [%{alive: 0, x: 0, y: 0}, %{alive: 0, x: 1, y: 0}, %{alive: 0, x: 2, y: 0}, %{alive: 0, x: 3, y: 0}, %{alive: 0, x: 4, y: 0}],
      [%{alive: 0, x: 0, y: 1}, %{alive: 0, x: 1, y: 1}, %{alive: 1, x: 2, y: 1}, %{alive: 0, x: 3, y: 1}, %{alive: 0, x: 4, y: 1}],
      [%{alive: 0, x: 0, y: 2}, %{alive: 0, x: 1, y: 2}, %{alive: 1, x: 2, y: 2}, %{alive: 0, x: 3, y: 2}, %{alive: 0, x: 4, y: 2}],
      [%{alive: 0, x: 0, y: 3}, %{alive: 0, x: 1, y: 3}, %{alive: 1, x: 2, y: 3}, %{alive: 0, x: 3, y: 3}, %{alive: 0, x: 4, y: 3}],
      [%{alive: 0, x: 0, y: 4}, %{alive: 0, x: 1, y: 4}, %{alive: 0, x: 2, y: 4}, %{alive: 0, x: 3, y: 4}, %{alive: 0, x: 4, y: 4}]
    ]

    assert Game.to_grid(@blinker) == expected_grid
  end
end
