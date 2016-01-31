defmodule FlattenListTest do
  use ExUnit.Case
  doctest FlattenList

  test "flatten list" do
    assert FlattenList.flatten(
        [ 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]

    assert FlattenList.flatten(
        [ [], 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
  end

  test "flatten2 list" do
    assert FlattenList.flatten2(
        [ 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
    
    assert FlattenList.flatten2(
        [ [], 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
  end

  test "flatten3 list" do
    assert FlattenList.flatten3(
        [ 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
    
    assert FlattenList.flatten3(
        [ [], 1, [ 2, 3, [4] ], 5, [[[6]]]]
    ) == [1, 2, 3, 4, 5, 6]
  end
end
