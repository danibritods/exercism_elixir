defmodule TakeANumber do
  defp machine(s \\ 0) do
    state = s
    receive do
      {:report_state, sender_pid} ->
        send(sender_pid,state)
      {:take_a_number, sender_pid} ->
        send(sender_pid, state + 1)
        machine(s + 1)
      {:stop, _sender_pid} ->
        nil
    end

  end
  def start() do
    spawn(machine())
  end
end
