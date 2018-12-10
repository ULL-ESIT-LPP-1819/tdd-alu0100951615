require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    before :each do
        
    @etiqueta1 = Info_nutri.new("Lechuga",1000,5.5,0.5,2,3.5,0.7,1,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta2 = Info_nutri.new("Almendras",1000,5.5,0.5,2,3.5,0.7,5,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta3 = Info_nutri.new("Pollo",1000,5.5,0.5,2,3.5,0.7,10,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta4 = Info_nutri.new("Papas Fritas",1000,5.5,0.5,2,3.5,0.7,25,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta5 = Info_nutri.new("Bacalao",1000,5.5,0.5,2,3.5,0.7,50,1.6,2.7,4.8,9,2.3,3.7,2,500)
    
    @dll1 = DLL.new(@etiqueta1)
    @dll1.insert_tail(@etiqueta2)
    @dll1.insert_tail(@etiqueta3)
    @dll1.insert_tail(@etiqueta4)
    @dll1.insert_tail(@etiqueta5)
    
    #Poner talla en CM
    
    @persona = Paciente.new("Daniel",50,150,70,"Hombre",nil,nil,nil)
    @persona.addMenu(@dll1)
        
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
        
    end
    
    
end