# PersistentEtsBug

Steps to reproduce:

* Start the application using `iex -S mix`.

```elixir
# either run these repeatedly a few times:
iex> DB.ping()
iex> DB.stop()

# or run this once:
iex> {:ok, pid} = DB.ping()
iex> Process.exit(pid, :kill)
```
