defmodule ElixirDistributedBankTest do
  use ExUnit.Case
  doctest ElixirDistributedBank

  test "greets the world" do
    assert ElixirDistributedBank.hello() == :world
  end
end
