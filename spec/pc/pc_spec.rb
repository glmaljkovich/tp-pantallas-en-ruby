require 'rspec'
require_relative '../../model'

describe 'PC' do
  monitor     = Pantalla.new(19, 100, Cable.new(480)).extend(MMonitor,LCD , VGA)
  ensamblador = Ensamblador_de_PC.new
  pc          = PC.new(monitor)
  ensamblador.con_SSD(pc, 48).con_placa_comun_de_resolucion_y_consumo(ensamblador.pc, 480, 60)
  pc          = ensamblador.pc

  describe '#consumo' do
    it "should be 184" do
      expect(pc.consumo).to be(184)
    end
  end

  describe '#apta_para_videojuegos?' do
    it "should be false" do
      expect(pc.apta_para_videojuegos?).to be(false)
    end
  end
end