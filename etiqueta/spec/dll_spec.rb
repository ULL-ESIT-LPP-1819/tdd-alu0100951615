require "spec_helper"
require 'benchmark'

RSpec.describe DLL do
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
    
    it "Se ha introducido bien la cola" do
      expect(@dll1.tail).not_to eq(nil)
    end
    end
    context "Metodos de la lista " do
    it "Insertar nodo en head_" do
      @dll1.insert_head(@etiqueta2)
      expect(@dll1.head.value.getSal).to eq(@valor2)
    end
    
    it "Insertar nodo en tail " do
      @dll1.insert_tail(@etiqueta3)
      expect(@dll1.tail.value.getSal).to eq(@valor3)
    end
    
    it "Extraer nodo en head_" do
      @dll1.insert_head(@etiqueta4)
      expect(@dll1.extract_head).to eq(@etiqueta4)
    end
    
    it "Extraer nodo en tail_" do
      @dll1.insert_tail(@etiqueta5)
      expect(@dll1.extract_tail).to eq(@etiqueta5)
    end
    
    it "Se imprime correctamente la clase con los gramos de Sal" do
      @dll1.insert_tail(@etiqueta2)
      @dll1.insert_tail(@etiqueta3)
      @dll1.insert_tail(@etiqueta4)
      @dll1.insert_tail(@etiqueta5)
      @dll1.insert_tail(@etiqueta1)
      expect(@dll1.to_s).to eq("(1 gr,5 gr,10 gr,20 gr,50 gr,1 gr,)")
    end
  end
  context "Clasificación según gramos de Sal" do
    it "Se imprime bien la clasificación por gramos de sal" do
      @dll1.insert_tail(@etiqueta2)
      @dll1.insert_tail(@etiqueta3)
      @dll1.insert_tail(@etiqueta4)
      @dll1.insert_tail(@etiqueta5)
      @dll1.insert_tail(@etiqueta1)
      expect(@dll1.clasificacion).to eq(["Almendras, Medio en Sal", 
      "Bacalao, Alto en Sal", "Lechuga, Bajo en Sal", "Lechuga, Bajo en Sal", 
      "Papas Fritas, Medio en Sal", "Pollo, Medio en Sal"])
    end
  end
  
  context "#Comprobando lista de humanos" do
    it "Clasificacion de IMC" do
        @persona1 = Paciente.new("Daniel",50,1.50,70,"Hombre",nil,nil,nil);
        @persona2 = Paciente.new("Sheila",70,1.70,60,"Mujer",nil,nil,nil);
        @persona3 = Paciente.new("Miguel",100,1.90,80,"Hombre",nil,nil,nil);
        @persona4 = Paciente.new("Pablo",80,1.70,120,"Hombre",nil,nil,nil);
        @persona5 = Paciente.new("Paula",60,1.80,15,"Mujer",nil,nil,nil);
        @lista = DLL.new(@persona1)
        @lista.insert_tail(@persona2)
        @lista.insert_tail(@persona3)
        @lista.insert_tail(@persona4)
        @lista.insert_tail(@persona5)
      
      expect(@lista.clasificacionImc).to eq(["Daniel, medio", "Miguel, obeso", "Pablo, obeso", "Paula, medio", "Sheila, medio"])
    end
  end
end