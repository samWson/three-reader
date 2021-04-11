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
end
