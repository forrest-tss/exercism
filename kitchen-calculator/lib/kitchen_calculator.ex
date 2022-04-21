defmodule KitchenCalculator do
  @conversion_chart %{
    milliliter: 1,
    cup: 240,
    fluid_ounce: 30,
    teaspoon: 5,
    tablespoon: 15
  }

  def get_volume({_unit, amount}), do: amount

  def to_milliliter({unit = :cup, amount}) do
    {:milliliter, amount * @conversion_chart[unit]}
  end

  def to_milliliter({unit = :fluid_ounce, amount}) do
    {:milliliter, amount * @conversion_chart[unit]}
  end

  def to_milliliter({unit = :teaspoon, amount}) do
    {:milliliter, amount * @conversion_chart[unit]}
  end

  def to_milliliter({unit = :tablespoon, amount}) do
    {:milliliter, amount * @conversion_chart[unit]}
  end

  def to_milliliter({unit = :milliliter, amount}) do
    {:milliliter, amount * @conversion_chart[unit]}
  end

  def from_milliliter({:milliliter, amount}, unit) do
    {unit, amount / @conversion_chart[unit]}
  end

  def convert(volume_pair, desired_unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(desired_unit)
  end
end
