
defmodule Iterate do
  def e([head | tail]) do
    print(head)
    e(tail)
  end
  def e([]) do
    []
  end

  defp print({:ok, str}) do
    IO.puts("Result #{str}")
  end
  defp print({:nok, str}) do
    IO.puts("Not OK #{str}")
  end
end


list = [{:ok, "123"}, {:ok, "234"}, {:nok, "456"}]
Iterate.e(list)
