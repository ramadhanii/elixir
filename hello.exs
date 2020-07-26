tupe = {:ok, "halo", "kkkk"}

case (elem(tupe, 0)) do
  :ok -> IO.puts("yesss")
  _ -> IO.puts("Nothing match")
end
