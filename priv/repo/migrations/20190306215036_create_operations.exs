defmodule ElixirDistributedBank.Repo.Migrations.CreateOperations do
  use Ecto.Migration

  def change do
    create table(:operations) do
      add :date, :string
      add :from, :string
      add :to, :string
      add :amount, :integer
    end
  end
end
