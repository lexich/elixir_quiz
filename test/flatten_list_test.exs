defmodule FlattenListTest do
  use ExUnit.Case
  doctest FlattenList

  test "flatten list compute" do
    assert FlattenList.compute(
        [ 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
    
    assert FlattenList.compute(
        [ [], 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
  end
end
