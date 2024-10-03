# PhoenixChannelMinimal

Example project consisting of a Phoenix server that implements a simple Channel.
To test this and show its use from the client side, a small [JS application](./test-client-js) is included as well.

Run the following commands from the project root to setup and run Phoenix server:

* `mix setup`: install and setup dependencies
* `mix phx.server` (or inside IEx with `iex -S mix phx.server`): run server application

The server listens on `localhost:4000`, but only for websocket connections on `/socket`.

Run the following commands from `./test-client-js` to setup and run Phoenix server:

* `npm install`: install and setup dependencies
* `npm run dev`: run client application (port is printed in the console; configure using env var `PORT`)

The client simply joins the channel `room:lobby` and prints any messages it receives above the input field.
Text that is submitted from the input field is sent to the channel which broadcasts it back to the client.
If multiple clients are running (remember to use different ports), they receive each other's messages as well.
