defmodule TakeANumber do
  defp loop(state) do
    receive do
      {:report_state, sender_pid} ->
        send(sender_pid,state)
        loop(state)
      {:take_a_number, sender_pid} ->
        state = state + 1
        send(sender_pid, state)
        loop(state)
      :stop ->
        nil
      _ ->
        loop(state)
    end
  end
  defp machine(state) do
    loop(state)
  end
  def start() do
    spawn(fn -> machine(0) end)
  end
end
