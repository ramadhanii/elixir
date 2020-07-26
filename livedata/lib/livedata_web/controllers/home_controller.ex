defmodule LivedataWeb.HomeController do
  use LivedataWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"name" => name, "locale" => locale} = params) do
    render(conn, "show.html", name: name, locale: locale, params: params)
  end
end
