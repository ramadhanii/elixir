# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :livedata,
  ecto_repos: [Livedata.Repo]

# Configures the endpoint
config :livedata, LivedataWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XKxq2iyg+01nYJoFudrR3TmFUxDwHa7gJCSmSG60d7+CFP/PZQiFqY1I6GiGrZ5n",
  render_errors: [view: LivedataWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Livedata.PubSub,
  live_view: [signing_salt: "rYZbvnp2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
