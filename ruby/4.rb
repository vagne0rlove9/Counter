module B
  def hello(name)
    define_method name+name do
      puts 'hi ' + name
    end
  end
end

class A
  extend B

  hello'ivan'

end

A.new.ivanivan