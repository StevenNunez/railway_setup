defmodule GetterTest do
  use ExUnit.Case
  doctest Getter

  test "greets the world" do
    assert Getter.hello() == :world
  end
end
