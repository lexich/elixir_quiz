defmodule EnumFunctionsTest do
    use ExUnit.Case
    doctest EnumFunctions

    defp list, do:  Enum.to_list 1..5

    test "context" do         
        assert list == [1, 2, 3, 4, 5]
    end

    test "all?" do 
        assert EnumFunctions.all? list, &(&1 < 6)
        refute EnumFunctions.all? list, &(&1 < 3)
    end
    
    test "each" do 
        assert EnumFunctions.each(list, &(&1 + 2)) === [3, 4, 5, 6, 7]
    end

    test "filter" do
        assert EnumFunctions.filter(list, &(&1 > 3)) == [4, 5]
    end

    test "reverse" do
        assert EnumFunctions.reverse(list) == [5, 4, 3, 2, 1]
    end

    test "split" do 
        assert EnumFunctions.split(list, 3) === [[1, 2, 3], [4, 5]]
        assert EnumFunctions.split(list, 10) === [[1, 2, 3, 4, 5], []]
        assert EnumFunctions.split(list, -3) === [[1, 2], [3, 4, 5]]
    end

    test "take" do
        assert EnumFunctions.take(list, 3) == [1, 2, 3]
        assert EnumFunctions.take(list, 0) == []
        assert EnumFunctions.take(list, -2) == [4, 5]
    end
end