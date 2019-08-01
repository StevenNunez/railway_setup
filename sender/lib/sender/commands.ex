defmodule Commands do
  use RailwayIpc.CommandsConsumer,
      commands_exchange: "commands",
      events_exchange: "events",
      queue: "a"

  def handle_in(%Commands.DoAThing{} = c) do
    IO.inspect c, label: "command"
    {:emit, Events.AThingWasDone.new}
  end

  def handle_in(_), do: :ok
end
