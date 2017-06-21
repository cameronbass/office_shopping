defmodule ShopTime.Repo.Migrations.RenameItemTable do
  use Ecto.Migration

  def change do
    rename table(:item), to: table(:items)
  end
end
