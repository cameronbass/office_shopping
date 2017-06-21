defmodule ShopTime.Item do
  use ShopTime.Web, :model

  schema "items" do
    field :name, :string
    field :price, :integer
    field :quantity, :integer

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :price, :quantity])
    |> validate_required([:name, :price])
  end
end
