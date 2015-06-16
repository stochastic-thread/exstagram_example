defmodule ExampleExstagram.Router do
  use ExampleExstagram.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ExampleExstagram do
    pipe_through :browser # Use the default browser stack
    get "/auth/callback", PageController, :auth_callback

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ExampleExstagram do
  #   pipe_through :api
  # end
end
