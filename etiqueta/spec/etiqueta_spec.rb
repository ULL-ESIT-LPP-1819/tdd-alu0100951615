require "spec_helper"
require 'benchmark'

Spec.describe Info_nutri do
  before :each do
    @etiqueta = Info_nutri.new("Pollo",1000,5.5,0.5,2,3.5,0.7,5,1.6,2.7,4.8,9,2.3,3.7,2,500)
  end
  
  describe "Se cumple el almacenamiento de datos" do
    
    it "Debe existir el nombre del producto en la etiqueta" do
      expect(@etiqueta.nombre).to eq("Pollo")
    end
    
    it "Debe existir la grasa " do
      expect(@etiqueta.grasas).to eq(5.5)
    end
    
    it "Debe existir la grasa saturada " do
      expect(@etiqueta.grasa_saturada).to eq(0.5)
    end
    
    it "Debe existir los hidratos de carbono " do
      expect(@etiqueta.hidratos_carbono).to eq(2)
    end
    
    it "Deben existir los azucares " do
      expect(@etiqueta.azucares).to eq(3.5)
    end
    
    it "Deben existir las proteinas " do
      expect(@etiqueta.proteina).to eq(0.7)
    end
    
    it "Debe existir la sal " do
      expect(@etiqueta.sal).to eq(5)
    end
    
    it "Deben existir las grasas monoinsaturadas" do
      expect(@etiqueta.monoinsaturadas).to eq(1.6)
    end
    
    it "Deben existir las grasas poliinsaturadas" do
      expect(@etiqueta.poliinsaturadas).to eq(2.7)
    end
    
    it "Deben existir los polialcoholes" do
      expect(@etiqueta.polialcoholes).to eq(4.8)
    end
    
    it "Debe existir el almidon" do
      expect(@etiqueta.almidon).to eq(9)
    end
    
    it "Debe existir la fibra" do
      expect(@etiqueta.fibra).to eq(2.3)
    end
    
    it "Deben existir las vitaminas y minerales " do
      expect(@etiqueta.vitaminas).to eq(3.7)
    end
    
    it "Debe haber al menos 1 porción" do
      expect(@etiqueta.porciones).to eq(2)
    end
    
    it "Debe pesar algo " do
      expect(@etiqueta.gramos).to eq(500)
    end
  end

end
