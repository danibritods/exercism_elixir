defmodule TakeANumber do
  #defp machine(state) when state == 0,do: 0
  defp machine(init \\ nil) do
    if init == 0 do
      s = 0
    else
      s = s + 1
    end
    receive do
      {:report_state, sender_pid} ->
        send(sender_pid,s)
      {:take_a_number, sender_pid} ->
        send(sender_pid, machine())
    end
    s
  end
  def start() do
    spawn(machine(0))
  end
end
