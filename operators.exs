#integer
x = 1
x = x+1
IO.puts(x)
x = x/2
IO.puts(x)
x = 10
x = div x,1
IO.puts(x)

#concatenate string
x = "New "
x = x <> "String"
IO.puts(x)

#join list
x = [1]
y = [2, 3, 4]
z = x ++ y
IO.inspect(z)

#join tuple
x = {1, 2}
y = {3, 4}
z = List.to_tuple( Tuple.to_list(x) ++ Tuple.to_list(y))
IO.inspect(z)
#nb: can't join 2 tuple directly


#removing list by index
list = [1, 2,3]
li = List.delete_at(list, 2)
IO.inspect(li)

#filtering list
list = [{:ok, "123"}, {:ok, "234"}, {:nok, "456"}]
li = Enum.filter(list, fn x -> :ok == elem(x, 0) end)
# li = List.delete(list, {:ok, "123"})
IO.inspect(li)
Iterate.e(list)
