defmodule RequestPublisher do
  use RailwayIpc.Publisher,
    exchange: "requests"

  def get_thing do
    Requests.RequestAThing.new(correlation_id: "456")
    |> publish_sync
    |> IO.inspect(label: "Response")
  end
end
