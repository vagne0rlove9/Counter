module B
  def sum(a,b)
    a + b
  end
end

class A
  include B
end

puts A.new.sum(2, 4)
puts 'asd' + 3.to_s
puts '42'.to_i + 5
puts :sdsdsd.__id__
puts 'asd'.__id__


m = {
    a: 42,
    b: 43
}
puts m[:a]
puts m[:b]
puts ' '

arr=[1,11,1,2]
puts arr
puts ' '
a = true
b = false
c = nil

arr.each do |i|
  puts i * i
end
puts ' '

{a: 1, b: 2}.each do |k, v|
  puts k.to_s + v.to_s
end


arr2=arr.map do |i|
  i * i
end
puts ' '
puts arr2




def two_plus_smth(x)
  2 + yield(x)
end
puts ' '

puts ' '
puts two_plus_smth (3){ |x| 42 * x}




