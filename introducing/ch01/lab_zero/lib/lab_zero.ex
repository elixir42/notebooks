defmodule LabZero do
  @moduledoc """
  Documentation for LabZero.
  """

  @doc """
  Hello world.

  ## Examples

      iex> LabZero.hello
      "Hello, 世界!"
      iex> LabZero.hello("Tina")
      "Hello, Tina!"

  """
  def hello(name \\ "世界") do
    "Hello, #{name}!"
  end
end
