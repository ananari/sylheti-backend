# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sylheti_backend,
  ecto_repos: [SylhetiBackend.Repo]

# Configures the endpoint
config :sylheti_backend, SylhetiBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PY3tIvw/BQX3scbjZRM9PFWfKJKE6DdAXwbOr6LwrKJf25ZVTl1wS/lutMRlLr21",
  render_errors: [view: SylhetiBackendWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SylhetiBackend.PubSub,
  live_view: [signing_salt: "eHdEyQ3E"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
