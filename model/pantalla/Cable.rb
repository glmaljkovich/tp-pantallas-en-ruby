class Cable
  def initialize(definicion)
    @definicion = definicion
  end
  attr_accessor :definicion
end

class CableHDMI < Cable
  def initialize(definicion, tasa_de_refresco)
    super(definicion)
    @tasa_de_refresco = tasa_de_refresco
  end
  attr_accessor :tasa_de_refresco
end