defmodule Store do
  @moduledoc """
  Store keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def getItems() do
    Store.Item |> Store.Repo.all()
  end

  def newItems(details) do
    Store.Repo.insert(%Store.Item{item_name: details.item_name, price: details.item_price});
  end

  def deleteItems(_params) do

  end
end
