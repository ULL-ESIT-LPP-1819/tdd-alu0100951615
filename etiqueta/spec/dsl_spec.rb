require "spec_helper"
require 'benchmark'

RSpec.describe Menu do
menu = Menu.new("Lunes") do
        
   # titulo "Bajo en caloriıas"
    #ingesta :min => 30, :max => 35
    
    desayuno :descripcion => "Pan de trigo integral", 
             :porcion => "1 rodaja",
             :gramos => 100,
             :grasas => 3.3,
             :carbohidratos => 54.0,
             :proteinas => 11.0,
             :fibra => 2.3,
             :sal => 0.06
    desayuno :descripcion => "Actimel",
             :porcion => "1 porci´on",
             :gramos => 100,
             :grasas => 3.4,
             :carbohidratos => 4.4,
             :proteinas => 3.6,
             :sal => 0.05
    end
    
    it "pruebas de mierda " do
    expect(menu.get_Array).to eq(["lo que sea"])
    end
end
