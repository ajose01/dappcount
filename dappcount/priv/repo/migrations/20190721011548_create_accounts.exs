defmodule Dappcount.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts) do
      add :name, :string
      add :pub_key, :string
      add :last_issue_date, :naive_datetime

      timestamps()
    end

  end
end
