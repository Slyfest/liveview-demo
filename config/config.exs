# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_demo,
  ecto_repos: [LiveDemo.Repo]

# Configures the endpoint
config :live_demo, LiveDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "La00o0SrTNC0PV9qcEA2xfUCcCVRyVcew05uiMBJU+a1SlLkt8c6udu+nf71j8W1",
  render_errors: [view: LiveDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveDemo.PubSub,
  live_view: [signing_salt: "ELzwB0Nu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
