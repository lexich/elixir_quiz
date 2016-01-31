defmodule EnumFunctions do
    @doc """
    Implement the following Enum functions using no library functions or list comprehensions: all?, each, filter, split, and take. You may need to use an if statement to implement filter. The syntax for this is
    if condition do
      expression(s)
    else
      expression(s)
    end
    """
    def all?([head | tail], func) do
      if func.(head), do: all?(tail, func), else: false
    end
    def all?([], _), do: true

    def each([head | tail], func), do: [func.(head) | each(tail, func)]
    def each([], _), do: []

    def filter([head | tail], func) do
      if func.(head) do
        [head | filter(tail, func)]
      else
        filter(tail, func)
      end
    end
    def filter([], _), do: []

    def reverse(list), do: _reverse(list, [])
    defp _reverse([head | tail], result), do: _reverse(tail, [head | result])
    defp _reverse([], result), do: result

    def split(list, num) when num < 0 do
      [first, last] = split reverse(list), (-1 * num)
      [reverse(last), reverse(first)]
    end
    def split(list, num), do: _split(list, num, [])
    defp _split([], _, result), do: [reverse(result), []]
    defp _split(list, 0, result), do: [reverse(result), list]
    defp _split([head | tail], num, result), do: _split tail, num - 1, [head | result]

    def take([], _), do: []
    def take(_, 0), do: []
    def take([head | tail], num) when num > 0, do: [head | take(tail, num - 1)]
    def take(list, num), do: reverse(take reverse(list), (-1 * num))
end
