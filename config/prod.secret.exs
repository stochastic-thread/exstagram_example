use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :heroku_test_app, ExampleExstagram.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# config :heroku_test_app, HerokuTestApp.Repo,
#   adapter: Ecto.Adapters.Postgres,
#   url: System.get_env("DATABASE_URL"),
#   size: 20 # The amount of database connections in the pool