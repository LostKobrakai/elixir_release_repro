defmodule TestReleaseWeb.PageController do
  use TestReleaseWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
