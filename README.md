# ElixirQuiz

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add elixir_quiz to your list of dependencies in `mix.exs`:

        def deps do
          [{:elixir_quiz, "~> 0.0.1"}]
        end

  2. Ensure elixir_quiz is started before your application:

        def application do
          [applications: [:elixir_quiz]]
        end

1. (enum_funtions.ex) Implement the following Enum functions using no library functions or list comprehensions: all?, each, filter, split, and take. You may need to use an if statement to implement filter. The syntax for this is
    if condition do
      expression(s)
    else         
      expression(s)
    end

2. (flatten_list.ex) Write a flatten(list) function that takes a list that may contain any number of sublists, which themselves may contain sublists, to any depth. It returns the elements of these lists as a flat list.
