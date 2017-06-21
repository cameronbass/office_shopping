defmodule ShopTime.Repo.Migrations.CreatePurchase do
  use Ecto.Migration

  def change do
    create table(:purchases) do
      add :item_id, references(:item, on_delete: :nothing)

      timestamps()
    end
    create index(:purchases, [:item_id])

  end
end
