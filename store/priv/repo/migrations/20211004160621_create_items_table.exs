defmodule Store.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :item_name, :string
      add :price, :float, default: 0.0
    end
  end
end
