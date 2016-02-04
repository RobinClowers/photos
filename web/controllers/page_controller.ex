defmodule Photos.PageController do
  use Photos.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
