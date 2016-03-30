module Tasa_de_refresco_50
  def tasa_de_refresco
    50
  end
end

module VGA
  def consumo
    super + 0.0001* cable.definicion
  end
  def tasa_de_refresco
  (super < 120) ? super : 120
  end
end

module HDMI
  def consumo
    super * 1.2
  end
  def tasa_de_refresco
    cable.tasa_de_refresco
  end
end

module RF
  def definicion
    480
  end
 include Tasa_de_refresco_50
end

module AV
  def consumo
    super * 1.1
  end
  def definicion
    480
  end
  include Tasa_de_refresco_50
end