defmodule ShopTime.PurchaseController do
  use ShopTime.Web, :controller
  alias ShopTime.Purchase

  def index(conn, _params) do
    items = Repo.all(ShopTime.Item)
    render(conn, "index.html", items: items)
  end
end
