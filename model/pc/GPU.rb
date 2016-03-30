module Placa_de_Video
  def con_definicion(cant_pixeles)
    @definicion = cant_pixeles
    self
  end

  def definicion
    (@definicion > super) ? @definicion : super
  end
end

module GPU_gaming
  include Placa_de_Video
  def consumo
    cant_pixeles * (1/100000)
  end

  def apta_para_videojuegos?
    super
  end
end

module Placa_de_Video_comun
  include Placa_de_Video
  def con_consumo(consumo)
    @consumo      = consumo
    self
  end

  def apta_para_videojuegos?
    super && (Math::log(definicion / consumo) > 4)
  end

  def consumo
    super + @consumo
  end
end

module Placa_de_Video_integrada
  def initialize(consumo)
    @consumo = consumo
  end

  def apta_para_videojuegos?
    false
  end
end

module Cooler
  def con_coolers(cantidad)
    @cantidad = cantidad
  end
  def consumo
    super + 0.5 * cantidad
  end
end