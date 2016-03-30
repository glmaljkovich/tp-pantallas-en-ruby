require 'rspec'
require_relative '../../model/pantalla/Pantalla'


describe 'Televisor de Tubo de 32" y 72ppp con entrada VGA 360p' do
  televisor_tubo_32_vga_360p = Pantalla.new(32, 72, Cable.new(360)).extend(Televisor, Tubo, VGA)

  describe '#consumo' do
    it 'should return 160' do
      @consumo_esperado = 160.036
      expect(televisor_tubo_32_vga_360p.consumo).to be(@consumo_esperado.round)
    end
  end

  describe '#definicion' do
    it 'should return 480' do
      expect(televisor_tubo_32_vga_360p.definicion).to eq (480)
    end
  end

  describe '#puede_usarse_para_juegos?' do
    it 'should return true' do
      expect(televisor_tubo_32_vga_360p.puede_usarse_para_juegos?).to be (false)
    end
  end

end

describe 'Monitor LCD de 17" y 100ppp con entrada VGA 720p' do
  televisor_tubo_32_vga_360p = Pantalla.new(32, 100, Cable.new(720)).extend(MMonitor, Tubo, VGA)

  describe '#consumo' do
    it 'should return 160' do
      @consumo_esperado = 160.036
      expect(televisor_tubo_32_vga_360p.consumo).to be(@consumo_esperado.round)
    end
  end

  describe '#definicion' do
    it 'should return 480' do
      expect(televisor_tubo_32_vga_360p.definicion).to eq (480)
    end
  end

end

describe 'Pantalla de 42" con entrada AV' do
  pantalla_42_entrada_AV = Pantalla.new(42,100, nil).extend(AV)

  describe '#puede_conectar_cable?' do

    context 'cable de 720p' do
      cable = Cable.new(720)
      it "should return false" do
        expect(pantalla_42_entrada_AV.puede_conectar_cable?(cable)).to be(false)
      end
    end

    context 'cable de 480p' do
      cable = Cable.new(480)
      it "should return true" do
        expect(pantalla_42_entrada_AV.puede_conectar_cable?(cable)).to be(true)
      end
    end

  end
end