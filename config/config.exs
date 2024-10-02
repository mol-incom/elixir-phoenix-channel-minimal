import Config

config :phoenix_channel_minimal,
  generators: [timestamp_type: :utc_datetime]

# Configures the endpoint
config :phoenix_channel_minimal, PhoenixChannelMinimalWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  pubsub_server: PhoenixChannelMinimal.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
