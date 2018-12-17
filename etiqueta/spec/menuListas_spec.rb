require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    before :each do
        
    @arrayOrdenadoEtiquetasFor = []
    @arrayOrdenadoIndividuosFor = []
    @arrayOrdenadoEtiquetasEach = []
    @arrayOrdenadoIndividuosEach = []
    @arrayOrdenadoEtiquetasSort = []
    @arrayOrdenadoIndividuosSort = []
    @total_menu = 0.0
                
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
    
    @menu1 =  [@etiqueta1,@etiqueta2,@etiqueta3]
    @menu2 =  [@etiqueta5,@etiqueta6,@etiqueta7]
    @menu3 =  [@etiqueta2,@etiqueta4,@etiqueta2]
    @menu4 =  [@etiqueta5,@etiqueta2,@etiqueta4]
    @menu5 =  [@etiqueta3,@etiqueta9,@etiqueta8,@etiqueta10,@etiqueta7]
    @menu6 =  [@etiqueta4,@etiqueta3,@etiqueta5]
    @menu7 =  [@etiqueta1,@etiqueta2,@etiqueta10]
    @menu8 =  [@etiqueta3,@etiqueta5,@etiqueta9]
    @menu9 =  [@etiqueta5,@etiqueta6,@etiqueta2,@etiqueta1]
    @menu10=  [@etiqueta2,@etiqueta4,@etiqueta7]
    #33
    
    @menus = [@menu1,@menu2,@menu3,@menu4,@menu5,@menu6,@menu7,@menu8,@menu9,@menu10]
    
    @persona1 = Paciente.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
    @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
    @persona3 = Paciente.new("Alejandro", 75, 1.80, 16, "Hombre", nil, nil, nil)
    @persona4 = Paciente.new("Daniel", 115, 1.95, 20, "Hombre", nil, nil, nil)
    @persona5 = Paciente.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
    @persona6 = Paciente.new("Ernesto",80, 2.50, 25,"Hombre",nil, nil, nil)
    @persona7 = Paciente.new("Carla", 85, 1.70, 20, "Mujer", nil, nil, nil)
    @persona8 = Paciente.new("Francisco", 75, 1.80, 16, "Hombre", nil, nil, nil)
    @persona9 = Paciente.new("Sergio", 115, 1.95, 20, "Hombre", nil, nil, nil)
    @persona10 = Paciente.new("Samuel", 70, 1.78, 14, "Hombre", nil, nil, nil)
    @persona1.addactFisica(0.54)
    @persona2.addactFisica(0.27)
    @persona3.addactFisica(0.07)
    @persona4.addactFisica(0.54)
    @persona5.addactFisica(0.70)
    @persona6.addactFisica(0.33)
    @persona7.addactFisica(0.24)
    @persona8.addactFisica(0.17)
    @persona9.addactFisica(0.84)
    @persona10.addactFisica(0.60)
    @persona1.addMenu(@menu1)
    @persona2.addMenu(@menu2)
    @persona3.addMenu(@menu3)
    @persona4.addMenu(@menu4)
    @persona5.addMenu(@menu5)
    @persona6.addMenu(@menu6)
    @persona7.addMenu(@menu7)
    @persona8.addMenu(@menu8)
    @persona9.addMenu(@menu9)
    @persona10.addMenu(@menu10)
    
    @lista = DLL.new(@persona1)
    @lista.insert_tail(@persona2)
    @lista.insert_tail(@persona3)
    @lista.insert_tail(@persona4)
    @lista.insert_tail(@persona5)
    @lista.insert_tail(@persona6)
    @lista.insert_tail(@persona7)
    @lista.insert_tail(@persona8)
    @lista.insert_tail(@persona9)
    @lista.insert_tail(@persona10)
    
    end
    
    describe "Probando los bucles For para ordenar las calorias" do
        it "Probando los bucles for para las etiquetas" do
            #en @total_menu se guardan las calorias de cada menu
            
            for menu in @menus
            @total_menu = 0.0
             for etiqueta in menu
                @total_menu = etiqueta.calculate_Kcal + etiqueta.calorias + @total_menu
                end
                @arrayOrdenadoEtiquetasFor.insert(0,@total_menu)
            end
            #SelectionSort
            n=@arrayOrdenadoEtiquetasFor.length
            for i in 0...n
            min=i
            for j in (i+1)...n
            if @arrayOrdenadoEtiquetasFor[j] < @arrayOrdenadoEtiquetasFor[min]
                aux = @arrayOrdenadoEtiquetasFor[j]
                @arrayOrdenadoEtiquetasFor[j] = @arrayOrdenadoEtiquetasFor[min]
                @arrayOrdenadoEtiquetasFor[min] = aux
            end
        end
    end
    
    expect(@arrayOrdenadoEtiquetasFor).to eq([3169.1000000000004, 3179.1, 4132.72, 4410.72, 5223.339999999999, 5881.099999999999, 
    6410.719999999999, 7179.1, 9662.72, 21801.199999999997])
    end            
        it "Probando los bucles for para los individuos" do
            for persona in @lista
            @arrayOrdenadoIndividuosFor.insert(0,persona.getGastoTotal)
            end
            
            n=@arrayOrdenadoIndividuosFor.length
            for i in 0...n
            min=i
            for j in (i+1)...n
            if @arrayOrdenadoIndividuosFor[j] < @arrayOrdenadoIndividuosFor[min]
                aux = @arrayOrdenadoIndividuosFor[j]
                @arrayOrdenadoIndividuosFor[j] = @arrayOrdenadoIndividuosFor[min]
                @arrayOrdenadoIndividuosFor[min] = aux
            end
        end
    end
    
    expect(@arrayOrdenadoIndividuosFor).to eq([802.9125, 803.4975, 821.4862499999999, 871.5375, 994.74375, 1098.4125, 
    1140.825, 1163.0249999999999, 1750.1875, 2070.34375])
            
        end
            
    end
    
    describe "Probando los bucles Each para ordenar las calorias again" do
        it "probando los bucles Each para las etiquetas" do
            @menus.each do |menu|
                @total_menu = 0.0
                menu.each do |etiqueta|
                    @total_menu = etiqueta.calculate_Kcal + etiqueta.calorias + @total_menu
                end
                @arrayOrdenadoEtiquetasEach.insert(0,@total_menu)
            end
            
            @arrayOrdenadoEtiquetasEach.each_with_index do |el,i|
                min = i
            @arrayOrdenadoEtiquetasEach[1..-1].each_with_index do |el,j|
                if @arrayOrdenadoEtiquetasEach[j] > @arrayOrdenadoEtiquetasEach[min]
                    aux = @arrayOrdenadoEtiquetasEach[j]
                    @arrayOrdenadoEtiquetasEach[j] = @arrayOrdenadoEtiquetasEach[min]
                    @arrayOrdenadoEtiquetasEach[min] = aux
                end
            end
        end
            
            expect(@arrayOrdenadoEtiquetasEach).to eq([3169.1000000000004, 3179.1, 4132.72, 4410.72, 5223.339999999999, 5881.099999999999, 6410.719999999999, 
            7179.1, 9662.72, 21801.199999999997])
            
            
        end
        it "Probando los bucles Each para los individuos" do
            @lista.each do |persona|
                @arrayOrdenadoIndividuosEach.insert(0,persona.getGastoTotal)
            end
            
            @arrayOrdenadoIndividuosEach.each_with_index do |el,i|
                min = i
            @arrayOrdenadoIndividuosEach[1..-1].each_with_index do |el,j|
                if @arrayOrdenadoIndividuosEach[j] > @arrayOrdenadoIndividuosEach[min]
                    aux = @arrayOrdenadoIndividuosEach[j]
                    @arrayOrdenadoIndividuosEach[j] = @arrayOrdenadoIndividuosEach[min]
                    @arrayOrdenadoIndividuosEach[min] = aux
                end
            end
        end
        
        expect(@arrayOrdenadoIndividuosEach).to eq([802.9125, 803.4975, 821.4862499999999, 871.5375, 994.74375, 
        1098.4125, 1140.825, 1163.0249999999999, 1750.1875, 2070.34375])
        
        end
    end
    
    describe "Probando el metodo Sort para ordenar estas cosas otra vez" do
        it "Ordenar las etiquetas con sort" do
            @menus.each do |menu|
                @total_menu = 0.0
                menu.each do |etiqueta|
                    @total_menu = etiqueta.calculate_Kcal + etiqueta.calorias + @total_menu
                end
                @arrayOrdenadoEtiquetasSort.insert(0,@total_menu)
            end
            
            puts @arrayOrdenadoEtiquetasSort
            
            puts "|||||||||||||||||||||"
            
            @arrayOrdenadoEtiquetasSort.sort
            
            puts "|||||||||||||||||||||"
            
            puts @arrayOrdenadoEtiquetasSort
            
            
        end
        
        it "Ordenar los individuos con sort" do
            @lista.each do |persona|
                @arrayOrdenadoIndividuosSort.insert(0,persona.getGastoTotal)
            end
            
            puts @arrayOrdenadoIndividuosSort
            
            puts "|||||||||||||||||||||"
            
            @arrayOrdenadoIndividuosSort.sort  #--- Se Supone que esto tiene que ordenar el vector xD pero no hace una mierda
            
            puts "|||||||||||||||||||||"
            
            puts @arrayOrdenadoIndividuosSort
            
        end
    end
    
    
end
