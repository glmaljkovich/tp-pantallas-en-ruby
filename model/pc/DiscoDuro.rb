
module HDD
  def con_rpm(rpm)
    @rpm = rpm
  end

  def consumo
    super + rpm * 60 / 1000
  end
  attr_accessor :rpm
end

module SSD
  def con_consumo(gasto)
   @gasto = gasto
    self
  end
  def consumo
    super + gasto
  end
  attr_accessor :gasto
end