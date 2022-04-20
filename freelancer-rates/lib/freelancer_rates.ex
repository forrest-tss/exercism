defmodule FreelancerRates do
  @hours_in_a_work_day 8.0
  @work_days_in_a_month 22

  def daily_rate(hourly_rate) do
    hourly_rate * @hours_in_a_work_day
  end

  def apply_discount(before_discount, discount) do
    discount = before_discount * (discount / 100)

    before_discount - discount
  end

  def monthly_rate(hourly_rate, discount) do
    (daily_rate(hourly_rate) * @work_days_in_a_month)
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    cost_per_day =
      daily_rate(hourly_rate)
      |> apply_discount(discount)

    Float.floor(budget / cost_per_day, 1)
  end
end
