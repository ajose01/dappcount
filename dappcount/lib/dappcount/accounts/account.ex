defmodule Dappcount.Accounts.Account do
  use Ecto.Schema
  import Ecto.Changeset

  schema "accounts" do
    field :last_issue_date, :naive_datetime
    field :name, :string
    field :pub_key, :string

    timestamps()
  end

  @doc false
  def changeset(account, attrs) do
    account
    |> cast(attrs, [:name, :pub_key, :last_issue_date])
    |> validate_required([:name, :pub_key, :last_issue_date])
  end
end
