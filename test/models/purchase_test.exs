defmodule ShopTime.PurchaseTest do
  use ShopTime.ModelCase

  alias ShopTime.Purchase

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Purchase.changeset(%Purchase{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Purchase.changeset(%Purchase{}, @invalid_attrs)
    refute changeset.valid?
  end
end
