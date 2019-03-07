defmodule ElixirDistributedBank.Repo do
  use Ecto.Repo, 
    otp_app: :elixir_distributed_bank,
    adapter: EctoMnesia.Adapter
end
