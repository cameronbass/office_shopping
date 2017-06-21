defmodule ShopTime.Purchase do
  use ShopTime.Web, :model

  schema "purchases" do
    has_many :items, ShopTime.Item

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
