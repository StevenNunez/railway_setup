defmodule CommandsPublisher do
  use RailwayIpc.Publisher,
    exchange: "commands"

  def command_it do
    Commands.DoAThing.new(correlation_id: "789", context: %{"data" => "here"})
    |> publish
  end
end
