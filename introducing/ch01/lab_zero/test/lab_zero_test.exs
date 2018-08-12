defmodule LabZeroTest do
  use ExUnit.Case
  doctest LabZero

  test "greets the world" do
    assert LabZero.hello() == :world
  end
end
