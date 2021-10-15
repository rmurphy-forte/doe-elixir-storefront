defmodule Store.Item do
	use Ecto.Schema

	schema "items" do
		field :item_name, :string
		field :price, :float
	end
end