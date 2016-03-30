require 'rspec'
require_relative '../../model/pantalla/Pantalla'
require_relative '../../model/pc/PC'
require_relative '../../model/pc/GPU'
require_relative '../../model/pc/DiscoDuro'

describe 'PC' do
  monitor = Pantalla.new(19, 100, Cable.new(480)).extend(LCD, VGA)
  ensamblador = Ensamblador_de_PC.new
  pc = PC.new(monitor)
  ensamblador.con_SSD(pc, 48).con_placa_comun_de_resolucion_y_consumo(ensamblador.pc, 480, 60)
  computadora = ensamblador.pc

  describe '#consumo' do
    it "should return something" do
      expect(computadora.consumo).to be(184)
    end
  end
end