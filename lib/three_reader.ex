defmodule ThreeReader do
    use HTTPoison.Base

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
      {:ok, response} = get_feed()
      body = get_response_body(response)
    hello()
  end

  def get_feed() do
	HTTPoison.get!("https://www.ruby-lang.org/en/feeds/news.rss")
  end

  def get_response_body(response) do

  end
end
