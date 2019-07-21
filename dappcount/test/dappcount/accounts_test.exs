defmodule Dappcount.AccountsTest do
  use Dappcount.DataCase

  alias Dappcount.Accounts

  describe "accounts" do
    alias Dappcount.Accounts.Account

    @valid_attrs %{last_issue_date: ~N[2010-04-17 14:00:00], name: "some name", pub_key: "some pub_key"}
    @update_attrs %{last_issue_date: ~N[2011-05-18 15:01:01], name: "some updated name", pub_key: "some updated pub_key"}
    @invalid_attrs %{last_issue_date: nil, name: nil, pub_key: nil}

    def account_fixture(attrs \\ %{}) do
      {:ok, account} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Accounts.create_account()

      account
    end

    test "list_accounts/0 returns all accounts" do
      account = account_fixture()
      assert Accounts.list_accounts() == [account]
    end

    test "get_account!/1 returns the account with given id" do
      account = account_fixture()
      assert Accounts.get_account!(account.id) == account
    end

    test "create_account/1 with valid data creates a account" do
      assert {:ok, %Account{} = account} = Accounts.create_account(@valid_attrs)
      assert account.last_issue_date == ~N[2010-04-17 14:00:00]
      assert account.name == "some name"
      assert account.pub_key == "some pub_key"
    end

    test "create_account/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_account(@invalid_attrs)
    end

    test "update_account/2 with valid data updates the account" do
      account = account_fixture()
      assert {:ok, %Account{} = account} = Accounts.update_account(account, @update_attrs)
      assert account.last_issue_date == ~N[2011-05-18 15:01:01]
      assert account.name == "some updated name"
      assert account.pub_key == "some updated pub_key"
    end

    test "update_account/2 with invalid data returns error changeset" do
      account = account_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_account(account, @invalid_attrs)
      assert account == Accounts.get_account!(account.id)
    end

    test "delete_account/1 deletes the account" do
      account = account_fixture()
      assert {:ok, %Account{}} = Accounts.delete_account(account)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_account!(account.id) end
    end

    test "change_account/1 returns a account changeset" do
      account = account_fixture()
      assert %Ecto.Changeset{} = Accounts.change_account(account)
    end
  end
end
