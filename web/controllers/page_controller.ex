defmodule ShopTime.PageController do
  use ShopTime.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
