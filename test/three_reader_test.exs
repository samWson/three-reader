defmodule ThreeReaderTest do
  use ExUnit.Case, async: true
  doctest ThreeReader

  test "It parses RSS XML" do
    xml = ~S"""
    <rss version="2.0">
      <channel>
        <title>Pascal News</title>
        <link>https://www.pascal-news.org</link>
        <description>The latest news for the Pascal Programming Language</description>
        <item>
          <title>50 Years of Pascal</title>
          <description>Pascal was first designed in 1970 by Swiss Computer Scientist Niklaus Wirth</description>
        </item>
      </channel>
    </rss>
    """

    expected = [
      %{
        attr: [version: "2.0"],
        name: :rss,
        value: [
          %{
            attr: [],
            name: :channel,
            value: [
              %{attr: [], name: :title, value: ["Pascal News"]},
              %{attr: [], name: :link, value: ["https://www.pascal-news.org"]},
              %{
                attr: [],
                name: :description,
                value: ["The latest news for the Pascal Programming Language"]
              },
              %{
                attr: [],
                name: :item,
                value: [
                  %{attr: [], name: :title, value: ["50 Years of Pascal"]},
                  %{
                    attr: [],
                    name: :description,
                    value: [
                      "Pascal was first designed in 1970 by Swiss Computer Scientist Niklaus Wirth"
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]

    assert ThreeReader.parse_feed(xml) == expected
  end
end
