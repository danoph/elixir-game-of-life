defmodule GameOfLifeTest do
  use ExUnit.Case

  alias GameOfLife.Game
  alias GameOfLife.Grid

  test "game tick" do
    grid = %Grid{ cells: [
      [ %GameOfLife.DeadCell{x: 0, y: 0}, %GameOfLife.DeadCell{x: 1, y: 0}, %GameOfLife.DeadCell{x: 2, y: 0}, %GameOfLife.DeadCell{x: 3, y: 0}, %GameOfLife.DeadCell{x: 4, y: 0} ],
      [ %GameOfLife.DeadCell{x: 0, y: 1}, %GameOfLife.DeadCell{x: 1, y: 1}, %GameOfLife.LiveCell{x: 2, y: 1}, %GameOfLife.DeadCell{x: 3, y: 1}, %GameOfLife.DeadCell{x: 4, y: 1} ],
      [ %GameOfLife.DeadCell{x: 0, y: 2}, %GameOfLife.DeadCell{x: 1, y: 2}, %GameOfLife.LiveCell{x: 2, y: 2}, %GameOfLife.DeadCell{x: 3, y: 2}, %GameOfLife.DeadCell{x: 4, y: 2} ],
      [ %GameOfLife.DeadCell{x: 0, y: 3}, %GameOfLife.DeadCell{x: 1, y: 3}, %GameOfLife.LiveCell{x: 2, y: 3}, %GameOfLife.DeadCell{x: 3, y: 3}, %GameOfLife.DeadCell{x: 4, y: 3} ],
      [ %GameOfLife.DeadCell{x: 0, y: 4}, %GameOfLife.DeadCell{x: 1, y: 4}, %GameOfLife.DeadCell{x: 2, y: 4}, %GameOfLife.DeadCell{x: 3, y: 4}, %GameOfLife.DeadCell{x: 4, y: 4} ]
    ]}

    expected_grid = %Grid{ cells: [
      [ %GameOfLife.DeadCell{x: 0, y: 0}, %GameOfLife.DeadCell{x: 1, y: 0}, %GameOfLife.DeadCell{x: 2, y: 0}, %GameOfLife.DeadCell{x: 3, y: 0}, %GameOfLife.DeadCell{x: 4, y: 0} ],
      [ %GameOfLife.DeadCell{x: 0, y: 1}, %GameOfLife.DeadCell{x: 1, y: 1}, %GameOfLife.DeadCell{x: 2, y: 1}, %GameOfLife.DeadCell{x: 3, y: 1}, %GameOfLife.DeadCell{x: 4, y: 1} ],
      [ %GameOfLife.DeadCell{x: 0, y: 2}, %GameOfLife.LiveCell{x: 1, y: 2}, %GameOfLife.LiveCell{x: 2, y: 2}, %GameOfLife.LiveCell{x: 3, y: 2}, %GameOfLife.DeadCell{x: 4, y: 2} ],
      [ %GameOfLife.DeadCell{x: 0, y: 3}, %GameOfLife.DeadCell{x: 1, y: 3}, %GameOfLife.DeadCell{x: 2, y: 3}, %GameOfLife.DeadCell{x: 3, y: 3}, %GameOfLife.DeadCell{x: 4, y: 3} ],
      [ %GameOfLife.DeadCell{x: 0, y: 4}, %GameOfLife.DeadCell{x: 1, y: 4}, %GameOfLife.DeadCell{x: 2, y: 4}, %GameOfLife.DeadCell{x: 3, y: 4}, %GameOfLife.DeadCell{x: 4, y: 4} ]
    ]}

    assert Game.tick(grid) == expected_grid
  end

  describe "converting string grid to structs" do
    @blinker [
      [0,0,0,0,0],
      [0,0,1,0,0],
      [0,0,1,0,0],
      [0,0,1,0,0],
      [0,0,0,0,0],
    ]

    test "to grid with cell structs" do
      expected_grid = [
        [ %GameOfLife.DeadCell{x: 0, y: 0}, %GameOfLife.DeadCell{x: 1, y: 0}, %GameOfLife.DeadCell{x: 2, y: 0}, %GameOfLife.DeadCell{x: 3, y: 0}, %GameOfLife.DeadCell{x: 4, y: 0} ],
        [ %GameOfLife.DeadCell{x: 0, y: 1}, %GameOfLife.DeadCell{x: 1, y: 1}, %GameOfLife.LiveCell{x: 2, y: 1}, %GameOfLife.DeadCell{x: 3, y: 1}, %GameOfLife.DeadCell{x: 4, y: 1} ],
        [ %GameOfLife.DeadCell{x: 0, y: 2}, %GameOfLife.DeadCell{x: 1, y: 2}, %GameOfLife.LiveCell{x: 2, y: 2}, %GameOfLife.DeadCell{x: 3, y: 2}, %GameOfLife.DeadCell{x: 4, y: 2} ],
        [ %GameOfLife.DeadCell{x: 0, y: 3}, %GameOfLife.DeadCell{x: 1, y: 3}, %GameOfLife.LiveCell{x: 2, y: 3}, %GameOfLife.DeadCell{x: 3, y: 3}, %GameOfLife.DeadCell{x: 4, y: 3} ],
        [ %GameOfLife.DeadCell{x: 0, y: 4}, %GameOfLife.DeadCell{x: 1, y: 4}, %GameOfLife.DeadCell{x: 2, y: 4}, %GameOfLife.DeadCell{x: 3, y: 4}, %GameOfLife.DeadCell{x: 4, y: 4} ]
      ]

      assert Game.to_grid(@blinker) == expected_grid
    end
  end
end
