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

  test "invalid attributes: not list" do
    msg = "no function clause matching in Xml.element/2"

    assert_raise FunctionClauseError, msg, fn ->
      Xml.element("a", 1)
    end
  end

  test "invalid attributes: not keyword list" do
    msg = "attributes must be keyword list"

    assert_raise ArgumentError, msg, fn ->
      Xml.element("a", [1])
    end
  end
end
