defmodule DockerTest2Web.PageController do
  use DockerTest2Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
