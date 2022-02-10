#Experimeting with the ideas in https://exercism.org/tracks/elixir/exercises/freelancer-rates/solutions/mig4ng
defmodule FreelancerRates do
  @billable_days 22
  @daily_hours 8.0 

  def daily_rate(hourly_rate) do
    hourly_rate * @daily_hours
  end

  def apply_discount(before_discount, discount) do
    before_discount * (1 - discount/100) 
  end

  def monthly_rate(hourly_rate, discount) do
   # 22 * daily_rate(hourly_rate) |> apply_discount(discount) |> ceil()
    hourly_rate 
    |> daily_rate
    |> apply_discount(discount)
    |> Kernel.*(@billable_days)   
    |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    budget / (daily_rate(hourly_rate) |> apply_discount(discount)) |> Float.floor(1) 
  end
end
