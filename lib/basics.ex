defmodule Basics do
  @moduledoc """
  Documentation for Basics.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Basics.hello()
      :world

  """
  def hello do
    hello(:world)
  end

  def hello(name) when is_atom(name) do
    IO.puts("Hello atomic #{name}!")
  end

  def hello(name) do
    IO.puts("Hello #{name}!")
  end

  def fizzbazz(number) do
    mod3 = rem(number, 3)
    mod5 = rem(number, 5)
    if not fizzbazz(mod3, mod5) do
      IO.puts(number)
    end
  end

  def fizzbazz(0, 0) do
    IO.puts("FizzBuzz")
    true
  end

  def fizzbazz(0, _) do
    IO.puts("Fizz")
    true
  end

  def fizzbazz(_, 0) do
    IO.puts("Buzz")
    true
  end

  def fizzbazz(_, _), do: false
end
