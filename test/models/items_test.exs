defmodule ShopTime.ItemsTest do
  use ShopTime.ModelCase

  alias ShopTime.Item

  @valid_attrs %{name: "Apples", price: 2}
  @invalid_attrs %{name: "Apples", quantity: 4}

  test "changeset with valid attributes" do
    changeset = Item.changeset(%Item{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Item.changeset(%Item{}, @invalid_attrs)
    refute changeset.valid?
  end
end
