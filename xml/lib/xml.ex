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

  def element(tag, attributes) when is_list(attributes) do
    if not Keyword.keyword?(attributes) do
      raise ArgumentError, message: "attributes must be keyword list"
    end

    attr_list = for {k, v} <- attributes, do: ~s[#{k}="#{v}"]
    Enum.join(["<#{tag}" | attr_list], " ") <> " />"
  end
end
