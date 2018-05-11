defmodule GameOfLifeTest do
  use ExUnit.Case
  doctest GameOfLife

  #test "greets the world" do
    #grid = [
      #[0,0,0,0,0],
      #[0,0,1,0,0],
      #[0,0,1,0,0],
      #[0,0,1,0,0],
      #[0,0,0,0,0],
    #]

    #expected_grid = [
      #[0,0,0,0,0],
      #[0,0,0,0,0],
      #[0,1,1,1,0],
      #[0,0,0,0,0],
      #[0,0,0,0,0],
    #]

    #assert GameOfLife.tick(grid, 1) == expected_grid
  #end

  test "prints grid" do
    grid = [
      [0,0,0,0,0],
      [0,0,0,0,0],
      [0,1,1,1,0],
      [0,0,0,0,0],
      [0,0,0,0,0],
    ]

    expected_grid = [
      [0,0,0,0,0],
      [0,0,0,0,0],
      [0,1,1,1,0],
      [0,0,0,0,0],
      [0,0,0,0,0],
    ]

    assert GameOfLife.print(grid) == expected_grid
  end
end
