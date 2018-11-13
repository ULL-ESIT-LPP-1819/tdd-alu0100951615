require "spec_helper"
require 'benchmark'

RSpec.describe Etiqueta do

  before :each do
    @etiqueta = Info_nutri.new("Pollo",1000,5.5,0.5,2,3.5,0.7,5,1.6,2.7,4.8,9,2.3,3.7,2,500)
  end
#Nombre,Energía,Grasas,Grasas Saturadas,Hidratos,Azúcares,Proteínas,Sal,Monoinsaturadas,Polinsaturadas,Polialcoholes,Almidón,Fibra,Vitaminas/minerales,raciones,cantidad(g)

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
  
  describe "#Tests para los métodos " do
    it "Metodo para obtener los KJ " do
    expect(@etiqueta.calculate_Julios).to eq(1624.8)  
    end
    
    it "Metodo para obtener las Kcal " do
      expect(@etiqueta.calculate_Kcal).to eq(390.24)
    end
    
    it "Metodo para obtener el nombre " do
      expect(@etiqueta.getNombre).to eq("Pollo")
    end
    
    it "Metodo para obtener la energia " do
      expect(@etiqueta.getCalorias).to eq(1000)
    end
    
    it "Metodo para obtener las grasas " do
      expect(@etiqueta.getGrasas).to eq(5.5)
    end
    
    it "Metodo para obtener las grasas saturadas" do
      expect(@etiqueta.getGrasasSaturadas).to eq(0.5)
    end
    
    it "Metodo para obtener los hidratos de carbono" do
      expect(@etiqueta.getHidratos).to eq(2)
    end
    
    it "Metodo para obtener los azucares" do
      expect(@etiqueta.getAzucares).to eq(3.5)
    end
    
    it "Metodo para obtener la proteina" do
      expect(@etiqueta.getProteinas).to eq(0.7)
    end
    
    it "Metodo para obtener la sal " do
      expect(@etiqueta.getSal).to eq(5)
    end
    
    it "Metodo para obtener las grasas monoinsaturadas " do
      expect(@etiqueta.getMonoInsaturada).to eq(1.6)
    end
    
    it "Metodo para obtener las grasas poliinsaturadas" do
      expect(@etiqueta.getPoliinsaturada).to eq(2.7)
    end
    
    it "Metodo para obtener los polialcoholes" do
      expect(@etiqueta.getPolialcoholes).to eq(4.8)
    end
    
    it "Metodo para obtener el almidon" do
      expect(@etiqueta.getAlmidon).to eq(9)
    end
    
    it "Metodo para obtener la fibra " do
      expect(@etiqueta.getFibra).to eq(2.3)
    end
    
    it "Metodo para obtener las vitaminas y los minerales " do
      expect(@etiqueta.getVitamina).to eq(3.7)
    end
    
  end
  
  describe DLL do
    before :each do
   
    @valor1 = 1
    @valor2 = 5
    @valor3 = 10
    @valor4 = 20
    @valor5 = 50
    @etiqueta1 = Info_nutri.new("Lechuga",1000,5.5,0.5,2,3.5,0.7,@valor1,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta2 = Info_nutri.new("Almendras",1000,5.5,0.5,2,3.5,0.7,@valor2,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta3 = Info_nutri.new("Pollo",1000,5.5,0.5,2,3.5,0.7,@valor3,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta4 = Info_nutri.new("Papas Fritas",1000,5.5,0.5,2,3.5,0.7,@valor4,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta5 = Info_nutri.new("Bacalao",1000,5.5,0.5,2,3.5,0.7,@valor5,1.6,2.7,4.8,9,2.3,3.7,2,500)
    
    @dll1 = DLL.new(@etiqueta1)
  end
  
    describe "Pruebas de la creación" do
    it "Se ha creado bien la lista" do
      expect(@dll1).not_to eq(nil)
    end
    
    it "Se ha introducido bien el head_" do
      expect(@dll1.head).not_to eq(nil)
    end
    
    end
  end
end