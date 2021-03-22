defmodule ThreeReader do
  @moduledoc """
  Documentation for `ThreeReader`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ThreeReader.hello()
      :world

  """
  def hello do
    IO.puts("Hello world!")
    :world
  end

  def main(args) do
    hello()
  end
end
