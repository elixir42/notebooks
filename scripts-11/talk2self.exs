send(self(), {:hello, "world"})

receive do
  {:hello, msg} -> msg
  {:world, _} -> "won't match"
end
|> IO.puts()

_ = """
When a message is sent to a process, the message is stored in the process mailbox. The receive/1 block goes through the current process mailbox searching for a message that matches any of the given patterns. receive/1 supports guards and many clauses, such as case/2.

The process that sends the message does not block on send/2, it puts the message in the recipient’s mailbox and continues. In particular, a process can send messages to itself.
"""
