defmodule GuillotineTest do
  use ExUnit.Case
  doctest Guillotine

  test "greets the world" do
  	str1 = "ABCD" # 2
  	str2 = "1234" # 1
    assert Guillotine.exec(str1, str2) == 'AB1CD23'
  end
end
