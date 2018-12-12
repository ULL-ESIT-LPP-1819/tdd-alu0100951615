require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    before :each do
        
    @etiqueta1 = Info_nutri.new("Lechuga",1000,5.5,0.5,2,3.5,0.7,1,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta2 = Info_nutri.new("Almendras",1000,5.5,0.5,2,3.5,0.7,5,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta3 = Info_nutri.new("Pollo",950,5.5,0.5,2,3.5,0.7,10,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta4 = Info_nutri.new("Papas Fritas",1000,5.5,0.5,2,3.5,0.7,25,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta5 = Info_nutri.new("Helado",-30,1,0.5,2,3.5,0.7,9,1.6,2.7,4.8,9,2.3,3.7,1,10)
    @etiqueta6 = Info_nutri.new("Pavo",2000,5.5,0.5,2,3.5,0.7,1,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta7 = Info_nutri.new("Tomates",3000,5.5,0.5,2,3.5,0.7,5,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta8 = Info_nutri.new("Papas",4000,5.5,0.5,2,3.5,0.7,10,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta9 = Info_nutri.new("Jamon",5000,5.5,0.5,2,3.5,0.7,25,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @etiqueta10 = Info_nutri.new("Atun",6000,5.5,0.5,2,3.5,0.7,50,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @menu1 = [@etiqueta1,@etiqueta2,@etiqueta3]
    @menu2 = [@etiqueta5,@etiqueta2,@etiqueta4]
    @menu3 = [@etiqueta2,@etiqueta4,@etiqueta2]
    @menu4 = [@etiqueta5]
    @menu5 = [@etiqueta3,@etiqueta3,@etiqueta1]
    @lista_menu = [@etiqueta1,@etiqueta2,@etiqueta3,@etiqueta4,@etiqueta5]
    
    
    
    @persona1 = Paciente.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
    @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
    @persona3 = Paciente.new("Alejandro", 75, 1.80, 16, "Hombre", nil, nil, nil)
    @persona4 = Paciente.new("Daniel", 115, 1.95, 20, "Hombre", nil, nil, nil)
    @persona5 = Paciente.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
    @persona1.addactFisica(0.54)
    @persona2.addactFisica(0.27)
    @persona3.addactFisica(0.27)
    @persona4.addactFisica(0.54)
    @persona5.addactFisica(0.70)
    @persona1.addMenu(@menu1)
    @persona2.addMenu(@menu2)
    @persona3.addMenu(@menu3)
    @persona4.addMenu(@menu4)
    @persona5.addMenu(@menu5)
    @lista_persona = [@persona1,@persona2,@persona3,@persona4,@persona5]
        
    end
    
    describe "Pruebas para comprobar que la persona tiene los metodos de los gastos energeticos " do
        it "Se pilla la actividad fisica" do
            @lista_persona.each do |elemento|
                expect(elemento.actFisica).not_to eq(nil)
            end
        end
        
        it "Se pilla el gasto basal" do
            @lista_persona.each do |elemento|
                expect(elemento.getGastoBasal).not_to eq(nil)
            end
        end
        
        it "Se pilla el gasto Termógeno" do
            @lista_persona.each do |elemento|
                expect(elemento.getGastoTermogeno).not_to eq(nil)
            end
        end
        
        it "Se pilla el gasto por actividad fisica" do
             @lista_persona.each do |elemento|
                expect(elemento.getGastoActividadFisica).not_to eq(nil)
            end
        end
        
        it "Se pilla el gasto total " do
            @lista_persona.each do |elemento|
                expect(elemento.getGastoTotal).not_to eq(nil)
            end
        end
        
        it "Se pilla los menus de las personas " do
            @lista_persona.each do |elemento|
                expect(elemento.menu).not_to eq(nil)
            end
        end
    end
    
    describe "Pruebas para ver si se cumplen las expectativas de los menús en las personas " do
        it "Menu para la persona 1" do
	        expect(@persona1.calculoAlimentacion).to eq("Menu adecuado")
	    end
	    it "Menu para la persona 2" do
	        expect(@persona2.calculoAlimentacion).to eq("Menu no adecuado")
	    end
	    it "Menu para la persona 3" do
	        expect(@persona3.calculoAlimentacion).to eq("Menu no adecuado")
	    end
	    it "Menu para la persona 4" do
	        expect(@persona4.calculoAlimentacion).to eq("Menu no adecuado")
	    end
	    it "Menu para la persona 5" do
	        expect(@persona5.calculoAlimentacion).to eq("Menu adecuado")
	    end
    end
    
    
end