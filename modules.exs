defmodule Mod do
  def func1 do
    alias Mod.Inner
    Inner.func3
    IO.puts "in func1"
  end

  defmodule Inner do
    def func2 do
      Mod.func1
      IO.puts "in func2"
    end

    def func3 do
      IO.puts "in func3"
    end
  end
end
