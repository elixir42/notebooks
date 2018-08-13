defmodule LabZeroTest do
  use ExUnit.Case
  doctest LabZero

  test "greets the world" do
    assert LabZero.hello() == "Hello, 世界!"
  end

  test "greets Tina" do
    assert LabZero.hello("Tina") == "Hello, Tina!"
  end
end
