# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_todos,
  ecto_repos: [LiveViewTodos.Repo]

# Configures the endpoint
config :live_view_todos, LiveViewTodosWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RaFv2SGqwdc6WVy47nqwzSU4r/VAXoJ9k8Hy5/5jRzK5qDgL8UR3KqnvXOxIAIYr",
  render_errors: [view: LiveViewTodosWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewTodos.PubSub,
  live_view: [signing_salt: "LJusVOAY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
