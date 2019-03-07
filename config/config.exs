# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :elixir_distributed_bank, 
  ecto_repos: [ElixirDistributedBank.Repo]

config :elixir_distributed_bank, ElixirDistributedBank.Repo,
  adapter: EctoMnesia.Adapter

config :ecto_mnesia,
  host: {:system, :atom, "MNESIA_HOST", Kernel.node()},
  storage_type: {:system, :atom, "MNESIA_STORAGE_TYPE", :disc_copies}

config :mnesia, :dir, 'priv/data/mnesia'
