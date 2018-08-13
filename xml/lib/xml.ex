defmodule Xml do
  @moduledoc """
  Documentation for Xml.
  """

  @doc """
  XML element builder

  ## Examples

      iex> Xml.element "p"
      "<p />"

  """
  def element(tag) do
    "<#{tag} />"
  end

  def element(tag, attributes) do
    attr_list = for {k, v} <- attributes, do: "#{k}=\"#{v}\""
    attr_code = Enum.join(attr_list, " ")
    Enum.join(["<#{tag}", attr_code, "/>"], " ")
  end
end
