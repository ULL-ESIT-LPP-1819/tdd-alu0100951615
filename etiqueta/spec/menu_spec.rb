require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    before :each do
        
    @etiqueta1 = Info_nutri.new("Lechuga",1000,5.5,0.5,2,3.5,0.7,1,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta2 = Info_nutri.new("Almendras",1000,5.5,0.5,2,3.5,0.7,5,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta3 = Info_nutri.new("Pollo",1000,5.5,0.5,2,3.5,0.7,10,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta4 = Info_nutri.new("Papas Fritas",1000,5.5,0.5,2,3.5,0.7,25,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta5 = Info_nutri.new("Bacalao",1000,5.5,0.5,2,3.5,0.7,50,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta6 = Info_nutri.new("Pavo",2000,5.5,0.5,2,3.5,0.7,1,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta7 = Info_nutri.new("Tomates",3000,5.5,0.5,2,3.5,0.7,5,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta8 = Info_nutri.new("Papas",4000,5.5,0.5,2,3.5,0.7,10,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta9 = Info_nutri.new("Jamon",5000,5.5,0.5,2,3.5,0.7,25,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta10 = Info_nutri.new("Atun",6000,5.5,0.5,2,3.5,0.7,50,1.6,2.7,4.8,9,2.3,3.7,2,500)
    
    
    @dll1 = DLL.new(@etiqueta1)
    @dll1.insert_tail(@etiqueta2)
    @dll1.insert_tail(@etiqueta3)
    @dll1.insert_tail(@etiqueta4)
    @dll1.insert_tail(@etiqueta5)
    
        @dll2 = DLL.new(@etiqueta3)
    @dll2.insert_tail(@etiqueta5)
    @dll2.insert_tail(@etiqueta7)
    @dll2.insert_tail(@etiqueta9)
    @dll2.insert_tail(@etiqueta10)
    
        @dll3 = DLL.new(@etiqueta3)
    @dll3.insert_tail(@etiqueta4)
    @dll3.insert_tail(@etiqueta5)
    @dll3.insert_tail(@etiqueta6)
    @dll3.insert_tail(@etiqueta7)
    
        @dll4 = DLL.new(@etiqueta4)
    @dll4.insert_tail(@etiqueta5)
    @dll4.insert_tail(@etiqueta8)
    @dll4.insert_tail(@etiqueta1)
    @dll4.insert_tail(@etiqueta2)
    
        @dll5 = DLL.new(@etiqueta1)
    @dll5.insert_tail(@etiqueta4)
    @dll5.insert_tail(@etiqueta6)
    @dll5.insert_tail(@etiqueta8)
    @dll5.insert_tail(@etiqueta1)
    
    
    
    #Poner talla en CM
    
    @persona = Paciente.new("Daniel",50,150,70,"Hombre",nil,nil,nil)
    @persona.addMenu(@dll1)
    @persona.addactFisica(0.27)
    
        @persona2 = Paciente.new("Manuel",50,180,70,"Hombre",nil,nil,nil)
    @persona2.addMenu(@dll2)
    @persona2.addactFisica(0.50)
    
        @persona3 = Paciente.new("Carla",50,190,70,"Mujer",nil,nil,nil)
    @persona3.addMenu(@dll3)
    @persona3.addactFisica(0.01)
    
        @persona4 = Paciente.new("Daniel",50,170,70,"Hombre",nil,nil,nil)
    @persona4.addMenu(@dll4)
    @persona4.addactFisica(0.70)
    
        @persona5 = Paciente.new("Sheila",50,185,70,"Mujer",nil,nil,nil)
    @persona5.addMenu(@dll5)
    @persona5.addactFisica(0.40)
        
    end
    
    describe "Pruebas metodos individuales " do
        it "Se introduce bien la lista de etiquetas" do
            expect(@dll1.to_s).to eq("(1 gr,5 gr,10 gr,25 gr,50 gr,)")
        end
        
        it "Pillado bien el peso ideal" do
            expect(@persona.getPesoIdeal).to eq(50)
        end
        
        it "Pillado bien el gasto energetico basal " do
            expect(@persona.getGastoBasal).to eq(1092.5)
        end
        
        it "Pillado bien el gasto termógeno " do
            expect(@persona.getGastoTermogeno).to eq(109.25)
        end
        
        it "Gasto por actividad fisica" do
            expect(@persona.getGastoActividadFisica).to eq(294.975)
        end
        
        it "Gasto energetico total " do
            expect(@persona.getGastoTotal).to eq(1496.725)
        end
    
    end
    
    describe "Pruebas alimentacion" do
        it "Pillado bien calculoAlimentacion" do
            expect(@persona.calculoAlimentacion).to eq("mal")
            expect(@persona2.calculoAlimentacion).to eq("mal")
            expect(@persona3.calculoAlimentacion).to eq("mal")
            expect(@persona4.calculoAlimentacion).to eq("mal")
            expect(@persona5.calculoAlimentacion).to eq("mal")
        end
    end
    
    
end