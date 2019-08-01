defmodule Events do
  use RailwayIpc.EventsConsumer,
      exchange: "events",
      queue: "b"

  def handle_in(%Events.AThingWasDone{}=e) do
    IO.inspect e, label: "Event"
    :ok
  end
  def handle_in(_), do: :ok
end

