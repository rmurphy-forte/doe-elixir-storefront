defmodule StoreWeb.StoreController do
  use StoreWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", items: Store.getItems())
  end

  def new(conn, _params) do
    Store.newItems(conn.query_params);
    send_resp(conn, 200, "OK");
  end
end
