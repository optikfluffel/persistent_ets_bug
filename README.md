# PersistentEtsBug

Steps to reproduce:

* Start the application using `iex -S mix`.
* Then run the following two repeatedly until the application exits.

```
iex> DB.ping()
iex> DB.stop()
```
