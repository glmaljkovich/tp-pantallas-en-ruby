class PC
  def initialize(pantalla, placa_de_video)
    @pantalla       = pantalla
    @placa_de_video = placa_de_video
  end
  def apta_para_juegos?
    pantalla.puede_usarse_para_juegos? && placa_de_video.puede_usarse_para_juegos?
  end
  def consumo
    pantalla.consumo + placa_de_video.consumo
  end
  attr_accessor :pantalla, :placa_de_video
end

class DiscoDuro
  def initialize(rpm)
    @rpm = rpm
  end
  def consumo
    super + rpm * 60 / 1000
  end
end

class SSD
  def initialize(gasto)
    @consumo = gasto
  end
  def consumo
    super + consumo
  end
end