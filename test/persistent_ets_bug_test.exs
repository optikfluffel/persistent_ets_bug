defmodule PersistentEtsBugTest do
  use ExUnit.Case
  doctest PersistentEtsBug

  test "greets the world" do
    assert PersistentEtsBug.hello() == :world
  end
end
