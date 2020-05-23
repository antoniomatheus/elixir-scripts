defmodule Chop do
  def guess(actual, range) do
    IO.puts iteration(actual, range, div(Enum.count(range), 2)) 
  end

  def iteration(actual, _, guess) when guess == actual do
    IO.puts "Is it #{guess}"
    guess
  end

  def iteration(actual, range, guess) when guess < actual do
    IO.puts "Is it #{guess}"
    new_range = guess..range.last
    new_guess = new_range.first + div(Enum.count(new_range), 2)
    iteration(actual, new_range, new_guess) 
  end

  def iteration(actual, range, guess) when guess > actual do
    IO.puts "Is it #{guess}"
    new_range = range.first..guess
    new_guess = new_range.first + div(Enum.count(new_range), 2)
    iteration(actual, new_range, new_guess) 
  end
end
