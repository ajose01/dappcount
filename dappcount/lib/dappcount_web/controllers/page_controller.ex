defmodule DappcountWeb.PageController do
  use DappcountWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
