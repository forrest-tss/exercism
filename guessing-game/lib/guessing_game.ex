defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess)
  def compare(_, :no_guess), do: "Make a guess"
  def compare(n, guess) when guess == n, do: "Correct"
  def compare(n, guess) when guess == n + 1, do: "So close"
  def compare(n, guess) when guess == n - 1, do: "So close"
  def compare(n, guess) when guess > n, do: "Too high"
  def compare(n, guess) when guess < n, do: "Too low"
end
