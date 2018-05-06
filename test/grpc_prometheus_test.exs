defmodule GRPCPrometheusTest do
  use ExUnit.Case
  doctest GRPCPrometheus

  test "greets the world" do
    assert GRPCPrometheus.hello() == :world
  end
end
