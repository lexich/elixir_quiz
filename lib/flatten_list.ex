defmodule FlattenList do
    def compute([]) do 
        []
    end
    def compute(array) when is_list(array) do
        [head | tail] = array
        compute(head) ++ compute(tail)
    end

    def compute(item) when is_integer(item) do        
        [item]
    end    
end
