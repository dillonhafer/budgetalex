defmodule BudgetalexWeb.PageController do
  use BudgetalexWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
