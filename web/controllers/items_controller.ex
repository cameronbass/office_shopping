defmodule ShopTime.ItemsController do
  use ShopTime.Web, :controller
  alias ShopTime.Item
  require IEx

  def index(conn, _params) do
    conn
    |> assign(:items, Repo.all(Item))
    |> render("index.html")
  end

  def show(conn, %{"id" => item_id}) do
    item = Repo.get!(Item, item_id)
    render conn, "show.html", item: item
  end

  def new(conn, _params) do
    changeset = Item.changeset(%Item{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"item" => item}) do
    changeset = Item.changeset(%Item{}, item)

    case Repo.insert(changeset) do
      {:ok, post} ->
        conn
        |> put_flash(:info, "Item Created")
        |> redirect(to: items_path(conn, :index))
      {:error, changeset} ->
        render conn, "new.html", changeset: changeset
    end
  end

  def edit(conn, %{"id" => item_id}) do
    item = Repo.get(Item, item_id)
    changeset = Item.changeset(item)

    render conn, "edit.html", changeset: changeset, item: item
  end

  def update(conn, %{"id" => item_id, "item" => item}) do
    old_item = Repo.get(Item, item_id)
    changeset = Item.changeset(old_item, item)

    case Repo.update(changeset) do
      {:ok, post} ->
        conn
        |> put_flash(:info, "Item Updated")
        |> redirect(to: items_path(conn, :index))
      {:error, changeset} ->
        render conn, "edit.html", changeset: changeset, item: old_item
    end
  end

  def delete(conn, %{"id" => item_id}) do
    Repo.get!(Item, item_id) |> Repo.delete!

    conn
    |> put_flash(:info, "Item Deleted")
    |> redirect(to: items_path(conn, :index))
  end
end
