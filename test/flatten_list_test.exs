defmodule FlattenListTest do
  use ExUnit.Case
  doctest FlattenList

  test "flatten list flatten" do
    assert FlattenList.flatten(
        [ 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
    
    assert FlattenList.flatten(
        [ [], 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
  end
end
