require "spec_helper"
require 'benchmark'

Spec.describe Info_nutri do
  before :each do
    @etiqueta = Info_nutri.new("Pollo",1000,5.5,0.5,2,3.5,0.7,5,1.6,2.7,4.8,9,2.3,3.7,2,500)
  end

end
