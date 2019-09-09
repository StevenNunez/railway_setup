defmodule EventPublisher do
  use RailwayIpc.Publisher,
    exchange: "events"

  def emit(_args) do
    Events.AThingWasDone.new(correlation_id: "123")
    |> publish
  end
end
