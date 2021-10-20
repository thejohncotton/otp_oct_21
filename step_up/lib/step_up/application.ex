defmodule StepUp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_, _) do
    children = [
      # Starts a worker by calling: StepUp.Worker.start_link(arg)
      {StepUp.Server, "42"}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: StepUp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
