defmodule XmlTest do
  use ExUnit.Case
  doctest Xml

  test "empty element" do
    assert Xml.element("br") == "<br />"
  end

  test "empty element with attributes" do
    want = ~s[<img id="fig-a" src="a.gif" />]
    assert Xml.element("img", id: "fig-a", src: "a.gif") == want
  end
end
