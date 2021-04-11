defmodule ThreeReader do
  use HTTPoison.Base

  @moduledoc """
  Documentation for `ThreeReader`.
  """

  def main(args) do
    {:ok, response} = get_feed()
    body = get_response_body(response)
  end

  def get_feed() do
    HTTPoison.get!("https://www.ruby-lang.org/en/feeds/news.rss")
  end

  def get_response_body(response) do
  end

  @doc ~S"""
  # parse_feed

  Parses a string of XML into something useful.

  ## Examples

    iex> xml = "<rss version=\"2.0\">
    ...></rss>"
    "<rss version=\"2.0\">\n</rss>"
    iex> ThreeReader.parse_feed(xml)
    [%{attr: [version: "2.0"], name: :rss, value: []}]
  """
  def parse_feed(xml) do
    Quinn.parse(xml)
  end
end
