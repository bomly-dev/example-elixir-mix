defmodule ExampleElixirMix.Router do
  use Plug.Router

  # Reachable: Plug.Router is called directly; plug 1.7.0 is exercised
  plug(:match)
  plug(:dispatch)

  get "/hello" do
    send_resp(conn, 200, Jason.encode!(%{message: "hello"}))
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
