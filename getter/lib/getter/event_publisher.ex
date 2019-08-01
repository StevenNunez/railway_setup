defmodule EventPublisher do
  use RailwayIpc.Publisher,
      exchange: "events"

  def emit do
    Events.AThingWasDone.new
    |> publish
  end
end
