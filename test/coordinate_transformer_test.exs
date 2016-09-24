defmodule CoordinateTransformerTest do
  use ExUnit.Case
  doctest CoordinateTransformer

  test "should scale a vector in the x direction using scale" do
    assert CoordinateTransformer.scale(%{:x })
  end
end
