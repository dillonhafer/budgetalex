# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :budgetalex,
  ecto_repos: [Budgetalex.Repo]

# Configures the endpoint
config :budgetalex, BudgetalexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V8G9PblIn/vKbWr3AchnL4qQpXGegC26mrH0OZ+B2q5ZaXoBOZsfn3Dh2NZ+mKxD",
  render_errors: [view: BudgetalexWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Budgetalex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
