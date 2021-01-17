defmodule SylhetiBackend.Repo do
  use Ecto.Repo,
    otp_app: :sylheti_backend,
    adapter: Ecto.Adapters.Postgres
end
