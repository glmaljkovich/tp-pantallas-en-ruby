module DefinicionMaximaDigital
  def definicion
    self.ppp * Math::sqrt((self.tamagno**2)/2)
  end
end

module Tubo
  def consumo()
    5 * self.tamagno
  end
  def definicion
    480
  end
end

module LCD
  def consumo
    4 * self.tamagno
  end
  include DefinicionMaximaDigital
end

module LED
  def consumo
    1 * self.tamagno
  end
  include DefinicionMaximaDigital
end
