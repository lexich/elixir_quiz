defmodule FlattenList do
    @doc """
    Write a flatten(list) function that takes a list that may contain any number of sublists, which themselves may contain sublists, to any depth. It returns the elements of these lists as a flat list.

    iex> FlattenList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
    [1,2,3,4,5,6]

    """
    def flatten([]) do 
        []
    end
    def flatten(array) when is_list(array) do
        [head | tail] = array
        flatten(head) ++ flatten(tail)
    end

    def flatten(item) when is_integer(item) do        
        [item]
    end    
end
