defmodule FlattenList do
    @doc """
    Write a flatten(list) function that takes a list that may contain any number of sublists, which themselves may contain sublists, to any depth. It returns the elements of these lists as a flat list.

    iex> FlattenList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
    [1,2,3,4,5,6]
    """
    def flatten([]), do: []
    def flatten(item) when is_integer(item), do: [item]
    def flatten(list) when is_list(list) do
      [head | tail] = list
      flatten(head) ++ flatten(tail)
    end

    # https://forums.pragprog.com/forums/322/topics/Exercise:%20ListsAndRecursion-6
    def flatten2([head | tail]), do: flatten2(head) ++ flatten2(tail)
    def flatten2([]), do: []
    def flatten2(head), do: [head]


    def flatten3(list), do: _flatten3(list, [])
    defp _flatten3([], result), do: Enum.reverse(result)
    defp _flatten3([[] | tail], result), do: _flatten3(tail, result)
    defp _flatten3([ [ h | [] ] | tail], result), do: _flatten3([ h | tail], result)
    defp _flatten3([ [ h | t ] | tail], result), do: _flatten3([ h, t | tail], result)
    defp _flatten3([ head | tail ], result), do: _flatten3(tail, [ head | result ])
end
