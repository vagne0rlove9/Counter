a = [1,2,3,4].reduce(42) do |result, i|
  result * i
end

puts a


def b(i)
  puts i
end
puts ' '
[1,2,3,4].each(&method(:b))