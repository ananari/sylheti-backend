defmodule SylhetiBackendWeb.Resolvers.Examples do
  alias SylhetiBackend.{Examples}

  def list_sentences(_parents, _args, _resolution) do
    {:ok, Examples.list_sentences()}
  end

  def list_wordsentences(_parents, _args, _resolution) do
    {:ok, Examples.list_wordsentences()}
  end

end
