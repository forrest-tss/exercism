defmodule BirdCount do
  def today([]), do: nil
  def today([count | _]), do: count

  def increment_day_count([]), do: [1]
  def increment_day_count([count | t]), do: [count + 1 | t]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _]), do: true

  def has_day_without_birds?([_ | t]) do
    has_day_without_birds?(t)
  end

  def total(list), do: _total(list)

  defp _total(list, sum \\ 0)
  defp _total([], sum), do: sum
  defp _total([n | t], sum), do: _total(t, sum + n)

  def busy_days(list), do: _busy_days(list)

  defp _busy_days(list, tally \\ 0)
  defp _busy_days([], tally), do: tally

  defp _busy_days([count | t], tally)
       when count >= 5 do
    _busy_days(t, tally + 1)
  end

  defp _busy_days([_ | t], tally), do: _busy_days(t, tally)
end
