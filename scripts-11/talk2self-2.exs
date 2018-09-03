send self(), {:ola, "world"}

_ = """
If there is no message in the mailbox matching any of the patterns, the current process will wait until a matching message arrives. A timeout can also be specified:
"""

receive do
  {:hello, msg}  -> msg
after
  2_000 -> "no comprendo"
end |> IO.puts
