defmodule SylhetiBackendWeb.PageController do
  use SylhetiBackendWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
