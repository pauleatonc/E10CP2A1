module Formula
  attr_accessor :base, :altura, :lado
  def perimetro
    if lado.nil?
      (base * 2) + (altura * 2)
    else
      lado * 4
    end
  end

  def area
    if lado.nil?
      base * altura
    else
      lado * 2
    end
  end
end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    print "Lados: #{@base}, #{@altura}, #{@base}, #{@altura}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end
  def lados
    print "Lados: #{@lado}, #{@lado}, #{@lado}, #{@lado}"
  end
end

a = Rectangulo.new(1, 2)
b = Cuadrado.new(2)

puts a.lados
puts "Perimetro: #{a.perimetro}"
puts "Area: #{a.area}"
puts b.lados
puts "Perimetro: #{b.perimetro}"
puts "Area: #{b.area}"
