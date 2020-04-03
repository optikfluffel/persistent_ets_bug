defmodule PersistentEtsBug.DB do
  use GenServer

  @default_db_name :database

  def start_link(table_name) do
    GenServer.start_link(__MODULE__, table_name, name: @default_db_name)
  end

  def stop(server \\ @default_db_name) do
    GenServer.stop(server)
  end

  def ping(server \\ @default_db_name) do
    case GenServer.whereis(server) do
      pid when is_pid(pid) -> {:ok, pid}
      _ -> {:error, :not_found}
    end
  end

  def init(table_name) do
    opts = [:set, :named_table]
    table = PersistentEts.new(table_name, Path.expand("./example.db"), opts)

    {:ok, %{table: table}}
  end
end
