class A
  class << self
    def hi
      puts 'hi'
    end
  end

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a= a
    @b = b
    @c = c
  end

  def a=(val)
    @a=val
  end

  def sum
    @a + @b + @c
  end

  def change_a_to_one
    @a = 1
    self
  end

  def a_bigger_42?
    @a > 42
  end

  def a_danger!
    @a = 'danger'
  end
end



puts A.new(14,2,3).change_a_to_one.sum
obj = A.new(1,2,3)
obj.a=55
puts obj.a_bigger_42?
puts obj.a_danger!


a = []
a << 4
a << 5
puts a & [3,4]