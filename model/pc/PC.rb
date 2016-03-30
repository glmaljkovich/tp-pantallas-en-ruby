
class PC
  def initialize(pantalla)
    @pantalla       = pantalla
  end
  def apta_para_videojuegos?
    pantalla.apta_para_videojuegos?
  end
  def consumo
    pantalla.consumo
  end
  def definicion
    pantalla.definicion
  end
  attr_accessor :pantalla
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

  def con_placa_comun_de_resolucion_y_consumo(pc, una_definicion, un_consumo)
    @pc = pc.extend(Placa_de_Video_comun).con_definicion(una_definicion).con_consumo(un_consumo)
    self
  end
  attr_accessor :pc
end



