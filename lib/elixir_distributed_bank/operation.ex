defmodule ElixirDistributedBank.Operations do
    use Ecto.Schema
  
    schema "operations" do
      field :date, :string
      field :from, :string
      field :to, :string
      field :amount, :integer
    end

    def changeset(operation, params \\ %{}) do
      operation
      |> Ecto.Changeset.cast(params, [:date, :from, :to, :amount])
      |> Ecto.Changeset.validate_required([:date, :from, :to, :amount])
    end
    
  end