defmodule Dappcount.Repo do
  use Ecto.Repo,
    otp_app: :dappcount,
    adapter: Ecto.Adapters.Postgres
end
