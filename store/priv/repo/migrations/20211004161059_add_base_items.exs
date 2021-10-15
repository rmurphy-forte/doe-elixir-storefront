defmodule Store.Repo.Migrations.AddBaseItems do
  use Ecto.Migration

  def change do
    item1 = %Store.Item{item_name: "Wizard Staff", price: 3000.00}
    item2 = %Store.Item{item_name: "Barbarian Maul", price: 5000.00}

    Store.Repo.insert(item1)
    Store.Repo.insert(item2)
  end
end
