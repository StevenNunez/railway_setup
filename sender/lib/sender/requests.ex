defmodule Requests do
  use RailwayIpc.RequestsConsumer,
      exchange: "requests",
      queue: "c"

  def handle_in(%Requests.RequestAThing{} = r) do
    IO.inspect r, label: "Request"
    {:reply, Responses.RequestedThing.new}
  end
  def handle_in(_), do: :ok
end
