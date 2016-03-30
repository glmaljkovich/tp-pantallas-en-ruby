require_relative 'Tecnologia'
require_relative 'Entrada'
require_relative 'Cable'


class Pantalla

  def initialize(tamagno, ppp, cable)
    @tamagno     = tamagno
    @ppp         = ppp
    @cable       = cable
  end

  def puede_conectar_cable?(un_cable)
    un_cable.definicion <= definicion
  end

  def apta_para_videojuegos?
    tasa_de_refresco > 100
  end

  attr_accessor :tamagno, :ppp
end

module MMonitor

  def tasa_de_refresco
    120
  end

end

module Televisor

  def tasa_de_refresco
    90
  end

end

module SmartTV

  def tasa_de_refresco
    super * 1.5
  end

end

