module Placa_de_Video
  def con_resolucion(cant_pixeles)
    @cant_pixeles = cant_pixeles
    self
  end
  attr_accessor :cant_pixeles
end

module GPU_gaming
  include Placa_de_Video
  def consumo
    cant_pixeles * (1/100000)
  end

  def puede_usarse_para_juegos?
    true
  end
end

module Placa_de_Video_comun
  include Placa_de_Video
  def con_consumo(consumo)
    @consumo      = consumo
    self
  end

  def puede_usarse_para_juegos?
    Math::log(cant_pixeles / consumo) > 4
  end

  def consumo
    super + @consumo
  end
end

module Placa_de_Video_integrada
  def initialize(consumo)
    @consumo = consumo
  end

  def puede_usarse_para_juegos?
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