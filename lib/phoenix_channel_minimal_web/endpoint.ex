defmodule PhoenixChannelMinimalWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :phoenix_channel_minimal

  socket "/socket", PhoenixChannelMinimalWeb.UserSocket,
    websocket: true,
    longpoll: false

  # Works without this but then errors are logged for ordinary HTTP requests.
  plug PhoenixChannelMinimalWeb.Router
end
