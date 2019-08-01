defmodule RequestPublisher do
  use RailwayIpc.Publisher,
      exchange: "requests"

  def get_thing do
    Requests.RequestAThing.new
    |> publish_sync
    |> IO.inspect
  end

  def emit do
    Events.AThingWasDone.new
    |> publish
  end
end
