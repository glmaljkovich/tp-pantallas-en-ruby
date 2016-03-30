class PC
  def initialize(pantalla)
    @pantalla       = pantalla
  end
  def apta_para_juegos?
    pantalla.puede_usarse_para_juegos?
  end
  def consumo
    pantalla.consumo
  end
  attr_accessor :pantalla, :placa_de_video, :disco_duro
end

class Ensamblador_de_PC

  def con_HDD(pc, rpm)
   @pc = pc.extend(HDD).con_rpm(rpm)
    self
  end

  def con_SSD(pc, consumo)
    @pc = pc.extend(SSD).con_consumo(consumo)
    self
  end

  def con_placa_comun_de_resolucion_y_consumo(pc, una_resolucion, un_consumo)
    @pc = pc.extend(Placa_de_Video_comun).con_resolucion(una_resolucion).con_consumo(un_consumo)
    self
  end
  attr_accessor :pc
end



