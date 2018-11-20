require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    before :each do
        @persona1 = Paciente.new("Daniel",50,1.50,70,"Hombre",nil,nil,nil);
        @persona2 = Paciente.new("Sheila",70,1.70,60,"Mujer",nil,nil,nil);
        @persona3 = Paciente.new("Miguel",100,1.90,80,"Hombre",nil,nil,nil);
        @persona4 = Paciente.new("Pablo",80,1.70,120,"Hombre",nil,nil,nil);
        @persona5 = Paciente.new("Paula",60,1.80,15,"Mujer",nil,nil,nil);
end

describe "#Pruebas para un paciente : " do
    it "Su clase padre Individuo " do
       expect(@persona1.class.superclass).to eq(Individuo) 
    end
    
    it "Es una instancia de la clase Paciente " do
       expect(@persona1.instance_of?Paciente).to eq(true) 
    end
end


end