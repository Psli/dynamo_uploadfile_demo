Code.require_file "../../test_helper.exs", __FILE__

defmodule ApplicationRouterTest do
  use ExUnit.Case
  use Dynamo.HTTP.Case

  # Sometimes it may be convenient to test a specific
  # aspect of a router in isolation. For such, we just
  # need to set the @app to the router under test.
  @app ApplicationRouter

  test "returns OK" do
    conn = get("/")
    assert conn.status == 200
  end
end
